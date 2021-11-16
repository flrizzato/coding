unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.CDataExcel,
  FireDAC.Phys.CDataExcelDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1RowId: TIntegerField;
    FDQuery1RowID2: TWideStringField;
    FDQuery1OrderID: TWideStringField;
    FDQuery1OrderDate: TWideStringField;
    FDQuery1ShipDate: TWideStringField;
    FDQuery1ShipMode: TWideStringField;
    FDQuery1CustomerID: TWideStringField;
    FDQuery1CustomerName: TWideStringField;
    FDQuery1Segment: TWideStringField;
    FDQuery1Country: TWideStringField;
    FDQuery1City: TWideStringField;
    FDQuery1State: TWideStringField;
    FDQuery1PostalCode: TWideStringField;
    FDQuery1Region: TWideStringField;
    FDQuery1ProductID: TWideStringField;
    FDQuery1Category: TWideStringField;
    FDQuery1SubCategory: TWideStringField;
    FDQuery1ProductName: TWideStringField;
    FDQuery1Sales: TWideStringField;
    FDQuery1Quantity: TWideStringField;
    FDQuery1Discount: TWideStringField;
    FDQuery1Profit: TWideStringField;
    Panel1: TPanel;
    Button1: TButton;
    FDUpdateSQL1: TFDUpdateSQL;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    memSQL: TMemo;
    Splitter1: TSplitter;
    BindingsList1: TBindingsList;
    LinkControlToPropertySQLText: TLinkControlToProperty;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDConnection1.Open;
  FDQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDQuery1.Close;
  FDConnection1.Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if FDQuery1.UpdatesPending then
    FDQuery1.ApplyUpdates(-1);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if FDQuery1.UpdatesPending then
    FDQuery1.CancelUpdates;
end;

procedure TForm1.DataSource1StateChange(Sender: TObject);
begin
  memSQL.ReadOnly := TDataSource(Sender).DataSet.Active;
end;

end.
