unit uMainDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.MSSQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Moni.FlatFile, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSSQL, FireDAC.Comp.UI, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FBDef, FireDAC.Phys.PGDef, FireDAC.Phys.OracleDef,
  FireDAC.Phys.DB2Def, FireDAC.Phys.DB2, FireDAC.Phys.Oracle, FireDAC.Phys.PG,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Phys.MySQL,
  FireDAC.Stan.StorageBin, FireDAC.Stan.StorageJSON;

type
  TMainDM = class(TDataModule)
    tableSQL: TFDMemTable;
    tableSQLConnectionName: TStringField;
    tableSQLExecutionInterval: TIntegerField;
    tableSQLConcurrentSessions: TIntegerField;
    tableSQLCommandText: TMemoField;
    tableSQLIsExecuting: TBooleanField;
    tableSQLcalcTitle: TStringField;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDPhysDB2DriverLink1: TFDPhysDB2DriverLink;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDQry: TFDQuery;
    ADPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    ADGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDCnn: TFDConnection;
    FDManager: TFDManager;
    procedure tableSQLCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainDM: TMainDM;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

uses system.IOUtils, VCL.Forms;

procedure TMainDM.DataModuleCreate(Sender: TObject);
var fFile: string;
begin
  fFile := ExtractFilePath(Application.ExeName) + PathDelim + 'config.json';
  if FileExists(fFile) then
    tableSQL.LoadFromFile(fFile);
end;

procedure TMainDM.DataModuleDestroy(Sender: TObject);
begin
  tableSQL.SaveToFile(ExtractFilePath(Application.ExeName) + PathDelim +
    'config.json');
end;

procedure TMainDM.tableSQLCalcFields(DataSet: TDataSet);
begin
  tableSQLcalcTitle.AsString := 'Connection: ' + tableSQLConnectionName.AsString
    + ' - Interval: ' + tableSQLExecutionInterval.AsString + ' - Sessions: ' +
    tableSQLConcurrentSessions.AsString;
end;

end.
