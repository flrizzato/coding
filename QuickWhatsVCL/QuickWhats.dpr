program QuickWhats;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uMainForm in 'uMainForm.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Polar Dark');
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
