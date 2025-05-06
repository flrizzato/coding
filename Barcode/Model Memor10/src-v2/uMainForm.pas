unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.Messaging, FMX.Platform,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.WebBrowser,
  FMX.Objects, FMX.ScrollBox, FMX.Memo, FMX.Memo.Types, FMX.Edit,
  Androidapi.JNIBridge,
  Androidapi.JNI.Embarcadero,
  Androidapi.JNI.GraphicsContentViewText;

type
  TMyReceiver = class(TJavaLocal, JFMXBroadcastReceiverListener)
  public
    constructor Create;
    procedure onReceive(context: JContext; intent: JIntent); cdecl;
  end;

type
  TMainForm = class(TForm)
    ToolBar1: TToolBar;
    Layout1: TLayout;
    memLog: TMemo;
    lblTitle: TLabel;
    butStart: TButton;
    butClear: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure butStartClick(Sender: TObject);
    procedure butClearClick(Sender: TObject);
  private
    { Private declarations }
    FMyListener: TMyReceiver;
    FBroadcastReceiver: JFMXBroadcastReceiver;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses
  Androidapi.Helpers,
  Androidapi.JNI.JavaTypes;

procedure TMainForm.butClearClick(Sender: TObject);
begin
  memLog.Lines.Clear;
end;

procedure TMainForm.butStartClick(Sender: TObject);
var
  LJIntent: JIntent;
begin
  LJIntent := TJIntent.Create;
  LJIntent.setAction(StringToJString('NEED TO BE ADJUSTED'));
  TAndroidHelper.context.sendBroadcast(LJIntent);
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  Filter: JIntentFilter;
begin
  FMyListener := TMyReceiver.Create;
  FBroadcastReceiver := TJFMXBroadcastReceiver.JavaClass.init(FMyListener);
  Filter := TJIntentFilter.JavaClass.init
    (StringToJString('NEED TO BE ADJUSTED'));
  TAndroidHelper.context.getApplicationContext.registerReceiver
    (FBroadcastReceiver, Filter);
end;

{ TMyReceiver }

constructor TMyReceiver.Create;
begin
  inherited;
end;

procedure TMyReceiver.onReceive(context: JContext; intent: JIntent);
var
  ldata: string;
begin
  ldata := JStringToString
    (intent.getStringExtra(StringToJString('NEED TO BE ADJUSTED'))).Trim;
  if not ldata.IsEmpty then
    MainForm.memLog.Lines.Insert(0, ldata + ' - ' +
      FormatDateTime('hh:nn:ss', Now));
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  TAndroidHelper.context.getApplicationContext.unregisterReceiver
    (FBroadcastReceiver);
end;

end.
