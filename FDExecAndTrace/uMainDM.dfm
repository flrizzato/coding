object MainDM: TMainDM
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 614
  Width = 785
  PixelsPerInch = 120
  object tableSQL: TFDMemTable
    OnCalcFields = tableSQLCalcFields
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    IndexFieldNames = 'ConnectionName'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 280
    Top = 184
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
    Left = 280
    Top = 256
  end
  object FDPhysDB2DriverLink1: TFDPhysDB2DriverLink
    Left = 504
    Top = 96
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 488
    Top = 88
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 480
    Top = 72
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 472
    Top = 64
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 464
    Top = 56
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 448
    Top = 48
  end
  object FDQry: TFDQuery
    Connection = FDCnn
    FetchOptions.AssignedValues = [evMode, evItems, evUnidirectional, evLiveWindowParanoic, evDetailServerCascade]
    FetchOptions.Mode = fmAll
    FetchOptions.Items = [fiBlobs, fiDetails]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.KeyFields = 'CUSTOMERID'
    UpdateOptions.AutoIncFields = 'CUSTOMERID'
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE ORDER BY EMP_NO DESC')
    Left = 120
    Top = 120
  end
  object ADPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 440
    Top = 32
  end
  object ADGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 40
  end
  object FDCnn: TFDConnection
    ConnectionName = 'UniversalCnn'
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtInt32
      end
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtDate
        TargetDataType = dtDateTime
      end>
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 120
    Top = 40
  end
  object FDManager: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 40
    Top = 40
  end
end
