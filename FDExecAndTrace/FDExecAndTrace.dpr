program FDExecAndTrace;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uMainDM in 'uMainDM.pas' {MainDM: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  uSQLTest in 'uSQLTest.pas' {SQLTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Impressive Dark SE');
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSQLTest, SQLTest);
  Application.Run;
end.
