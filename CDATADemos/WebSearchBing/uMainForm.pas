unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.CDataBing,
  FireDAC.Phys.CDataBingDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.WinXCtrls, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  System.ImageList, Vcl.ImgList, FireDAC.Phys.CDataGoogleSearch,
  FireDAC.Phys.CDataGoogleSearchDef;

type
  TMainForm = class(TForm)
    FDCnnBing: TFDConnection;
    WebSearch: TFDQuery;
    Panel1: TPanel;
    btnSearch: TButton;
    pgcSearch: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    WebSearchId: TWideStringField;
    WebSearchTitle: TWideStringField;
    WebSearchURL: TWideStringField;
    WebSearchDisplayUrl: TWideStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    edtSearch: TEdit;
    ImageSearch: TFDQuery;
    ImageSearchTitle: TWideStringField;
    ImageSearchContentUrl: TWideStringField;
    ImageSearchHostPageUrl: TWideStringField;
    ImageSearchThumbnailUrl: TWideStringField;
    ImageSearchSize: TWideStringField;
    ImageSearchWidth: TIntegerField;
    ImageSearchHeight: TIntegerField;
    ImageSearchDatePublished: TSQLTimeStampField;
    StringGrid2: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    imgSearch: TImage;
    procedure btnSearchClick(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure BindSourceDB2SubDataSourceDataChange(Sender: TObject;
      Field: TField);
  private
    { Private declarations }
    function LoadWebImage(Url: string): TMemoryStream;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses IdHttp, PNGImage, JPEG;

procedure TMainForm.BindSourceDB2SubDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  imgSearch.Picture.LoadFromStream
    (LoadWebImage(ImageSearchThumbnailUrl.AsString));
end;

procedure TMainForm.btnSearchClick(Sender: TObject);
begin
  if pgcSearch.ActivePageIndex = 0 then
  begin
    WebSearch.DisableControls;
    try
      WebSearch.Close;
      WebSearch.Params[0].AsString := edtSearch.Text;
      WebSearch.Open;
    finally
      WebSearch.EnableControls;
    end;
  end
  else
  begin
    ImageSearch.DisableControls;
    try
      ImageSearch.Close;
      ImageSearch.Params[0].AsString := edtSearch.Text;
      ImageSearch.Open;
    finally
      ImageSearch.EnableControls;
    end;
  end;
end;

procedure TMainForm.edtSearchChange(Sender: TObject);
begin
  btnSearch.Enabled := (edtSearch.GetTextLen > 3);
end;

function TMainForm.LoadWebImage(Url: string): TMemoryStream;
var
  IdHttp: TIdHTTP;
begin
  try
    IdHttp := TIdHTTP.Create(nil);
    result := TMemoryStream.Create;
    try
      IdHttp.Get(Url, result);
      result.Position := 0;
    finally
      IdHttp.Free;
    end;
  except
    result := nil;
  end;
end;

end.
