unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.CDataAmazonDynamoDB, FireDAC.Phys.CDataAmazonDynamoDBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    CnnDynamoDB: TFDConnection;
    qryCountryRemote: TFDQuery;
    CnnInterbase: TFDConnection;
    qryCountryLocal: TFDQuery;
    qryCountryRemoteCountry: TWideStringField;
    qryCountryRemoteCurrency: TWideStringField;
    qryCountryLocalCOUNTRY: TStringField;
    qryCountryLocalCURRENCY: TStringField;
    Panel1: TPanel;
    butUpload: TButton;
    butDynamoDB: TButton;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    DBGrid2: TDBGrid;
    butInterbase: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure butDynamoDBClick(Sender: TObject);
    procedure butInterbaseClick(Sender: TObject);
    procedure butUploadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.butDynamoDBClick(Sender: TObject);
begin
  qryCountryRemote.Close;
  qryCountryRemote.Open;
end;

procedure TForm1.butInterbaseClick(Sender: TObject);
begin
  qryCountryLocal.Close;
  qryCountryLocal.Open;
end;

procedure TForm1.butUploadClick(Sender: TObject);
var
  sSQL: string;
begin
  qryCountryLocal.DisableControls;
  try
    qryCountryLocal.First;
    while not qryCountryLocal.Eof do
    begin
      sSQL := 'INSERT INTO Country (Country, Currency) VALUES (' +
        QuotedSTR(qryCountryLocalCOUNTRY.AsString) + ', ' +
        QuotedSTR(qryCountryLocalCURRENCY.AsString) + ')';
      CnnDynamoDB.ExecSQL(sSQL);
      qryCountryLocal.Next;
    end;
  finally
    qryCountryLocal.EnableControls;

  end;
end;

end.
