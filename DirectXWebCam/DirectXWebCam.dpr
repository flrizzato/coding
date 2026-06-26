program DirectXWebCam;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  DirectShowWebcamCapture in 'DirectShowWebcamCapture.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows Modern Dark');
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
