unit Frames.Filter.Spinbox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frames.Filter.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, YF.JAX.ReportService, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.Samples.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope;

type
  TFrameFilterSpinbox = class(TFrameFilterBase)
    seValue: TSpinEdit;
    LinkPropertyToFieldMinValue: TLinkPropertyToField;
    LinkPropertyToFieldMaxValue: TLinkPropertyToField;
    procedure seValueChange(Sender: TObject);
  private
  protected
    procedure LoadFilterDefaults; override;
  public
    { Public declarations }
    function GetReportFilter: reportFilter; override;
  end;

implementation

{$R *.dfm}

{ TFrameFilterSpinbox }

function TFrameFilterSpinbox.GetReportFilter: reportFilter;
begin
  Result := inherited;
  Result.dataValue := seValue.Value.ToString;
end;

procedure TFrameFilterSpinbox.LoadFilterDefaults;
begin
  inherited;
  FilterEnabled := False;
end;

procedure TFrameFilterSpinbox.seValueChange(Sender: TObject);
begin
  FilterEnabled := True;
end;

end.
