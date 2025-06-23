unit Frames.Filter.Date;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Frames.FilterBase, FMX.Controls.Presentation, FMX.Layouts, FMX.DateTimeCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, YF.JAX.ReportService;

type
  TFrameFilterDate = class(TFrameFilterBase)
    DateEdit: TDateEdit;
    procedure DateEditChange(Sender: TObject);
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

{ TFrameFilterDate }

procedure TFrameFilterDate.DateEditChange(Sender: TObject);
begin
  inherited;
  swEnabled.IsChecked := True;
end;

function TFrameFilterDate.FilterString: string;
begin
  // TODO Need to check format
  Result := FormatDateTime('yyyy-mm-dd',DateEdit.Date);
end;

function TFrameFilterDate.GetReportFilter: reportFilter;
begin
  Result := inherited;
  Result.DataValue := FormatDateTime('yyyy-mm-dd',DateEdit.Date);
end;

procedure TFrameFilterDate.LoadFilterDefaults;
begin
  DateEdit.Date := Trunc(Now);
  swEnabled.IsChecked := False;
end;

end.
