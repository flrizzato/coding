unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo,
  uGetnet_classes, bridge, bridge_callback, FMX.ScrollBox, FMX.Memo.Types;

type
  TFormMain = class(TForm)
    butPrint: TButton;
    butConnect: TButton;
    ToolBar1: TToolBar;
    Memo1: TMemo;
    butCamera: TButton;
    procedure butPrintClick(Sender: TObject);
    procedure butConnectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butCameraClick(Sender: TObject);
  private
    { Private declarations }
    jBindCallback: TMyBindCallback;
    jPrinterCallback: TMyPrinterCallback;
    jPrinterCallbackInstance: JIPrinterCallback;
    jCameraCallback: TMyCameraCallback;
    jCameraCallbackInstance: JICameraCallback;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Androidapi.Helpers,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText;

procedure TFormMain.butConnectClick(Sender: TObject);
begin
  fMyLog.LogWrite('Trying to connect PosDigital...');

  jBindCallback := TMyBindCallback.Create;
  TJPosDigital.JavaClass.register(TAndroidHelper.Context, jBindCallback);
end;

procedure TFormMain.butPrintClick(Sender: TObject);
begin
  if TJPosDigital.JavaClass.getInstance.isInitiated then
  begin
    fMyLog.LogWrite('Sending a printer test...');

    TJPosDigital.JavaClass.getInstance.getPrinter.init;
    TJPosDigital.JavaClass.getInstance.getPrinter.setGray(5);
    TJPosDigital.JavaClass.getInstance.getPrinter.defineFontFormat
      (TJFontFormat.JavaClass.MEDIUM);
    TJPosDigital.JavaClass.getInstance.getPrinter.addText
      (TJAlignMode.JavaClass.LEFT, StringToJString('EXEMPLO DE TEXTO'));

    jPrinterCallback := TMyPrinterCallback.Create;
    jPrinterCallbackInstance := TJPrinterCallbackInstance.JavaClass.getInstance
      (jPrinterCallback);
    TJPosDigital.JavaClass.getInstance.getPrinter.print
      (jPrinterCallbackInstance);
  end
  else
    ShowMessage('PosDigital was not initiated!');
end;

procedure TFormMain.butCameraClick(Sender: TObject);
begin
  if TJPosDigital.JavaClass.getInstance.isInitiated then
  begin
    fMyLog.LogWrite('Sending a printer test...');

    jCameraCallback := TMyCameraCallback.Create;
    jCameraCallbackInstance := TJCameraCallbackInstance.JavaClass.getInstance
      (jCameraCallback);
    TJPosDigital.JavaClass.getInstance.getCamera.readBack(30,
      jCameraCallbackInstance);
  end
  else
    ShowMessage('PosDigital was not initiated!');
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  fMyLog := TMyLog.Create;
  fMyLog.MemoLog := Memo1;
end;

end.
