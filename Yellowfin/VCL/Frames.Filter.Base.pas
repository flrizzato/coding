unit Frames.Filter.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YF.JAX.ReportService,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, YF.SOAP.Defaults, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope;

type
  TFrameFilterBase = class(TFrame)
    mtReportSchema: TFDMemTable;
    mtReportSchemaFieldID: TIntegerField;
    mtReportSchemacolumnName: TStringField;
    mtReportSchemadataType: TStringField;
    mtReportSchemadisplayName: TStringField;
    mtReportSchemadefaultValue1: TStringField;
    mtReportSchemadefaultValue2: TStringField;
    mtReportSchemafilterID: TIntegerField;
    mtReportSchemaAllowPrompt: TBooleanField;
    mtReportSchemaCachedValues: TBooleanField;
    mtReportSchemaFilterDisplayType: TStringField;
    mtReportSchemareportid: TIntegerField;
    mtReportSchemaNumberOfDecimals: TIntegerField;
    mtReportSchemaMinimumValue: TFloatField;
    mtReportSchemaMaximumValue: TFloatField;
    mtFilterValues: TFDMemTable;
    mtFilterValuesFilterID: TIntegerField;
    mtFilterValuesFilterText: TStringField;
    mtFilterValuesFilterValue: TStringField;
    lblTitle: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    tsEnabled: TToggleSwitch;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
  private
    function GetFilterEnabled: Boolean;
    procedure SetFilterEnabled(const Value: Boolean);
    { Private declarations }
  protected
    procedure LoadFilterDefaults; virtual; abstract;
  public
    { Public declarations }
    constructor Create(aOwner : TComponent; aFilterID : Integer); reintroduce;
    function GetReportFilter: reportFilter; virtual;
    property FilterEnabled : Boolean Read GetFilterEnabled write SetFilterEnabled;
  end;

implementation

{$R *.dfm}

uses YF.SOAP.ReportService.Data;

{ TFrameFilterBase }

constructor TFrameFilterBase.Create(aOwner: TComponent; aFilterID: Integer);
begin
  inherited Create(AOwner);

  // Uses LiveBindings to then set the screen values.
  mtFilterValues.Close;
  mtFilterValues.CloneCursor(YF_ReportData.mtFilterValues,True, False);
  mtFilterValues.Filter := 'FILTERID='+aFilterID.ToString;
  mtFilterValues.Filtered := True;

  mtReportSchema.Close;
  mtReportSchema.CloneCursor(YF_ReportData.mtReportSchema,True, False);
  mtReportSchema.Filter := 'FILTERID='+aFilterID.ToString;
  mtReportSchema.Filtered := True;

  lblTitle.Caption := mtReportSchemadisplayName.AsString;
  LoadFilterDefaults;
end;

function TFrameFilterBase.GetFilterEnabled: Boolean;
begin
  Result := tsEnabled.State = tssOn;
end;

function TFrameFilterBase.GetReportFilter: reportFilter;
begin
  Result := ReportFilter.Create;
  Result.FilterID := mtReportSchemaFilterID.AsInteger;
  Result.isOmitted := False;
end;

procedure TFrameFilterBase.SetFilterEnabled(const Value: Boolean);
begin
  if Value then
    tsEnabled.State := tssOn
  else
    tsEnabled.State := tssOff;
end;

end.
