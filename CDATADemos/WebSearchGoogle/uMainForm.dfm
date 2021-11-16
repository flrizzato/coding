object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'EC Google Search'
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
        Tag = 8
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 753
        Height = 432
        Align = alClient
        ColCount = 8
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        ColWidths = (
          125
          125
          125
          125
          125
          125
          125
          125)
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
        Tag = 11
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 434
        Height = 432
        Align = alClient
        ColCount = 11
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        ColWidths = (
          125
          125
          125
          125
          125
          125
          125
          125
          125
          125
          125)
      end
    end
  end
  object FDCnnGoogle: TFDConnection
    Params.Strings = (
      'APIKey=AIzaSyBojWF9IVED_ypn6q0H-d6dMroJFX84UAc'
      'CustomSearchId=007822084187577363289:e96r0nl8gby '
      'DriverID=CDataGoogleSearch')
    Connected = True
    Left = 656
    Top = 136
  end
  object WebSearch: TFDQuery
    Connection = FDCnnGoogle
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
    object WebSearchSearchTerms: TWideStringField
      FieldName = 'SearchTerms'
      Origin = 'SearchTerms'
      Size = 4000
    end
    object WebSearchTitle: TWideStringField
      FieldName = 'Title'
      Origin = 'Title'
      Size = 4000
    end
    object WebSearchHtmlTitle: TWideStringField
      FieldName = 'HtmlTitle'
      Origin = 'HtmlTitle'
      Size = 4000
    end
    object WebSearchLink: TWideStringField
      FieldName = 'Link'
      Origin = 'Link'
      Size = 4000
    end
    object WebSearchDisplayLink: TWideStringField
      FieldName = 'DisplayLink'
      Origin = 'DisplayLink'
      Size = 4000
    end
    object WebSearchSnippet: TWideStringField
      FieldName = 'Snippet'
      Origin = 'Snippet'
      Size = 4000
    end
    object WebSearchHtmlSnippet: TWideStringField
      FieldName = 'HtmlSnippet'
      Origin = 'HtmlSnippet'
      Size = 4000
    end
    object WebSearchFormattedUrl: TWideStringField
      FieldName = 'FormattedUrl'
      Origin = 'FormattedUrl'
      Size = 4000
    end
    object WebSearchHtmlFormattedUrl: TWideStringField
      FieldName = 'HtmlFormattedUrl'
      Origin = 'HtmlFormattedUrl'
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
          Width = 125
        end
        item
          MemberName = 'HtmlTitle'
          Width = 125
        end
        item
          MemberName = 'Link'
          Width = 125
        end
        item
          MemberName = 'DisplayLink'
          Width = 125
        end
        item
          MemberName = 'Snippet'
          Width = 125
        end
        item
          MemberName = 'HtmlSnippet'
          Width = 125
        end
        item
          MemberName = 'FormattedUrl'
          Width = 125
        end
        item
          MemberName = 'HtmlFormattedUrl'
          Width = 125
        end>
    end
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      GridControl = StringGrid2
      Columns = <
        item
          MemberName = 'Title'
          Width = 125
        end
        item
          MemberName = 'HtmlTitle'
          Width = 125
        end
        item
          MemberName = 'Link'
          Width = 125
        end
        item
          MemberName = 'DisplayLink'
          Width = 125
        end
        item
          MemberName = 'Snippet'
          Width = 125
        end
        item
          MemberName = 'HtmlSnippet'
          Width = 125
        end
        item
          MemberName = 'ImageWidth'
          Width = 125
        end
        item
          MemberName = 'ImageHeight'
          Width = 125
        end
        item
          MemberName = 'Size'
          Width = 125
        end
        item
          MemberName = 'ImageThumbnail'
          Width = 125
        end
        item
          MemberName = 'ImageContext'
          Width = 125
        end>
    end
  end
  object ImageSearch: TFDQuery
    Connection = FDCnnGoogle
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
    object ImageSearchSearchTerms: TWideStringField
      FieldName = 'SearchTerms'
      Origin = 'SearchTerms'
      Size = 4000
    end
    object ImageSearchTitle: TWideStringField
      FieldName = 'Title'
      Origin = 'Title'
      Size = 4000
    end
    object ImageSearchHtmlTitle: TWideStringField
      FieldName = 'HtmlTitle'
      Origin = 'HtmlTitle'
      Size = 4000
    end
    object ImageSearchLink: TWideStringField
      FieldName = 'Link'
      Origin = 'Link'
      Size = 4000
    end
    object ImageSearchDisplayLink: TWideStringField
      FieldName = 'DisplayLink'
      Origin = 'DisplayLink'
      Size = 4000
    end
    object ImageSearchSnippet: TWideStringField
      FieldName = 'Snippet'
      Origin = 'Snippet'
      Size = 4000
    end
    object ImageSearchHtmlSnippet: TWideStringField
      FieldName = 'HtmlSnippet'
      Origin = 'HtmlSnippet'
      Size = 4000
    end
    object ImageSearchImageWidth: TIntegerField
      FieldName = 'ImageWidth'
      Origin = 'ImageWidth'
    end
    object ImageSearchImageHeight: TIntegerField
      FieldName = 'ImageHeight'
      Origin = 'ImageHeight'
    end
    object ImageSearchSize: TIntegerField
      FieldName = 'Size'
      Origin = '"Size"'
    end
    object ImageSearchImageThumbnail: TWideStringField
      FieldName = 'ImageThumbnail'
      Origin = 'ImageThumbnail'
      Size = 4000
    end
    object ImageSearchImageContext: TWideStringField
      FieldName = 'ImageContext'
      Origin = 'ImageContext'
      Size = 4000
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
