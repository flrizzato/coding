unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    butInit: TButton;
    procedure butInitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const DEMO_APP_CLIENT_ID = '193213529837179';

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses JavaInterfaces,
     Androidapi.Helpers, Androidapi.JNI.App, Androidapi.JNI.JavaTypes;

procedure TForm1.butInitClick(Sender: TObject);
begin
  try
    var app := TAndroidHelper.Context.getApplicationContext as JApplication;

    var config := TJMPConfigBuilder.JavaClass.init(app, StringToJString(DEMO_APP_CLIENT_ID))
      .withBluetoothConfig()
      .withBluetoothUIConfig()
      .withBitmapPrinterConfig()
      .withCameraScanner()
      .build();

    TJMPManager.JavaClass.INSTANCE.initialize(app, config);
    ShowMessage('MP SDK Initialized');
  except
    on E: Exception do
      ShowMessage('Error initializing SDK: ' + E.Message);
  end;
end;

end.
