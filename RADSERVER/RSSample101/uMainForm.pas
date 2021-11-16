unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IPPeerClient,
  REST.Backend.ServiceTypes, System.JSON, REST.Backend.EMSServices,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client,
  REST.Backend.EndPoint, REST.Backend.EMSProvider, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation,
  FMX.StdCtrls, REST.Backend.MetaTypes, REST.Backend.BindSource,
  REST.Backend.ServiceComponents, FMX.Edit, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Stan.Param, FireDAC.Stan.Error, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Backend.EMSFireDAC, FMX.Grid,
  Fmx.Bind.Grid, Data.Bind.Grid, Data.Bind.DBScope, FireDAC.UI.Intf,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    EMSProvider1: TEMSProvider;
    BackendEndpoint1: TBackendEndpoint;
    butExecute: TButton;
    Memo1: TMemo;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    edtUser: TEdit;
    edtPass: TEdit;
    butLogin: TButton;
    BackendAuth1: TBackendAuth;
    StringGrid1: TStringGrid;
    EMSFireDACClient1: TEMSFireDACClient;
    FDSchemaAdapter1: TFDSchemaAdapter;
    FDTableAdapter1: TFDTableAdapter;
    FDMemTable1: TFDMemTable;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    butCustomer: TButton;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button1: TButton;
    procedure butExecuteClick(Sender: TObject);
    procedure butLoginClick(Sender: TObject);
    procedure butCustomerClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.butCustomerClick(Sender: TObject);
begin
  EMSFireDACClient1.GetData;
end;

procedure TForm1.butExecuteClick(Sender: TObject);
begin
  BackendEndpoint1.Execute;
end;

procedure TForm1.butLoginClick(Sender: TObject);
begin
  BackendAuth1.UserName := edtUser.Text;
  BackendAuth1.Password := edtPass.Text;
  BackendAuth1.Login;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  EMSFireDACClient1.PostUpdates;
end;

end.
