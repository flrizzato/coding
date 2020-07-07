program ZxingDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  FMX.Media.Android in 'Custom\FMX.Media.Android.pas',
  AudioManager in 'Custom\AudioManager.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
