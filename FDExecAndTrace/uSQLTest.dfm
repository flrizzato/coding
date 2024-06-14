object SQLTest: TSQLTest
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  ActiveControl = DBGridMain
  BorderIcons = [biSystemMenu]
  Caption = 'Testing the SQL Statement'
  ClientHeight = 553
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  PixelsPerInch = 120
  TextHeight = 20
  object BindNavigatorMain: TBindNavigator
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 774
    Height = 45
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = BindSourceDB1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    Align = alTop
    Flat = True
    Orientation = orHorizontal
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = 9
  end
  object DBGridMain: TDBGrid
    Left = 0
    Top = 53
    Width = 782
    Height = 500
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    DataSource = DataSourceMain
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
  end
  object DataSourceMain: TDataSource
    AutoEdit = False
    DataSet = MainDM.FDQry
    Left = 80
    Top = 110
  end
  object BindSourceDB1: TBindSourceDB
    DataSource = DataSourceMain
    ScopeMappings = <>
    Left = 80
    Top = 200
  end
end
