inherited FrameFilterSpinbox: TFrameFilterSpinbox
  PixelsPerInch = 192
  inherited Panel2: TPanel
    object seValue: TSpinEdit
      Left = 8
      Top = 8
      Width = 463
      Height = 32
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
      OnChange = seValueChange
      ExplicitLeft = 6
      ExplicitTop = 12
    end
  end
  inherited BindingsList1: TBindingsList
    object LinkPropertyToFieldMinValue: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'MinimumValue'
      Component = seValue
      ComponentProperty = 'MinValue'
    end
    object LinkPropertyToFieldMaxValue: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'MaximumValue'
      Component = seValue
      ComponentProperty = 'MaxValue'
    end
  end
end
