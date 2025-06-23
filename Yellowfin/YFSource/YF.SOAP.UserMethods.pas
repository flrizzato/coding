unit YF.SOAP.UserMethods;

interface

type
  TYFUserMethods = class
    // Class functions for main calls.... then use this as the model...

    class function UpdatePassword(aUserID, aNewPassword : string): Boolean;
    class function ValidatePassword(aUserID, aPassword : string): Boolean;

    class function TestDefaultCredentials : Boolean;
    class function FetchSessionID(aUserID, aPassword: string): string; static;
    class function GenerateYellowfinSingleSignOnURL(aEntryPoint: string): string; static;
  end;

implementation

{ TYFMethods }
uses System.SysUtils, YF.SOAP.Defaults, YF.JAX.AdministrationService,
  YF.JAX.AdministrationService.Helper, YF.SOAP.Constants, YF.JAX.ReportService,
  YF.JAX.ReportService.Helper;

class function TYFUserMethods.FetchSessionID(aUserID, aPassword: string): string;
begin
  // Fech a sessionID for iframe implementation
  var WS := GetLegacyAdministrationService(False, YFDefaults.GetServiceURL(TYFDefaults.TYFService.Admin));
  var req := AdministrationServiceRequest.CreateWithDefaults(YFDefaults, YRC_LOGINUSER);

  req.Person.userId := aUserID;
  req.Person.password := aPassword;

  var
  SoapResult := WS.remoteAdministrationCall(req);
  try
    Result := SoapResult.loginSessionId;
  finally
    SoapResult.Free;
  end;
end;

class function TYFUserMethods.GenerateYellowfinSingleSignOnURL(aEntryPoint: string): string;
begin
  var url := YFDefaults.SigleSignOnBaseURL(TYFUserMethods.FetchSessionID(YFDefaults.loginId, YFDefaults.Loginpassword));
  Result := url + Format('&entry=%s', [aEntryPoint]);
end;

class function TYFUserMethods.TestDefaultCredentials: Boolean;
begin
  var WS := GetLegacyAdministrationService(False,YFDefaults.GetServiceURL(TYFDefaults.TYFService.Admin));

  var Req := AdministrationServiceRequest.CreateWithDefaults(YFDefaults,YRC_GETUSERREPORTS);
  var SoapResult := WS.remoteAdministrationCall(Req);
  try
    Result := SameStr(SoapResult.statusCode,YRS_SUCCESS);
  finally
    SoapResult.Free;
  end;
end;

class function TYFUserMethods.UpdatePassword(aUserID, aNewPassword: string): Boolean;
begin
// Update the Password for the User on the Screen
  var WS := GetLegacyAdministrationService(False,YFDefaults.GetServiceURL(TYFDefaults.TYFService.Admin));
  var Req := AdministrationServiceRequest.CreateWithDefaults(YFDefaults,YRC_CHANGEPASSWORD);
  req.Person.userId   := aUserID;
  req.Person.password := aNewPassword;

  var SoapResult := WS.remoteAdministrationCall(Req);
  try
    Result := SameStr(SoapResult.statusCode,YRS_SUCCESS);
  finally
    SoapResult.Free;
  end;
end;

class function TYFUserMethods.ValidatePassword(aUserID, aPassword: string): Boolean;
begin
  // Validate the Password for the User on the Screen
  var WS := GetLegacyAdministrationService(False,YFDefaults.GetServiceURL(TYFDefaults.TYFService.Admin));
  var req := AdministrationServiceRequest.CreateWithDefaults(YFDefaults,YRC_VALIDATEUSER);
  req.Person.userId   := aUserID;
  req.Person.password := aPassword;

  var SoapResult := WS.remoteAdministrationCall(Req);
  try
    Result := SameStr(SoapResult.statusCode,YRS_SUCCESS);
  finally
    SoapResult.Free;
  end;
end;

end.
