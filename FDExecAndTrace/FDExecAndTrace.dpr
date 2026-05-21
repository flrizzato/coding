program FDExecAndTrace;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uMainDM in 'uMainDM.pas' {MainDM: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  uSQLTest in 'uSQLTest.pas' {SQLTestForm},
  uSQLEdit in 'uSQLEdit.pas' {SQLEditForm},
  uProcDM in 'uProcDM.pas' {ProcDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Impressive Dark SE');
  Application.CreateForm(TMainDM, MainDM);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
