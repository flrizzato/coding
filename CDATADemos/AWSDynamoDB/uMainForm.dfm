object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'AWS DynamoDB'
  ClientHeight = 458
  ClientWidth = 716
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
    Left = 355
    Top = 50
    Width = 5
    Height = 408
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object butUpload: TButton
      AlignWithMargins = True
      Left = 175
      Top = 5
      Width = 75
      Height = 40
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Upload'
      TabOrder = 0
      OnClick = butUploadClick
    end
    object butDynamoDB: TButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 75
      Height = 40
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'DynamoDB'
      TabOrder = 1
      OnClick = butDynamoDBClick
    end
    object butInterbase: TButton
      AlignWithMargins = True
      Left = 90
      Top = 5
      Width = 75
      Height = 40
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Interbase'
      TabOrder = 2
      OnClick = butInterbaseClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 50
    Width = 355
    Height = 408
    Align = alLeft
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Country'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Currency'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 360
    Top = 50
    Width = 356
    Height = 408
    Align = alClient
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COUNTRY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURRENCY'
        Visible = True
      end>
  end
  object CnnDynamoDB: TFDConnection
    Params.Strings = (
      'AccessKey=AKIAJ4LTVR5CYDDBOYYA'
      'SecretKey=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'
      'Region=OHIO'
      'DriverID=CDataAmazonDynamoDB')
    LoginPrompt = False
    Left = 96
    Top = 112
  end
  object qryCountryRemote: TFDQuery
    Connection = CnnDynamoDB
    SQL.Strings = (
      'SELECT * FROM Country ORDER BY Country')
    Left = 96
    Top = 168
    object qryCountryRemoteCountry: TWideStringField
      FieldName = 'Country'
      Origin = 'Country'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryCountryRemoteCurrency: TWideStringField
      FieldName = 'Currency'
      Origin = 'Currency'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object CnnInterbase: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\20.0\Sampl' +
        'es\Data\EMPLOYEE.GDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB')
    LoginPrompt = False
    Left = 392
    Top = 112
  end
  object qryCountryLocal: TFDQuery
    Connection = CnnInterbase
    SQL.Strings = (
      'SELECT * FROM COUNTRY ORDER BY COUNTRY')
    Left = 392
    Top = 168
    object qryCountryLocalCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryCountryLocalCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'CURRENCY'
      Required = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = qryCountryRemote
    Left = 96
    Top = 224
  end
  object DataSource2: TDataSource
    DataSet = qryCountryLocal
    Left = 392
    Top = 224
  end
end
