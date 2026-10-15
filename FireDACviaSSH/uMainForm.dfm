object MainForm: TMainForm
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'FireDAC via SSH'
  ClientHeight = 514
  ClientWidth = 896
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 120
  TextHeight = 17
  object StringGrid1: TStringGrid
    AlignWithMargins = True
    Left = 6
    Top = 71
    Width = 884
    Height = 437
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    ColCount = 1
    DefaultColWidth = 80
    DefaultRowHeight = 30
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ExplicitLeft = 7
    ColWidths = (
      80)
    ColAligments = (
      1)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 896
    Height = 65
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = -6
    ExplicitTop = -4
    object butCloseDB: TButton
      AlignWithMargins = True
      Left = 549
      Top = 5
      Width = 171
      Height = 55
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Close Database'
      TabOrder = 0
      OnClick = butCloseDBClick
    end
    object butCloseTunnel: TButton
      AlignWithMargins = True
      Left = 188
      Top = 5
      Width = 170
      Height = 55
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Close Tunnel'
      TabOrder = 1
      OnClick = butCloseTunnelClick
    end
    object butOpenDB: TButton
      AlignWithMargins = True
      Left = 368
      Top = 5
      Width = 171
      Height = 55
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Open Database'
      TabOrder = 2
      OnClick = butOpenDBClick
    end
    object butOpenTunnel: TButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 173
      Height = 55
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Open Tunnel'
      TabOrder = 3
      OnClick = butOpenTunnelClick
    end
    object chkUseSSH: TCheckBox
      AlignWithMargins = True
      Left = 791
      Top = 5
      Width = 100
      Height = 55
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Use SSH'
      TabOrder = 4
      ExplicitLeft = 781
    end
  end
  object PostgresqlviasshConnection: TFDConnection
    LoginPrompt = False
    BeforeConnect = PostgresqlviasshConnectionBeforeConnect
    Left = 114
    Top = 126
  end
  object FDQuery1: TFDQuery
    Connection = PostgresqlviasshConnection
    SQL.Strings = (
      'select * from public.actor')
    Left = 110
    Top = 200
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 120
    Top = 350
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 115
    Top = 276
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 300
    Top = 130
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 450
    Top = 130
  end
end
