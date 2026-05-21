unit uProcDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.DB2Def, FireDAC.Phys.OracleDef,
  FireDAC.Phys.IBDef, FireDAC.Phys.PGDef, FireDAC.Phys.FBDef,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.MSSQLDef,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.IB, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.MSSQL, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL, FireDAC.Phys.FB,
  FireDAC.Phys.PG, FireDAC.Phys.IBBase, FireDAC.Phys.Oracle,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.DB2;

type
  TProcDM = class(TDataModule)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
