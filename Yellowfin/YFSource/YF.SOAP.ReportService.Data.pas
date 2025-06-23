unit YF.SOAP.ReportService.Data;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  YF.SOAP.Constants, YF.JAX.ReportService, YF.Resources;

type
  TYF_ReportData = class(TDataModule)
    mtReports: TFDMemTable;
    mtReportsreportCategory: TStringField;
    mtReportsreportSubCategory: TStringField;
    mtReportsreportName: TStringField;
    mtReportsreportID: TIntegerField;
    mtReportSchema: TFDMemTable;
    mtReportSchemacolumnName: TStringField;
    mtReportSchemadataType: TStringField;
    mtReportSchemadisplayName: TStringField;
    mtReportSchemadefaultValue1: TStringField;
    mtReportSchemadefaultValue2: TStringField;
    mtReportSchemafilterID: TIntegerField;
    mtReportSchemaAllowPrompt: TBooleanField;
    mtReportSchemaCachedValues: TBooleanField;
    mtReportSchemaFilterDisplayType: TStringField;
    mtReportSchemaFieldID: TIntegerField;
    mtReportSchemareportid: TIntegerField;
    mtReportsCategorySubCategory: TStringField;
    mtReportsIsFavourate: TBooleanField;
    mtReportsFavIcon: TGraphicField;
    mtFilterValues: TFDMemTable;
    mtFilterValuesFilterID: TIntegerField;
    mtFilterValuesFilterText: TStringField;
    mtFilterValuesFilterValue: TStringField;
    mtReportSchemaNumberOfDecimals: TIntegerField;
    mtReportSchemaMinimumValue: TFloatField;
    mtReportSchemaMaximumValue: TFloatField;
    procedure mtReportsCalcFields(DataSet: TDataSet);
    procedure mtReportsAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtReportsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    Reloading : Boolean;
    FFavourateImages : IFavourateImages;
  public
    { Public declarations }
    procedure Reload(ListType : string = YRC_GETALLUSERREPORTS);
    procedure LoadSchema(aReportID : integer);
    procedure ToggleFavourate(aReportID : integer);
    constructor Create(AOwner : TComponent; AFavourateImages : IFavourateImages); reintroduce;
  end;

var
  YF_ReportData: TYF_ReportData;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses
  YF.JAX.AdministrationService, YF.JAX.AdministrationService.Helper,
  YF.JAX.ReportService.Helper,
  YF.SOAP.Defaults, System.Generics.Collections;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

constructor TYF_ReportData.Create(AOwner: TComponent;
  AFavourateImages: IFavourateImages);
begin
  Assert(AFavourateImages <> nil);
  inherited Create(AOwner);
  FFavourateImages := AFavourateImages;
end;

procedure TYF_ReportData.DataModuleCreate(Sender: TObject);
begin
  Reloading := False;
end;

procedure TYF_ReportData.LoadSchema(aReportID: integer);
begin
  if not mtReportSchema.Active then
    mtReportSchema.CreateDataSet;
   if not mtFilterValues.Active then
    mtFilterValues.CreateDataSet;

  mtReportSchema.Filter := 'reportId='+YF_ReportData.mtReportsreportID.AsString;
  mtReportSchema.Filtered := True;

  if mtReportSchema.RecordCount = 0 then begin
    // This is the Interfaced Object to call the WebService.
    var WS := GetLegacyReportService(False,YFDefaults.GetServiceURL(TYFDefaults.TYFService.Reports));

    var Req := ReportServiceRequest.CreateWithDefaults(YFDefaults,YRC_SCHEMA);
    Req.ReportID := YF_ReportData.mtReportsreportID.AsInteger;

    var Result := WS.remoteReportCall(Req);
    try
      if SameStr(Result.statusCode,YRS_SUCCESS) then begin
        mtReportSchema.DisableControls;
        try
          for var I := 0 to Pred(Length(Result.columns)) do begin
            var CurrColumn := Result.columns[I];

            mtReportSchema.Append;
            mtReportSchemareportid.AsInteger := YF_ReportData.mtReportsreportID.AsInteger;
            mtReportSchemaFieldID.AsInteger := CurrColumn.fieldId;
            mtReportSchemaColumnName.AsString := CurrColumn.columnName;
            mtReportSchemaDataType.AsString := CurrColumn.dataType;
            mtReportSchemaDisplayName.AsString := CurrColumn.displayName;
            mtReportSchemaDefaultValue1.AsString := CurrColumn.defaultValue1;
            mtReportSchemaDefaultValue2.AsString := CurrColumn.defaultValue2;
            mtReportSchemaFilterDisplayType.AsString := CurrColumn.filterDisplayType;
            mtReportSchemaFilterID.AsInteger := CurrColumn.filterId;
            mtReportSchemaAllowPrompt.AsBoolean := CurrColumn.allowPrompt;
            mtReportSchemaCachedValues.AsBoolean := CurrColumn.cachedValues;
            mtReportSchemaNumberOfDecimals.AsInteger := CurrColumn.numberOfDecimals;
            if Assigned(CurrColumn.maximumValue) then
              mtReportSchemaMaximumValue.AsFloat := StrToFloatDef(CurrColumn.maximumValue.DecimalString,0);
            if Assigned(CurrColumn.minimumValue) then
              mtReportSchemaMinimumValue.AsFloat := StrToFloatDef(CurrColumn.minimumValue.DecimalString,0);
            mtReportSchema.Post;

            // Check for Filter Values
            if (CurrColumn.filterId > 0) and (CurrColumn.filterDisplayType = YRFDT_DROPDOWN) then begin
              var FilterReq := ReportServiceRequest.CreateWithDefaults(YFDefaults,YRC_FILTEROPTIONS);
              FilterReq.ReportID := YF_ReportData.mtReportsreportID.AsInteger;
              FilterReq.objectName := CurrColumn.filterId.ToString;
              var FilterResult := WS.remoteReportCall(FilterReq);
              try
                if Length(FilterResult.results) > 0 then begin
                  mtFilterValues.DisableControls;
                  try
                    for var FI := 0 to Length(FilterResult.results)-1 do begin
                      var CurrResult : YF.JAX.ReportService.reportRow := FilterResult.results[FI];
                      mtFilterValues.Append;
                      mtFilterValuesFilterID.AsInteger := CurrColumn.filterId;
                      mtFilterValuesFilterText.AsString := CurrResult[0];
                      mtFilterValuesFilterValue.AsString := CurrResult[1];
                      mtFilterValues.Post;
                    end;
                  finally
                    mtFilterValues.EnableControls;
                  end;
                end;
              finally
                FilterResult.Free;
              end;
            end;

          end;
        finally
          mtReportSchema.First;
          mtReportSchema.EnableControls;
        end;
      end;
    finally
      Result.Free;
    end;
  end;
end;

procedure TYF_ReportData.mtReportsAfterScroll(DataSet: TDataSet);
begin
  if Reloading then
    Exit;

  if mtReportsreportID.Value > 0 then
    LoadSchema(mtReportsreportID.AsInteger);
end;

procedure TYF_ReportData.mtReportsBeforePost(DataSet: TDataSet);
begin
  mtReportsFavIcon.Clear;
  var MS := TMemoryStream.Create;
  try
    if Assigned(FFavourateImages) then
      FFavourateImages.GetFavourateImage(mtReportsIsFavourate.AsBoolean, MS);

    MS.Position := 0;
    mtReportsFavIcon.LoadFromStream(MS);
  finally
    MS.Free;
  end;
end;

procedure TYF_ReportData.mtReportsCalcFields(DataSet: TDataSet);
begin
  mtReportsCategorySubCategory.AsString := DataSet.FieldByName('reportCategory').AsString+' > '+DataSet.FieldByName('reportSubCategory').AsString;
end;

procedure TYF_ReportData.Reload(ListType : string = YRC_GETALLUSERREPORTS);
begin
  // Close Datasets so they get recreated
  mtReports.Active := False;
  mtReportSchema.Active := False;
  mtFilterValues.Active := False;

  mtReports.CreateDataSet;

  Reloading := True;
  try
    // This is the Interfaced Object to call the WebService.
    var WS := GetLegacyAdministrationService(False,YFDefaults.GetServiceURL(TYFDefaults.TYFService.Admin));
    var Req := AdministrationServiceRequest.CreateWithDefaults(YFDefaults,ListType);
    var Result := WS.remoteAdministrationCall(Req);
    try
      if SameStr(Result.statusCode,YRS_SUCCESS) then begin
        var FavList := TList<Integer>.Create;
        try
          // Confirm Favourates...
          if ListType <> YRC_GETFAVOURITES then begin
            var FavReq := AdministrationServiceRequest.CreateWithDefaults(YFDefaults, YRC_GETFAVOURITES);
            var FavResult :=  WS.remoteAdministrationCall(FavReq);
            try
              for var I := 0 to Pred(Length(FavResult.reports)) do
                FavList.Add(FavResult.reports[I].reportId);
            finally
              FavResult.Free;
            end;
          end;

          mtReports.DisableControls;
          try
            for var I := 0 to Pred(Length(Result.reports)) do begin
              var CurrReport := Result.reports[I];

              mtReports.Append;
              mtReportsreportCategory.AsString := CurrReport.reportCategory;
              mtReportsreportSubCategory.AsString := CurrReport.reportSubCategory;
              mtReportsreportName.AsString := CurrReport.reportName;
              mtReportsreportID.AsInteger := CurrReport.reportId;

              mtReportsIsFavourate.AsBoolean := (ListType = YRC_GETFAVOURITES) or FavList.Contains(mtReportsreportID.AsInteger);
              // Image set in the BeforePost, so it updates if edited later on.

              mtReports.Post;
            end;
          finally
            mtReports.First;
            mtReports.EnableControls;
          end;
        finally
          FavList.Free;
        end;
      end;
    finally
      Result.Free;
    end;
  finally
    Reloading := False;
  end;
  mtReportsAfterScroll(mtReports);
end;

procedure TYF_ReportData.ToggleFavourate(aReportID: integer);
var
  FAction : string;
begin
  if not mtReports.Locate('reportID',aReportID,[]) then
    Exit;

  var WS := GetLegacyAdministrationService(False,YFDefaults.GetServiceURL(TYFDefaults.TYFService.Admin));

  if mtReportsIsFavourate.AsBoolean then
    FAction := YRC_REMOVEFAVOURITE
  else
    FAction := YRC_ADDTOFAVOURITES;

  var FavReq := AdministrationServiceRequest.CreateWithDefaults(YFDefaults, FAction);
  FavReq.reportId := mtReportsreportID.AsInteger;

  var FavResult :=  WS.remoteAdministrationCall(FavReq);
  try
    if FavResult.statusCode = YRS_SUCCESS then begin
      mtReports.Edit;
      mtReportsIsFavourate.AsBoolean := not mtReportsIsFavourate.AsBoolean;
      mtReports.Post;
    end;

  finally
    FavResult.Free;
  end;
end;

end.
