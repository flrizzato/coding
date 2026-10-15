object MainDM: TMainDM
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 491
  Width = 628
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
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 224
    Top = 147
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
    Left = 224
    Top = 205
  end
  object FDPhysDB2DriverLink1: TFDPhysDB2DriverLink
    Left = 403
    Top = 77
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 390
    Top = 70
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 384
    Top = 58
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 378
    Top = 51
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 371
    Top = 45
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 358
    Top = 38
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
    Left = 96
    Top = 96
  end
  object ADPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 352
    Top = 26
  end
  object ADGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 186
    Top = 32
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
    Left = 96
    Top = 32
  end
  object FDManager: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 32
    Top = 32
  end
end
