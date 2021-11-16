program FireDAC_MultiDB;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Emerald');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
