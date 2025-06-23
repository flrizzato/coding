unit Frames.Filter.Text;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frames.Filter.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  YF.JAX.ReportService, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrameFilterText = class(TFrameFilterBase)
    edtValue: TEdit;
    procedure edtValueChange(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure LoadFilterDefaults; override;
  public
    { Public declarations }
    function GetReportFilter: reportFilter; override;
  end;

implementation

{$R *.dfm}

{ TFrameFilterText }

procedure TFrameFilterText.edtValueChange(Sender: TObject);
begin
  FilterEnabled := True;
end;

function TFrameFilterText.GetReportFilter: reportFilter;
begin
  Result := inherited;
  Result.dataValue := edtValue.Text;
end;

procedure TFrameFilterText.LoadFilterDefaults;
begin
  edtValue.Text := mtReportSchemadefaultValue1.AsString;
  FilterEnabled := False;
end;

end.
