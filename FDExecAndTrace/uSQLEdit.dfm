object SQLEditForm: TSQLEditForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Editing the SQL Statement'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object panExecute: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 774
    Height = 62
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 772
    object Label3: TLabel
      Left = 232
      Top = 8
      Width = 44
      Height = 15
      Caption = 'Interval'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 344
      Top = 8
      Width = 46
      Height = 15
      Caption = 'Sessions'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 9
      Width = 63
      Height = 15
      Caption = 'Connection'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spnInternal: TSpinEdit
      Left = 232
      Top = 29
      Width = 95
      Height = 24
      Increment = 1000
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object spiSessions: TSpinEdit
      Left = 344
      Top = 29
      Width = 95
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object cmbConnections: TComboBox
      Left = 3
      Top = 30
      Width = 210
      Height = 23
      TabOrder = 0
    end
    object butSave: TButton
      AlignWithMargins = True
      Left = 694
      Top = 5
      Width = 75
      Height = 52
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Save'
      Default = True
      ModalResult = 1
      TabOrder = 3
      OnClick = butSaveClick
      ExplicitLeft = 692
    end
    object butDiscard: TButton
      AlignWithMargins = True
      Left = 609
      Top = 5
      Width = 75
      Height = 52
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Discard'
      ModalResult = 2
      TabOrder = 4
      OnClick = butDiscardClick
      ExplicitLeft = 607
    end
  end
  object memSQL: TMemo
    AlignWithMargins = True
    Left = 5
    Top = 77
    Width = 774
    Height = 479
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 1
    ExplicitWidth = 772
    ExplicitHeight = 471
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = MainDM.tableSQL
    ScopeMappings = <>
    Left = 144
    Top = 176
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 148
    Top = 109
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ConcurrentSessions'
      Control = spiSessions
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ExecutionInterval'
      Control = spnInternal
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CommandText'
      Control = memSQL
      Track = False
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ConnectionName'
      Control = cmbConnections
      Track = True
      FillDataSource = BindSourceDB1
      FillDisplayFieldName = 'ConnectionName'
      AutoFill = False
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
