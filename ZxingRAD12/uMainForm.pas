unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.Messaging, System.Permissions, FMX.Memo.Types,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Objects, FMX.Controls.Presentation, System.Actions,
  FMX.ActnList, FMX.Edit, FMX.Media, FMX.Platform, FMX.Layouts, FMX.StdActns,
  FMX.MediaLibrary.Actions, FMX.ScrollBox, FMX.Memo, System.IOUtils,
  ZXing.BarcodeFormat,
  ZXing.ReadResult,
  ZXing.ScanManager,
  uAudioManager;

type
  TMainForm = class(TForm)
    memLog: TMemo;
    imgCamera: TImage;
    ToolBar1: TToolBar;
    butStart: TButton;
    butStop: TButton;
    butShare: TButton;
    ActionList1: TActionList;
    ShowShareSheetAction1: TShowShareSheetAction;
    Camera: TCameraComponent;
    StyleBook1: TStyleBook;
    ProgressBarStatus: TProgressBar;
    StatusBarMessage: TStatusBar;
    lblMessage: TLabel;
    recImageBottom: TRectangle;
    recImageTop: TRectangle;
    layCamera: TLayout;
    layDrawFocus: TLayout;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure butStartClick(Sender: TObject);
    procedure butStopClick(Sender: TObject);
    procedure ShowShareSheetAction1BeforeExecute(Sender: TObject);
    procedure memLogChangeTracking(Sender: TObject);
    procedure CameraSampleBufferReady(Sender: TObject; const ATime: TMediaTime);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    // for new Android security model
    FPermissionCamera: string;

    // audio (beep)
    fAudioF: string;
    fAudioM: TAudioManager;

    // for the native zxing.delphi library
    fScanManager: TScanManager;
    fScanInProgress: Boolean;
    fLastScan: TDateTime;

    function CropBitmap(const AImage: TImage): TBitmap;
    procedure ParseBitmap;
    function AppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;

    // for new Android security model
    procedure DisplayRationale(Sender: TObject;
      const APermissions: TClassicStringDynArray;
      const APostRationaleProc: TProc);
    procedure TakePicturePermissionRequestResult(Sender: TObject;
      const APermissions: TClassicStringDynArray;
      const AGrantResults: TClassicPermissionStatusDynArray);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

const
  // Scan every 133 ms
  SCAN_EACH_MS = 133;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}

uses System.Threading, System.DateUtils,
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
  layCamera.Opacity := 0;

  if TPlatformServices.Current.SupportsPlatformService
    (IFMXApplicationEventService, IInterface(AppEventSvc)) then
  begin
    AppEventSvc.SetApplicationEventHandler(AppEvent);
  end;

  fLastScan := Now;
  fScanManager := TScanManager.Create(TBarcodeFormat.Auto, nil);

  // comment the next block if you don't want/need the beep
  fAudioM := TAudioManager.Create;
  fAudioF := TPath.Combine(TPath.GetDocumentsPath, 'Ok.wav');
  if FileExists(fAudioF) then
    fAudioM.AddSound(fAudioF);

{$IFDEF ANDROID}
  FPermissionCamera := JStringToString(TJManifest_permission.JavaClass.Camera);
{$ENDIF}
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  fScanManager.Free;
  fAudioM.Free;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  recImageBottom.Height := (layCamera.Height - 150) / 2;
  recImageTop.Height := (layCamera.Height - 150) / 2;
end;

procedure TMainForm.TakePicturePermissionRequestResult(Sender: TObject;
  const APermissions: TClassicStringDynArray;
  const AGrantResults: TClassicPermissionStatusDynArray);
begin
  if (length(AGrantResults) = 1) and
    (AGrantResults[0] = TPermissionStatus.Granted) then
  begin
    memLog.Lines.Clear;

    Camera.Kind := FMX.Media.TCameraKind.BackCamera;
    Camera.FocusMode := FMX.Media.TFocusMode.ContinuousAutoFocus;

    if Camera.HasTorch then
      Camera.TorchMode := TTorchMode.ModeOn;

    Camera.Active := True;

    layCamera.Opacity := 1;
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
        SLineBreak;
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
  if layCamera.Opacity = 1 then
    exit;

  PermissionsService.RequestPermissions([FPermissionCamera],
    TakePicturePermissionRequestResult, DisplayRationale);
end;

procedure TMainForm.butStopClick(Sender: TObject);
begin
  if layCamera.Opacity = 0 then
    exit;

  layCamera.Opacity := 0;
  ProgressBarStatus.Value := 0;

  if Camera.TorchMode = TTorchMode.ModeOn then
    Camera.TorchMode := TTorchMode.ModeOff;

  Camera.Active := False;
end;

procedure TMainForm.CameraSampleBufferReady(Sender: TObject;
const ATime: TMediaTime);
begin
  TThread.Synchronize(TThread.CurrentThread, ParseBitmap);
end;

function TMainForm.CropBitmap(const AImage: TImage): TBitmap;
var
  iRect: TRect;
  LBitmap: TBitmap;
  xScale, yScale: Extended;
begin
  LBitmap := TBitmap.Create;

  xScale := AImage.Bitmap.Width / AImage.Width;
  yScale := AImage.Bitmap.Height / AImage.Height;

  LBitmap.Width := round(layDrawFocus.Width * xScale);
  LBitmap.Height := round(layDrawFocus.Height * yScale);

  iRect.Left := round(layDrawFocus.Position.X * xScale);
  iRect.Top := round(layDrawFocus.Position.Y * yScale);
  iRect.Width := round(layDrawFocus.Width * xScale);
  iRect.Height := round(layDrawFocus.Height * yScale);

  LBitmap.CopyFromBitmap(AImage.Bitmap, iRect, 0, 0);

  Result := LBitmap;
end;

procedure TMainForm.ParseBitmap;
var
  ReadResult: TReadResult;
begin
  ReadResult := nil;
  Camera.SampleBufferToBitmap(imgCamera.Bitmap, True);

  if not fScanInProgress and (MilliSecondsBetween(fLastScan, Now) >=
    SCAN_EACH_MS) then
  begin
    TTask.Run(
      procedure
      var
        LReducedBuffer: TBitmap;
      begin
        try
          fScanInProgress := True;
          try
            fLastScan := Now;
            LReducedBuffer := CropBitmap(imgCamera);
            ReadResult := fScanManager.Scan(LReducedBuffer);
          except
            on E: Exception do
            begin
              TThread.Synchronize(TThread.CurrentThread,
                procedure
                begin
                  lblMessage.Text := E.Message;
                end);
              exit;
            end;
          end;

          TThread.Synchronize(TThread.CurrentThread,
            procedure
            begin
              if ProgressBarStatus.Value = 100 then
                ProgressBarStatus.Value := 0
              else
                ProgressBarStatus.Value := ProgressBarStatus.Value + 10;

              if (ReadResult <> nil) then
              begin
                memLog.Lines.Add(FormatDateTime('hh:nn:ss', Now) + ' - ' +
                  ReadResult.Text);
                memLog.GoToTextEnd;

                // comment the next line if you don't want/need the beep
                fAudioM.PlaySound(0);
              end;
            end);

        finally
          ReadResult.Free;
          fScanInProgress := False;
        end;

      end);
  end;
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
