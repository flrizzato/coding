program FMXSensors;

uses
  FMX.Forms,
  MainFMXUnit in 'MainFMXUnit.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
