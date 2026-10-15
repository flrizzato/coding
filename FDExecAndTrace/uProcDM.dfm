object ProcDM: TProcDM
  Height = 600
  Width = 800
  object FDPhysDB2DriverLink1: TFDPhysDB2DriverLink
    Left = 459
    Top = 90
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 446
    Top = 83
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 440
    Top = 70
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 434
    Top = 64
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 427
    Top = 58
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 414
    Top = 51
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
    Left = 62
    Top = 96
  end
  object ADPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 408
    Top = 38
  end
  object ADGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 158
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
    Left = 62
    Top = 32
  end
end
