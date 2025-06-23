unit Frames.YellowfinBrowser;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.WebBrowser, System.Actions, FMX.ActnList,
  FMX.ListBox;

type
  TFrameYellowfinBrowser = class(TFrame)
    WebBrowser: TWebBrowser;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnRefresh: TButton;
    ActionList1: TActionList;
    actHome: TAction;
    cbEntryPoint: TComboBox;
    LblEntryPoint: TLabel;
    procedure actHomeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); reintroduce;
  end;

implementation

{$R *.fmx}
uses YF.SOAP.UserMethods, YF.SOAP.Defaults;

procedure TFrameYellowfinBrowser.actHomeExecute(Sender: TObject);
begin
  var URL := TYFUserMethods.GenerateYellowfinSingleSignOnURL(cbEntryPoint.Selected.Text);
  WebBrowser.Navigate(URL);
end;

constructor TFrameyellowfinBrowser.Create(AOwner : TComponent);
begin
  inherited;
  cbEntryPoint.ItemIndex := 0;
  actHome.Execute;
end;

end.
