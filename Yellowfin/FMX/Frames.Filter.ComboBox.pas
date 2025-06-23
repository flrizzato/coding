unit Frames.Filter.ComboBox;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Frames.FilterBase, FMX.ListBox, FMX.Controls.Presentation, FMX.Layouts,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, YF.JAX.ReportService;

type
  TFrameFilterComboBox = class(TFrameFilterBase)
    cbValues: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure cbValuesChange(Sender: TObject);
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

{ TFrameFilterComboBox }

procedure TFrameFilterComboBox.cbValuesChange(Sender: TObject);
begin
  inherited;
  swEnabled.IsChecked := True;
end;

function TFrameFilterComboBox.FilterString: string;
begin
  if cbValues.Selected <> nil then
    Result := cbValues.Selected.Text;
end;

function TFrameFilterComboBox.GetReportFilter: reportFilter;
begin
  Result := inherited;
  if cbValues.Selected <> nil then
    Result.DataValue := cbValues.Selected.Text;
end;

procedure TFrameFilterComboBox.LoadFilterDefaults;
begin
  swEnabled.IsChecked := False;
end;

end.
