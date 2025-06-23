unit Frames.Filter.Date;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frames.Filter.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCalendars, YF.JAX.ReportService, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrameFilterDate = class(TFrameFilterBase)
    CalendarPicker1: TCalendarPicker;
    procedure CalendarPicker1Change(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure LoadFilterDefaults; override;
  public
    { Public declarations }
    function GetReportFilter: reportFilter; override;
  end;

var
  FrameFilterDate: TFrameFilterDate;

implementation

{$R *.dfm}

{ TFrameFilterDate }
procedure TFrameFilterDate.CalendarPicker1Change(Sender: TObject);
begin
  FilterEnabled := True;
end;

function TFrameFilterDate.GetReportFilter: reportFilter;
begin
  Result := inherited;
  Result.DataValue := FormatDateTime('yyyy-mm-dd',CalendarPicker1.Date);
end;

procedure TFrameFilterDate.LoadFilterDefaults;
begin
  CalendarPicker1.Date := Trunc(Now);
  FilterEnabled := False;
end;

end.
