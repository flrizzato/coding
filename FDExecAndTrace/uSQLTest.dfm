object SQLTestForm: TSQLTestForm
  Left = 0
  Top = 0
  ActiveControl = DBGridMain
  BorderIcons = [biSystemMenu]
  Caption = 'Testing the SQL Statement'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object BindNavigatorMain: TBindNavigator
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 778
    Height = 36
    DataSource = BindSourceDB1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    Flat = True
    TabOrder = 0
  end
  object DBGridMain: TDBGrid
    Left = 0
    Top = 42
    Width = 784
    Height = 519
    Align = alClient
    DataSource = DataSourceMain
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
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
