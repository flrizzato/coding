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
    pgcMain: TPageControl;
    tbsTrace: TTabSheet;
    tbsExecute: TTabSheet;
    panTop: TPanel;
    butEnvReport: TSpeedButton;
    butDBMSInfo: TSpeedButton;
    tgsTracing: TToggleSwitch;
    tgsMonitoring: TToggleSwitch;
    memLog: TMemo;
    listSQL: TControlList;
    Label1: TLabel;
    Label2: TLabel;
    butExecute: TControlListButton;
    memSQL: TMemo;
    panExecute: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    spnInternal: TSpinEdit;
    spiSessions: TSpinEdit;
    tableSQL: TFDMemTable;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    tableSQLConnectionName: TStringField;
    tableSQLExecutionInterval: TIntegerField;
    tableSQLConcurrentSessions: TIntegerField;
    tableSQLCommandText: TMemoField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkControlToField2: TLinkControlToField;
    tableSQLcalcTitle: TStringField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    BindNavigatorMain: TBindNavigator;
    cmbConnections: TComboBox;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField3: TLinkControlToField;
    FDManager: TFDManager;
    butCancel: TControlListButton;
    tableSQLIsExecuting: TBooleanField;
    ActionList1: TActionList;
    acExecuteSQL: TAction;
    acCancelSQL: TAction;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    tgsSQLOnly: TToggleSwitch;
    FDMonitor: TFDMoniRemoteClientLink;
    FDTrace: TFDMoniFlatFileClientLink;
    Panel1: TPanel;
    Button1: TButton;
    acBackupCFG: TAction;
    acTestSQL: TAction;
    butTest: TControlListButton;
    Splitter1: TSplitter;
    procedure tableSQLCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  private
    { Private declarations }
    aSysJobs: TDictionary<string, TList<TThread>>;
    procedure LogThis(fMessage: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses System.IOUtils, System.UITypes,
  uMainDM, uSQLTest;

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
      fThread.Terminate;
  end;
end;

procedure TMainForm.acExecuteSQLExecute(Sender: TObject);
var
  aTaskList: TList<TThread>;
  nItemIndex: Integer;
  nConcurrentSessions: Integer;
  sConnectionName: String;
  sCommandText: String;
  nExecutionInterval: Integer;
begin
  if tableSQLCommandText.AsString.Trim = '' then
    raise Exception.Create('Error Message: Missing the SQL Statement!');

  if tableSQLCommandText.AsString.IndexOf('SELECT') = -1 then
    raise Exception.Create('Error Message: The SQL is not a SELECT statement!');

  nItemIndex := listSQL.ItemIndex;

  if not aSysJobs.ContainsKey('job#' + nItemIndex.ToString) then
  begin
    FDTrace.Tracing := False;
    FDMonitor.Tracing := False;

    nConcurrentSessions := tableSQLConcurrentSessions.AsInteger;
    sConnectionName := tableSQLConnectionName.AsString;
    sCommandText := tableSQLCommandText.AsString;
    nExecutionInterval := tableSQLExecutionInterval.AsInteger;

    aTaskList := TList<TThread>.Create;

    for var i := 1 to nConcurrentSessions do
    begin
      var
      fThread := TThread.CreateAnonymousThread(
        procedure()
        var
          fMainDM: TMainDM;
        begin
          fMainDM := TMainDM.Create(Self);
          try
            try
              fMainDM.FDCnn.ConnectionDefName := sConnectionName;

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
                fMainDM.FDCnn.Params.MonitorBy := mbFlatFile
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
                fMainDM.FDCnn.Params.MonitorBy := mbRemote
              end
              else
                fMainDM.FDCnn.Params.MonitorBy := mbNone;

              fMainDM.FDCnn.Open;
              while True do
              begin
                if TThread.CurrentThread.CheckTerminated then
                  Exit;
                fMainDM.FDQry.Close;
                if System.DebugHook > 0 then
                  LogThis(sCommandText);
                fMainDM.FDQry.Open(sCommandText);
                Sleep(nExecutionInterval);
              end;

            except
              on E: Exception do
                LogThis(E.Message);
            end;

          finally
            fMainDM.Free;
          end;
        end);
      fThread.Start;
      aTaskList.Add(fThread);
    end;
    aSysJobs.Add('job#' + nItemIndex.ToString, aTaskList);
  end;
end;

procedure TMainForm.acTestSQLExecute(Sender: TObject);
var
  fMainDM: TMainDM;
  fSQLTest: TSQLTest;
begin
  fMainDM := TMainDM.Create(Self);
  fSQLTest := TSQLTest.Create(Self);
  try
    try
      fMainDM.FDCnn.ConnectionDefName := tableSQLConnectionName.AsString;
      fMainDM.FDQry.SQL.Text := tableSQLCommandText.AsString;
      fMainDM.FDQry.Open;
      fSQLTest.DataSourceMain.DataSet := fMainDM.FDQry;
      fSQLTest.Caption := fSQLTest.Caption + ' (' +
        fMainDM.FDQry.RecordCount.ToString + ' rows)';
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
    fMainDM.Free;
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
  var
  fMainDM := TMainDM.Create(nil);
  try
    try
      fMainDM.FDCnn.ConnectionDefName := tableSQLConnectionName.AsString;
      fMainDM.FDCnn.Open;

      DBMSMetadata := fMainDM.FDCnn.ConnectionMetaDataIntf;
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
  finally
    fMainDM.Free;
  end;
end;

procedure TMainForm.butEnvReportClick(Sender: TObject);
begin
  var
  fMainDM := TMainDM.Create(nil);
  try
    try
      fMainDM.FDCnn.ConnectionDefName := tableSQLConnectionName.AsString;
      fMainDM.FDCnn.Open;
      if fMainDM.FDCnn.Connected then
        fMainDM.FDCnn.GetInfoReport(memLog.Lines);
    except
      on E: Exception do
        raise Exception.Create('Error Message: ' + E.Message);
    end;
  finally
    fMainDM.Free;
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tableSQL.SaveToFile(ExtractFilePath(Application.ExeName) + PathDelim +
    'config.json');
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  aSysJobs := TDictionary < string, TList < TThread >>.Create;

  FDManager.GetConnectionNames(cmbConnections.Items);

  var
    fFile: string := ExtractFilePath(Application.ExeName) + PathDelim +
      'config.json';

  if FileExists(fFile) then
    tableSQL.LoadFromFile(fFile);
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
    butExecute.Font.Color := clBlack;
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

procedure TMainForm.tableSQLCalcFields(DataSet: TDataSet);
begin
  tableSQLcalcTitle.AsString := 'Connection: ' + tableSQLConnectionName.AsString
    + ' - Interval: ' + tableSQLExecutionInterval.AsString + ' - Sessions: ' +
    tableSQLConcurrentSessions.AsString;
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

end.
