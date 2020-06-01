object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'EC Excel Files'
  ClientHeight = 504
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 145
    Width = 736
    Height = 5
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 134
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 150
    Width = 736
    Height = 329
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RowId'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Row ID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Order ID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Order Date'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ship Date'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ship Mode'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer ID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer Name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Segment'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Country'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'City'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'State'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Postal Code'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Region'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Product ID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Category'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sub-Category'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Product Name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sales'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantity'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Discount'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Profit'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 479
    Width = 736
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 85
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Open'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 100
      Top = 5
      Width = 85
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Close'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 195
      Top = 5
      Width = 85
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Apply Updates'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 290
      Top = 5
      Width = 85
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Cancel Updates'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object memSQL: TMemo
    Left = 0
    Top = 45
    Width = 736
    Height = 100
    Align = alTop
    Lines.Strings = (
      'SELECT * FROM ORDERS ORDER BY "RowID" ')
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ExcelFile=C:\EVENTS\CDATADemos\data\superstore.xlsx'
      'DriverID=CDataExcel')
    Left = 56
    Top = 208
  end
  object FDQuery1: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'SELECT * FROM ORDERS ORDERS ORDER BY "RowID" ')
    Left = 56
    Top = 272
    object FDQuery1RowId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RowId'
      Origin = 'RowId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object FDQuery1RowID2: TWideStringField
      FieldName = 'Row ID'
      Origin = '"Row ID"'
      Size = 4000
    end
    object FDQuery1OrderID: TWideStringField
      FieldName = 'Order ID'
      Origin = '"Order ID"'
      Size = 4000
    end
    object FDQuery1OrderDate: TWideStringField
      FieldName = 'Order Date'
      Origin = '"Order Date"'
      Size = 4000
    end
    object FDQuery1ShipDate: TWideStringField
      FieldName = 'Ship Date'
      Origin = '"Ship Date"'
      Size = 4000
    end
    object FDQuery1ShipMode: TWideStringField
      FieldName = 'Ship Mode'
      Origin = '"Ship Mode"'
      Size = 4000
    end
    object FDQuery1CustomerID: TWideStringField
      FieldName = 'Customer ID'
      Origin = '"Customer ID"'
      Size = 4000
    end
    object FDQuery1CustomerName: TWideStringField
      FieldName = 'Customer Name'
      Origin = '"Customer Name"'
      Size = 4000
    end
    object FDQuery1Segment: TWideStringField
      FieldName = 'Segment'
      Origin = 'Segment'
      Size = 4000
    end
    object FDQuery1Country: TWideStringField
      FieldName = 'Country'
      Origin = 'Country'
      Size = 4000
    end
    object FDQuery1City: TWideStringField
      FieldName = 'City'
      Origin = 'City'
      Size = 4000
    end
    object FDQuery1State: TWideStringField
      FieldName = 'State'
      Origin = 'State'
      Size = 4000
    end
    object FDQuery1PostalCode: TWideStringField
      FieldName = 'Postal Code'
      Origin = '"Postal Code"'
      Size = 4000
    end
    object FDQuery1Region: TWideStringField
      FieldName = 'Region'
      Origin = 'Region'
      Size = 4000
    end
    object FDQuery1ProductID: TWideStringField
      FieldName = 'Product ID'
      Origin = '"Product ID"'
      Size = 4000
    end
    object FDQuery1Category: TWideStringField
      FieldName = 'Category'
      Origin = 'Category'
      Size = 4000
    end
    object FDQuery1SubCategory: TWideStringField
      FieldName = 'Sub-Category'
      Origin = '"Sub-Category"'
      Size = 4000
    end
    object FDQuery1ProductName: TWideStringField
      FieldName = 'Product Name'
      Origin = '"Product Name"'
      Size = 4000
    end
    object FDQuery1Sales: TWideStringField
      FieldName = 'Sales'
      Origin = 'Sales'
      Size = 4000
    end
    object FDQuery1Quantity: TWideStringField
      FieldName = 'Quantity'
      Origin = 'Quantity'
      Size = 4000
    end
    object FDQuery1Discount: TWideStringField
      FieldName = 'Discount'
      Origin = 'Discount'
      Size = 4000
    end
    object FDQuery1Profit: TWideStringField
      FieldName = 'Profit'
      Origin = 'Profit'
      Size = 4000
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnStateChange = DataSource1StateChange
    Left = 56
    Top = 328
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO "CDATA"."EXCEL"."ORDERS"'
      '("ROW ID", "ORDER ID", "ORDER DATE", "SHIP DATE", '
      '  "SHIP MODE", "CUSTOMER ID", "CUSTOMER NAME", '
      '  "SEGMENT", "COUNTRY", "CITY", "STATE", '
      '  "POSTAL CODE", "REGION", "PRODUCT ID", "CATEGORY", '
      '  "SUB-CATEGORY", "PRODUCT NAME", "SALES", '
      '  "QUANTITY", "DISCOUNT", "PROFIT")'
      
        'VALUES (:"NEW_ROW ID", :"NEW_ORDER ID", :"NEW_ORDER DATE", :"NEW' +
        '_SHIP DATE", '
      '  :"NEW_SHIP MODE", :"NEW_CUSTOMER ID", :"NEW_CUSTOMER NAME", '
      '  :"NEW_SEGMENT", :"NEW_COUNTRY", :"NEW_CITY", :"NEW_STATE", '
      
        '  :"NEW_POSTAL CODE", :"NEW_REGION", :"NEW_PRODUCT ID", :"NEW_CA' +
        'TEGORY", '
      '  :"NEW_SUB-CATEGORY", :"NEW_PRODUCT NAME", :"NEW_SALES", '
      '  :"NEW_QUANTITY", :"NEW_DISCOUNT", :"NEW_PROFIT")')
    ModifySQL.Strings = (
      'UPDATE "CDATA"."EXCEL"."ORDERS"'
      
        'SET "ROW ID" = :"NEW_ROW ID", "ORDER ID" = :"NEW_ORDER ID", "ORD' +
        'ER DATE" = :"NEW_ORDER DATE", '
      
        '  "SHIP DATE" = :"NEW_SHIP DATE", "SHIP MODE" = :"NEW_SHIP MODE"' +
        ', '
      
        '  "CUSTOMER ID" = :"NEW_CUSTOMER ID", "CUSTOMER NAME" = :"NEW_CU' +
        'STOMER NAME", '
      '  "SEGMENT" = :"NEW_SEGMENT", "COUNTRY" = :"NEW_COUNTRY", '
      
        '  "CITY" = :"NEW_CITY", "STATE" = :"NEW_STATE", "POSTAL CODE" = ' +
        ':"NEW_POSTAL CODE", '
      '  "REGION" = :"NEW_REGION", "PRODUCT ID" = :"NEW_PRODUCT ID", '
      
        '  "CATEGORY" = :"NEW_CATEGORY", "SUB-CATEGORY" = :"NEW_SUB-CATEG' +
        'ORY", '
      '  "PRODUCT NAME" = :"NEW_PRODUCT NAME", "SALES" = :"NEW_SALES", '
      '  "QUANTITY" = :"NEW_QUANTITY", "DISCOUNT" = :"NEW_DISCOUNT", '
      '  "PROFIT" = :"NEW_PROFIT"'
      'WHERE "ROWID" = :"OLD_ROWID"')
    DeleteSQL.Strings = (
      'DELETE FROM "CDATA"."EXCEL"."ORDERS"'
      'WHERE "ROWID" = :"OLD_ROWID"')
    FetchRowSQL.Strings = (
      
        'SELECT "ROWID", "ROW ID" AS "ROW ID", "ORDER ID" AS "ORDER ID", ' +
        '"ORDER DATE" AS "ORDER DATE", '
      '  "SHIP DATE" AS "SHIP DATE", "SHIP MODE" AS "SHIP MODE", '
      
        '  "CUSTOMER ID" AS "CUSTOMER ID", "CUSTOMER NAME" AS "CUSTOMER N' +
        'AME", '
      
        '  "SEGMENT", "COUNTRY", "CITY", "STATE", "POSTAL CODE" AS "POSTA' +
        'L CODE", '
      
        '  "REGION", "PRODUCT ID" AS "PRODUCT ID", "CATEGORY", "SUB-CATEG' +
        'ORY" AS "SUB-CATEGORY", '
      
        '  "PRODUCT NAME" AS "PRODUCT NAME", "SALES", "QUANTITY", "DISCOU' +
        'NT", '
      '  "PROFIT"'
      'FROM "CDATA"."EXCEL"."ORDERS"'
      'WHERE "ROWID" = :"OLD_ROWID"')
    Left = 128
    Top = 272
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 204
    Top = 269
    object LinkControlToPropertySQLText: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = memSQL
      Track = False
      Component = FDQuery1
      ComponentProperty = 'SQL.Text'
    end
  end
end
