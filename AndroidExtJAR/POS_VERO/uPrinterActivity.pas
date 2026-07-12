unit uPrinterActivity;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.IOUtils,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Controls.Presentation,
  FMX.Memo.Types,
  FMX.ScrollBox,
  FMX.Memo,
  // Android JNI & Helper Uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.Helpers,
  FMX.Helpers.Android,
  // External Jar wrapper unit
  classes;

type
  // 1. Implement the JPrinterListener interface using TJavaLocal
  TPrinterListener = class(TJavaLocal, JPrinterListener)
  private
    FPrintType: string;
  public
    constructor Create(const APrintType: string);
    function asBinder: JIBinder; cdecl;
    procedure onFinish; cdecl;
    procedure onError(i: Integer); cdecl;
  end;

  // 2. The Form (Activity) equivalent
  TFormPrinterActivity = class(TForm)
    checkboxEject: TCheckBox;
    btPrintText: TButton;
    btPrintLogo: TButton;
    StyleBook1: TStyleBook;
    butInitPrinter: TButton;
    ToolBar1: TToolBar;
    memLog: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure checkboxEjectChange(Sender: TObject);
    procedure btPrintTextClick(Sender: TObject);
    procedure btPrintLogoClick(Sender: TObject);
    procedure butInitPrinterClick(Sender: TObject);
    procedure FormSafeAreaChanged(Sender: TObject; const AInsets: TRectF);
  private
    FPrinter: JPrinter;
    function SupportsPrinter: Boolean;
    procedure ShowAlertOnUi(const ATitle, AMsg: string);
  public
  { Public declarations }
  end;

var
  FormPrinterActivity: TFormPrinterActivity;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

{ TPrinterListener }

constructor TPrinterListener.Create(const APrintType: string);
begin
  inherited Create;
  FPrintType := APrintType;
end;

function TPrinterListener.asBinder: JIBinder; cdecl;
begin
  // Often safe to return nil for local callbacks
  // if the SDK doesn't strictly require an actual Binder object
  Result := nil;
end;

procedure TPrinterListener.onFinish; cdecl;
begin
  FormPrinterActivity.ShowAlertOnUi(FPrintType, 'Print onFinish');
end;

procedure TPrinterListener.onError(i: Integer); cdecl;
var
  Msg: string;
begin
  if i = TJPrinter.JavaClass.ERRO_SEM_PAPEL then
    Msg := 'Sem papel'
  else
    Msg := IntToStr(i);

  FormPrinterActivity.ShowAlertOnUi(FPrintType, 'Print onError ' + Msg);
end;

{ TFormPrinterActivity }

procedure TFormPrinterActivity.FormCreate(Sender: TObject);
begin
  checkboxEject.IsChecked := True;
end;

procedure TFormPrinterActivity.FormDestroy(Sender: TObject);
begin
  if Assigned(FPrinter) then
    FPrinter.close;
end;

procedure TFormPrinterActivity.checkboxEjectChange(Sender: TObject);
begin
  if Assigned(FPrinter) then
    FPrinter.setFeedLineAuto(checkboxEject.IsChecked);
end;

function TFormPrinterActivity.SupportsPrinter: Boolean;
var
  Model: string;
begin
  // Get Build.MODEL equivalent in Delphi
  Model := JStringToString(TJBuild.JavaClass.MODEL);

  Result :=
      (Model = 'GPOS700')
          or (Model = 'P2-B')
          or (Model = 'L3')
          or (Model = 'N950')
          or (Model = 'N950K')
          or (Model = 'N950S');
end;

procedure TFormPrinterActivity.ShowAlertOnUi(const ATitle, AMsg: string);
begin
  memLog.Lines.Add(ATitle + ': ' + AMsg);
  memLog.GoToTextEnd;
end;

procedure TFormPrinterActivity.btPrintTextClick(Sender: TObject);
var
  Listener: JPrinterListener;
begin
  if Assigned(FPrinter) then begin
    Listener := TPrinterListener.Create('PrintText');
    FPrinter.print(StringToJString('Teste de impressão'), Listener);
  end;
end;

procedure TFormPrinterActivity.btPrintLogoClick(Sender: TObject);
var
  Listener: JPrinterListener;
  LogoBitmap: JBitmap;
  ImageFile: string;
begin
  if Assigned(FPrinter) then begin
    Listener := TPrinterListener.Create('PrintBitmap');

    // In Android Studio, BitmapFactory.decodeResource is used.
    // In Delphi, the easiest way to pass a JBitmap is to load it from the deployed assets (e.g. Project -> Deployment)
    ImageFile := TPath.Combine(TPath.GetDocumentsPath, 'logo_vero.png');

    if TFile.Exists(ImageFile) then begin
      LogoBitmap := TJBitmapFactory.JavaClass.decodeFile(StringToJString(ImageFile));
      FPrinter.print(LogoBitmap, Listener);
    end
    else
      ShowAlertOnUi('Error', 'Logo file not found: ' + ImageFile);
  end;
end;

procedure TFormPrinterActivity.butInitPrinterClick(Sender: TObject);
begin
  if SupportsPrinter then begin
    // Get the instance passing the Android Context
    FPrinter := TJPrinter.JavaClass.getInstance(TAndroidHelper.Context);
    FPrinter.open;
  end
  else begin
    checkboxEject.Enabled := False;
    btPrintText.Enabled := False;
    btPrintLogo.Enabled := False;
    ShowAlertOnUi('Init Printer', 'Printer not supported');
  end;
end;

procedure TFormPrinterActivity.FormSafeAreaChanged(Sender: TObject; const AInsets: TRectF);
begin
  Padding.Rect := AInsets.Round;
end;

end.
