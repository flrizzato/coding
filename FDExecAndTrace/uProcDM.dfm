object ProcDM: TProcDM
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDPhysDB2DriverLink1: TFDPhysDB2DriverLink
    Left = 584
    Top = 112
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 568
    Top = 104
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 560
    Top = 88
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 552
    Top = 80
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 544
    Top = 72
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 528
    Top = 64
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
    Left = 88
    Top = 120
  end
  object ADPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 520
    Top = 48
  end
  object ADGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 208
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
    Left = 88
    Top = 40
  end
end
