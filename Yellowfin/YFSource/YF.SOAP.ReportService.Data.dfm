object YF_ReportData: TYF_ReportData
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object mtReports: TFDMemTable
    BeforePost = mtReportsBeforePost
    AfterScroll = mtReportsAfterScroll
    OnCalcFields = mtReportsCalcFields
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'reportCategory;reportSubCategory'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 72
    Top = 48
    object mtReportsreportCategory: TStringField
      DisplayWidth = 100
      FieldName = 'reportCategory'
      Size = 255
    end
    object mtReportsreportSubCategory: TStringField
      DisplayWidth = 100
      FieldName = 'reportSubCategory'
      Size = 255
    end
    object mtReportsreportName: TStringField
      DisplayWidth = 100
      FieldName = 'reportName'
      Size = 255
    end
    object mtReportsreportID: TIntegerField
      FieldName = 'reportID'
    end
    object mtReportsCategorySubCategory: TStringField
      DisplayWidth = 50
      FieldKind = fkInternalCalc
      FieldName = 'CategorySubCategory'
    end
    object mtReportsIsFavourate: TBooleanField
      FieldName = 'IsFavourate'
    end
    object mtReportsFavIcon: TGraphicField
      FieldName = 'FavIcon'
      BlobType = ftGraphic
    end
  end
  object mtReportSchema: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 224
    Top = 48
    object mtReportSchemaFieldID: TIntegerField
      FieldName = 'FieldID'
    end
    object mtReportSchemacolumnName: TStringField
      FieldName = 'columnName'
      Size = 255
    end
    object mtReportSchemadataType: TStringField
      FieldName = 'dataType'
      Size = 50
    end
    object mtReportSchemadisplayName: TStringField
      FieldName = 'displayName'
      Size = 255
    end
    object mtReportSchemadefaultValue1: TStringField
      FieldName = 'defaultValue1'
      Size = 255
    end
    object mtReportSchemadefaultValue2: TStringField
      FieldName = 'defaultValue2'
      Size = 255
    end
    object mtReportSchemafilterID: TIntegerField
      FieldName = 'filterID'
    end
    object mtReportSchemaAllowPrompt: TBooleanField
      FieldName = 'AllowPrompt'
    end
    object mtReportSchemaCachedValues: TBooleanField
      FieldName = 'CachedValues'
    end
    object mtReportSchemaFilterDisplayType: TStringField
      FieldName = 'FilterDisplayType'
      Size = 100
    end
    object mtReportSchemareportid: TIntegerField
      FieldName = 'reportid'
    end
    object mtReportSchemaNumberOfDecimals: TIntegerField
      FieldName = 'NumberOfDecimals'
    end
    object mtReportSchemaMinimumValue: TFloatField
      FieldName = 'MinimumValue'
    end
    object mtReportSchemaMaximumValue: TFloatField
      FieldName = 'MaximumValue'
    end
  end
  object mtFilterValues: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 224
    Top = 128
    object mtFilterValuesFilterID: TIntegerField
      FieldName = 'FilterID'
    end
    object mtFilterValuesFilterText: TStringField
      FieldName = 'FilterText'
      Size = 255
    end
    object mtFilterValuesFilterValue: TStringField
      FieldName = 'FilterValue'
    end
  end
end
