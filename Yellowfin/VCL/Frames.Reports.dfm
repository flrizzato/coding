object FrameReports: TFrameReports
  Left = 0
  Top = 0
  Width = 1359
  Height = 786
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Color = clBtnFace
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  PixelsPerInch = 120
  object Splitter1: TSplitter
    Left = 281
    Top = 0
    Width = 4
    Height = 786
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    MinSize = 38
  end
  object pnlReportList: TPanel
    Left = 0
    Top = 0
    Width = 281
    Height = 786
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    Color = clBlack
    TabOrder = 0
    StyleName = 'Windows'
    object pnlHeader: TPanel
      Left = 1
      Top = 1
      Width = 279
      Height = 147
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      Padding.Left = 6
      Padding.Top = 6
      Padding.Right = 6
      Padding.Bottom = 6
      ParentBackground = False
      TabOrder = 0
      StyleName = 'Windows'
      object viLogo: TVirtualImage
        Left = 6
        Top = 6
        Width = 267
        Height = 107
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        ImageCollection = YF_VCLResources.icLogo
        ImageWidth = 0
        ImageHeight = 0
        ImageIndex = 0
        ImageName = 'YellowFin'
        ExplicitHeight = 99
      end
      object cbListType: TComboBox
        Left = 6
        Top = 113
        Width = 267
        Height = 28
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alBottom
        TabOrder = 0
        OnChange = cbListTypeChange
        Items.Strings = (
          'All User Reports'
          'My Reports'
          'Favourates'
          'Drafts')
      end
    end
    object lvReportList: TListView
      Left = 1
      Top = 148
      Width = 279
      Height = 637
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      BorderStyle = bsNone
      Columns = <
        item
          AutoSize = True
          Caption = 'Select Report'
        end>
      FlatScrollBars = True
      GridLines = True
      Groups = <
        item
          GroupID = 0
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
        end
        item
          GroupID = 1
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
        end>
      Items.ItemData = {
        054E0000000300000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000000000000FF
        FFFFFFFFFFFFFF00000000FFFFFFFF0000000000}
      GroupView = True
      ReadOnly = True
      RowSelect = True
      TabOrder = 1
      ViewStyle = vsReport
      OnSelectItem = lvReportListSelectItem
    end
  end
  object plReports: TPanel
    Left = 285
    Top = 0
    Width = 1074
    Height = 786
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    object lblReportDescription: TLabel
      Left = 1
      Top = 137
      Width = 1072
      Height = 20
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alTop
      Caption = '<Description>'
      WordWrap = True
      ExplicitWidth = 96
    end
    object lblReportTitle: TLabel
      Left = 1
      Top = 76
      Width = 1072
      Height = 61
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = '<Title>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -45
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 147
    end
    object pcReports: TPageControl
      Left = 1
      Top = 157
      Width = 572
      Height = 628
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      ActivePage = tabBrowser
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpBottom
      object tabBrowser: TTabSheet
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Caption = 'Report'
        object WebBrowser1: TWebBrowser
          Left = 0
          Top = 0
          Width = 564
          Height = 595
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alClient
          TabOrder = 0
          SelectedEngine = EdgeIfAvailable
          ExplicitWidth = 622
          ControlData = {
            4C000000A22E0000323100000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object tabSource: TTabSheet
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Caption = 'Source'
        ImageIndex = 1
        object memoSource: TMemo
          Left = 0
          Top = 0
          Width = 564
          Height = 595
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object tabSchema: TTabSheet
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Caption = 'Schema'
        ImageIndex = 2
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 564
          Height = 595
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alClient
          DataSource = dsReportSchema
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FieldID'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'columnName'
              Width = 313
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataType'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'displayName'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'defaultValue1'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'defaultValue2'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'filterID'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AllowPrompt'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CachedValues'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FilterDisplayType'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'reportid'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NumberOfDecimals'
              Width = 275
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MinimumValue'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MaximumValue'
              Width = 250
              Visible = True
            end>
        end
      end
      object tabStart: TTabSheet
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Caption = 'tabStart'
        ImageIndex = 3
        TabVisible = False
        object Label1: TLabel
          AlignWithMargins = True
          Left = 8
          Top = 8
          Width = 548
          Height = 579
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alClient
          Alignment = taCenter
          Caption = 'Select Report to Run'
          Layout = tlCenter
          ExplicitWidth = 136
          ExplicitHeight = 20
        end
      end
    end
    object pnlReportOptions: TPanel
      Left = 1
      Top = 1
      Width = 1072
      Height = 75
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Top = 6
      Padding.Right = 6
      Padding.Bottom = 6
      TabOrder = 1
      object imgFavourate: TImage
        AlignWithMargins = True
        Left = 699
        Top = 14
        Width = 74
        Height = 47
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alRight
        Center = True
        Proportional = True
        Stretch = True
        Transparent = True
        OnClick = imgFavourateClick
        ExplicitLeft = 701
      end
      object imgFilter: TVirtualImage
        AlignWithMargins = True
        Left = 789
        Top = 14
        Width = 65
        Height = 47
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alRight
        ImageCollection = YF_VCLResources.FavImages
        ImageWidth = 0
        ImageHeight = 0
        ImageIndex = 0
        ImageName = 'Filter'
        OnClick = imgFilterClick
        ExplicitLeft = 790
      end
      object rbHTML: TRadioButton
        Left = 6
        Top = 6
        Width = 150
        Height = 63
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alLeft
        Caption = 'HTML'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbText: TRadioButton
        Left = 156
        Top = 6
        Width = 150
        Height = 63
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alLeft
        Caption = 'Text'
        TabOrder = 1
        TabStop = True
      end
      object rbPDF: TRadioButton
        Left = 306
        Top = 6
        Width = 150
        Height = 63
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alLeft
        Caption = 'PDF'
        TabOrder = 2
        TabStop = True
      end
      object rbXLS: TRadioButton
        Left = 456
        Top = 6
        Width = 150
        Height = 63
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alLeft
        Caption = 'XLS'
        TabOrder = 3
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 870
        Top = 14
        Width = 188
        Height = 47
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Action = actRunReport
        Align = alRight
        TabOrder = 4
      end
    end
    object svFilters: TSplitView
      Left = 573
      Top = 157
      Width = 500
      Height = 628
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      CompactWidth = 250
      OpenedWidth = 500
      Placement = svpRight
      TabOrder = 2
      object sbFilters: TScrollBox
        Left = 0
        Top = 0
        Width = 500
        Height = 628
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        BevelInner = bvNone
        BorderStyle = bsNone
        TabOrder = 0
      end
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 132
    Top = 165
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'reportName'
      Control = lvReportList
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakFieldName = 'CategorySubCategory'
      FillHeaderFieldName = 'CategorySubCategory'
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'FavIcon'
      Control = imgFavourate
      Track = False
    end
  end
  object dsReportData: TDataSource
    DataSet = YF_ReportData.mtReports
    Left = 96
    Top = 264
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = YF_ReportData.mtReports
    ScopeMappings = <>
    Left = 408
    Top = 224
  end
  object dsReportSchema: TDataSource
    DataSet = YF_ReportData.mtReportSchema
    Left = 96
    Top = 392
  end
  object alReports: TActionList
    Left = 408
    Top = 384
    object actRunReport: TAction
      Caption = 'Run Report'
      OnExecute = actRunReportExecute
    end
    object actReloadFilters: TAction
      Caption = 'Reload Filters'
      OnExecute = actReloadFiltersExecute
    end
  end
end
