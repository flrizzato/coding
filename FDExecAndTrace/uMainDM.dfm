object MainDM: TMainDM
  Height = 614
  Width = 785
  PixelsPerInch = 120
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
    Left = 50
    Top = 30
  end
  object ADGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 180
    Top = 30
  end
  object ADPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 520
    Top = 50
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
    Left = 50
    Top = 120
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 530
    Top = 60
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 540
    Top = 70
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 550
    Top = 80
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 560
    Top = 90
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 570
    Top = 100
  end
  object FDPhysDB2DriverLink1: TFDPhysDB2DriverLink
    Left = 580
    Top = 110
  end
end
