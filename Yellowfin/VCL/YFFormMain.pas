unit YFFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, Vcl.ToolWin, Vcl.ComCtrls,
  Frames.User.Login, Data.Bind.GenData, Vcl.Bind.GenData, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TForm2 = class(TForm)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    frameLogin: TframeUserLogin;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OnLogin(Sender : TComponent; ASuccess : Boolean);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses YF.SOAP.Defaults, Frames.Reports, YF.Resources, YF.SOAP.ReportService.Data,
  YF.VCL.Resources;

procedure TForm2.FormCreate(Sender: TObject);
begin
  // Set any defaults for the YellowFin connection e.g.
  // YFDefaults.BaseURL := 127.0.0.1:8888

  var Favs : IFavourateImages := TYF_VCLResources.Create(Self);
  YF_ReportData := TYF_ReportData.Create(Self, Favs);

  // Setup the event handler for the frames
  FrameLogin.Initialize(OnLogin);
  // Show the login screen and only allow access if they complete the details
end;

procedure TForm2.OnLogin(Sender: TComponent; ASuccess: Boolean);
begin
  if ASuccess then begin
    FrameLogin.Hide;
    var NewReportFrame := TFrameReports.Create(Self,0);
    NewReportFrame.Parent := Self;
    NewReportFrame.Align := TAlign.alClient;
    NewReportFrame.Visible := True;
  end else
    ShowMessage('Invalid Login');
end;

end.
