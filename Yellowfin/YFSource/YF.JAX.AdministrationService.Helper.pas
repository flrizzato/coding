unit YF.JAX.AdministrationService.Helper;

interface

uses YF.JAX.AdministrationService, YF.SOAP.Defaults;

type
  TAdministrationServiceRequestHelper = Class Helper for AdministrationServiceRequest
  public
    class function CreateWithDefaults(Defaults : TYFDefaults; FunctionName : string = '') : AdministrationServiceRequest;
  end;


implementation


{ TAdministrationServiceRequestHelper }

class function TAdministrationServiceRequestHelper.CreateWithDefaults(Defaults : TYFDefaults; FunctionName : string): AdministrationServiceRequest;
begin
  Result := AdministrationServiceRequest.Create;
  Result.function_ := FunctionName;
  Result.password := Defaults.Loginpassword;
  Result.loginId := Defaults.loginId;
  Result.orgId := Defaults.orgId;
  Result.person := AdministrationPerson.Create;
  Result.person.userId := Defaults.person_userId;
  Result.person.password := Defaults.person_password;
end;

end.
