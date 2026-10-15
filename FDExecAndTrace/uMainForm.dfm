object MainForm: TMainForm
  Left = 0
  Top = 0
  ActiveControl = listSQL
  Caption = 'FireDAC Tracing and Monitoring'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pgcMain: TPageControl
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 774
    Height = 551
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = tbsExecute
    Align = alClient
    HotTrack = True
    Style = tsFlatButtons
    TabOrder = 0
    object tbsExecute: TTabSheet
      Caption = '  Execute  '
      ImageIndex = 1
      object listSQL: TControlList
        AlignWithMargins = True
        Left = 3
        Top = 53
        Width = 760
        Height = 455
        Margins.Bottom = 10
        Align = alClient
        ItemHeight = 150
        ItemMargins.Left = 0
        ItemMargins.Top = 0
        ItemMargins.Right = 0
        ItemMargins.Bottom = 0
        ItemSelectionOptions.HotColorAlpha = 50
        ItemSelectionOptions.SelectedColorAlpha = 70
        ItemSelectionOptions.FocusedColorAlpha = 80
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        SmoothMouseWheelScrolling = True
        ShowItemHint = True
        OnBeforeDrawItem = listSQLBeforeDrawItem
        ExplicitTop = 54
        ExplicitWidth = 762
        ExplicitHeight = 456
        object lblSQLText: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 35
          Width = 535
          Height = 110
          Margins.Left = 10
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          ShowAccelChar = False
          Transparent = True
          WordWrap = True
          ExplicitWidth = 3
          ExplicitHeight = 15
        end
        object lblTitle: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 738
          Height = 20
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object butExecute: TControlListButton
          AlignWithMargins = True
          Left = 621
          Top = 50
          Width = 65
          Height = 80
          Margins.Left = 2
          Margins.Top = 20
          Margins.Right = 2
          Margins.Bottom = 20
          Action = acExecuteSQL
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Style = clbkToolButton
          ExplicitLeft = 620
        end
        object butCancel: TControlListButton
          AlignWithMargins = True
          Left = 690
          Top = 50
          Width = 66
          Height = 80
          Margins.Left = 2
          Margins.Top = 20
          Margins.Right = 2
          Margins.Bottom = 20
          Action = acCancelSQL
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Style = clbkToolButton
        end
        object butTest: TControlListButton
          AlignWithMargins = True
          Left = 552
          Top = 50
          Width = 65
          Height = 80
          Margins.Left = 2
          Margins.Top = 20
          Margins.Right = 2
          Margins.Bottom = 20
          Action = acTestSQL
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Style = clbkToolButton
          ExplicitLeft = 550
        end
      end
      object panOptions: TPanel
        Left = 0
        Top = 0
        Width = 766
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 768
        object butBackup: TButton
          AlignWithMargins = True
          Left = 664
          Top = 2
          Width = 100
          Height = 46
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = acBackupCFG
          Align = alRight
          TabOrder = 0
          WordWrap = True
          ExplicitLeft = 666
        end
        object butNew: TButton
          AlignWithMargins = True
          Left = 352
          Top = 2
          Width = 100
          Height = 46
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = acNewSQL
          Align = alRight
          TabOrder = 1
          ExplicitLeft = 351
        end
        object butDelete: TButton
          AlignWithMargins = True
          Left = 560
          Top = 2
          Width = 100
          Height = 46
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = acDeleteSQL
          Align = alRight
          TabOrder = 2
          ExplicitLeft = 561
        end
        object butEdit: TButton
          AlignWithMargins = True
          Left = 456
          Top = 2
          Width = 100
          Height = 46
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = acEditSQL
          Align = alRight
          TabOrder = 3
        end
        object BindNavigatorMain: TBindNavigator
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 344
          Height = 44
          DataSource = BindSourceDB1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alClient
          Flat = True
          TabOrder = 4
          ExplicitWidth = 343
        end
      end
    end
    object tbsTrace: TTabSheet
      Caption = '  Trace  '
      object panTop: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 756
        Height = 57
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        BevelOuter = bvNone
        Color = clSilver
        TabOrder = 0
        object butEnvReport: TSpeedButton
          Tag = 1
          AlignWithMargins = True
          Left = 447
          Top = 10
          Width = 104
          Height = 37
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 1
          Caption = 'Env Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = butEnvReportClick
        end
        object butDBMSInfo: TSpeedButton
          Tag = 1
          AlignWithMargins = True
          Left = 571
          Top = 10
          Width = 105
          Height = 37
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 1
          Caption = 'DBMS Info'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = butDBMSInfoClick
        end
        object tgsTracing: TToggleSwitch
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 117
          Height = 37
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'Tracing On'
          StateCaptions.CaptionOff = 'Tracing Off'
          TabOrder = 0
          OnClick = tgsTracingClick
        end
        object tgsMonitoring: TToggleSwitch
          AlignWithMargins = True
          Left = 147
          Top = 10
          Width = 136
          Height = 37
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'Monitoring On'
          StateCaptions.CaptionOff = 'Monitoring Off'
          TabOrder = 1
          OnClick = tgsMonitoringClick
        end
        object tgsSQLOnly: TToggleSwitch
          AlignWithMargins = True
          Left = 303
          Top = 10
          Width = 124
          Height = 37
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'SQL Only On'
          StateCaptions.CaptionOff = 'SQL Only Off'
          TabOrder = 2
        end
      end
      object memLog: TMemo
        AlignWithMargins = True
        Left = 5
        Top = 72
        Width = 756
        Height = 441
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Color = clInfoBk
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
  end
  object ActionList1: TActionList
    Left = 48
    Top = 96
    object acExecuteSQL: TAction
      Caption = 'Execute'
      OnExecute = acExecuteSQLExecute
    end
    object acCancelSQL: TAction
      Caption = 'Cancel'
      OnExecute = acCancelSQLExecute
    end
    object acTestSQL: TAction
      Caption = 'Test...'
      OnExecute = acTestSQLExecute
    end
    object acNewSQL: TAction
      Caption = 'New'
      OnExecute = acNewSQLExecute
    end
    object acEditSQL: TAction
      Caption = 'Edit'
      OnExecute = acEditSQLExecute
    end
    object acDeleteSQL: TAction
      Caption = 'Remove'
      OnExecute = acDeleteSQLExecute
    end
    object acBackupCFG: TAction
      Caption = 'Config Backup'
      OnExecute = acBackupCFGExecute
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = MainDM.tableSQL
    ScopeMappings = <>
    Left = 136
    Top = 96
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 232
    Top = 96
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'calcTitle'
      Component = lblTitle
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CommandText'
      Component = lblSQLText
      ComponentProperty = 'Caption'
    end
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = listSQL
      Columns = <>
    end
  end
  object FDMonitor: TFDMoniRemoteClientLink
    Left = 48
    Top = 160
  end
  object FDTrace: TFDMoniFlatFileClientLink
    ShowTraces = False
    Left = 128
    Top = 160
  end
end
