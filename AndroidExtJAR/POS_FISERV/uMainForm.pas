unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.DialogService,

  // android
  jid.classes,
  System.Permissions,
  Androidapi.Helpers,
  Androidapi.JNI.Os,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText;

type
  TOnPrintFinished = class(TJavaLocal, JIOnPrintFinished)
    public
      function asBinder: JIBinder; cdecl;
      procedure onFailed(int: Integer; string_1: JString); cdecl;
      procedure onSuccess; cdecl;
    end;

  TMainForm = class(TForm)
    butInitSmartPosHelper: TButton;
    butPrintSampleText: TButton;
    butInitPrinterService: TButton;
    procedure butInitSmartPosHelperClick(Sender: TObject);
    procedure FormSafeAreaChanged(Sender: TObject; const AInsets: TRectF);
    procedure butInitPrinterServiceClick(Sender: TObject);
    procedure butPrintSampleTextClick(Sender: TObject);
  private
    { Private declarations }
    PrinterService: JPrinterService;
    procedure InitializeSmartPosHelper;
    procedure InitializePrinterService;
    function IsPrinterServiceAvailable: Boolean;
    procedure PrintSampleText;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses Androidapi.Jni;

procedure TMainForm.butInitSmartPosHelperClick(Sender: TObject);
begin
  var
  fPermissionsServiceOK: boolean := False;

  PermissionsService.RequestPermissions
    ([JStringToString(TJManifest_permission.JavaClass.ACCESS_FINE_LOCATION),
      JStringToString(TJManifest_permission.JavaClass.ACCESS_COARSE_LOCATION),
      JStringToString(TJManifest_permission.JavaClass.READ_PHONE_STATE)],
    procedure(const APermissions: TClassicStringDynArray;
      const AGrantResults: TClassicPermissionStatusDynArray)
    begin
      fPermissionsServiceOK := (Length(AGrantResults) = 3) and
        (AGrantResults[0] = TPermissionStatus.Granted) and
        (AGrantResults[1] = TPermissionStatus.Granted) and
        (AGrantResults[2] = TPermissionStatus.Granted);
    end);

  if fPermissionsServiceOK then
    InitializeSmartPosHelper;
end;

procedure TMainForm.butInitPrinterServiceClick(Sender: TObject);
begin
  InitializePrinterService;
end;

procedure TMainForm.butPrintSampleTextClick(Sender: TObject);
begin
  PrintSampleText;
end;

procedure TMainForm.InitializeSmartPosHelper;
var
  PEnv: PJNIEnv;
  ClsID: JNIClass;
  MethodID: JNIMethodID;
  Args: array[0..1] of JNIValue;
begin
  if TJSmartPosHelper.JavaClass.getInstance = nil then
  begin
    //TJSmartPosHelper.JavaClass.init(TAndroidHelper.Context, TJAppStatus.JavaClass.ACTIVE);
    //Since the bridge cannot call a Java static method literally named init,
    //we bypass the bridge for just this one call using direct JNI:

    PEnv := TJNIResolver.GetJNIEnv;
    ClsID := TJNIResolver.GetJavaClassID('br/com/execucao/posmp_api/SmartPosHelper');
    MethodID := PEnv^.GetStaticMethodID(PEnv, ClsID,
      'init',
      '(Landroid/content/Context;Lbr/com/execucao/posmp_api/store/AppStatus;)V');

    Args[0].l := (TAndroidHelper.Context as ILocalObject).GetObjectID;
    Args[1].l := (TJAppStatus.JavaClass.ACTIVE as ILocalObject).GetObjectID;

    PEnv^.CallStaticVoidMethodA(PEnv, ClsID, MethodID, PJNIValue(@Args[0]));
    TJNIResolver.ExceptionCheck;
  end;
end;

procedure TMainForm.InitializePrinterService;
begin
  PrinterService := TJSmartPosHelper.JavaClass.getInstance.getPrinter;
  PrinterService.open;
end;

{ TOnPrintFinished }

function TOnPrintFinished.asBinder: JIBinder;
begin
  Result := nil;
end;

procedure TOnPrintFinished.onFailed(int: Integer; string_1: JString);
begin
  TThread.Queue(nil,
    procedure
    begin
      ShowMessage('printText onFailed error: ' + int.ToString + ', msg: ' + JStringToString(string_1));
    end);
end;

procedure TOnPrintFinished.onSuccess;
begin
  TThread.Queue(nil,
    procedure
    begin
      ShowMessage('printText onSuccess');
    end);
end;

function TMainForm.IsPrinterServiceAvailable: Boolean;
begin
  Result := Assigned(PrinterService) and PrinterService.isConnected;
end;

procedure TMainForm.PrintSampleText;
var
  PrintListener: JIOnPrintFinished;
begin
  if IsPrinterServiceAvailable then
  begin
    try
      PrintListener := TOnPrintFinished.Create;
      PrinterService.printText(StringToJString('test1' + sLineBreak + 'test2' +
        sLineBreak + 'test3'), PrintListener);
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
  end
  else
    ShowMessage('The printer is not available!');
end;

procedure TMainForm.FormSafeAreaChanged(Sender: TObject; const AInsets: TRectF);
begin
  Padding.Rect := AInsets.Round;
end;

end.

