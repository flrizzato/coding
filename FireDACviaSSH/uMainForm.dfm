object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'FireDAC via SSH'
  ClientHeight = 411
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    AlignWithMargins = True
    Left = 5
    Top = 46
    Width = 707
    Height = 360
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 48
    ExplicitWidth = 693
    ExplicitHeight = 355
    ColWidths = (
      64)
    ColAligments = (
      1)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = 272
    ExplicitTop = 208
    ExplicitWidth = 185
    object butCloseDB: TButton
      AlignWithMargins = True
      Left = 446
      Top = 5
      Width = 137
      Height = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Close Database'
      TabOrder = 0
      OnClick = butCloseDBClick
      ExplicitLeft = 437
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object butCloseTunnel: TButton
      AlignWithMargins = True
      Left = 152
      Top = 5
      Width = 137
      Height = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Close Tunnel'
      TabOrder = 1
      OnClick = butCloseTunnelClick
      ExplicitLeft = 151
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object butOpenDB: TButton
      AlignWithMargins = True
      Left = 299
      Top = 5
      Width = 137
      Height = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Open Database'
      TabOrder = 2
      OnClick = butOpenDBClick
      ExplicitLeft = 294
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object butOpenTunnel: TButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 137
      Height = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Open Tunnel'
      TabOrder = 3
      OnClick = butOpenTunnelClick
      ExplicitLeft = 8
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object PostgresqlviasshConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=PostgreSQL via SSH')
    LoginPrompt = False
    Left = 75
    Top = 189
  end
  object FDQuery1: TFDQuery
    Connection = PostgresqlviasshConnection
    SQL.Strings = (
      'select * from public.actor')
    Left = 72
    Top = 248
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 64
    Top = 352
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 68
    Top = 301
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 208
    Top = 192
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 320
    Top = 192
  end
end
