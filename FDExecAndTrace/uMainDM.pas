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
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Phys.MySQL;

type
  TMainDM = class(TDataModule)
    FDCnn: TFDConnection;
    ADGUIxWaitCursor1: TFDGUIxWaitCursor;
    ADPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDQry: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    FDPhysDB2DriverLink1: TFDPhysDB2DriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainDM: TMainDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
