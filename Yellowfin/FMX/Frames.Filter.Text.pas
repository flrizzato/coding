unit Frames.Filter.Text;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Frames.FilterBase, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Controls.Presentation,
  FMX.Layouts, FMX.Edit, YF.JAX.ReportService;

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
    function FilterString: string; override;
  end;

var
  FrameFilterText: TFrameFilterText;

implementation

{$R *.fmx}

{ TFrameFilterText }

procedure TFrameFilterText.edtValueChange(Sender: TObject);
begin
  inherited;
  swEnabled.IsChecked := True;
end;

function TFrameFilterText.FilterString: string;
begin
  Result := edtValue.Text;
end;

function TFrameFilterText.GetReportFilter: reportFilter;
begin
  Result := inherited;
  Result.dataValue := edtValue.Text;
end;

procedure TFrameFilterText.LoadFilterDefaults;
begin
  edtValue.Text := mtReportSchemadefaultValue1.AsString;
  swEnabled.IsChecked := False;
end;

end.
