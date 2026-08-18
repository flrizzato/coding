program QuickWhats;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uMainForm in 'uMainForm.pas' {MainForm},
  uEdgeForm in 'uEdgeForm.pas' {EdgeForm},
  uLib in 'uLib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows Modern SlateGray');
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
