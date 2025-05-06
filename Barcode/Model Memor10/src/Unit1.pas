unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.Messaging, FMX.Platform,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Androidapi.JNI.GraphicsContentViewText,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.WebBrowser,
  FMX.Objects, FMX.ScrollBox, FMX.Memo, FMX.Memo.Types, FMX.Edit;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Layout1: TLayout;
    Memo1: TMemo;
    Label1: TLabel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function HandleAppEvent(AAppEvent: TApplicationEvent;
      AContext: TObject): Boolean;
    procedure HandleActivityMessage(const Sender: TObject; const M: TMessage);
    function HandleIntentAction(const Data: JIntent): Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses FMX.Platform.Android, Androidapi.JNI.JavaTypes, Androidapi.JNI.Net,
  Androidapi.JNI.Os, Androidapi.Helpers;

procedure TForm1.FormCreate(Sender: TObject);
var
  AppEventService: IFMXApplicationEventService;
begin
  if TPlatformServices.Current.SupportsPlatformService
    (IFMXApplicationEventService, AppEventService) then
    AppEventService.SetApplicationEventHandler(HandleAppEvent);

  // Register the type of intent action that we want to be able to receive.
  // Note: A corresponding <action> tag must also exist in the <intent-filter> section of AndroidManifest.template.xml.
  MainActivity.registerIntentAction
    (StringToJString('com.datalogic.decodewedge.decode_action'));
  TMessageManager.DefaultManager.SubscribeToMessage
    (TMessageReceivedNotification, HandleActivityMessage);
end;

procedure TForm1.HandleActivityMessage(const Sender: TObject;
  const M: TMessage);
begin
  if M is TMessageReceivedNotification then
    HandleIntentAction(TMessageReceivedNotification(M).Value);
end;

function TForm1.HandleAppEvent(AAppEvent: TApplicationEvent;
  AContext: TObject): Boolean;
var
  StartupIntent: JIntent;
begin
  Result := False;
  if AAppEvent = TApplicationEvent.BecameActive then
  begin
    StartupIntent := MainActivity.getIntent;
    if StartupIntent <> nil then
      HandleIntentAction(StartupIntent);
  end;
end;

function TForm1.HandleIntentAction(const Data: JIntent): Boolean;
var
  Extras: JBundle;
  data_string: string;
begin
  Result := False;
  if Data <> nil then
  begin
    Memo1.ClearContent;
    Extras := Data.getExtras;
    if Extras <> nil then
    begin
      data_string := JStringToString
        (Extras.getString(StringToJString('com.datalogic.decode.intentwedge.barcode_string')));
      Memo1.Lines.Insert(0, data_string);
    end;
    Invalidate;
  end;
end;

end.
