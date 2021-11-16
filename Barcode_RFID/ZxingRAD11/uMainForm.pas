unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.Messaging, System.Permissions,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, System.Actions, FMX.ActnList,
  FMX.Edit, FMX.Media, ZXing.BarcodeFormat, ZXing.ReadResult, ZXing.ScanManager,
  FMX.Platform, FMX.Layouts, FMX.StdActns, FMX.MediaLibrary.Actions,
  FMX.ScrollBox, FMX.Memo, System.IOUtils, FMX.Memo.Types,
  uAudioManager;

type
  TMainForm = class(TForm)
    memLog: TMemo;
    imgCamera: TImage;
    ToolBar1: TToolBar;
    butStart: TButton;
    butStop: TButton;
    lblScanStatus: TLabel;
    butShare: TButton;
    ActionList1: TActionList;
    ShowShareSheetAction1: TShowShareSheetAction;
    Camera: TCameraComponent;
    StyleBook1: TStyleBook;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure butStartClick(Sender: TObject);
    procedure butStopClick(Sender: TObject);
    procedure ShowShareSheetAction1BeforeExecute(Sender: TObject);
    procedure memLogChangeTracking(Sender: TObject);
    procedure CameraSampleBufferReady(Sender: TObject; const ATime: TMediaTime);
  private
    { Private declarations }

    // for new Android security model
    FPermissionCamera, FPermissionReadExternalStorage,
      FPermissionWriteExternalStorage: string;

    // audio (beep)
    fAudioF: string;
    fAudioM: TAudioManager;

    // for the native zxing.delphi library
    fScanManager: TScanManager;
    fScanInProgress: Boolean;
    fFrameTake: Integer;
    procedure ParseBitmap;
    function AppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;

    // for new Android security model
    procedure DisplayRationale(Sender: TObject;
      const APermissions: TClassicStringDynArray; const APostRationaleProc: TProc);
    procedure TakePicturePermissionRequestResult(Sender: TObject;
      const APermissions: TClassicStringDynArray;
      const AGrantResults: TClassicPermissionStatusDynArray);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

const
  // Skip n frames to do a barcode scan
  SCAN_EVERY_N_FRAME_FREQ: Integer = 2;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}

uses System.Threading,
{$IFDEF ANDROID}
  Androidapi.Helpers,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
{$ENDIF}
  FMX.DialogService;

procedure TMainForm.FormCreate(Sender: TObject);
var
  AppEventSvc: IFMXApplicationEventService;
begin
  if TPlatformServices.Current.SupportsPlatformService
    (IFMXApplicationEventService, IInterface(AppEventSvc)) then
  begin
    AppEventSvc.SetApplicationEventHandler(AppEvent);
  end;

  fFrameTake := 0;
  lblScanStatus.Text := '';
  fScanManager := TScanManager.Create(TBarcodeFormat.Auto, nil);

  fAudioM := TAudioManager.Create;
  fAudioF := TPath.Combine(TPath.GetDocumentsPath, 'Ok.wav');
  if FileExists(fAudioF) then
    fAudioM.AddSound(fAudioF);

{$IFDEF ANDROID}
  FPermissionCamera := JStringToString(TJManifest_permission.JavaClass.Camera);
  FPermissionReadExternalStorage :=
    JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
  FPermissionWriteExternalStorage :=
    JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);
{$ENDIF}
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  fScanManager.Free;
  fAudioM.Free;
end;

procedure TMainForm.TakePicturePermissionRequestResult(Sender: TObject;
  const APermissions: TClassicStringDynArray;
  const AGrantResults: TClassicPermissionStatusDynArray);
begin
  // 3 permissions involved: CAMERA, READ_EXTERNAL_STORAGE and WRITE_EXTERNAL_STORAGE
  if (length(AGrantResults) = 3) and
    (AGrantResults[0] = TPermissionStatus.Granted) and
    (AGrantResults[1] = TPermissionStatus.Granted) and
    (AGrantResults[2] = TPermissionStatus.Granted) then
  begin

    // workaround for resolution changing when activating for second time
    try
      Camera.Active := False;
      Camera.Quality := FMX.Media.TVideoCaptureQuality.LowQuality;
      Camera.Active := True;
    finally
      Camera.Active := False;
      Camera.Kind := FMX.Media.TCameraKind.BackCamera;
      Camera.FocusMode := FMX.Media.TFocusMode.ContinuousAutoFocus;
      Camera.Quality := FMX.Media.TVideoCaptureQuality.MediumQuality;
      Camera.Active := True;
    end;

    lblScanStatus.Text := '';
    memLog.Lines.Clear;
  end
  else
  begin
    TDialogService.ShowMessage
      ('Cannot take a photo because the required permissions are not all granted!');
  end;
end;

procedure TMainForm.DisplayRationale(Sender: TObject;
  const APermissions: TClassicStringDynArray; const APostRationaleProc: TProc);
var
  I: Integer;
  RationaleMsg: string;
begin
  for I := 0 to High(APermissions) do
  begin
    if APermissions[I] = FPermissionCamera then
      RationaleMsg := RationaleMsg +
        'The app needs to access the camera to take a photo' + SLineBreak +
        SLineBreak
    else if APermissions[I] = FPermissionReadExternalStorage then
      RationaleMsg := RationaleMsg +
        'The app needs to read a photo file from your device';
  end;

  // Show an explanation to the user *asynchronously* - don't block this thread waiting for the user's response!
  // After the user sees the explanation, invoke the post-rationale routine to request the permissions
  TDialogService.ShowMessage(RationaleMsg,
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end)
end;

procedure TMainForm.butStartClick(Sender: TObject);
begin
  PermissionsService.RequestPermissions
    ([FPermissionCamera, FPermissionReadExternalStorage,
    FPermissionWriteExternalStorage], TakePicturePermissionRequestResult,
    DisplayRationale);
end;

procedure TMainForm.butStopClick(Sender: TObject);
begin
  Camera.Active := False;
end;

procedure TMainForm.CameraSampleBufferReady(Sender: TObject;
const ATime: TMediaTime);
begin
  TThread.Synchronize(TThread.CurrentThread, ParseBitmap);
end;

procedure TMainForm.ParseBitmap;
var
  ReadResult: TReadResult;
begin
  ReadResult := nil;
  Camera.SampleBufferToBitmap(imgCamera.Bitmap, True);

  // already parsing...
  if fScanInProgress then
    exit;

  // frame control...
  Inc(fFrameTake);
  if ((fFrameTake mod SCAN_EVERY_N_FRAME_FREQ) <> 0) then
  begin
    exit;
  end;

  TTask.Run(
    procedure
    begin
      try
        fScanInProgress := True;
        try
          ReadResult := fScanManager.Scan(imgCamera.Bitmap);
        except
          on E: Exception do
          begin
            TThread.Synchronize(TThread.CurrentThread,
              procedure
              begin
                lblScanStatus.Text := E.Message;
              end);
            exit;
          end;
        end;

        TThread.Synchronize(TThread.CurrentThread,
          procedure
          begin
            if (length(lblScanStatus.Text) > 10) then
              lblScanStatus.Text := '*'
            else
              lblScanStatus.Text := lblScanStatus.Text + '*';
            if (ReadResult <> nil) then
            begin
              memLog.Lines.Add(FormatDateTime('hh:nn:ss', Now) + ' - ' +
                ReadResult.Text);
              memLog.GoToTextEnd;
              fAudioM.PlaySound(0);
            end;
          end);

      finally
        ReadResult.Free;
        fScanInProgress := False;
      end;

    end);
end;

function TMainForm.AppEvent(AAppEvent: TApplicationEvent;
AContext: TObject): Boolean;
begin
  Result := True;
  case AAppEvent of
    TApplicationEvent.WillBecomeInactive:
      Camera.Active := False;
    TApplicationEvent.EnteredBackground:
      Camera.Active := False;
    TApplicationEvent.WillTerminate:
      Camera.Active := False;
  end;
end;

procedure TMainForm.memLogChangeTracking(Sender: TObject);
begin
  ShowShareSheetAction1.Enabled := not memLog.Text.IsEmpty;
end;

procedure TMainForm.ShowShareSheetAction1BeforeExecute(Sender: TObject);
begin
  ShowShareSheetAction1.TextMessage := memLog.Text;
end;

end.
