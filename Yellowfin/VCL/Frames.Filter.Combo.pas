unit Frames.Filter.Combo;

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
  TFrameFilterCombo = class(TFrameFilterBase)
    cbValues: TComboBox;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    procedure cbValuesChange(Sender: TObject);
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

{ TFrameFilterCombo }

procedure TFrameFilterCombo.cbValuesChange(Sender: TObject);
begin
  FilterEnabled := True;
end;

function TFrameFilterCombo.GetReportFilter: reportFilter;
begin
  Result := inherited;
  if cbValues.ItemIndex <> -1 then
    Result.DataValue := cbValues.Text;
end;

procedure TFrameFilterCombo.LoadFilterDefaults;
begin
  FilterEnabled := False;
end;

end.
