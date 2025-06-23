unit Frames.Filter.SpinBox;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Frames.FilterBase, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.Controls.Presentation, FMX.Layouts, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, YF.JAX.ReportService;

type
  TFrameFilterNumber = class(TFrameFilterBase)
    sbValue: TSpinBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldDecimalDigits: TLinkPropertyToField;
    LinkPropertyToFieldMin: TLinkPropertyToField;
    LinkPropertyToFieldMax: TLinkPropertyToField;
    procedure sbValueChange(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure LoadFilterDefaults; override;
  public
    { Public declarations }
    function GetReportFilter: reportFilter; override;
    function FilterString: string; override;
  end;

implementation

{$R *.fmx}

{ TFrameFilterNumber }

function TFrameFilterNumber.FilterString: string;
begin
  REsult := sbValue.Value.ToString;
end;

function TFrameFilterNumber.GetReportFilter: reportFilter;
begin
  Result := inherited;
  Result.dataValue := sbValue.Value.ToString;
end;

procedure TFrameFilterNumber.LoadFilterDefaults;
begin
  swEnabled.IsChecked := False;
end;

procedure TFrameFilterNumber.sbValueChange(Sender: TObject);
begin
  inherited;
  swEnabled.IsChecked := True;
end;

end.
