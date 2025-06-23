unit Frames.FilterBase;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, YF.JAX.ReportService;

type
  TFrameFilterBase = class(TFrame)
    loFilter: TLayout;
    lblTitle: TLabel;
    swEnabled: TSwitch;
    loSwitch: TLayout;
    loFilterValue: TLayout;
    mtFilterValues: TFDMemTable;
    mtFilterValuesFilterID: TIntegerField;
    mtFilterValuesFilterText: TStringField;
    mtFilterValuesFilterValue: TStringField;
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
    BindSourceDB2: TBindSourceDB;
    BindingsList2: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
  private
    function GetFilterEnabled: Boolean;
    function GetFilterID: Integer;
    { Private declarations }
  protected
    procedure LoadFilterDefaults; virtual; abstract;
  public
    { Public declarations }
    constructor Create(aOwner : TComponent; aFilterID : Integer); reintroduce;
    function GetReportFilter: reportFilter; virtual;
    function FilterString: string; virtual;
    property FilterEnabled : Boolean Read GetFilterEnabled;
    property FilterID : Integer read GetFilterID;
  end;

implementation

{$R *.fmx}
uses YF.SOAP.ReportService.Data;

{ TFrameFilterBase }

constructor TFrameFilterBase.Create(aOwner: TComponent; aFilterID: Integer);
begin
  inherited Create(AOwner);

  // Find the one record
  mtReportSchema.Close;
  mtReportSchema.CloneCursor(YF_ReportData.mtReportSchema,True, False);
  mtReportSchema.Filter := 'FILTERID='+aFilterID.ToString;
  mtReportSchema.Filtered := True;

  // Uses LiveBindings to then set the screen values.
  mtFilterValues.Close;
  mtFilterValues.CloneCursor(YF_ReportData.mtFilterValues,True, False);
  mtFilterValues.Filter := 'FILTERID='+aFilterID.ToString;
  mtFilterValues.Filtered := True;

  lblTitle.Text := mtReportSchemadisplayName.AsString;
  LoadFilterDefaults;
end;

function TFrameFilterBase.FilterString: string;
begin
  Result := '';
end;

function TFrameFilterBase.GetFilterEnabled: Boolean;
begin
  Result := swEnabled.IsChecked;
end;

function TFrameFilterBase.GetFilterID: Integer;
begin
  Result := mtReportSchemaFilterID.AsInteger;
end;

function TFrameFilterBase.GetReportFilter: reportFilter;
begin
  Result := ReportFilter.Create;
  Result.FilterID := FilterID;
  Result.isOmitted := False;
end;

end.
