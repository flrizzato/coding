unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox,
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
    Label1: TLabel;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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

procedure TMainForm.FormCreate(Sender: TObject);
var
  Filter: JIntentFilter;
begin
  FMyListener := TMyReceiver.Create;
  FBroadcastReceiver := TJFMXBroadcastReceiver.JavaClass.init(FMyListener);
  Filter := TJIntentFilter.JavaClass.init(StringToJString('hsm.RECVRBI'));
  TAndroidHelper.context.getApplicationContext.registerReceiver
    (FBroadcastReceiver, Filter);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  TAndroidHelper.context.getApplicationContext.unregisterReceiver
    (FBroadcastReceiver);
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
  ldata := JStringToString(intent.getStringExtra(StringToJString('data'))).Trim;
  if not ldata.IsEmpty then
    MainForm.ListBox1.Items.Insert(0, ldata + ' - ' +
      FormatDateTime('hh:nn:ss', Now));
end;

end.
