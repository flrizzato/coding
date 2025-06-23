unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.WebBrowser, FMX.Controls.Presentation, Soap.InvokeRegistry,
  System.Net.URLClient, Soap.Rio, Soap.SOAPHTTPClient;

type
  TMainForm = class(TForm)
    ToolBar1: TToolBar;
    WebBrowser1: TWebBrowser;
    butRefresh: TButton;
    StyleBook1: TStyleBook;
    procedure butRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

const cReportID = 92164;
const cBaseURL = 'https://c90b-177-181-5-181.ngrok-free.app/';
const cWebServiceURL = 'webservices/LegacyAdministrationService';
const cYellowFinURL = 'logon.i4?LoginWebserviceId=%s&disableheader=true&disablesidenav=true&hidelogoff=true';

implementation

{$R *.fmx}
{$R *.iPad.fmx IOS}
{$R *.LgXhdpiPh.fmx ANDROID}

uses YF.JAX.AdministrationService;

procedure TMainForm.butRefreshClick(Sender: TObject);
begin
  var WS := GetLegacyAdministrationService(False, cBaseURL + cWebServiceURL);

  var REQ := AdministrationServiceRequest.Create;
  REQ.function_ := 'LOGINUSER';
  REQ.password := 'test';
  REQ.loginId := 'admin@yellowfin.com.au';
  REQ.orgId := 1;
  REQ.person := AdministrationPerson.Create;
  REQ.person.userId := 'admin@yellowfin.com.au';
  REQ.person.password := 'test';

  var SoapResult := WS.remoteAdministrationCall(REQ);
  var aSessionID := SoapResult.loginSessionId;

  var aURL := Format(cBaseURL + cYellowFinURL, [aSessionId]) +
              Format('&entry=%s', ['VIEWREPORT']) +
              Format('&reportid=%d', [cReportID]);

  WebBrowser1.Navigate(aURL);
end;

end.
