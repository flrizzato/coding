unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls, FireDAC.FMXUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, System.IOUtils;

type
  TForm1 = class(TForm)
    Database: TFDConnection;
    Cust: TFDTable;
    CustCustNo: TFloatField;
    CustCompany: TStringField;
    CustPhone: TStringField;
    CustLastInvoiceDate: TDateTimeField;
    CustAddr1: TStringField;
    CustAddr2: TStringField;
    CustCity: TStringField;
    CustState: TStringField;
    CustZip: TStringField;
    CustCountry: TStringField;
    CustFAX: TStringField;
    CustTaxRate: TFloatField;
    CustContact: TStringField;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    ListBox1: TListBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DatabaseBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.DatabaseBeforeConnect(Sender: TObject);
begin
  Database.Params.Values['Database'] :=
    TPath.GetDocumentsPath + PathDelim + 'MASTSQL.GDB';
  Database.Params.Values['Server'] := '';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Cust.Open;
end;

end.
