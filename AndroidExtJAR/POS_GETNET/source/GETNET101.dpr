program GETNET101;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainForm in 'uMainForm.pas' {FormMain} ,
  bridge in '..\bridge.pas',
  bridge_callback in '..\bridge_callback.pas',
  uGetnet_classes in 'uGetnet_classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;

end.
