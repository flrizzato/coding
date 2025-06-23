inherited FrameFilterCombo: TFrameFilterCombo
  PixelsPerInch = 192
  inherited Panel2: TPanel
    object cbValues: TComboBox
      AlignWithMargins = True
      Left = 14
      Top = 14
      Width = 451
      Height = 23
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      TabOrder = 0
      Text = 'cbValues'
      OnChange = cbValuesChange
    end
  end
  inherited BindingsList1: TBindingsList
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'FilterText'
      Control = cbValues
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = mtFilterValues
    ScopeMappings = <>
    Left = 168
    Top = 32
  end
end
