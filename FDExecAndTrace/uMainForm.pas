unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, System.Generics.Collections, System.Threading,
  Vcl.Samples.Spin, Vcl.WinXCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Comp.Client, Vcl.ControlList,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.ControlList, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Data.DB, FireDAC.Stan.StorageJSON,
  FireDAC.Comp.DataSet, Vcl.Samples.Bind.Editors, Data.Bind.Controls,
  Vcl.Bind.Navigator, System.Actions, Vcl.ActnList, Vcl.Bind.Grid, Vcl.Grids,
  FireDAC.Moni.RemoteClient, FireDAC.Moni.Base, FireDAC.Moni.FlatFile;

type
  TMainForm = class(TForm)
    ActionList1: TActionList;
    acExecuteSQL: TAction;
    acCancelSQL: TAction;
    acBackupCFG: TAction;
    acTestSQL: TAction;
    pgcMain: TPageControl;
    tbsExecute: TTabSheet;
    listSQL: TControlList;
    lblSQLText: TLabel;
    lblTitle: TLabel;
    butExecute: TControlListButton;
    butCancel: TControlListButton;
    butTest: TControlListButton;
    panOptions: TPanel;
    butBackup: TButton;
    tbsTrace: TTabSheet;
    panTop: TPanel;
    butEnvReport: TSpeedButton;
    butDBMSInfo: TSpeedButton;
    tgsTracing: TToggleSwitch;
    tgsMonitoring: TToggleSwitch;
    tgsSQLOnly: TToggleSwitch;
    memLog: TMemo;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    FDMonitor: TFDMoniRemoteClientLink;
    FDTrace: TFDMoniFlatFileClientLink;
    butNew: TButton;
    butDelete: TButton;
    butEdit: TButton;
    acNewSQL: TAction;
    acEditSQL: TAction;
    acDeleteSQL: TAction;
    BindNavigatorMain: TBindNavigator;
    procedure acExecuteSQLExecute(Sender: TObject);
    procedure acCancelSQLExecute(Sender: TObject);
    procedure butDBMSInfoClick(Sender: TObject);
    procedure butEnvReportClick(Sender: TObject);
    procedure tgsTracingClick(Sender: TObject);
    procedure tgsMonitoringClick(Sender: TObject);
    procedure listSQLBeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
      ARect: TRect; AState: TOwnerDrawState);
    procedure acBackupCFGExecute(Sender: TObject);
    procedure acTestSQLExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acNewSQLExecute(Sender: TObject);
    procedure acEditSQLExecute(Sender: TObject);
    procedure acDeleteSQLExecute(Sender: TObject);
  private
    { Private declarations }
    aSysJobs: TOrderedDictionary<string, TList<TThread>>;
    procedure LogThis(fMessage: string);
    procedure DisplaySQLEditForm(bAppend: boolean);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses System.IOUtils, System.UITypes,
  uMainDM, uSQLTest, uSQLEdit, uProcDM;

procedure TMainForm.acBackupCFGExecute(Sender: TObject);
var
  fFile, fBackupFile: string;
begin
  fFile := ExtractFilePath(Application.ExeName) + PathDelim + 'config.json';
  fBackupFile := ExtractFilePath(Application.ExeName) + PathDelim + 'config_' +
    FormatDateTime('yyyymmddhhnnss', Now) + '.json';
  TFile.Copy(fFile, fBackupFile, True);
  MessageDlg('Saved to ' + fBackupFile, TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
end;

procedure TMainForm.acCancelSQLExecute(Sender: TObject);
var
  fThread: TThread;
  aTaskList: TList<TThread>;
  nItemIndex: Integer;
begin
  nItemIndex := listSQL.ItemIndex;
  if aSysJobs.ContainsKey('job#' + nItemIndex.ToString) then
  begin
    aTaskList := aSysJobs.ExtractPair('job#' + nItemIndex.ToString).Value;
    for fThread in aTaskList do
      if not fThread.Finished then
        fThread.Terminate;
  end;
end;

procedure TMainForm.acExecuteSQLExecute(Sender: TObject);
var
  aTaskList: TList<TThread>;
  nItemIndex: Integer;
  nConcurrentSessions: Integer;
  sConnectionName: string;
  sCommandText: string;
  nExecutionInterval: Integer;
begin
  if MainDM.tableSQLCommandText.AsString.Trim = '' then
    raise Exception.Create('Error Message: Missing the SQL Statement!');

  if MainDM.tableSQLCommandText.AsString.IndexOf('SELECT') = -1 then
    raise Exception.Create('Error Message: The SQL is not a SELECT statement!');

  nItemIndex := listSQL.ItemIndex;

  if not aSysJobs.ContainsKey('job#' + nItemIndex.ToString) then
  begin
    FDTrace.Tracing := False;
    FDMonitor.Tracing := False;

    nConcurrentSessions := MainDM.tableSQLConcurrentSessions.AsInteger;
    sConnectionName := MainDM.tableSQLConnectionName.AsString;
    sCommandText := MainDM.tableSQLCommandText.AsString;
    nExecutionInterval := MainDM.tableSQLExecutionInterval.AsInteger;

    aTaskList := TList<TThread>.Create;

    for var i := 1 to nConcurrentSessions do
    begin
      var fThread := TThread.CreateAnonymousThread(
        procedure()
        var
          fProcDM: TProcDM;
        begin
          fProcDM := TProcDM.Create(Self);
          try
            try
              fProcDM.FDCnn.ConnectionDefName := sConnectionName;

              if tgsTracing.State = TToggleSwitchState.tssOn then
              begin
                if not FDTrace.Tracing then
                begin
                  FDTrace.FileName := ExtractFilePath(Application.ExeName) +
                    PathDelim + 'trace_' + FormatDateTime('yyyymmdd',
                    Now) + '.log';
{$R-}
                  if tgsSQLOnly.State = TToggleSwitchState.tssOn then
                    FDTrace.EventKinds := [ekSQL, ekSQLVarIn, ekSQLVarOut]
                  else
                    FDTrace.EventKinds := FDTrace.EventKinds + [ekSQL,
                      ekSQLVarIn, ekSQLVarOut];
{$R+}
                  FDTrace.Tracing := tgsTracing.Enabled;
                end;
                fProcDM.FDCnn.Params.MonitorBy := mbFlatFile
              end
              else if tgsMonitoring.State = TToggleSwitchState.tssOn then
              begin
                if not FDMonitor.Tracing then
                begin
                  FDMonitor.Host := '127.0.0.1';
                  FDMonitor.Port := 8050;
{$R-}
                  if tgsSQLOnly.State = TToggleSwitchState.tssOn then
                    FDMonitor.EventKinds := [ekSQL, ekSQLVarIn, ekSQLVarOut]
                  else
                    FDMonitor.EventKinds := FDMonitor.EventKinds + [ekSQL,
                      ekSQLVarIn, ekSQLVarOut];
{$R+}
                  FDMonitor.Tracing := tgsMonitoring.Enabled;
                end;
                fProcDM.FDCnn.Params.MonitorBy := mbRemote
              end
              else
                fProcDM.FDCnn.Params.MonitorBy := mbNone;

              fProcDM.FDCnn.Open;
              while True do
              begin
                fProcDM.FDQry.Close;
                if System.DebugHook > 0 then
                  LogThis(sCommandText);
                if TThread.CurrentThread.CheckTerminated then
                  Exit;
                fProcDM.FDQry.Open(sCommandText);
                Sleep(nExecutionInterval);
              end;

            except
              on E: Exception do
                LogThis(E.Message);
            end;

          finally
            fProcDM.Free;
          end;
        end);
      fThread.FreeOnTerminate := False;
      fThread.Start;
      aTaskList.Add(fThread);
    end;
    aSysJobs.Add('job#' + nItemIndex.ToString, aTaskList);
  end;
end;

procedure TMainForm.acTestSQLExecute(Sender: TObject);
begin
  var fSQLTest := TSQLTestForm.Create(Self);
  try
    try
      MainDM.FDCnn.ConnectionDefName := MainDM.tableSQLConnectionName.AsString;
      MainDM.FDQry.SQL.Text := MainDM.tableSQLCommandText.AsString;
      MainDM.FDQry.Open;
      fSQLTest.DataSourceMain.DataSet := MainDM.FDQry;
      fSQLTest.Caption := fSQLTest.Caption + ' (' +
        MainDM.FDQry.RecordCount.ToString + ' rows)';
      fSQLTest.Height := Height - (Height * 10 div 100);
      fSQLTest.Width := Width - (Width * 10 div 100);
      fSQLTest.ShowModal;
    except
      on E: Exception do
        raise Exception.Create
          ('Error Message: Error when trying to execute the SQL command!');
    end;
  finally
    fSQLTest.Free;
  end;
end;

procedure TMainForm.butDBMSInfoClick(Sender: TObject);
var
  DBMSMetadata: IFDPhysConnectionMetadata;
  MetaTables, MetaColumns: TFDDatSView;
  DBKind: TFDRDBMSKind;
  sDBName: string;
  i, j: Integer;
begin
  try
    MainDM.FDCnn.ConnectionDefName := MainDM.tableSQLConnectionName.AsString;
    MainDM.FDCnn.Open;

    DBMSMetadata := MainDM.FDCnn.ConnectionMetaDataIntf;
    DBKind := DBMSMetadata.Kind;

    case DBKind of
      0:
        sDBName := 'Unknown';
      1:
        sDBName := 'Oracle';
      2:
        sDBName := 'MSSQL';
      3:
        sDBName := 'MSAccess';
      4:
        sDBName := 'MySQL';
      5:
        sDBName := 'DB2';
      6:
        sDBName := 'SQLAnywhere';
      7:
        sDBName := 'Advantage';
      8:
        sDBName := 'Interbase';
      9:
        sDBName := 'Firebird';
      10:
        sDBName := 'SQLite';
      11:
        sDBName := 'PostgreSQL';
      12:
        sDBName := 'NexusDB';
      13:
        sDBName := 'DataSnap';
      14:
        sDBName := 'Informix';
      15:
        sDBName := 'Teradata';
      16:
        sDBName := 'MongoDB';
      17:
        sDBName := 'Other';
    end;

    memLog.Clear;
    memLog.Lines.Add(sDBName);

    memLog.Lines.Add('DBMS Server Version: ' +
      DBMSMetadata.ServerVersion.ToString);
    memLog.Lines.Add('DBMS Client Version: ' +
      DBMSMetadata.ClientVersion.ToString);

    memLog.Lines.Add('');
    memLog.Lines.Add('Table metadata:');

    MetaTables := DBMSMetadata.GetTables([TFDPhysObjectScope.osMy],
      [TFDPhysTableKind.tkTable], '', '', '');
    for i := 0 to MetaTables.Rows.Count - 1 do
    begin
      memLog.Lines.Add('');
      memLog.Lines.Add('===' + MetaTables.Rows[i]
        .GetData('TABLE_NAME') + '===');
      MetaColumns := DBMSMetadata.GetTableFields('', '',
        MetaTables.Rows[i].GetData('TABLE_NAME'), '');
      for j := 0 to MetaColumns.Rows.Count - 1 do
        memLog.Lines.Add(MetaColumns.Rows[j].GetData('COLUMN_NAME'));
    end;
  except
    on E: Exception do
      raise Exception.Create('Error Message: ' + E.Message);
  end;
end;

procedure TMainForm.butEnvReportClick(Sender: TObject);
begin
  try
    MainDM.FDCnn.ConnectionDefName := MainDM.tableSQLConnectionName.AsString;
    MainDM.FDCnn.Open;
    if MainDM.FDCnn.Connected then
      MainDM.FDCnn.GetInfoReport(memLog.Lines);
  except
    on E: Exception do
      raise Exception.Create('Error Message: ' + E.Message);
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  aSysJobs := TOrderedDictionary<string, TList<TThread>>.Create;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  aSysJobs.Free;
end;

procedure TMainForm.listSQLBeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
  ARect: TRect; AState: TOwnerDrawState);
begin
  if aSysJobs.ContainsKey('job#' + AIndex.ToString) then
  begin
    butExecute.Font.Color := clRed;
    butExecute.Caption := 'Executing...'
  end
  else
  begin
    butExecute.Font.Color := butTest.Font.Color;
    butExecute.Caption := 'Execute';
  end;
end;

procedure TMainForm.LogThis(fMessage: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      memLog.Lines.Add(FormatDateTime('hh:nn:ss', Now) + '- ' + fMessage);
    end);
end;

procedure TMainForm.tgsMonitoringClick(Sender: TObject);
begin
  if tgsMonitoring.State = tssOn then
    if tgsTracing.State = tssOn then
      tgsTracing.State := tssOff;
end;

procedure TMainForm.tgsTracingClick(Sender: TObject);
begin
  if tgsTracing.State = tssOn then
    if tgsMonitoring.State = tssOn then
      tgsMonitoring.State := tssOff;
end;

procedure TMainForm.acNewSQLExecute(Sender: TObject);
begin
  DisplaySQLEditForm(True);
end;

procedure TMainForm.acEditSQLExecute(Sender: TObject);
begin
  DisplaySQLEditForm(False);
end;

procedure TMainForm.DisplaySQLEditForm(bAppend: boolean);
begin
  var fSQLEdit := TSQLEditForm.Create(Self);
  try
    fSQLEdit.Height := Height - (Height * 10 div 100);
    fSQLEdit.Width := Width - (Width * 10 div 100);
    fSQLEdit.bAppend := bAppend;
    fSQLEdit.ShowModal;
  finally
    fSQLEdit.Free;
  end;
end;

procedure TMainForm.acDeleteSQLExecute(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to delete this record?', TMsgDlgType.mtWarning,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
    MainDM.tableSQL.Delete;
end;

end.

