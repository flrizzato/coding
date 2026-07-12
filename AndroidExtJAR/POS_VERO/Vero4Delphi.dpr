program Vero4Delphi;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrinterActivity in 'uPrinterActivity.pas' {FormPrinterActivity},
  classes in 'lib\classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrinterActivity, FormPrinterActivity);
  Application.Run;

end.
