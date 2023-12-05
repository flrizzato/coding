program ZxingDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Skia,
  uMainForm in 'uMainForm.pas' {MainForm},
  uAudioManager in 'uAudioManager.pas';

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
