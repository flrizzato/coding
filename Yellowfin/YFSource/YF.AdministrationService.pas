// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://172.16.174.137:8080/services/AdministrationService?wsdl
//  >Import : http://172.16.174.137:8080/services/AdministrationService?wsdl>0
//  >Import : http://172.16.174.137:8080/services/AdministrationService?wsdl>1
//  >Import : http://172.16.174.137:8080/services/AdministrationService?wsdl>2
// Encoding : UTF-8
// Version  : 1.0
// (24/06/2022 18:35:10 - - $Rev: 108085 $)
// ************************************************************************ //

unit YF.AdministrationService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://schemas.xmlsoap.org/soap/encoding/"[]
  // !:string          - "http://schemas.xmlsoap.org/soap/encoding/"[]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:anyType         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]

  AdministrationDataSourceOption = class;       { "http://service.web.mi.hof.com"[GblCplx] }
  ImportIssue          = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationCacheCommand = class;           { "http://service.web.mi.hof.com"[GblCplx] }
  mapItem              = class;                 { "http://xml.apache.org/xml-soap"[GblCplx] }
  ContentResource      = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationViewField = class;              { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationGroupMember = class;            { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationGroup  = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  PersonFavourite      = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationDataSourceClientLink = class;   { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationDataSource = class;             { "http://service.web.mi.hof.com"[GblCplx] }
  ParentReportGroup    = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ScheduleFrequency    = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  AnnualFrequency      = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  DailyFrequency       = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  WeeklyFrequency      = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  WeekdaysFrequency    = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  EndOfMonthFrequency  = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  BiannualFrequency    = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  OnceFrequency        = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  QuarterlyFrequency   = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  MonthlyFrequency     = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  FortnightlyFrequency = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  MinutesFrequency     = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  AdministrationClientOrg = class;              { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationTask   = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  Condition            = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportBinaryObject   = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationSchedule = class;               { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  RefCodeRefreshSchedule = class;               { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  CompositeViewRefreshSchedule = class;         { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  ReportFilterCacheRefreshSchedule = class;     { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  SignalRunSchedule    = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  SignalCleanupSubTaskSchedule = class;         { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  SignalCorrelationSubTaskSchedule = class;     { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  SignalAnalysisSubTaskSchedule = class;        { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  SourceFilterUpdateReminderSchedule = class;   { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  SystemTaskSchedule   = class;                 { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  SourceFilterRefreshSchedule = class;          { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  ThirdPartySourceAutoRunSchedule = class;      { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  ReportRefreshSchedule = class;                { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  FilterGroupCacheRefreshSchedule = class;      { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  AdministrationPerson = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportRow            = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ImportIssueElement   = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ParentDashboard      = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationServiceRequest = class;         { "http://service.web.mi.hof.com"[GblCplx] }
  ImportOption         = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationReport = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationRole   = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationFunction = class;               { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationServiceResponse = class;        { "http://service.web.mi.hof.com"[GblCplx] }
  AdministrationReportGroup = class;            { "http://service.web.mi.hof.com"[GblCplx] }
  TransformationFlowSchedule = class;           { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  ReportBroadcastSchedule = class;              { "http://schedule.service.web.mi.hof.com"[GblCplx] }

  ArrayOfAdministrationSchedule = array of AdministrationSchedule;   { "http://schedule.service.web.mi.hof.com"[GblCplx] }
  ArrayOfAdministrationRole = array of AdministrationRole;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfReportRow = array of ReportRow;        { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfImportIssue = array of ImportIssue;    { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfImportIssueElement = array of ImportIssueElement;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfParentDashboard = array of ParentDashboard;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfPersonFavourite = array of PersonFavourite;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfParentReportGroup = array of ParentReportGroup;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfAdministrationReportGroup = array of AdministrationReportGroup;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfAdministrationGroup = array of AdministrationGroup;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfAdministrationDataSourceOption = array of AdministrationDataSourceOption;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfAdministrationDataClientLink = array of AdministrationDataSourceClientLink;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfAdministrationGroupMember = array of AdministrationGroupMember;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : AdministrationDataSourceOption, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationDataSourceOption = class(TRemotable)
  private
    FoptionKey: string;
    FoptionValue: string;
    FvalueDataType: string;
  published
    property optionKey:     string  read FoptionKey write FoptionKey;
    property optionValue:   string  read FoptionValue write FoptionValue;
    property valueDataType: string  read FvalueDataType write FvalueDataType;
  end;



  // ************************************************************************ //
  // XML       : ImportIssue, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ImportIssue = class(TRemotable)
  private
    FissueElements: ArrayOfImportIssueElement;
    FitemKey: string;
    Fresource: ContentResource;
  public
    destructor Destroy; override;
  published
    property issueElements: ArrayOfImportIssueElement  read FissueElements write FissueElements;
    property itemKey:       string                     read FitemKey write FitemKey;
    property resource:      ContentResource            read Fresource write Fresource;
  end;

  Map        = array of mapItem;                { "http://xml.apache.org/xml-soap"[GblCplx] }


  // ************************************************************************ //
  // XML       : AdministrationCacheCommand, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationCacheCommand = class(TRemotable)
  private
    FcacheType: string;
    FcommandArgs: Map;
    FcommandType: string;
  public
    destructor Destroy; override;
  published
    property cacheType:   string  read FcacheType write FcacheType;
    property commandArgs: Map     read FcommandArgs write FcommandArgs;
    property commandType: string  read FcommandType write FcommandType;
  end;



  // ************************************************************************ //
  // XML       : mapItem, global, <complexType>
  // Namespace : http://xml.apache.org/xml-soap
  // ************************************************************************ //
  mapItem = class(TRemotable)
  private
    Fkey: Variant;
    Fvalue: Variant;
  published
    property key:   Variant  read Fkey write Fkey;
    property value: Variant  read Fvalue write Fvalue;
  end;

  ArrayOfAdministrationCacheCommand = array of AdministrationCacheCommand;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfContentResource = array of ContentResource;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : ContentResource, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ContentResource = class(TRemotable)
  private
    FresourceCode: string;
    FresourceDescription: string;
    FresourceId: Integer;
    FresourceName: string;
    FresourceOrgId: Integer;
    FresourceSubType: string;
    FresourceType: string;
    FresourceUUID: string;
  published
    property resourceCode:        string   read FresourceCode write FresourceCode;
    property resourceDescription: string   read FresourceDescription write FresourceDescription;
    property resourceId:          Integer  read FresourceId write FresourceId;
    property resourceName:        string   read FresourceName write FresourceName;
    property resourceOrgId:       Integer  read FresourceOrgId write FresourceOrgId;
    property resourceSubType:     string   read FresourceSubType write FresourceSubType;
    property resourceType:        string   read FresourceType write FresourceType;
    property resourceUUID:        string   read FresourceUUID write FresourceUUID;
  end;



  // ************************************************************************ //
  // XML       : AdministrationViewField, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationViewField = class(TRemotable)
  private
    FfieldCategory: string;
    FfieldId: Integer;
    FlongDescription: string;
    FshortDescription: string;
  published
    property fieldCategory:    string   read FfieldCategory write FfieldCategory;
    property fieldId:          Integer  read FfieldId write FfieldId;
    property longDescription:  string   read FlongDescription write FlongDescription;
    property shortDescription: string   read FshortDescription write FshortDescription;
  end;



  // ************************************************************************ //
  // XML       : AdministrationGroupMember, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationGroupMember = class(TRemotable)
  private
    FinternalId: Integer;
    FloginId: string;
  published
    property internalId: Integer  read FinternalId write FinternalId;
    property loginId:    string   read FloginId write FloginId;
  end;



  // ************************************************************************ //
  // XML       : AdministrationGroup, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationGroup = class(TRemotable)
  private
    FgroupDescription: string;
    FgroupId: Integer;
    FgroupInternalReference: string;
    FgroupMembers: ArrayOfAdministrationGroupMember;
    FgroupName: string;
    FgroupStatus: string;
  public
    destructor Destroy; override;
  published
    property groupDescription:       string                            read FgroupDescription write FgroupDescription;
    property groupId:                Integer                           read FgroupId write FgroupId;
    property groupInternalReference: string                            read FgroupInternalReference write FgroupInternalReference;
    property groupMembers:           ArrayOfAdministrationGroupMember  read FgroupMembers write FgroupMembers;
    property groupName:              string                            read FgroupName write FgroupName;
    property groupStatus:            string                            read FgroupStatus write FgroupStatus;
  end;



  // ************************************************************************ //
  // XML       : PersonFavourite, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  PersonFavourite = class(TRemotable)
  private
    FcontentId: Integer;
    FcontentType: string;
    FcreationCode: string;
    FcreationDate: TXSDateTime;
    FcreatorId: Integer;
    FfavouriteType: string;
    FinstanceId: Integer;
    Fmessage_: string;
    FpersonId: Integer;
    Fsubject: string;
    FtextEntityId: Integer;
    FwidthCode: string;
  public
    destructor Destroy; override;
  published
    property contentId:     Integer      read FcontentId write FcontentId;
    property contentType:   string       read FcontentType write FcontentType;
    property creationCode:  string       read FcreationCode write FcreationCode;
    property creationDate:  TXSDateTime  read FcreationDate write FcreationDate;
    property creatorId:     Integer      read FcreatorId write FcreatorId;
    property favouriteType: string       read FfavouriteType write FfavouriteType;
    property instanceId:    Integer      read FinstanceId write FinstanceId;
    property message_:      string       read Fmessage_ write Fmessage_;
    property personId:      Integer      read FpersonId write FpersonId;
    property subject:       string       read Fsubject write Fsubject;
    property textEntityId:  Integer      read FtextEntityId write FtextEntityId;
    property widthCode:     string       read FwidthCode write FwidthCode;
  end;



  // ************************************************************************ //
  // XML       : AdministrationDataSourceClientLink, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationDataSourceClientLink = class(TRemotable)
  private
    FclientOrgId: Integer;
    FclientOrgName: string;
    FclientOrgRef: string;
    FsourceId: Integer;
    FsourceName: string;
  published
    property clientOrgId:   Integer  read FclientOrgId write FclientOrgId;
    property clientOrgName: string   read FclientOrgName write FclientOrgName;
    property clientOrgRef:  string   read FclientOrgRef write FclientOrgRef;
    property sourceId:      Integer  read FsourceId write FsourceId;
    property sourceName:    string   read FsourceName write FsourceName;
  end;



  // ************************************************************************ //
  // XML       : AdministrationDataSource, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationDataSource = class(TRemotable)
  private
    FaccessLevelCode: string;
    FclientSources: ArrayOfAdministrationDataClientLink;
    FconnectionDriver: string;
    FconnectionPath: string;
    FconnectionString: string;
    FconnectionTimeout: Integer;
    FconnectionType: string;
    FconnectionTypeCode: string;
    FinheritChildSourceFilters: Boolean;
    FlogFile: string;
    FmaxAnalysisRows: Integer;
    FmaxRows: Integer;
    FmaxmimumConnections: Integer;
    FminimumConnections: Integer;
    FrefreshTime: Integer;
    FsourceDescription: string;
    FsourceId: Integer;
    FsourceName: string;
    FsourceOptions: ArrayOfAdministrationDataSourceOption;
    FsourceType: string;
    Ftimezone: string;
    FuserName: string;
    FuserPassword: string;
  public
    destructor Destroy; override;
  published
    property accessLevelCode:           string                                 read FaccessLevelCode write FaccessLevelCode;
    property clientSources:             ArrayOfAdministrationDataClientLink    read FclientSources write FclientSources;
    property connectionDriver:          string                                 read FconnectionDriver write FconnectionDriver;
    property connectionPath:            string                                 read FconnectionPath write FconnectionPath;
    property connectionString:          string                                 read FconnectionString write FconnectionString;
    property connectionTimeout:         Integer                                read FconnectionTimeout write FconnectionTimeout;
    property connectionType:            string                                 read FconnectionType write FconnectionType;
    property connectionTypeCode:        string                                 read FconnectionTypeCode write FconnectionTypeCode;
    property inheritChildSourceFilters: Boolean                                read FinheritChildSourceFilters write FinheritChildSourceFilters;
    property logFile:                   string                                 read FlogFile write FlogFile;
    property maxAnalysisRows:           Integer                                read FmaxAnalysisRows write FmaxAnalysisRows;
    property maxRows:                   Integer                                read FmaxRows write FmaxRows;
    property maxmimumConnections:       Integer                                read FmaxmimumConnections write FmaxmimumConnections;
    property minimumConnections:        Integer                                read FminimumConnections write FminimumConnections;
    property refreshTime:               Integer                                read FrefreshTime write FrefreshTime;
    property sourceDescription:         string                                 read FsourceDescription write FsourceDescription;
    property sourceId:                  Integer                                read FsourceId write FsourceId;
    property sourceName:                string                                 read FsourceName write FsourceName;
    property sourceOptions:             ArrayOfAdministrationDataSourceOption  read FsourceOptions write FsourceOptions;
    property sourceType:                string                                 read FsourceType write FsourceType;
    property timezone:                  string                                 read Ftimezone write Ftimezone;
    property userName:                  string                                 read FuserName write FuserName;
    property userPassword:              string                                 read FuserPassword write FuserPassword;
  end;



  // ************************************************************************ //
  // XML       : ParentReportGroup, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ParentReportGroup = class(TRemotable)
  private
    FdisplayOrder: Integer;
    FreportGroup: AdministrationReportGroup;
    FreportGroupId: Integer;
    FreportGroupSubTabs: ArrayOfAdministrationReportGroup;
    FreportGroupUUID: string;
  public
    destructor Destroy; override;
  published
    property displayOrder:       Integer                           read FdisplayOrder write FdisplayOrder;
    property reportGroup:        AdministrationReportGroup         read FreportGroup write FreportGroup;
    property reportGroupId:      Integer                           read FreportGroupId write FreportGroupId;
    property reportGroupSubTabs: ArrayOfAdministrationReportGroup  read FreportGroupSubTabs write FreportGroupSubTabs;
    property reportGroupUUID:    string                            read FreportGroupUUID write FreportGroupUUID;
  end;



  // ************************************************************************ //
  // XML       : ScheduleFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  ScheduleFrequency = class(TRemotable)
  private
    FfrequencyCode: string;
    FfrequencyTypeCode: string;
    FfrequencyUnit: Integer;
    FlocalRunTime: Integer;
    FlocalTimezoneCode: string;
  published
    property frequencyCode:     string   read FfrequencyCode write FfrequencyCode;
    property frequencyTypeCode: string   read FfrequencyTypeCode write FfrequencyTypeCode;
    property frequencyUnit:     Integer  read FfrequencyUnit write FfrequencyUnit;
    property localRunTime:      Integer  read FlocalRunTime write FlocalRunTime;
    property localTimezoneCode: string   read FlocalTimezoneCode write FlocalTimezoneCode;
  end;



  // ************************************************************************ //
  // XML       : AnnualFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  AnnualFrequency = class(ScheduleFrequency)
  private
    FdayOfMonth: Integer;
    FmonthOfYear: Integer;
  published
    property dayOfMonth:  Integer  read FdayOfMonth write FdayOfMonth;
    property monthOfYear: Integer  read FmonthOfYear write FmonthOfYear;
  end;



  // ************************************************************************ //
  // XML       : DailyFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  DailyFrequency = class(ScheduleFrequency)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : WeeklyFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  WeeklyFrequency = class(ScheduleFrequency)
  private
    FdayOfWeek: string;
  published
    property dayOfWeek: string  read FdayOfWeek write FdayOfWeek;
  end;



  // ************************************************************************ //
  // XML       : WeekdaysFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  WeekdaysFrequency = class(ScheduleFrequency)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : EndOfMonthFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  EndOfMonthFrequency = class(ScheduleFrequency)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : BiannualFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  BiannualFrequency = class(ScheduleFrequency)
  private
    FdayOfMonth: Integer;
    FmonthOfYear: Integer;
  published
    property dayOfMonth:  Integer  read FdayOfMonth write FdayOfMonth;
    property monthOfYear: Integer  read FmonthOfYear write FmonthOfYear;
  end;



  // ************************************************************************ //
  // XML       : OnceFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  OnceFrequency = class(ScheduleFrequency)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : QuarterlyFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  QuarterlyFrequency = class(ScheduleFrequency)
  private
    FdayOfMonth: Integer;
    FmonthOfQuarter: Integer;
  published
    property dayOfMonth:     Integer  read FdayOfMonth write FdayOfMonth;
    property monthOfQuarter: Integer  read FmonthOfQuarter write FmonthOfQuarter;
  end;



  // ************************************************************************ //
  // XML       : MonthlyFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  MonthlyFrequency = class(ScheduleFrequency)
  private
    FdayOfMonth: Integer;
    FdayOfWeek: Integer;
    FweekOfMonth: string;
  published
    property dayOfMonth:  Integer  read FdayOfMonth write FdayOfMonth;
    property dayOfWeek:   Integer  read FdayOfWeek write FdayOfWeek;
    property weekOfMonth: string   read FweekOfMonth write FweekOfMonth;
  end;



  // ************************************************************************ //
  // XML       : FortnightlyFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  FortnightlyFrequency = class(ScheduleFrequency)
  private
    FdayOfWeek: Integer;
    FweekOfFortnight: string;
  published
    property dayOfWeek:       Integer  read FdayOfWeek write FdayOfWeek;
    property weekOfFortnight: string   read FweekOfFortnight write FweekOfFortnight;
  end;



  // ************************************************************************ //
  // XML       : MinutesFrequency, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  MinutesFrequency = class(ScheduleFrequency)
  private
    Fminutes: Integer;
  published
    property minutes: Integer  read Fminutes write Fminutes;
  end;



  // ************************************************************************ //
  // XML       : AdministrationClientOrg, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationClientOrg = class(TRemotable)
  private
    FclientId: Integer;
    FclientName: string;
    FclientReferenceId: string;
    FdefaultOrg: Boolean;
    FtimeZoneCode: string;
  published
    property clientId:          Integer  read FclientId write FclientId;
    property clientName:        string   read FclientName write FclientName;
    property clientReferenceId: string   read FclientReferenceId write FclientReferenceId;
    property defaultOrg:        Boolean  read FdefaultOrg write FdefaultOrg;
    property timeZoneCode:      string   read FtimeZoneCode write FtimeZoneCode;
  end;



  // ************************************************************************ //
  // XML       : AdministrationTask, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationTask = class(TRemotable)
  private
    FactivityText: string;
    FdueDate: TXSDateTime;
    FtaskPriority: string;
    FtaskType: string;
  public
    destructor Destroy; override;
  published
    property activityText: string       read FactivityText write FactivityText;
    property dueDate:      TXSDateTime  read FdueDate write FdueDate;
    property taskPriority: string       read FtaskPriority write FtaskPriority;
    property taskType:     string       read FtaskType write FtaskType;
  end;

  ArrayOfCondition = array of Condition;        { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : Condition, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  Condition = class(TRemotable)
  private
    FfieldId: Integer;
    Foperator: string;
    Fvalue1: string;
    Fvalue2: string;
  published
    property fieldId:  Integer  read FfieldId write FfieldId;
    property operator: string   read Foperator write Foperator;
    property value1:   string   read Fvalue1 write Fvalue1;
    property value2:   string   read Fvalue2 write Fvalue2;
  end;

  ArrayOfAdministrationDataSource = array of AdministrationDataSource;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfAdministrationClientOrg = array of AdministrationClientOrg;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfReportBinaryObject = array of ReportBinaryObject;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : ReportBinaryObject, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportBinaryObject = class(TRemotable)
  private
    FcontentType: string;
    Fdata: TByteSOAPArray;
    Fkey: string;
  published
    property contentType: string          read FcontentType write FcontentType;
    property data:        TByteSOAPArray  read Fdata write Fdata;
    property key:         string          read Fkey write Fkey;
  end;



  // ************************************************************************ //
  // XML       : AdministrationSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationSchedule = class(TRemotable)
  private
    Ffrequency: ScheduleFrequency;
    FlastRunDateTimeGMT: TXSDateTime;
    FlastRunError: string;
    FlastRunStatus: string;
    FnextRunDateTimeGMT: TXSDateTime;
    FparentScheduleUUID: string;
    FscheduleActive: Boolean;
    FscheduleDescription: string;
    FscheduleTypeCode: string;
    FscheduleTypeName: string;
    FscheduleUUID: string;
  public
    destructor Destroy; override;
  published
    property frequency:           ScheduleFrequency  read Ffrequency write Ffrequency;
    property lastRunDateTimeGMT:  TXSDateTime        read FlastRunDateTimeGMT write FlastRunDateTimeGMT;
    property lastRunError:        string             read FlastRunError write FlastRunError;
    property lastRunStatus:       string             read FlastRunStatus write FlastRunStatus;
    property nextRunDateTimeGMT:  TXSDateTime        read FnextRunDateTimeGMT write FnextRunDateTimeGMT;
    property parentScheduleUUID:  string             read FparentScheduleUUID write FparentScheduleUUID;
    property scheduleActive:      Boolean            read FscheduleActive write FscheduleActive;
    property scheduleDescription: string             read FscheduleDescription write FscheduleDescription;
    property scheduleTypeCode:    string             read FscheduleTypeCode write FscheduleTypeCode;
    property scheduleTypeName:    string             read FscheduleTypeName write FscheduleTypeName;
    property scheduleUUID:        string             read FscheduleUUID write FscheduleUUID;
  end;



  // ************************************************************************ //
  // XML       : RefCodeRefreshSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  RefCodeRefreshSchedule = class(AdministrationSchedule)
  private
    FsourceId: Integer;
  published
    property sourceId: Integer  read FsourceId write FsourceId;
  end;



  // ************************************************************************ //
  // XML       : CompositeViewRefreshSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  CompositeViewRefreshSchedule = class(AdministrationSchedule)
  private
    FviewId: Integer;
    FviewType: string;
  published
    property viewId:   Integer  read FviewId write FviewId;
    property viewType: string   read FviewType write FviewType;
  end;



  // ************************************************************************ //
  // XML       : ReportFilterCacheRefreshSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  ReportFilterCacheRefreshSchedule = class(AdministrationSchedule)
  private
    FreportId: Integer;
  published
    property reportId: Integer  read FreportId write FreportId;
  end;



  // ************************************************************************ //
  // XML       : SignalRunSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  SignalRunSchedule = class(AdministrationSchedule)
  private
    FsignalJobPublishUUID: string;
  published
    property signalJobPublishUUID: string  read FsignalJobPublishUUID write FsignalJobPublishUUID;
  end;



  // ************************************************************************ //
  // XML       : SignalCleanupSubTaskSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  SignalCleanupSubTaskSchedule = class(SignalRunSchedule)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SignalCorrelationSubTaskSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  SignalCorrelationSubTaskSchedule = class(SignalRunSchedule)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SignalAnalysisSubTaskSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  SignalAnalysisSubTaskSchedule = class(SignalRunSchedule)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SourceFilterUpdateReminderSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  SourceFilterUpdateReminderSchedule = class(AdministrationSchedule)
  private
    FsourceId: Integer;
  published
    property sourceId: Integer  read FsourceId write FsourceId;
  end;



  // ************************************************************************ //
  // XML       : SystemTaskSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  SystemTaskSchedule = class(AdministrationSchedule)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SourceFilterRefreshSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  SourceFilterRefreshSchedule = class(AdministrationSchedule)
  private
    FsourceId: Integer;
    FsourceType: string;
  published
    property sourceId:   Integer  read FsourceId write FsourceId;
    property sourceType: string   read FsourceType write FsourceType;
  end;



  // ************************************************************************ //
  // XML       : ThirdPartySourceAutoRunSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  ThirdPartySourceAutoRunSchedule = class(AdministrationSchedule)
  private
    FsourceId: Integer;
  published
    property sourceId: Integer  read FsourceId write FsourceId;
  end;



  // ************************************************************************ //
  // XML       : ReportRefreshSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  ReportRefreshSchedule = class(AdministrationSchedule)
  private
    FreportId: Integer;
  published
    property reportId: Integer  read FreportId write FreportId;
  end;



  // ************************************************************************ //
  // XML       : FilterGroupCacheRefreshSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  FilterGroupCacheRefreshSchedule = class(AdministrationSchedule)
  private
    FfilterGroupId: Integer;
    FviewId: Integer;
  published
    property filterGroupId: Integer  read FfilterGroupId write FfilterGroupId;
    property viewId:        Integer  read FviewId write FviewId;
  end;

  ArrayOfAdministrationPerson = array of AdministrationPerson;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : AdministrationPerson, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationPerson = class(TRemotable)
  private
    FemailAddress: string;
    FfirstName: string;
    Finitial: string;
    FipId: Integer;
    FlanguageCode: string;
    FlastName: string;
    Fpassword: string;
    FroleCode: string;
    FsalutationCode: string;
    Fstatus: string;
    FtimeZoneCode: string;
    FuserId: string;
  published
    property emailAddress:   string   read FemailAddress write FemailAddress;
    property firstName:      string   read FfirstName write FfirstName;
    property initial:        string   read Finitial write Finitial;
    property ipId:           Integer  read FipId write FipId;
    property languageCode:   string   read FlanguageCode write FlanguageCode;
    property lastName:       string   read FlastName write FlastName;
    property password:       string   read Fpassword write Fpassword;
    property roleCode:       string   read FroleCode write FroleCode;
    property salutationCode: string   read FsalutationCode write FsalutationCode;
    property status:         string   read Fstatus write Fstatus;
    property timeZoneCode:   string   read FtimeZoneCode write FtimeZoneCode;
    property userId:         string   read FuserId write FuserId;
  end;

  ArrayOf_soapenc_string = array of string;     { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : ReportRow, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportRow = class(TRemotable)
  private
    FdataValue: ArrayOf_soapenc_string;
  published
    property dataValue: ArrayOf_soapenc_string  read FdataValue write FdataValue;
  end;



  // ************************************************************************ //
  // XML       : ImportIssueElement, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ImportIssueElement = class(TRemotable)
  private
    FmessageComponents: ArrayOf_soapenc_string;
    FmessageKey: string;
    FrenderedMessage: string;
  published
    property messageComponents: ArrayOf_soapenc_string  read FmessageComponents write FmessageComponents;
    property messageKey:        string                  read FmessageKey write FmessageKey;
    property renderedMessage:   string                  read FrenderedMessage write FrenderedMessage;
  end;



  // ************************************************************************ //
  // XML       : ParentDashboard, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ParentDashboard = class(TRemotable)
  private
    FdashboardGroupId: Integer;
    FdashboardName: string;
    FstatusCodes: ArrayOf_soapenc_string;
    FtabIds: ArrayOf_soapenc_string;
    FtabNames: ArrayOf_soapenc_string;
  published
    property dashboardGroupId: Integer                 read FdashboardGroupId write FdashboardGroupId;
    property dashboardName:    string                  read FdashboardName write FdashboardName;
    property statusCodes:      ArrayOf_soapenc_string  read FstatusCodes write FstatusCodes;
    property tabIds:           ArrayOf_soapenc_string  read FtabIds write FtabIds;
    property tabNames:         ArrayOf_soapenc_string  read FtabNames write FtabNames;
  end;

  ArrayOfImportOption = array of ImportOption;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : AdministrationServiceRequest, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationServiceRequest = class(TRemotable)
  private
    FbinaryData: TByteSOAPArray;
    FcacheCommands: ArrayOfAdministrationCacheCommand;
    Fclient: AdministrationClientOrg;
    FcontentResources: ArrayOfContentResource;
    FcustomParameters: string;
    FdashboardTabId: Integer;
    Fdatasource: AdministrationDataSource;
    Ffavourite: PersonFavourite;
    Ffield: AdministrationViewField;
    Ffunction_: string;
    Fgroup: AdministrationGroup;
    FimportOptions: ArrayOfImportOption;
    FloginId: string;
    FloginSessionId: string;
    Fntlm: Boolean;
    ForgId: Integer;
    ForgRef: string;
    Fparameters: ArrayOf_soapenc_string;
    Fpassword: string;
    Fpeople: ArrayOfAdministrationPerson;
    Fperson: AdministrationPerson;
    Fquery: string;
    FreassignContentIpPerson: Integer;
    Freport: AdministrationReport;
    FreportGroup: AdministrationReportGroup;
    FreportId: Integer;
    FretrospectiveDays: Integer;
    Frole: AdministrationRole;
    FroleFunctionList: Map;
    Fschedule: AdministrationSchedule;
    FsessionId: string;
    FsourceClientLink: AdministrationDataSourceClientLink;
    FsourceId: Integer;
    Ftask: AdministrationTask;
    FviewId: Integer;
    FyellowfinContentExportFileType: string;
  public
    destructor Destroy; override;
  published
    property binaryData:                     TByteSOAPArray                      read FbinaryData write FbinaryData;
    property cacheCommands:                  ArrayOfAdministrationCacheCommand   read FcacheCommands write FcacheCommands;
    property client:                         AdministrationClientOrg             read Fclient write Fclient;
    property contentResources:               ArrayOfContentResource              read FcontentResources write FcontentResources;
    property customParameters:               string                              read FcustomParameters write FcustomParameters;
    property dashboardTabId:                 Integer                             read FdashboardTabId write FdashboardTabId;
    property datasource:                     AdministrationDataSource            read Fdatasource write Fdatasource;
    property favourite:                      PersonFavourite                     read Ffavourite write Ffavourite;
    property field:                          AdministrationViewField             read Ffield write Ffield;
    property function_:                      string                              read Ffunction_ write Ffunction_;
    property group:                          AdministrationGroup                 read Fgroup write Fgroup;
    property importOptions:                  ArrayOfImportOption                 read FimportOptions write FimportOptions;
    property loginId:                        string                              read FloginId write FloginId;
    property loginSessionId:                 string                              read FloginSessionId write FloginSessionId;
    property ntlm:                           Boolean                             read Fntlm write Fntlm;
    property orgId:                          Integer                             read ForgId write ForgId;
    property orgRef:                         string                              read ForgRef write ForgRef;
    property parameters:                     ArrayOf_soapenc_string              read Fparameters write Fparameters;
    property password:                       string                              read Fpassword write Fpassword;
    property people:                         ArrayOfAdministrationPerson         read Fpeople write Fpeople;
    property person:                         AdministrationPerson                read Fperson write Fperson;
    property query:                          string                              read Fquery write Fquery;
    property reassignContentIpPerson:        Integer                             read FreassignContentIpPerson write FreassignContentIpPerson;
    property report:                         AdministrationReport                read Freport write Freport;
    property reportGroup:                    AdministrationReportGroup           read FreportGroup write FreportGroup;
    property reportId:                       Integer                             read FreportId write FreportId;
    property retrospectiveDays:              Integer                             read FretrospectiveDays write FretrospectiveDays;
    property role:                           AdministrationRole                  read Frole write Frole;
    property roleFunctionList:               Map                                 read FroleFunctionList write FroleFunctionList;
    property schedule:                       AdministrationSchedule              read Fschedule write Fschedule;
    property sessionId:                      string                              read FsessionId write FsessionId;
    property sourceClientLink:               AdministrationDataSourceClientLink  read FsourceClientLink write FsourceClientLink;
    property sourceId:                       Integer                             read FsourceId write FsourceId;
    property task:                           AdministrationTask                  read Ftask write Ftask;
    property viewId:                         Integer                             read FviewId write FviewId;
    property yellowfinContentExportFileType: string                              read FyellowfinContentExportFileType write FyellowfinContentExportFileType;
  end;



  // ************************************************************************ //
  // XML       : ImportOption, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ImportOption = class(TRemotable)
  private
    FitemIndex: Integer;
    FoptionKey: string;
    FoptionValue: string;
  published
    property itemIndex:   Integer  read FitemIndex write FitemIndex;
    property optionKey:   string   read FoptionKey write FoptionKey;
    property optionValue: string   read FoptionValue write FoptionValue;
  end;



  // ************************************************************************ //
  // XML       : AdministrationReport, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationReport = class(TRemotable)
  private
    FauthoringMode: string;
    FaverageRunTime: Integer;
    FbirtData: string;
    FchartTypeCode: string;
    FdashboardEnabled: Boolean;
    FdataOutput: string;
    FdeliveryMode: string;
    FexecutionObject: string;
    FlastModifiedDate: TXSDateTime;
    FlastModifierId: Integer;
    FlastModifierName: string;
    FlastRunTime: Integer;
    FpublishDate: TXSDateTime;
    FreportCategory: string;
    FreportDescription: string;
    FreportId: Integer;
    FreportName: string;
    FreportSubCategory: string;
    FreportTemplate: string;
    FreportUUID: string;
    FroleCode: string;
    FsourceId: Integer;
    FsourceName: string;
    Fusage: Integer;
    FviewDescription: string;
    FviewId: Integer;
    FviewName: string;
  public
    destructor Destroy; override;
  published
    property authoringMode:     string       read FauthoringMode write FauthoringMode;
    property averageRunTime:    Integer      read FaverageRunTime write FaverageRunTime;
    property birtData:          string       read FbirtData write FbirtData;
    property chartTypeCode:     string       read FchartTypeCode write FchartTypeCode;
    property dashboardEnabled:  Boolean      read FdashboardEnabled write FdashboardEnabled;
    property dataOutput:        string       read FdataOutput write FdataOutput;
    property deliveryMode:      string       read FdeliveryMode write FdeliveryMode;
    property executionObject:   string       read FexecutionObject write FexecutionObject;
    property lastModifiedDate:  TXSDateTime  read FlastModifiedDate write FlastModifiedDate;
    property lastModifierId:    Integer      read FlastModifierId write FlastModifierId;
    property lastModifierName:  string       read FlastModifierName write FlastModifierName;
    property lastRunTime:       Integer      read FlastRunTime write FlastRunTime;
    property publishDate:       TXSDateTime  read FpublishDate write FpublishDate;
    property reportCategory:    string       read FreportCategory write FreportCategory;
    property reportDescription: string       read FreportDescription write FreportDescription;
    property reportId:          Integer      read FreportId write FreportId;
    property reportName:        string       read FreportName write FreportName;
    property reportSubCategory: string       read FreportSubCategory write FreportSubCategory;
    property reportTemplate:    string       read FreportTemplate write FreportTemplate;
    property reportUUID:        string       read FreportUUID write FreportUUID;
    property roleCode:          string       read FroleCode write FroleCode;
    property sourceId:          Integer      read FsourceId write FsourceId;
    property sourceName:        string       read FsourceName write FsourceName;
    property usage:             Integer      read Fusage write Fusage;
    property viewDescription:   string       read FviewDescription write FviewDescription;
    property viewId:            Integer      read FviewId write FviewId;
    property viewName:          string       read FviewName write FviewName;
  end;

  ArrayOfAdministrationFunction = array of AdministrationFunction;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : AdministrationRole, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationRole = class(TRemotable)
  private
    Ffunctions: ArrayOfAdministrationFunction;
    FroleCode: string;
    FroleDescription: string;
    FroleName: string;
  public
    destructor Destroy; override;
  published
    property functions:       ArrayOfAdministrationFunction  read Ffunctions write Ffunctions;
    property roleCode:        string                         read FroleCode write FroleCode;
    property roleDescription: string                         read FroleDescription write FroleDescription;
    property roleName:        string                         read FroleName write FroleName;
  end;



  // ************************************************************************ //
  // XML       : AdministrationFunction, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationFunction = class(TRemotable)
  private
    FaccessLevelCode: string;
    FfunctionCode: string;
    FfunctionDescription: string;
    FfunctionName: string;
    FfunctionTypeCode: string;
  published
    property accessLevelCode:     string  read FaccessLevelCode write FaccessLevelCode;
    property functionCode:        string  read FfunctionCode write FfunctionCode;
    property functionDescription: string  read FfunctionDescription write FfunctionDescription;
    property functionName:        string  read FfunctionName write FfunctionName;
    property functionTypeCode:    string  read FfunctionTypeCode write FfunctionTypeCode;
  end;

  ArrayOfAdministrationReport = array of AdministrationReport;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : AdministrationServiceResponse, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationServiceResponse = class(TRemotable)
  private
    FbinaryAttachments: ArrayOfReportBinaryObject;
    FbinaryData: string;
    Fclient: AdministrationClientOrg;
    Fclients: ArrayOfAdministrationClientOrg;
    FcontentResources: ArrayOfContentResource;
    FcontentType: string;
    Fdatasources: ArrayOfAdministrationDataSource;
    FentityId: Integer;
    FerrorCode: Integer;
    FfileName: string;
    Fgroup: AdministrationGroup;
    Fgroups: ArrayOfAdministrationGroup;
    FimportIssues: ArrayOfImportIssue;
    FloadedDataSource: AdministrationDataSource;
    FloginSessionId: string;
    Fmessages: ArrayOf_soapenc_string;
    FparentDashboard: ParentDashboard;
    FparentDashboards: ArrayOfParentDashboard;
    FparentReportGroups: ArrayOfParentReportGroup;
    Fpeople: ArrayOfAdministrationPerson;
    Fperson: AdministrationPerson;
    Fpersonfavourites: ArrayOfPersonFavourite;
    FqueryResults: ArrayOfReportRow;
    Freport: AdministrationReport;
    FreportGroups: ArrayOfAdministrationReportGroup;
    FreportId: Integer;
    Freports: ArrayOfAdministrationReport;
    Froles: ArrayOfAdministrationRole;
    Fschedule: AdministrationSchedule;
    Fschedules: ArrayOfAdministrationSchedule;
    FsessionId: string;
    FstatusCode: string;
  public
    destructor Destroy; override;
  published
    property binaryAttachments:  ArrayOfReportBinaryObject         read FbinaryAttachments write FbinaryAttachments;
    property binaryData:         string                            read FbinaryData write FbinaryData;
    property client:             AdministrationClientOrg           read Fclient write Fclient;
    property clients:            ArrayOfAdministrationClientOrg    read Fclients write Fclients;
    property contentResources:   ArrayOfContentResource            read FcontentResources write FcontentResources;
    property contentType:        string                            read FcontentType write FcontentType;
    property datasources:        ArrayOfAdministrationDataSource   read Fdatasources write Fdatasources;
    property entityId:           Integer                           read FentityId write FentityId;
    property errorCode:          Integer                           read FerrorCode write FerrorCode;
    property fileName:           string                            read FfileName write FfileName;
    property group:              AdministrationGroup               read Fgroup write Fgroup;
    property groups:             ArrayOfAdministrationGroup        read Fgroups write Fgroups;
    property importIssues:       ArrayOfImportIssue                read FimportIssues write FimportIssues;
    property loadedDataSource:   AdministrationDataSource          read FloadedDataSource write FloadedDataSource;
    property loginSessionId:     string                            read FloginSessionId write FloginSessionId;
    property messages:           ArrayOf_soapenc_string            read Fmessages write Fmessages;
    property parentDashboard:    ParentDashboard                   read FparentDashboard write FparentDashboard;
    property parentDashboards:   ArrayOfParentDashboard            read FparentDashboards write FparentDashboards;
    property parentReportGroups: ArrayOfParentReportGroup          read FparentReportGroups write FparentReportGroups;
    property people:             ArrayOfAdministrationPerson       read Fpeople write Fpeople;
    property person:             AdministrationPerson              read Fperson write Fperson;
    property personfavourites:   ArrayOfPersonFavourite            read Fpersonfavourites write Fpersonfavourites;
    property queryResults:       ArrayOfReportRow                  read FqueryResults write FqueryResults;
    property report:             AdministrationReport              read Freport write Freport;
    property reportGroups:       ArrayOfAdministrationReportGroup  read FreportGroups write FreportGroups;
    property reportId:           Integer                           read FreportId write FreportId;
    property reports:            ArrayOfAdministrationReport       read Freports write Freports;
    property roles:              ArrayOfAdministrationRole         read Froles write Froles;
    property schedule:           AdministrationSchedule            read Fschedule write Fschedule;
    property schedules:          ArrayOfAdministrationSchedule     read Fschedules write Fschedules;
    property sessionId:          string                            read FsessionId write FsessionId;
    property statusCode:         string                            read FstatusCode write FstatusCode;
  end;

  ArrayOf_soapenc_int = array of Integer;       { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : AdministrationReportGroup, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  AdministrationReportGroup = class(TRemotable)
  private
    FassociatedReports: ArrayOf_soapenc_int;
    FgroupDescription: string;
    FgroupReports: ArrayOfAdministrationReport;
    FpublishUUID: string;
    FreportGroupDescription: string;
    FreportGroupId: Integer;
    FreportGroupInternalReference: string;
    FreportGroupName: string;
    FreportGroupStatus: string;
    FreportGroupType: string;
  public
    destructor Destroy; override;
  published
    property associatedReports:            ArrayOf_soapenc_int          read FassociatedReports write FassociatedReports;
    property groupDescription:             string                       read FgroupDescription write FgroupDescription;
    property groupReports:                 ArrayOfAdministrationReport  read FgroupReports write FgroupReports;
    property publishUUID:                  string                       read FpublishUUID write FpublishUUID;
    property reportGroupDescription:       string                       read FreportGroupDescription write FreportGroupDescription;
    property reportGroupId:                Integer                      read FreportGroupId write FreportGroupId;
    property reportGroupInternalReference: string                       read FreportGroupInternalReference write FreportGroupInternalReference;
    property reportGroupName:              string                       read FreportGroupName write FreportGroupName;
    property reportGroupStatus:            string                       read FreportGroupStatus write FreportGroupStatus;
    property reportGroupType:              string                       read FreportGroupType write FreportGroupType;
  end;



  // ************************************************************************ //
  // XML       : TransformationFlowSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  TransformationFlowSchedule = class(AdministrationSchedule)
  private
    FfailureNotificationGroup: Integer;
    FscheduleEndDate: TXSDateTime;
    FscheduleStartDate: TXSDateTime;
    FsuccessNotifyRecipients: ArrayOf_soapenc_int;
    FtransformationId: Integer;
  public
    destructor Destroy; override;
  published
    property failureNotificationGroup: Integer              read FfailureNotificationGroup write FfailureNotificationGroup;
    property scheduleEndDate:          TXSDateTime          read FscheduleEndDate write FscheduleEndDate;
    property scheduleStartDate:        TXSDateTime          read FscheduleStartDate write FscheduleStartDate;
    property successNotifyRecipients:  ArrayOf_soapenc_int  read FsuccessNotifyRecipients write FsuccessNotifyRecipients;
    property transformationId:         Integer              read FtransformationId write FtransformationId;
  end;



  // ************************************************************************ //
  // XML       : ReportBroadcastSchedule, global, <complexType>
  // Namespace : http://schedule.service.web.mi.hof.com
  // ************************************************************************ //
  ReportBroadcastSchedule = class(AdministrationSchedule)
  private
    FappendDate: Boolean;
    FbodyText: string;
    FbroadcastEndDate: TXSDateTime;
    FbroadcastStartDate: TXSDateTime;
    FconditionList: ArrayOfCondition;
    FfailureNotificationGroup: Integer;
    Fformat: string;
    Frecipients: ArrayOf_soapenc_int;
    FreportId: Integer;
    Fsubject: string;
  public
    destructor Destroy; override;
  published
    property appendDate:               Boolean              read FappendDate write FappendDate;
    property bodyText:                 string               read FbodyText write FbodyText;
    property broadcastEndDate:         TXSDateTime          read FbroadcastEndDate write FbroadcastEndDate;
    property broadcastStartDate:       TXSDateTime          read FbroadcastStartDate write FbroadcastStartDate;
    property conditionList:            ArrayOfCondition     read FconditionList write FconditionList;
    property failureNotificationGroup: Integer              read FfailureNotificationGroup write FfailureNotificationGroup;
    property format:                   string               read Fformat write Fformat;
    property recipients:               ArrayOf_soapenc_int  read Frecipients write Frecipients;
    property reportId:                 Integer              read FreportId write FreportId;
    property subject:                  string               read Fsubject write Fsubject;
  end;


  // ************************************************************************ //
  // Namespace : http://service.web.mi.hof.com
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : AdministrationServiceSoapBinding
  // service   : AdministrationServiceService
  // port      : AdministrationService
  // URL       : http://172.16.174.137:8080/services/AdministrationService
  // ************************************************************************ //
  AdministrationService = interface(IInvokable)
  ['{85218A6E-4BE9-AC99-DB2C-11D828967B8A}']
    function  remoteAdministrationCall(const req: AdministrationServiceRequest): AdministrationServiceResponse; stdcall;
    function  addColumnToViews(const userName: string; const password: string; const dataSourceName: string; const tableName: string; const columnName: string; const fieldCategoryName: string
                               ): AdministrationServiceResponse; overload;  stdcall;
    function  addColumnToViews(const userName: string; const password: string; const sourceId: Integer; const tableName: string; const columnName: string; const fieldCategoryName: string
                               ): AdministrationServiceResponse; overload;  stdcall;
  end;

function GetAdministrationService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): AdministrationService;


implementation
  uses System.SysUtils;

function GetAdministrationService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): AdministrationService;
const
  defWSDL = 'http://172.16.174.137:8080/services/AdministrationService?wsdl';
  defURL  = 'http://172.16.174.137:8080/services/AdministrationService';
  defSvc  = 'AdministrationServiceService';
  defPrt  = 'AdministrationService';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as AdministrationService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor ImportIssue.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FissueElements)-1 do
    System.SysUtils.FreeAndNil(FissueElements[I]);
  System.SetLength(FissueElements, 0);
  System.SysUtils.FreeAndNil(Fresource);
  inherited Destroy;
end;

destructor AdministrationCacheCommand.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcommandArgs)-1 do
    System.SysUtils.FreeAndNil(FcommandArgs[I]);
  System.SetLength(FcommandArgs, 0);
  inherited Destroy;
end;

destructor AdministrationGroup.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgroupMembers)-1 do
    System.SysUtils.FreeAndNil(FgroupMembers[I]);
  System.SetLength(FgroupMembers, 0);
  inherited Destroy;
end;

destructor PersonFavourite.Destroy;
begin
  System.SysUtils.FreeAndNil(FcreationDate);
  inherited Destroy;
end;

destructor AdministrationDataSource.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FclientSources)-1 do
    System.SysUtils.FreeAndNil(FclientSources[I]);
  System.SetLength(FclientSources, 0);
  for I := 0 to System.Length(FsourceOptions)-1 do
    System.SysUtils.FreeAndNil(FsourceOptions[I]);
  System.SetLength(FsourceOptions, 0);
  inherited Destroy;
end;

destructor ParentReportGroup.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FreportGroupSubTabs)-1 do
    System.SysUtils.FreeAndNil(FreportGroupSubTabs[I]);
  System.SetLength(FreportGroupSubTabs, 0);
  System.SysUtils.FreeAndNil(FreportGroup);
  inherited Destroy;
end;

destructor AdministrationTask.Destroy;
begin
  System.SysUtils.FreeAndNil(FdueDate);
  inherited Destroy;
end;

destructor AdministrationSchedule.Destroy;
begin
  System.SysUtils.FreeAndNil(Ffrequency);
  System.SysUtils.FreeAndNil(FlastRunDateTimeGMT);
  System.SysUtils.FreeAndNil(FnextRunDateTimeGMT);
  inherited Destroy;
end;

destructor AdministrationServiceRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcacheCommands)-1 do
    System.SysUtils.FreeAndNil(FcacheCommands[I]);
  System.SetLength(FcacheCommands, 0);
  for I := 0 to System.Length(FcontentResources)-1 do
    System.SysUtils.FreeAndNil(FcontentResources[I]);
  System.SetLength(FcontentResources, 0);
  for I := 0 to System.Length(FimportOptions)-1 do
    System.SysUtils.FreeAndNil(FimportOptions[I]);
  System.SetLength(FimportOptions, 0);
  for I := 0 to System.Length(Fpeople)-1 do
    System.SysUtils.FreeAndNil(Fpeople[I]);
  System.SetLength(Fpeople, 0);
  for I := 0 to System.Length(FroleFunctionList)-1 do
    System.SysUtils.FreeAndNil(FroleFunctionList[I]);
  System.SetLength(FroleFunctionList, 0);
  System.SysUtils.FreeAndNil(Fclient);
  System.SysUtils.FreeAndNil(Fdatasource);
  System.SysUtils.FreeAndNil(Ffavourite);
  System.SysUtils.FreeAndNil(Ffield);
  System.SysUtils.FreeAndNil(Fgroup);
  System.SysUtils.FreeAndNil(Fperson);
  System.SysUtils.FreeAndNil(Freport);
  System.SysUtils.FreeAndNil(FreportGroup);
  System.SysUtils.FreeAndNil(Frole);
  System.SysUtils.FreeAndNil(Fschedule);
  System.SysUtils.FreeAndNil(FsourceClientLink);
  System.SysUtils.FreeAndNil(Ftask);
  inherited Destroy;
end;

destructor AdministrationReport.Destroy;
begin
  System.SysUtils.FreeAndNil(FlastModifiedDate);
  System.SysUtils.FreeAndNil(FpublishDate);
  inherited Destroy;
end;

destructor AdministrationRole.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ffunctions)-1 do
    System.SysUtils.FreeAndNil(Ffunctions[I]);
  System.SetLength(Ffunctions, 0);
  inherited Destroy;
end;

destructor AdministrationServiceResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FbinaryAttachments)-1 do
    System.SysUtils.FreeAndNil(FbinaryAttachments[I]);
  System.SetLength(FbinaryAttachments, 0);
  for I := 0 to System.Length(Fclients)-1 do
    System.SysUtils.FreeAndNil(Fclients[I]);
  System.SetLength(Fclients, 0);
  for I := 0 to System.Length(FcontentResources)-1 do
    System.SysUtils.FreeAndNil(FcontentResources[I]);
  System.SetLength(FcontentResources, 0);
  for I := 0 to System.Length(Fdatasources)-1 do
    System.SysUtils.FreeAndNil(Fdatasources[I]);
  System.SetLength(Fdatasources, 0);
  for I := 0 to System.Length(Fgroups)-1 do
    System.SysUtils.FreeAndNil(Fgroups[I]);
  System.SetLength(Fgroups, 0);
  for I := 0 to System.Length(FimportIssues)-1 do
    System.SysUtils.FreeAndNil(FimportIssues[I]);
  System.SetLength(FimportIssues, 0);
  for I := 0 to System.Length(FparentDashboards)-1 do
    System.SysUtils.FreeAndNil(FparentDashboards[I]);
  System.SetLength(FparentDashboards, 0);
  for I := 0 to System.Length(FparentReportGroups)-1 do
    System.SysUtils.FreeAndNil(FparentReportGroups[I]);
  System.SetLength(FparentReportGroups, 0);
  for I := 0 to System.Length(Fpeople)-1 do
    System.SysUtils.FreeAndNil(Fpeople[I]);
  System.SetLength(Fpeople, 0);
  for I := 0 to System.Length(Fpersonfavourites)-1 do
    System.SysUtils.FreeAndNil(Fpersonfavourites[I]);
  System.SetLength(Fpersonfavourites, 0);
  for I := 0 to System.Length(FqueryResults)-1 do
    System.SysUtils.FreeAndNil(FqueryResults[I]);
  System.SetLength(FqueryResults, 0);
  for I := 0 to System.Length(FreportGroups)-1 do
    System.SysUtils.FreeAndNil(FreportGroups[I]);
  System.SetLength(FreportGroups, 0);
  for I := 0 to System.Length(Freports)-1 do
    System.SysUtils.FreeAndNil(Freports[I]);
  System.SetLength(Freports, 0);
  for I := 0 to System.Length(Froles)-1 do
    System.SysUtils.FreeAndNil(Froles[I]);
  System.SetLength(Froles, 0);
  for I := 0 to System.Length(Fschedules)-1 do
    System.SysUtils.FreeAndNil(Fschedules[I]);
  System.SetLength(Fschedules, 0);
  System.SysUtils.FreeAndNil(Fclient);
  System.SysUtils.FreeAndNil(Fgroup);
  System.SysUtils.FreeAndNil(FloadedDataSource);
  System.SysUtils.FreeAndNil(FparentDashboard);
  System.SysUtils.FreeAndNil(Fperson);
  System.SysUtils.FreeAndNil(Freport);
  System.SysUtils.FreeAndNil(Fschedule);
  inherited Destroy;
end;

destructor AdministrationReportGroup.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgroupReports)-1 do
    System.SysUtils.FreeAndNil(FgroupReports[I]);
  System.SetLength(FgroupReports, 0);
  inherited Destroy;
end;

destructor TransformationFlowSchedule.Destroy;
begin
  System.SysUtils.FreeAndNil(FscheduleEndDate);
  System.SysUtils.FreeAndNil(FscheduleStartDate);
  inherited Destroy;
end;

destructor ReportBroadcastSchedule.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FconditionList)-1 do
    System.SysUtils.FreeAndNil(FconditionList[I]);
  System.SetLength(FconditionList, 0);
  System.SysUtils.FreeAndNil(FbroadcastEndDate);
  System.SysUtils.FreeAndNil(FbroadcastStartDate);
  inherited Destroy;
end;

initialization
  { AdministrationService }
  InvRegistry.RegisterInterface(TypeInfo(AdministrationService), 'http://service.web.mi.hof.com', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(AdministrationService), '');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationSchedule), 'http://schedule.service.web.mi.hof.com', 'ArrayOfAdministrationSchedule');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationRole), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationRole');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportRow), 'http://service.web.mi.hof.com', 'ArrayOfReportRow');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfImportIssue), 'http://service.web.mi.hof.com', 'ArrayOfImportIssue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfImportIssueElement), 'http://service.web.mi.hof.com', 'ArrayOfImportIssueElement');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfParentDashboard), 'http://service.web.mi.hof.com', 'ArrayOfParentDashboard');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfPersonFavourite), 'http://service.web.mi.hof.com', 'ArrayOfPersonFavourite');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfParentReportGroup), 'http://service.web.mi.hof.com', 'ArrayOfParentReportGroup');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationReportGroup), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationReportGroup');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationGroup), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationGroup');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationDataSourceOption), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationDataSourceOption');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationDataClientLink), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationDataClientLink');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationGroupMember), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationGroupMember');
  RemClassRegistry.RegisterXSClass(AdministrationDataSourceOption, 'http://service.web.mi.hof.com', 'AdministrationDataSourceOption');
  RemClassRegistry.RegisterXSClass(ImportIssue, 'http://service.web.mi.hof.com', 'ImportIssue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Map), 'http://xml.apache.org/xml-soap', 'Map');
  RemClassRegistry.RegisterXSClass(AdministrationCacheCommand, 'http://service.web.mi.hof.com', 'AdministrationCacheCommand');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(AdministrationCacheCommand), 'commandArgs', '[ArrayItemName="item"]');
  RemClassRegistry.RegisterXSClass(mapItem, 'http://xml.apache.org/xml-soap', 'mapItem');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationCacheCommand), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationCacheCommand');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfContentResource), 'http://service.web.mi.hof.com', 'ArrayOfContentResource');
  RemClassRegistry.RegisterXSClass(ContentResource, 'http://service.web.mi.hof.com', 'ContentResource');
  RemClassRegistry.RegisterXSClass(AdministrationViewField, 'http://service.web.mi.hof.com', 'AdministrationViewField');
  RemClassRegistry.RegisterXSClass(AdministrationGroupMember, 'http://service.web.mi.hof.com', 'AdministrationGroupMember');
  RemClassRegistry.RegisterXSClass(AdministrationGroup, 'http://service.web.mi.hof.com', 'AdministrationGroup');
  RemClassRegistry.RegisterXSClass(PersonFavourite, 'http://service.web.mi.hof.com', 'PersonFavourite');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PersonFavourite), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(AdministrationDataSourceClientLink, 'http://service.web.mi.hof.com', 'AdministrationDataSourceClientLink');
  RemClassRegistry.RegisterXSClass(AdministrationDataSource, 'http://service.web.mi.hof.com', 'AdministrationDataSource');
  RemClassRegistry.RegisterXSClass(ParentReportGroup, 'http://service.web.mi.hof.com', 'ParentReportGroup');
  RemClassRegistry.RegisterXSClass(ScheduleFrequency, 'http://schedule.service.web.mi.hof.com', 'ScheduleFrequency');
  RemClassRegistry.RegisterXSClass(AnnualFrequency, 'http://schedule.service.web.mi.hof.com', 'AnnualFrequency');
  RemClassRegistry.RegisterXSClass(DailyFrequency, 'http://schedule.service.web.mi.hof.com', 'DailyFrequency');
  RemClassRegistry.RegisterXSClass(WeeklyFrequency, 'http://schedule.service.web.mi.hof.com', 'WeeklyFrequency');
  RemClassRegistry.RegisterXSClass(WeekdaysFrequency, 'http://schedule.service.web.mi.hof.com', 'WeekdaysFrequency');
  RemClassRegistry.RegisterXSClass(EndOfMonthFrequency, 'http://schedule.service.web.mi.hof.com', 'EndOfMonthFrequency');
  RemClassRegistry.RegisterXSClass(BiannualFrequency, 'http://schedule.service.web.mi.hof.com', 'BiannualFrequency');
  RemClassRegistry.RegisterXSClass(OnceFrequency, 'http://schedule.service.web.mi.hof.com', 'OnceFrequency');
  RemClassRegistry.RegisterXSClass(QuarterlyFrequency, 'http://schedule.service.web.mi.hof.com', 'QuarterlyFrequency');
  RemClassRegistry.RegisterXSClass(MonthlyFrequency, 'http://schedule.service.web.mi.hof.com', 'MonthlyFrequency');
  RemClassRegistry.RegisterXSClass(FortnightlyFrequency, 'http://schedule.service.web.mi.hof.com', 'FortnightlyFrequency');
  RemClassRegistry.RegisterXSClass(MinutesFrequency, 'http://schedule.service.web.mi.hof.com', 'MinutesFrequency');
  RemClassRegistry.RegisterXSClass(AdministrationClientOrg, 'http://service.web.mi.hof.com', 'AdministrationClientOrg');
  RemClassRegistry.RegisterXSClass(AdministrationTask, 'http://service.web.mi.hof.com', 'AdministrationTask');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCondition), 'http://service.web.mi.hof.com', 'ArrayOfCondition');
  RemClassRegistry.RegisterXSClass(Condition, 'http://service.web.mi.hof.com', 'Condition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationDataSource), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationDataSource');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationClientOrg), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationClientOrg');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportBinaryObject), 'http://service.web.mi.hof.com', 'ArrayOfReportBinaryObject');
  RemClassRegistry.RegisterXSClass(ReportBinaryObject, 'http://service.web.mi.hof.com', 'ReportBinaryObject');
  RemClassRegistry.RegisterXSClass(AdministrationSchedule, 'http://schedule.service.web.mi.hof.com', 'AdministrationSchedule');
  RemClassRegistry.RegisterXSClass(RefCodeRefreshSchedule, 'http://schedule.service.web.mi.hof.com', 'RefCodeRefreshSchedule');
  RemClassRegistry.RegisterXSClass(CompositeViewRefreshSchedule, 'http://schedule.service.web.mi.hof.com', 'CompositeViewRefreshSchedule');
  RemClassRegistry.RegisterXSClass(ReportFilterCacheRefreshSchedule, 'http://schedule.service.web.mi.hof.com', 'ReportFilterCacheRefreshSchedule');
  RemClassRegistry.RegisterXSClass(SignalRunSchedule, 'http://schedule.service.web.mi.hof.com', 'SignalRunSchedule');
  RemClassRegistry.RegisterXSClass(SignalCleanupSubTaskSchedule, 'http://schedule.service.web.mi.hof.com', 'SignalCleanupSubTaskSchedule');
  RemClassRegistry.RegisterXSClass(SignalCorrelationSubTaskSchedule, 'http://schedule.service.web.mi.hof.com', 'SignalCorrelationSubTaskSchedule');
  RemClassRegistry.RegisterXSClass(SignalAnalysisSubTaskSchedule, 'http://schedule.service.web.mi.hof.com', 'SignalAnalysisSubTaskSchedule');
  RemClassRegistry.RegisterXSClass(SourceFilterUpdateReminderSchedule, 'http://schedule.service.web.mi.hof.com', 'SourceFilterUpdateReminderSchedule');
  RemClassRegistry.RegisterXSClass(SystemTaskSchedule, 'http://schedule.service.web.mi.hof.com', 'SystemTaskSchedule');
  RemClassRegistry.RegisterXSClass(SourceFilterRefreshSchedule, 'http://schedule.service.web.mi.hof.com', 'SourceFilterRefreshSchedule');
  RemClassRegistry.RegisterXSClass(ThirdPartySourceAutoRunSchedule, 'http://schedule.service.web.mi.hof.com', 'ThirdPartySourceAutoRunSchedule');
  RemClassRegistry.RegisterXSClass(ReportRefreshSchedule, 'http://schedule.service.web.mi.hof.com', 'ReportRefreshSchedule');
  RemClassRegistry.RegisterXSClass(FilterGroupCacheRefreshSchedule, 'http://schedule.service.web.mi.hof.com', 'FilterGroupCacheRefreshSchedule');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationPerson), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationPerson');
  RemClassRegistry.RegisterXSClass(AdministrationPerson, 'http://service.web.mi.hof.com', 'AdministrationPerson');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOf_soapenc_string), 'http://service.web.mi.hof.com', 'ArrayOf_soapenc_string');
  RemClassRegistry.RegisterXSClass(ReportRow, 'http://service.web.mi.hof.com', 'ReportRow');
  RemClassRegistry.RegisterXSClass(ImportIssueElement, 'http://service.web.mi.hof.com', 'ImportIssueElement');
  RemClassRegistry.RegisterXSClass(ParentDashboard, 'http://service.web.mi.hof.com', 'ParentDashboard');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfImportOption), 'http://service.web.mi.hof.com', 'ArrayOfImportOption');
  RemClassRegistry.RegisterXSClass(AdministrationServiceRequest, 'http://service.web.mi.hof.com', 'AdministrationServiceRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(AdministrationServiceRequest), 'function_', '[ExtName="function"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(AdministrationServiceRequest), 'roleFunctionList', '[ArrayItemName="item"]');
  RemClassRegistry.RegisterXSClass(ImportOption, 'http://service.web.mi.hof.com', 'ImportOption');
  RemClassRegistry.RegisterXSClass(AdministrationReport, 'http://service.web.mi.hof.com', 'AdministrationReport');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationFunction), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationFunction');
  RemClassRegistry.RegisterXSClass(AdministrationRole, 'http://service.web.mi.hof.com', 'AdministrationRole');
  RemClassRegistry.RegisterXSClass(AdministrationFunction, 'http://service.web.mi.hof.com', 'AdministrationFunction');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdministrationReport), 'http://service.web.mi.hof.com', 'ArrayOfAdministrationReport');
  RemClassRegistry.RegisterXSClass(AdministrationServiceResponse, 'http://service.web.mi.hof.com', 'AdministrationServiceResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOf_soapenc_int), 'http://service.web.mi.hof.com', 'ArrayOf_soapenc_int');
  RemClassRegistry.RegisterXSClass(AdministrationReportGroup, 'http://service.web.mi.hof.com', 'AdministrationReportGroup');
  RemClassRegistry.RegisterXSClass(TransformationFlowSchedule, 'http://schedule.service.web.mi.hof.com', 'TransformationFlowSchedule');
  RemClassRegistry.RegisterXSClass(ReportBroadcastSchedule, 'http://schedule.service.web.mi.hof.com', 'ReportBroadcastSchedule');

end.
