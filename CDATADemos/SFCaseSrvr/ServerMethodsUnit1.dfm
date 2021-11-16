object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 348
  Width = 472
  object FDCnn: TFDConnection
    Params.Strings = (
      'User=fernando.rizzato@gmail.com'
      'Password=756969fL'
      'SecurityToken=9myuPtEsMgp74WBAfl8nfpOi'
      'DriverID=CDataSalesforce')
    LoginPrompt = False
    Left = 56
    Top = 16
  end
  object CaseTable: TFDQuery
    Connection = FDCnn
    SQL.Strings = (
      'SELECT * FROM CData.Salesforce."Case" ORDER BY CaseNumber')
    Left = 55
    Top = 71
    object CaseTableId: TWideStringField
      FieldName = 'Id'
      Required = True
      Size = 36
    end
    object CaseTableIsDeleted: TBooleanField
      FieldName = 'IsDeleted'
      Required = True
    end
    object CaseTableCaseNumber: TWideStringField
      FieldName = 'CaseNumber'
      Required = True
      Size = 60
    end
    object CaseTableContactId: TWideStringField
      FieldName = 'ContactId'
      Size = 36
    end
    object CaseTableAccountId: TWideStringField
      FieldName = 'AccountId'
      Size = 36
    end
    object CaseTableAssetId: TWideStringField
      FieldName = 'AssetId'
      Size = 36
    end
    object CaseTableParentId: TWideStringField
      FieldName = 'ParentId'
      Size = 36
    end
    object CaseTableSuppliedName: TWideStringField
      FieldName = 'SuppliedName'
      Size = 160
    end
    object CaseTableSuppliedEmail: TWideStringField
      FieldName = 'SuppliedEmail'
      Size = 160
    end
    object CaseTableSuppliedPhone: TWideStringField
      FieldName = 'SuppliedPhone'
      Size = 80
    end
    object CaseTableSuppliedCompany: TWideStringField
      FieldName = 'SuppliedCompany'
      Size = 160
    end
    object CaseTableType: TWideStringField
      FieldName = 'Type'
      Size = 80
    end
    object CaseTableStatus: TWideStringField
      FieldName = 'Status'
      Size = 80
    end
    object CaseTableReason: TWideStringField
      FieldName = 'Reason'
      Size = 80
    end
    object CaseTableOrigin: TWideStringField
      FieldName = 'Origin'
      Size = 80
    end
    object CaseTableSubject: TWideStringField
      FieldName = 'Subject'
      Size = 510
    end
    object CaseTablePriority: TWideStringField
      FieldName = 'Priority'
      Size = 80
    end
    object CaseTableDescription: TWideStringField
      FieldName = 'Description'
      Size = 16000
    end
    object CaseTableIsClosed: TBooleanField
      FieldName = 'IsClosed'
      Required = True
    end
    object CaseTableClosedDate: TSQLTimeStampField
      FieldName = 'ClosedDate'
    end
    object CaseTableIsEscalated: TBooleanField
      FieldName = 'IsEscalated'
      Required = True
    end
    object CaseTableOwnerId: TWideStringField
      FieldName = 'OwnerId'
      Required = True
      Size = 36
    end
    object CaseTableCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Required = True
    end
    object CaseTableCreatedById: TWideStringField
      FieldName = 'CreatedById'
      Required = True
      Size = 36
    end
    object CaseTableLastModifiedDate: TSQLTimeStampField
      FieldName = 'LastModifiedDate'
      Required = True
    end
    object CaseTableLastModifiedById: TWideStringField
      FieldName = 'LastModifiedById'
      Required = True
      Size = 36
    end
    object CaseTableSystemModstamp: TSQLTimeStampField
      FieldName = 'SystemModstamp'
      Required = True
    end
    object CaseTableContactPhone: TWideStringField
      FieldName = 'ContactPhone'
      Size = 80
    end
    object CaseTableContactMobile: TWideStringField
      FieldName = 'ContactMobile'
      Size = 80
    end
    object CaseTableContactEmail: TWideStringField
      FieldName = 'ContactEmail'
      Size = 160
    end
    object CaseTableContactFax: TWideStringField
      FieldName = 'ContactFax'
      Size = 80
    end
    object CaseTableLastViewedDate: TSQLTimeStampField
      FieldName = 'LastViewedDate'
    end
    object CaseTableLastReferencedDate: TSQLTimeStampField
      FieldName = 'LastReferencedDate'
    end
    object CaseTableEngineeringReqNumber__c: TWideStringField
      FieldName = 'EngineeringReqNumber__c'
      Size = 24
    end
    object CaseTableSLAViolation__c: TWideStringField
      FieldName = 'SLAViolation__c'
      Size = 510
    end
    object CaseTableProduct__c: TWideStringField
      FieldName = 'Product__c'
      Size = 510
    end
    object CaseTablePotentialLiability__c: TWideStringField
      FieldName = 'PotentialLiability__c'
      Size = 510
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 200
    Top = 16
  end
  object FDPhysCDataSalesforceDriverLink1: TFDPhysCDataSalesforceDriverLink
    DriverID = 'CDataSalesforce'
    Left = 200
    Top = 72
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 200
    Top = 136
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 200
    Top = 192
  end
end
