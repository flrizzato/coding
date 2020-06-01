object FDResourceResource1: TFDResourceResource1
  OldCreateOrder = False
  Height = 340
  Width = 442
  object EmployeeConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    LoginPrompt = False
    Left = 65
    Top = 24
  end
  object CustomerTable: TFDQuery
    CachedUpdates = True
    Connection = EmployeeConnection
    SchemaAdapter = FDSchemaAdapter1
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 68
    Top = 81
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 64
    Top = 136
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 288
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 184
    Top = 32
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 232
    Top = 96
  end
end
