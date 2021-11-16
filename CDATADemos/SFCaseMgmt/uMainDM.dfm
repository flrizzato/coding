object MainDM: TMainDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 355
  Width = 541
  object DSRestCnn: TDSRestConnection
    Host = 'localhost'
    Port = 8080
    LoginPrompt = False
    Left = 48
    Top = 24
    UniqueId = '{28F9CEF3-146B-47A4-AA5B-2836DB3C80CA}'
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 152
    Top = 24
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 280
    Top = 24
  end
  object CaseMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 80
    object CaseMemTableId: TWideStringField
      FieldName = 'Id'
      Required = True
      Size = 36
    end
    object CaseMemTableIsDeleted: TBooleanField
      FieldName = 'IsDeleted'
      Required = True
    end
    object CaseMemTableCaseNumber: TWideStringField
      FieldName = 'CaseNumber'
      Required = True
      Size = 60
    end
    object CaseMemTableContactId: TWideStringField
      FieldName = 'ContactId'
      Size = 36
    end
    object CaseMemTableAccountId: TWideStringField
      FieldName = 'AccountId'
      Size = 36
    end
    object CaseMemTableAssetId: TWideStringField
      FieldName = 'AssetId'
      Size = 36
    end
    object CaseMemTableParentId: TWideStringField
      FieldName = 'ParentId'
      Size = 36
    end
    object CaseMemTableSuppliedName: TWideStringField
      FieldName = 'SuppliedName'
      Size = 160
    end
    object CaseMemTableSuppliedEmail: TWideStringField
      FieldName = 'SuppliedEmail'
      Size = 160
    end
    object CaseMemTableSuppliedPhone: TWideStringField
      FieldName = 'SuppliedPhone'
      Size = 80
    end
    object CaseMemTableSuppliedCompany: TWideStringField
      FieldName = 'SuppliedCompany'
      Size = 160
    end
    object CaseMemTableType: TWideStringField
      FieldName = 'Type'
      Size = 80
    end
    object CaseMemTableStatus: TWideStringField
      FieldName = 'Status'
      Size = 80
    end
    object CaseMemTableReason: TWideStringField
      FieldName = 'Reason'
      Size = 80
    end
    object CaseMemTableOrigin: TWideStringField
      FieldName = 'Origin'
      Size = 80
    end
    object CaseMemTableSubject: TWideStringField
      FieldName = 'Subject'
      Size = 510
    end
    object CaseMemTablePriority: TWideStringField
      FieldName = 'Priority'
      Size = 80
    end
    object CaseMemTableDescription: TWideStringField
      FieldName = 'Description'
      Size = 16000
    end
    object CaseMemTableIsClosed: TBooleanField
      FieldName = 'IsClosed'
      Required = True
    end
    object CaseMemTableClosedDate: TSQLTimeStampField
      FieldName = 'ClosedDate'
    end
    object CaseMemTableIsEscalated: TBooleanField
      FieldName = 'IsEscalated'
      Required = True
    end
    object CaseMemTableOwnerId: TWideStringField
      FieldName = 'OwnerId'
      Required = True
      Size = 36
    end
    object CaseMemTableCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Required = True
    end
    object CaseMemTableCreatedById: TWideStringField
      FieldName = 'CreatedById'
      Required = True
      Size = 36
    end
    object CaseMemTableLastModifiedDate: TSQLTimeStampField
      FieldName = 'LastModifiedDate'
      Required = True
    end
    object CaseMemTableLastModifiedById: TWideStringField
      FieldName = 'LastModifiedById'
      Required = True
      Size = 36
    end
    object CaseMemTableSystemModstamp: TSQLTimeStampField
      FieldName = 'SystemModstamp'
      Required = True
    end
    object CaseMemTableContactPhone: TWideStringField
      FieldName = 'ContactPhone'
      Size = 80
    end
    object CaseMemTableContactMobile: TWideStringField
      FieldName = 'ContactMobile'
      Size = 80
    end
    object CaseMemTableContactEmail: TWideStringField
      FieldName = 'ContactEmail'
      Size = 160
    end
    object CaseMemTableContactFax: TWideStringField
      FieldName = 'ContactFax'
      Size = 80
    end
    object CaseMemTableLastViewedDate: TSQLTimeStampField
      FieldName = 'LastViewedDate'
    end
    object CaseMemTableLastReferencedDate: TSQLTimeStampField
      FieldName = 'LastReferencedDate'
    end
    object CaseMemTableEngineeringReqNumber__c: TWideStringField
      FieldName = 'EngineeringReqNumber__c'
      Size = 24
    end
    object CaseMemTableSLAViolation__c: TWideStringField
      FieldName = 'SLAViolation__c'
      Size = 510
    end
    object CaseMemTableProduct__c: TWideStringField
      FieldName = 'Product__c'
      Size = 510
    end
    object CaseMemTablePotentialLiability__c: TWideStringField
      FieldName = 'PotentialLiability__c'
      Size = 510
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 392
    Top = 24
  end
end
