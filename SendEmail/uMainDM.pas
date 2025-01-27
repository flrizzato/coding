unit uMainDM;

interface

uses
  System.SysUtils, System.Classes;

type
  TMainDM = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function SendMailAPI(aTenant, aUser_id, aClient_id, aClient_secret
      : string): boolean;
  end;

var
  MainDM: TMainDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TDataModule1 }

uses System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  System.JSON, uMailData;

function TMainDM.SendMailAPI(aTenant, aUser_id, aClient_id, aClient_secret
  : string): boolean;
var
  sAuthToken, sURL, sBody: string;
  lHttp: TNetHTTPClient;
  lResponse: IHTTPResponse;
  lBody: TStringStream;
begin
  Result := False;

  // First, obtain an access token using the Microsoft Graph API.
  lHttp := TNetHTTPClient.Create(nil);
  try
    sURL := 'https://login.microsoftonline.com/' + aTenant +
      '/oauth2/v2.0/token';

    sBody := 'grant_type=client_credentials' + '&client_id=' + aClient_id +
      '&client_secret=' + aClient_secret +
      '&scope=https://graph.microsoft.com/.default';

    lBody := TStringStream.Create(sBody);
    try
      lResponse := lHttp.Post(sURL, lBody, nil);
      try
        if lResponse.StatusCode = 200 then
        begin
          sAuthToken := TJSONObject.ParseJSONValue(lResponse.ContentAsString)
            .GetValue<string>('access_token');
        end
        else
        begin
          raise Exception.Create('Error Message: ' + lResponse.StatusText);
          Exit;
        end;
      finally
        lResponse := nil;
      end;
    finally
      lBody.Free;
    end;
  finally
    lHttp.Free;
  end;

  // Now, send the email using the access token.
  lHttp := TNetHTTPClient.Create(nil);
  try
    sURL := 'http://graph.microsoft.com/v1.0/users/' + aUser_id + '/sendMail';

    TJSONMapper<Mail>.SetDefaultLibrary('System.JSON.Serializers');
    var LMail := TMailData.Create;
    LMail.Message.Subject := 'This is the subject';
    LMail.Message.Body.contentType := 'Text';
    LMail.Message.Body.content := 'This is the body content';
    LMail.Message.toRecipients.Add(TToRecipient.Create);
    LMail.Message.toRecipients[LMail.Message.toRecipients.Count - 1]
      .emailAddress.Address := 'someemailaddress@gmail.com';
    LMail.Message.ccRecipients.Add(TCcRecipient.Create);
    LMail.Message.ccRecipients[LMail.Message.ccRecipients.Count - 1]
      .emailAddress.Address := 'anotheremailaddress@gmail.com';
    LMail.saveToSentItems := True;

    lBody := TStringStream.Create(LMail.ToJSONString, TEncoding.UTF8);
    try
      lHttp.contentType := 'application/json';
      lHttp.CustHeaders.Add('Authorization', 'Bearer ' + sAuthToken);
      lResponse := lHttp.Post(sURL, lBody, nil);
      try
        if lResponse.StatusCode <> 202 then
        begin
          raise Exception.Create('Error Message: ' + lResponse.StatusText);
          Exit;
        end;
        Result := True;
      finally
        lResponse := nil;
      end;
    finally
      lBody.Free;
    end;
  finally
    lHttp.Free;
  end;
end;

end.
