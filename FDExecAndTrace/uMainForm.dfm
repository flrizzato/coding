object MainForm: TMainForm
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'FireDAC Tracing and Monitoring'
  ClientHeight = 703
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 20
  object pgcMain: TPageControl
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 973
    Height = 691
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ActivePage = tbsExecute
    Align = alClient
    HotTrack = True
    Style = tsFlatButtons
    TabOrder = 0
    object tbsExecute: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '  Execute  '
      ImageIndex = 1
      object Splitter1: TSplitter
        AlignWithMargins = True
        Left = 4
        Top = 462
        Width = 957
        Height = 5
        Cursor = crVSplit
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Beveled = True
        MinSize = 5
        ExplicitLeft = 0
        ExplicitTop = 458
        ExplicitWidth = 965
      end
      object listSQL: TControlList
        AlignWithMargins = True
        Left = 4
        Top = 54
        Width = 957
        Height = 400
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        ItemHeight = 200
        ItemMargins.Left = 0
        ItemMargins.Top = 0
        ItemMargins.Right = 0
        ItemMargins.Bottom = 0
        ItemSelectionOptions.HotColorAlpha = 50
        ItemSelectionOptions.SelectedColorAlpha = 70
        ItemSelectionOptions.FocusedColorAlpha = 80
        ParentColor = False
        TabOrder = 0
        OnBeforeDrawItem = listSQLBeforeDrawItem
        object Label1: TLabel
          AlignWithMargins = True
          Left = 13
          Top = 50
          Width = 648
          Height = 130
          Margins.Left = 13
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoSize = False
          EllipsisPosition = epEndEllipsis
          ShowAccelChar = False
          Transparent = True
          WordWrap = True
        end
        object Label2: TLabel
          Left = 13
          Top = 8
          Width = 738
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object butExecute: TControlListButton
          AlignWithMargins = True
          Left = 781
          Top = 25
          Width = 81
          Height = 150
          Margins.Top = 25
          Margins.Bottom = 25
          Action = acExecuteSQL
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Style = clbkToolButton
          ExplicitLeft = 780
          ExplicitHeight = 38
        end
        object butCancel: TControlListButton
          AlignWithMargins = True
          Left = 868
          Top = 25
          Width = 82
          Height = 150
          Margins.Top = 25
          Margins.Bottom = 25
          Action = acCancelSQL
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Style = clbkToolButton
          ExplicitLeft = 866
          ExplicitHeight = 38
        end
        object butTest: TControlListButton
          AlignWithMargins = True
          Left = 694
          Top = 25
          Width = 81
          Height = 150
          Margins.Top = 25
          Margins.Bottom = 25
          Action = acTestSQL
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Style = clbkToolButton
          ExplicitLeft = 780
          ExplicitHeight = 38
        end
      end
      object memSQL: TMemo
        AlignWithMargins = True
        Left = 4
        Top = 564
        Width = 957
        Height = 85
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object panExecute: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 475
        Width = 957
        Height = 81
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label3: TLabel
          Left = 290
          Top = 10
          Width = 55
          Height = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Interval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 430
          Top = 10
          Width = 59
          Height = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Sessions'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 4
          Top = 11
          Width = 79
          Height = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Connection'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object spnInternal: TSpinEdit
          Left = 290
          Top = 36
          Width = 119
          Height = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Increment = 1000
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object spiSessions: TSpinEdit
          Left = 430
          Top = 36
          Width = 119
          Height = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
        object cmbConnections: TComboBox
          Left = 5
          Top = 38
          Width = 263
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 0
          Text = 'cmbConnections'
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 965
        Height = 50
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object BindNavigatorMain: TBindNavigator
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 848
          Height = 42
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataSource = BindSourceDB1
          Align = alClient
          Flat = True
          Orientation = orHorizontal
          TabOrder = 0
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 858
          Top = 2
          Width = 105
          Height = 46
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = acBackupCFG
          Align = alRight
          TabOrder = 1
          WordWrap = True
        end
      end
    end
    object tbsTrace: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '  Trace  '
      object panTop: TPanel
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 953
        Height = 72
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alTop
        BevelOuter = bvNone
        Color = clSilver
        TabOrder = 0
        object butEnvReport: TSpeedButton
          Tag = 1
          AlignWithMargins = True
          Left = 562
          Top = 13
          Width = 131
          Height = 46
          Margins.Left = 13
          Margins.Top = 13
          Margins.Right = 13
          Margins.Bottom = 13
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 1
          Caption = 'Env Report'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = butEnvReportClick
          ExplicitLeft = 559
        end
        object butDBMSInfo: TSpeedButton
          Tag = 1
          AlignWithMargins = True
          Left = 719
          Top = 13
          Width = 131
          Height = 46
          Margins.Left = 13
          Margins.Top = 13
          Margins.Right = 13
          Margins.Bottom = 13
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 1
          Caption = 'DBMS Info'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = butDBMSInfoClick
          ExplicitLeft = 715
        end
        object tgsTracing: TToggleSwitch
          AlignWithMargins = True
          Left = 13
          Top = 13
          Width = 145
          Height = 46
          Margins.Left = 13
          Margins.Top = 13
          Margins.Right = 13
          Margins.Bottom = 13
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'Tracing On'
          StateCaptions.CaptionOff = 'Tracing Off'
          SwitchHeight = 25
          SwitchWidth = 63
          TabOrder = 0
          ThumbWidth = 19
          OnClick = tgsTracingClick
          ExplicitHeight = 25
        end
        object tgsMonitoring: TToggleSwitch
          AlignWithMargins = True
          Left = 184
          Top = 13
          Width = 169
          Height = 46
          Margins.Left = 13
          Margins.Top = 13
          Margins.Right = 13
          Margins.Bottom = 13
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'Monitoring On'
          StateCaptions.CaptionOff = 'Monitoring Off'
          SwitchHeight = 25
          SwitchWidth = 63
          TabOrder = 1
          ThumbWidth = 19
          OnClick = tgsMonitoringClick
          ExplicitHeight = 25
        end
        object tgsSQLOnly: TToggleSwitch
          AlignWithMargins = True
          Left = 379
          Top = 13
          Width = 157
          Height = 46
          Margins.Left = 13
          Margins.Top = 13
          Margins.Right = 13
          Margins.Bottom = 13
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'SQL Only On'
          StateCaptions.CaptionOff = 'SQL Only Off'
          SwitchHeight = 25
          SwitchWidth = 63
          TabOrder = 2
          ThumbWidth = 19
          ExplicitHeight = 25
        end
      end
      object memLog: TMemo
        AlignWithMargins = True
        Left = 6
        Top = 90
        Width = 953
        Height = 557
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        Color = clInfoBk
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
  end
  object tableSQL: TFDMemTable
    Active = True
    OnCalcFields = tableSQLCalcFields
    FieldDefs = <
      item
        Name = 'ConnectionName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ExecutionInterval'
        DataType = ftInteger
      end
      item
        Name = 'ConcurrentSessions'
        DataType = ftInteger
      end
      item
        Name = 'CommandText'
        DataType = ftMemo
      end
      item
        Name = 'IsExecuting'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    IndexFieldNames = 'ConnectionName'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 814
    Top = 296
    Content = {
      41444253100000001F030000FF00010001FF02FF030400100000007400610062
      006C006500530051004C000500100000007400610062006C006500530051004C
      00060000000000070000080032000000090000FF0AFF0B04001C00000043006F
      006E006E0065006300740069006F006E004E0061006D00650005001C00000043
      006F006E006E0065006300740069006F006E004E0061006D0065000C00010000
      000E000D000F003200000010000111000112000113000114000115000116001C
      00000043006F006E006E0065006300740069006F006E004E0061006D00650017
      0032000000FEFF0B04002200000045007800650063007500740069006F006E00
      49006E00740065007200760061006C0005002200000045007800650063007500
      740069006F006E0049006E00740065007200760061006C000C00020000000E00
      1800100001110001120001130001140001150001160022000000450078006500
      63007500740069006F006E0049006E00740065007200760061006C00FEFF0B04
      002400000043006F006E00630075007200720065006E00740053006500730073
      0069006F006E00730005002400000043006F006E00630075007200720065006E
      007400530065007300730069006F006E0073000C00030000000E001800100001
      11000112000113000114000115000116002400000043006F006E006300750072
      00720065006E007400530065007300730069006F006E007300FEFF0B04001600
      000043006F006D006D0061006E00640054006500780074000500160000004300
      6F006D006D0061006E00640054006500780074000C00040000000E0019001000
      011100011A000112000113000114000115000116001600000043006F006D006D
      0061006E0064005400650078007400FEFF0B0400160000004900730045007800
      650063007500740069006E006700050016000000490073004500780065006300
      7500740069006E0067000C00050000000E001B00100001110001120001130001
      1400011500011600160000004900730045007800650063007500740069006E00
      6700FEFEFF1CFEFF1DFEFF1EFEFEFEFF1FFEFF20210001000000FF22FEFEFE0E
      004D0061006E0061006700650072001E00550070006400610074006500730052
      00650067006900730074007200790012005400610062006C0065004C00690073
      0074000A005400610062006C00650008004E0061006D006500140053006F0075
      007200630065004E0061006D0065000A0054006100620049004400240045006E
      0066006F0072006300650043006F006E00730074007200610069006E00740073
      001E004D0069006E0069006D0075006D00430061007000610063006900740079
      00180043006800650063006B004E006F0074004E0075006C006C00140043006F
      006C0075006D006E004C006900730074000C0043006F006C0075006D006E0010
      0053006F0075007200630065004900440018006400740041006E007300690053
      007400720069006E006700100044006100740061005400790070006500080053
      0069007A0065001400530065006100720063006800610062006C006500120041
      006C006C006F0077004E0075006C006C000800420061007300650014004F0041
      006C006C006F0077004E0075006C006C0012004F0049006E0055007000640061
      007400650010004F0049006E00570068006500720065001A004F007200690067
      0069006E0043006F006C004E0061006D006500140053006F0075007200630065
      00530069007A0065000E006400740049006E007400330032000C00640074004D
      0065006D006F00100042006C006F006200440061007400610012006400740042
      006F006F006C00650061006E001C0043006F006E00730074007200610069006E
      0074004C00690073007400100056006900650077004C006900730074000E0052
      006F0077004C006900730074001800520065006C006100740069006F006E004C
      006900730074001C0055007000640061007400650073004A006F00750072006E
      0061006C001200530061007600650050006F0069006E0074000E004300680061
      006E00670065007300}
    object tableSQLConnectionName: TStringField
      FieldName = 'ConnectionName'
      Size = 50
    end
    object tableSQLExecutionInterval: TIntegerField
      FieldName = 'ExecutionInterval'
    end
    object tableSQLConcurrentSessions: TIntegerField
      FieldName = 'ConcurrentSessions'
    end
    object tableSQLCommandText: TMemoField
      FieldName = 'CommandText'
      BlobType = ftMemo
    end
    object tableSQLIsExecuting: TBooleanField
      FieldName = 'IsExecuting'
    end
    object tableSQLcalcTitle: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcTitle'
      Size = 100
      Calculated = True
    end
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 834
    Top = 370
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = tableSQL
    ScopeMappings = <>
    Left = 694
    Top = 296
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 690
    Top = 367
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ExecutionInterval'
      Control = spnInternal
      Track = True
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CommandText'
      Component = Label1
      CustomFormat = 'SubString(%S, 0, 500)'
      ComponentProperty = 'Caption'
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CommandText'
      Control = memSQL
      Track = False
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'calcTitle'
      Component = Label2
      ComponentProperty = 'Caption'
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ConnectionName'
      Control = cmbConnections
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ConcurrentSessions'
      Control = spiSessions
      Track = True
    end
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = listSQL
      Columns = <>
    end
  end
  object FDManager: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 74
    Top = 574
  end
  object ActionList1: TActionList
    Left = 752
    Top = 452
    object acExecuteSQL: TAction
      Caption = 'Execute'
      OnExecute = acExecuteSQLExecute
    end
    object acCancelSQL: TAction
      Caption = 'Cancel'
      OnExecute = acCancelSQLExecute
    end
    object acBackupCFG: TAction
      Caption = 'Backup the Config File'
      OnExecute = acBackupCFGExecute
    end
    object acTestSQL: TAction
      Caption = 'Test...'
      OnExecute = acTestSQLExecute
    end
  end
  object FDMonitor: TFDMoniRemoteClientLink
    Left = 164
    Top = 577
  end
  object FDTrace: TFDMoniFlatFileClientLink
    FileAppend = True
    ShowTraces = False
    Left = 246
    Top = 577
  end
end
