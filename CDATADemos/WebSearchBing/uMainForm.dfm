object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'EC Bing Search'
  ClientHeight = 530
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 773
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object btnSearch: TButton
      AlignWithMargins = True
      Left = 683
      Top = 5
      Width = 85
      Height = 45
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Search'
      Default = True
      Enabled = False
      TabOrder = 0
      OnClick = btnSearchClick
    end
    object edtSearch: TEdit
      AlignWithMargins = True
      Left = 5
      Top = 10
      Width = 668
      Height = 35
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edtSearchChange
      ExplicitHeight = 27
    end
  end
  object pgcSearch: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 58
    Width = 767
    Height = 469
    ActivePage = TabSheet1
    Align = alClient
    HotTrack = True
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'WebSearch'
      object StringGrid1: TStringGrid
        Tag = 3
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 753
        Height = 432
        Align = alClient
        ColCount = 3
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        ColWidths = (
          225
          225
          225)
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ImageSearch'
      ImageIndex = 1
      object imgSearch: TImage
        Left = 440
        Top = 0
        Width = 319
        Height = 438
        Align = alRight
        Center = True
        Proportional = True
        Stretch = True
      end
      object StringGrid2: TStringGrid
        Tag = 8
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 434
        Height = 432
        Align = alClient
        ColCount = 8
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        ColWidths = (
          85
          85
          85
          85
          85
          85
          85
          85)
      end
    end
  end
  object FDCnnBing: TFDConnection
    Params.Strings = (
      'APIKey=f68507cd447f4a4fa18aff1ac6464770'
      'DriverID=CDataBing')
    Left = 656
    Top = 136
  end
  object WebSearch: TFDQuery
    Connection = FDCnnBing
    SQL.Strings = (
      
        'SELECT * FROM WebSearch WHERE SearchTerms = :SearchTerms LIMIT 1' +
        '00')
    Left = 624
    Top = 200
    ParamData = <
      item
        Name = 'SEARCHTERMS'
        DataType = ftString
        ParamType = ptInput
        Value = 'Delphi'
      end>
    object WebSearchId: TWideStringField
      FieldName = 'Id'
      Origin = 'Id'
      Size = 4000
    end
    object WebSearchTitle: TWideStringField
      FieldName = 'Title'
      Origin = 'Title'
      Size = 4000
    end
    object WebSearchURL: TWideStringField
      FieldName = 'URL'
      Origin = 'URL'
      Size = 4000
    end
    object WebSearchDisplayUrl: TWideStringField
      FieldName = 'DisplayUrl'
      Origin = 'DisplayUrl'
      Size = 4000
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = WebSearch
    ScopeMappings = <>
    Left = 64
    Top = 152
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 60
    Top = 213
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'Title'
          Width = 225
        end
        item
          MemberName = 'URL'
          Width = 225
        end
        item
          MemberName = 'DisplayUrl'
          Width = 225
        end>
    end
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      GridControl = StringGrid2
      Columns = <
        item
          MemberName = 'Title'
          Width = 85
        end
        item
          MemberName = 'ContentUrl'
          Width = 85
        end
        item
          MemberName = 'HostPageUrl'
          Width = 85
        end
        item
          MemberName = 'ThumbnailUrl'
          Width = 85
        end
        item
          MemberName = 'Size'
          Width = 85
        end
        item
          MemberName = 'Width'
          Width = 85
        end
        item
          MemberName = 'Height'
          Width = 85
        end
        item
          MemberName = 'DatePublished'
          Width = 85
        end>
    end
  end
  object ImageSearch: TFDQuery
    Connection = FDCnnBing
    SQL.Strings = (
      
        'SELECT * FROM ImageSearch WHERE SearchTerms = :SearchTerms LIMIT' +
        ' 100')
    Left = 696
    Top = 200
    ParamData = <
      item
        Name = 'SEARCHTERMS'
        DataType = ftString
        ParamType = ptInput
        Value = 'Delphi'
      end>
    object ImageSearchTitle: TWideStringField
      FieldName = 'Title'
      Origin = 'Title'
      Size = 4000
    end
    object ImageSearchContentUrl: TWideStringField
      FieldName = 'ContentUrl'
      Origin = 'ContentUrl'
      Size = 4000
    end
    object ImageSearchHostPageUrl: TWideStringField
      FieldName = 'HostPageUrl'
      Origin = 'HostPageUrl'
      Size = 4000
    end
    object ImageSearchThumbnailUrl: TWideStringField
      FieldName = 'ThumbnailUrl'
      Origin = 'ThumbnailUrl'
      Size = 4000
    end
    object ImageSearchSize: TWideStringField
      FieldName = 'Size'
      Origin = '"Size"'
      Size = 4000
    end
    object ImageSearchWidth: TIntegerField
      FieldName = 'Width'
      Origin = 'Width'
    end
    object ImageSearchHeight: TIntegerField
      FieldName = 'Height'
      Origin = 'Height'
    end
    object ImageSearchDatePublished: TSQLTimeStampField
      FieldName = 'DatePublished'
      Origin = 'DatePublished'
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSource.OnDataChange = BindSourceDB2SubDataSourceDataChange
    DataSet = ImageSearch
    ScopeMappings = <>
    Left = 160
    Top = 152
  end
end
