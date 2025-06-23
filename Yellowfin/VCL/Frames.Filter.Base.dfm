object FrameFilterBase: TFrameFilterBase
  Left = 0
  Top = 0
  Width = 684
  Height = 63
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  TabOrder = 0
  PixelsPerInch = 192
  object lblTitle: TLabel
    Left = 0
    Top = 0
    Width = 684
    Height = 15
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alTop
    Caption = 'Filter :'
    WordWrap = True
    ExplicitWidth = 32
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 21
    Width = 193
    Height = 36
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alLeft
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 0
    ExplicitHeight = 73
    object tsEnabled: TToggleSwitch
      Left = 4
      Top = 4
      Width = 185
      Height = 28
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      SwitchHeight = 26
      SwitchWidth = 100
      TabOrder = 0
      ThumbWidth = 30
      ExplicitLeft = 8
      ExplicitTop = 8
      ExplicitWidth = 123
      ExplicitHeight = 26
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 205
    Top = 15
    Width = 479
    Height = 48
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 8
    Padding.Top = 8
    Padding.Right = 8
    Padding.Bottom = 8
    TabOrder = 1
    ExplicitHeight = 85
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
    Left = 120
    Top = 176
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
    Left = 200
    Top = 176
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
  object BindSourceDB1: TBindSourceDB
    DataSet = mtReportSchema
    ScopeMappings = <>
    Left = 160
    Top = 88
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 68
    Top = 93
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'displayName'
      Component = lblTitle
      ComponentProperty = 'Caption'
    end
  end
end
