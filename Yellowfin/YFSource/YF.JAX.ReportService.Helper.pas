unit YF.JAX.ReportService.Helper;

interface

uses YF.JAX.ReportService, YF.SOAP.Defaults;

type
  TReportServiceRequestHelper = Class Helper for ReportServiceRequest
  public
    class function CreateWithDefaults(Defaults : TYFDefaults; FunctionName : string = '') : ReportServiceRequest;
  end;


implementation


{ TAdministrationServiceRequestHelper }

class function TReportServiceRequestHelper.CreateWithDefaults(Defaults : TYFDefaults; FunctionName : string): ReportServiceRequest;
begin
  Result := ReportServiceRequest.Create;
  Result.reportRequest := FunctionName;
  Result.password := Defaults.Loginpassword;
  Result.loginId := Defaults.loginId;
  Result.orgId := Defaults.orgId;
  Result.reportUserId := Defaults.person_userId;
  Result.reportUserPassword := Defaults.person_password;
end;

end.
