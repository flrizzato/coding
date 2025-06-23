// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://172.16.174.137:8080/webservices/LegacyAdministrationService?wsdl
//  >Import : http://172.16.174.137:8080/webservices/LegacyAdministrationService?wsdl>0
//  >Import : http://172.16.174.137:8080/webservices/LegacyAdministrationService?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (28/06/2022 09:52:10 - - $Rev: 108085 $)
// ************************************************************************ //

unit YF.JAX.AdministrationService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:anyType         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  importIssue          = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationRole   = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  Exception            = class;                 { "http://webservices.web.mi.hof.com/"[Flt][GblElm] }
  entry                = class;                 { "http://webservices.web.mi.hof.com/"[Cplx] }
  administrationGroup  = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationServiceResponse = class;        { "http://webservices.web.mi.hof.com/"[GblCplx] }
  parentDashboard      = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  parentReportGroup    = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationPerson = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  personFavourite      = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationReportGroup = class;            { "http://webservices.web.mi.hof.com/"[GblCplx] }
  contentResource      = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationCacheCommand = class;           { "http://webservices.web.mi.hof.com/"[GblCplx] }
  Exception2           = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  scheduleFrequency    = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  entry2               = class;                 { "http://webservices.web.mi.hof.com/"[Cplx] }
  importOption         = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationViewField = class;              { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationFunction = class;               { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationDataSourceClientLink = class;   { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationDataSource = class;             { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationClientOrg = class;              { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationServiceRequest = class;         { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportBinaryObject   = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationSchedule = class;               { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationReport = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationTask   = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  importIssueElement   = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationGroupMember = class;            { "http://webservices.web.mi.hof.com/"[GblCplx] }
  administrationDataSourceOption = class;       { "http://webservices.web.mi.hof.com/"[GblCplx] }

  Array_Of_reportBinaryObject = array of reportBinaryObject;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationClientOrg = array of administrationClientOrg;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_contentResource = array of contentResource;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationDataSource = array of administrationDataSource;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  commandArgs = array of entry;                 { "http://webservices.web.mi.hof.com/"[Cplx] }
  Array_Of_administrationGroup = array of administrationGroup;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationGroupMember = array of administrationGroupMember;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationDataSourceOption = array of administrationDataSourceOption;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationDataSourceClientLink = array of administrationDataSourceClientLink;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationSchedule = array of administrationSchedule;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_importIssueElement = array of importIssueElement;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_importOption = array of importOption;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationCacheCommand = array of administrationCacheCommand;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationFunction = array of administrationFunction;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationPerson = array of administrationPerson;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_parentReportGroup = array of parentReportGroup;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_parentDashboard = array of parentDashboard;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_importIssue = array of importIssue;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_personFavourite = array of personFavourite;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationRole = array of administrationRole;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationReport = array of administrationReport;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_administrationReportGroup = array of administrationReportGroup;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : importIssue, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  importIssue = class(TRemotable)
  private
    FissueElements: Array_Of_importIssueElement;
    FissueElements_Specified: boolean;
    FitemKey: string;
    FitemKey_Specified: boolean;
    Fresource: contentResource;
    Fresource_Specified: boolean;
    procedure SetissueElements(Index: Integer; const AArray_Of_importIssueElement: Array_Of_importIssueElement);
    function  issueElements_Specified(Index: Integer): boolean;
    procedure SetitemKey(Index: Integer; const Astring: string);
    function  itemKey_Specified(Index: Integer): boolean;
    procedure Setresource(Index: Integer; const AcontentResource: contentResource);
    function  resource_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property issueElements: Array_Of_importIssueElement  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FissueElements write SetissueElements stored issueElements_Specified;
    property itemKey:       string                       Index (IS_OPTN or IS_UNQL) read FitemKey write SetitemKey stored itemKey_Specified;
    property resource:      contentResource              Index (IS_OPTN or IS_UNQL) read Fresource write Setresource stored resource_Specified;
  end;

  reportRow  = array of string;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  Array_Of_reportRow = array of reportRow;      { "http://webservices.web.mi.hof.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : administrationRole, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationRole = class(TRemotable)
  private
    Ffunctions: Array_Of_administrationFunction;
    Ffunctions_Specified: boolean;
    FroleCode: string;
    FroleCode_Specified: boolean;
    FroleDescription: string;
    FroleDescription_Specified: boolean;
    FroleName: string;
    FroleName_Specified: boolean;
    procedure Setfunctions(Index: Integer; const AArray_Of_administrationFunction: Array_Of_administrationFunction);
    function  functions_Specified(Index: Integer): boolean;
    procedure SetroleCode(Index: Integer; const Astring: string);
    function  roleCode_Specified(Index: Integer): boolean;
    procedure SetroleDescription(Index: Integer; const Astring: string);
    function  roleDescription_Specified(Index: Integer): boolean;
    procedure SetroleName(Index: Integer; const Astring: string);
    function  roleName_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property functions:       Array_Of_administrationFunction  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ffunctions write Setfunctions stored functions_Specified;
    property roleCode:        string                           Index (IS_OPTN or IS_UNQL) read FroleCode write SetroleCode stored roleCode_Specified;
    property roleDescription: string                           Index (IS_OPTN or IS_UNQL) read FroleDescription write SetroleDescription stored roleDescription_Specified;
    property roleName:        string                           Index (IS_OPTN or IS_UNQL) read FroleName write SetroleName stored roleName_Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <element>
  // Namespace : http://webservices.web.mi.hof.com/
  // Info      : Fault
  // Base Types: Exception
  // ************************************************************************ //
  Exception = class(ERemotableException)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  entry = class(TRemotable)
  private
    Fkey: string;
    Fkey_Specified: boolean;
    Fvalue: Variant;
    Fvalue_Specified: boolean;
    procedure Setkey(Index: Integer; const Astring: string);
    function  key_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AVariant: Variant);
    function  value_Specified(Index: Integer): boolean;
  published
    property key:   string   Index (IS_OPTN or IS_UNQL) read Fkey write Setkey stored key_Specified;
    property value: Variant  Index (IS_OPTN or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationGroup, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationGroup = class(TRemotable)
  private
    FgroupDescription: string;
    FgroupDescription_Specified: boolean;
    FgroupId: Integer;
    FgroupId_Specified: boolean;
    FgroupInternalReference: string;
    FgroupInternalReference_Specified: boolean;
    FgroupMembers: Array_Of_administrationGroupMember;
    FgroupMembers_Specified: boolean;
    FgroupName: string;
    FgroupName_Specified: boolean;
    FgroupStatus: string;
    FgroupStatus_Specified: boolean;
    procedure SetgroupDescription(Index: Integer; const Astring: string);
    function  groupDescription_Specified(Index: Integer): boolean;
    procedure SetgroupId(Index: Integer; const AInteger: Integer);
    function  groupId_Specified(Index: Integer): boolean;
    procedure SetgroupInternalReference(Index: Integer; const Astring: string);
    function  groupInternalReference_Specified(Index: Integer): boolean;
    procedure SetgroupMembers(Index: Integer; const AArray_Of_administrationGroupMember: Array_Of_administrationGroupMember);
    function  groupMembers_Specified(Index: Integer): boolean;
    procedure SetgroupName(Index: Integer; const Astring: string);
    function  groupName_Specified(Index: Integer): boolean;
    procedure SetgroupStatus(Index: Integer; const Astring: string);
    function  groupStatus_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property groupDescription:       string                              Index (IS_OPTN or IS_UNQL) read FgroupDescription write SetgroupDescription stored groupDescription_Specified;
    property groupId:                Integer                             Index (IS_OPTN or IS_UNQL) read FgroupId write SetgroupId stored groupId_Specified;
    property groupInternalReference: string                              Index (IS_OPTN or IS_UNQL) read FgroupInternalReference write SetgroupInternalReference stored groupInternalReference_Specified;
    property groupMembers:           Array_Of_administrationGroupMember  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgroupMembers write SetgroupMembers stored groupMembers_Specified;
    property groupName:              string                              Index (IS_OPTN or IS_UNQL) read FgroupName write SetgroupName stored groupName_Specified;
    property groupStatus:            string                              Index (IS_OPTN or IS_UNQL) read FgroupStatus write SetgroupStatus stored groupStatus_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationServiceResponse, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationServiceResponse = class(TRemotable)
  private
    FbinaryAttachments: Array_Of_reportBinaryObject;
    FbinaryAttachments_Specified: boolean;
    FbinaryData: string;
    FbinaryData_Specified: boolean;
    Fclient: administrationClientOrg;
    Fclient_Specified: boolean;
    Fclients: Array_Of_administrationClientOrg;
    Fclients_Specified: boolean;
    FcontentResources: Array_Of_contentResource;
    FcontentResources_Specified: boolean;
    FcontentType: string;
    FcontentType_Specified: boolean;
    Fdatasources: Array_Of_administrationDataSource;
    Fdatasources_Specified: boolean;
    FentityId: Integer;
    FentityId_Specified: boolean;
    FerrorCode: Integer;
    FerrorCode_Specified: boolean;
    FfileName: string;
    FfileName_Specified: boolean;
    Fgroup: administrationGroup;
    Fgroup_Specified: boolean;
    Fgroups: Array_Of_administrationGroup;
    Fgroups_Specified: boolean;
    FimportIssues: Array_Of_importIssue;
    FimportIssues_Specified: boolean;
    FloadedDataSource: administrationDataSource;
    FloadedDataSource_Specified: boolean;
    FloginSessionId: string;
    FloginSessionId_Specified: boolean;
    Fmessages: reportRow;
    Fmessages_Specified: boolean;
    FparentDashboard: parentDashboard;
    FparentDashboard_Specified: boolean;
    FparentDashboards: Array_Of_parentDashboard;
    FparentDashboards_Specified: boolean;
    FparentReportGroups: Array_Of_parentReportGroup;
    FparentReportGroups_Specified: boolean;
    Fpeople: Array_Of_administrationPerson;
    Fpeople_Specified: boolean;
    Fperson: administrationPerson;
    Fperson_Specified: boolean;
    Fpersonfavourites: Array_Of_personFavourite;
    Fpersonfavourites_Specified: boolean;
    FqueryResults: Array_Of_reportRow;
    FqueryResults_Specified: boolean;
    Freport: administrationReport;
    Freport_Specified: boolean;
    FreportGroups: Array_Of_administrationReportGroup;
    FreportGroups_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    Freports: Array_Of_administrationReport;
    Freports_Specified: boolean;
    Froles: Array_Of_administrationRole;
    Froles_Specified: boolean;
    Fschedule: administrationSchedule;
    Fschedule_Specified: boolean;
    Fschedules: Array_Of_administrationSchedule;
    Fschedules_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    FstatusCode: string;
    FstatusCode_Specified: boolean;
    procedure SetbinaryAttachments(Index: Integer; const AArray_Of_reportBinaryObject: Array_Of_reportBinaryObject);
    function  binaryAttachments_Specified(Index: Integer): boolean;
    procedure SetbinaryData(Index: Integer; const Astring: string);
    function  binaryData_Specified(Index: Integer): boolean;
    procedure Setclient(Index: Integer; const AadministrationClientOrg: administrationClientOrg);
    function  client_Specified(Index: Integer): boolean;
    procedure Setclients(Index: Integer; const AArray_Of_administrationClientOrg: Array_Of_administrationClientOrg);
    function  clients_Specified(Index: Integer): boolean;
    procedure SetcontentResources(Index: Integer; const AArray_Of_contentResource: Array_Of_contentResource);
    function  contentResources_Specified(Index: Integer): boolean;
    procedure SetcontentType(Index: Integer; const Astring: string);
    function  contentType_Specified(Index: Integer): boolean;
    procedure Setdatasources(Index: Integer; const AArray_Of_administrationDataSource: Array_Of_administrationDataSource);
    function  datasources_Specified(Index: Integer): boolean;
    procedure SetentityId(Index: Integer; const AInteger: Integer);
    function  entityId_Specified(Index: Integer): boolean;
    procedure SeterrorCode(Index: Integer; const AInteger: Integer);
    function  errorCode_Specified(Index: Integer): boolean;
    procedure SetfileName(Index: Integer; const Astring: string);
    function  fileName_Specified(Index: Integer): boolean;
    procedure Setgroup(Index: Integer; const AadministrationGroup: administrationGroup);
    function  group_Specified(Index: Integer): boolean;
    procedure Setgroups(Index: Integer; const AArray_Of_administrationGroup: Array_Of_administrationGroup);
    function  groups_Specified(Index: Integer): boolean;
    procedure SetimportIssues(Index: Integer; const AArray_Of_importIssue: Array_Of_importIssue);
    function  importIssues_Specified(Index: Integer): boolean;
    procedure SetloadedDataSource(Index: Integer; const AadministrationDataSource: administrationDataSource);
    function  loadedDataSource_Specified(Index: Integer): boolean;
    procedure SetloginSessionId(Index: Integer; const Astring: string);
    function  loginSessionId_Specified(Index: Integer): boolean;
    procedure Setmessages(Index: Integer; const AreportRow: reportRow);
    function  messages_Specified(Index: Integer): boolean;
    procedure SetparentDashboard(Index: Integer; const AparentDashboard: parentDashboard);
    function  parentDashboard_Specified(Index: Integer): boolean;
    procedure SetparentDashboards(Index: Integer; const AArray_Of_parentDashboard: Array_Of_parentDashboard);
    function  parentDashboards_Specified(Index: Integer): boolean;
    procedure SetparentReportGroups(Index: Integer; const AArray_Of_parentReportGroup: Array_Of_parentReportGroup);
    function  parentReportGroups_Specified(Index: Integer): boolean;
    procedure Setpeople(Index: Integer; const AArray_Of_administrationPerson: Array_Of_administrationPerson);
    function  people_Specified(Index: Integer): boolean;
    procedure Setperson(Index: Integer; const AadministrationPerson: administrationPerson);
    function  person_Specified(Index: Integer): boolean;
    procedure Setpersonfavourites(Index: Integer; const AArray_Of_personFavourite: Array_Of_personFavourite);
    function  personfavourites_Specified(Index: Integer): boolean;
    procedure SetqueryResults(Index: Integer; const AArray_Of_reportRow: Array_Of_reportRow);
    function  queryResults_Specified(Index: Integer): boolean;
    procedure Setreport(Index: Integer; const AadministrationReport: administrationReport);
    function  report_Specified(Index: Integer): boolean;
    procedure SetreportGroups(Index: Integer; const AArray_Of_administrationReportGroup: Array_Of_administrationReportGroup);
    function  reportGroups_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure Setreports(Index: Integer; const AArray_Of_administrationReport: Array_Of_administrationReport);
    function  reports_Specified(Index: Integer): boolean;
    procedure Setroles(Index: Integer; const AArray_Of_administrationRole: Array_Of_administrationRole);
    function  roles_Specified(Index: Integer): boolean;
    procedure Setschedule(Index: Integer; const AadministrationSchedule: administrationSchedule);
    function  schedule_Specified(Index: Integer): boolean;
    procedure Setschedules(Index: Integer; const AArray_Of_administrationSchedule: Array_Of_administrationSchedule);
    function  schedules_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
    procedure SetstatusCode(Index: Integer; const Astring: string);
    function  statusCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property binaryAttachments:  Array_Of_reportBinaryObject         Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FbinaryAttachments write SetbinaryAttachments stored binaryAttachments_Specified;
    property binaryData:         string                              Index (IS_OPTN or IS_UNQL) read FbinaryData write SetbinaryData stored binaryData_Specified;
    property client:             administrationClientOrg             Index (IS_OPTN or IS_UNQL) read Fclient write Setclient stored client_Specified;
    property clients:            Array_Of_administrationClientOrg    Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fclients write Setclients stored clients_Specified;
    property contentResources:   Array_Of_contentResource            Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcontentResources write SetcontentResources stored contentResources_Specified;
    property contentType:        string                              Index (IS_OPTN or IS_UNQL) read FcontentType write SetcontentType stored contentType_Specified;
    property datasources:        Array_Of_administrationDataSource   Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fdatasources write Setdatasources stored datasources_Specified;
    property entityId:           Integer                             Index (IS_OPTN or IS_UNQL) read FentityId write SetentityId stored entityId_Specified;
    property errorCode:          Integer                             Index (IS_OPTN or IS_UNQL) read FerrorCode write SeterrorCode stored errorCode_Specified;
    property fileName:           string                              Index (IS_OPTN or IS_UNQL) read FfileName write SetfileName stored fileName_Specified;
    property group:              administrationGroup                 Index (IS_OPTN or IS_UNQL) read Fgroup write Setgroup stored group_Specified;
    property groups:             Array_Of_administrationGroup        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fgroups write Setgroups stored groups_Specified;
    property importIssues:       Array_Of_importIssue                Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FimportIssues write SetimportIssues stored importIssues_Specified;
    property loadedDataSource:   administrationDataSource            Index (IS_OPTN or IS_UNQL) read FloadedDataSource write SetloadedDataSource stored loadedDataSource_Specified;
    property loginSessionId:     string                              Index (IS_OPTN or IS_UNQL) read FloginSessionId write SetloginSessionId stored loginSessionId_Specified;
    property messages:           reportRow                           Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fmessages write Setmessages stored messages_Specified;
    property parentDashboard:    parentDashboard                     Index (IS_OPTN or IS_UNQL) read FparentDashboard write SetparentDashboard stored parentDashboard_Specified;
    property parentDashboards:   Array_Of_parentDashboard            Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FparentDashboards write SetparentDashboards stored parentDashboards_Specified;
    property parentReportGroups: Array_Of_parentReportGroup          Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FparentReportGroups write SetparentReportGroups stored parentReportGroups_Specified;
    property people:             Array_Of_administrationPerson       Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fpeople write Setpeople stored people_Specified;
    property person:             administrationPerson                Index (IS_OPTN or IS_UNQL) read Fperson write Setperson stored person_Specified;
    property personfavourites:   Array_Of_personFavourite            Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fpersonfavourites write Setpersonfavourites stored personfavourites_Specified;
    property queryResults:       Array_Of_reportRow                  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FqueryResults write SetqueryResults stored queryResults_Specified;
    property report:             administrationReport                Index (IS_OPTN or IS_UNQL) read Freport write Setreport stored report_Specified;
    property reportGroups:       Array_Of_administrationReportGroup  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FreportGroups write SetreportGroups stored reportGroups_Specified;
    property reportId:           Integer                             Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property reports:            Array_Of_administrationReport       Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Freports write Setreports stored reports_Specified;
    property roles:              Array_Of_administrationRole         Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Froles write Setroles stored roles_Specified;
    property schedule:           administrationSchedule              Index (IS_OPTN or IS_UNQL) read Fschedule write Setschedule stored schedule_Specified;
    property schedules:          Array_Of_administrationSchedule     Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fschedules write Setschedules stored schedules_Specified;
    property sessionId:          string                              Index (IS_OPTN or IS_UNQL) read FsessionId write SetsessionId stored sessionId_Specified;
    property statusCode:         string                              Index (IS_OPTN or IS_UNQL) read FstatusCode write SetstatusCode stored statusCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : parentDashboard, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  parentDashboard = class(TRemotable)
  private
    FdashboardGroupId: Integer;
    FdashboardGroupId_Specified: boolean;
    FdashboardName: string;
    FdashboardName_Specified: boolean;
    FstatusCodes: reportRow;
    FstatusCodes_Specified: boolean;
    FtabIds: reportRow;
    FtabIds_Specified: boolean;
    FtabNames: reportRow;
    FtabNames_Specified: boolean;
    procedure SetdashboardGroupId(Index: Integer; const AInteger: Integer);
    function  dashboardGroupId_Specified(Index: Integer): boolean;
    procedure SetdashboardName(Index: Integer; const Astring: string);
    function  dashboardName_Specified(Index: Integer): boolean;
    procedure SetstatusCodes(Index: Integer; const AreportRow: reportRow);
    function  statusCodes_Specified(Index: Integer): boolean;
    procedure SettabIds(Index: Integer; const AreportRow: reportRow);
    function  tabIds_Specified(Index: Integer): boolean;
    procedure SettabNames(Index: Integer; const AreportRow: reportRow);
    function  tabNames_Specified(Index: Integer): boolean;
  published
    property dashboardGroupId: Integer    Index (IS_OPTN or IS_UNQL) read FdashboardGroupId write SetdashboardGroupId stored dashboardGroupId_Specified;
    property dashboardName:    string     Index (IS_OPTN or IS_UNQL) read FdashboardName write SetdashboardName stored dashboardName_Specified;
    property statusCodes:      reportRow  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FstatusCodes write SetstatusCodes stored statusCodes_Specified;
    property tabIds:           reportRow  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtabIds write SettabIds stored tabIds_Specified;
    property tabNames:         reportRow  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtabNames write SettabNames stored tabNames_Specified;
  end;



  // ************************************************************************ //
  // XML       : parentReportGroup, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  parentReportGroup = class(TRemotable)
  private
    FdisplayOrder: Integer;
    FdisplayOrder_Specified: boolean;
    FreportGroup: administrationReportGroup;
    FreportGroup_Specified: boolean;
    FreportGroupId: Integer;
    FreportGroupId_Specified: boolean;
    FreportGroupSubTabs: Array_Of_administrationReportGroup;
    FreportGroupSubTabs_Specified: boolean;
    FreportGroupUUID: string;
    FreportGroupUUID_Specified: boolean;
    procedure SetdisplayOrder(Index: Integer; const AInteger: Integer);
    function  displayOrder_Specified(Index: Integer): boolean;
    procedure SetreportGroup(Index: Integer; const AadministrationReportGroup: administrationReportGroup);
    function  reportGroup_Specified(Index: Integer): boolean;
    procedure SetreportGroupId(Index: Integer; const AInteger: Integer);
    function  reportGroupId_Specified(Index: Integer): boolean;
    procedure SetreportGroupSubTabs(Index: Integer; const AArray_Of_administrationReportGroup: Array_Of_administrationReportGroup);
    function  reportGroupSubTabs_Specified(Index: Integer): boolean;
    procedure SetreportGroupUUID(Index: Integer; const Astring: string);
    function  reportGroupUUID_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property displayOrder:       Integer                             Index (IS_OPTN or IS_UNQL) read FdisplayOrder write SetdisplayOrder stored displayOrder_Specified;
    property reportGroup:        administrationReportGroup           Index (IS_OPTN or IS_UNQL) read FreportGroup write SetreportGroup stored reportGroup_Specified;
    property reportGroupId:      Integer                             Index (IS_OPTN or IS_UNQL) read FreportGroupId write SetreportGroupId stored reportGroupId_Specified;
    property reportGroupSubTabs: Array_Of_administrationReportGroup  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FreportGroupSubTabs write SetreportGroupSubTabs stored reportGroupSubTabs_Specified;
    property reportGroupUUID:    string                              Index (IS_OPTN or IS_UNQL) read FreportGroupUUID write SetreportGroupUUID stored reportGroupUUID_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationPerson, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationPerson = class(TRemotable)
  private
    FemailAddress: string;
    FemailAddress_Specified: boolean;
    FfirstName: string;
    FfirstName_Specified: boolean;
    Finitial: string;
    Finitial_Specified: boolean;
    FipId: Integer;
    FipId_Specified: boolean;
    FlanguageCode: string;
    FlanguageCode_Specified: boolean;
    FlastName: string;
    FlastName_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    FroleCode: string;
    FroleCode_Specified: boolean;
    FsalutationCode: string;
    FsalutationCode_Specified: boolean;
    Fstatus: string;
    Fstatus_Specified: boolean;
    FtimeZoneCode: string;
    FtimeZoneCode_Specified: boolean;
    FuserId: string;
    FuserId_Specified: boolean;
    procedure SetemailAddress(Index: Integer; const Astring: string);
    function  emailAddress_Specified(Index: Integer): boolean;
    procedure SetfirstName(Index: Integer; const Astring: string);
    function  firstName_Specified(Index: Integer): boolean;
    procedure Setinitial(Index: Integer; const Astring: string);
    function  initial_Specified(Index: Integer): boolean;
    procedure SetipId(Index: Integer; const AInteger: Integer);
    function  ipId_Specified(Index: Integer): boolean;
    procedure SetlanguageCode(Index: Integer; const Astring: string);
    function  languageCode_Specified(Index: Integer): boolean;
    procedure SetlastName(Index: Integer; const Astring: string);
    function  lastName_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure SetroleCode(Index: Integer; const Astring: string);
    function  roleCode_Specified(Index: Integer): boolean;
    procedure SetsalutationCode(Index: Integer; const Astring: string);
    function  salutationCode_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const Astring: string);
    function  status_Specified(Index: Integer): boolean;
    procedure SettimeZoneCode(Index: Integer; const Astring: string);
    function  timeZoneCode_Specified(Index: Integer): boolean;
    procedure SetuserId(Index: Integer; const Astring: string);
    function  userId_Specified(Index: Integer): boolean;
  published
    property emailAddress:   string   Index (IS_OPTN or IS_UNQL) read FemailAddress write SetemailAddress stored emailAddress_Specified;
    property firstName:      string   Index (IS_OPTN or IS_UNQL) read FfirstName write SetfirstName stored firstName_Specified;
    property initial:        string   Index (IS_OPTN or IS_UNQL) read Finitial write Setinitial stored initial_Specified;
    property ipId:           Integer  Index (IS_OPTN or IS_UNQL) read FipId write SetipId stored ipId_Specified;
    property languageCode:   string   Index (IS_OPTN or IS_UNQL) read FlanguageCode write SetlanguageCode stored languageCode_Specified;
    property lastName:       string   Index (IS_OPTN or IS_UNQL) read FlastName write SetlastName stored lastName_Specified;
    property password:       string   Index (IS_OPTN or IS_UNQL) read Fpassword write Setpassword stored password_Specified;
    property roleCode:       string   Index (IS_OPTN or IS_UNQL) read FroleCode write SetroleCode stored roleCode_Specified;
    property salutationCode: string   Index (IS_OPTN or IS_UNQL) read FsalutationCode write SetsalutationCode stored salutationCode_Specified;
    property status:         string   Index (IS_OPTN or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
    property timeZoneCode:   string   Index (IS_OPTN or IS_UNQL) read FtimeZoneCode write SettimeZoneCode stored timeZoneCode_Specified;
    property userId:         string   Index (IS_OPTN or IS_UNQL) read FuserId write SetuserId stored userId_Specified;
  end;



  // ************************************************************************ //
  // XML       : personFavourite, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  personFavourite = class(TRemotable)
  private
    FcontentId: Integer;
    FcontentId_Specified: boolean;
    FcontentType: string;
    FcontentType_Specified: boolean;
    FcreationCode: string;
    FcreationCode_Specified: boolean;
    FcreationDate: string;
    FcreationDate_Specified: boolean;
    FcreatorId: Integer;
    FcreatorId_Specified: boolean;
    FfavouriteType: string;
    FfavouriteType_Specified: boolean;
    FinstanceId: Integer;
    FinstanceId_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FpersonId: Integer;
    FpersonId_Specified: boolean;
    Fsubject: string;
    Fsubject_Specified: boolean;
    FtextEntityId: Integer;
    FtextEntityId_Specified: boolean;
    FwidthCode: string;
    FwidthCode_Specified: boolean;
    procedure SetcontentId(Index: Integer; const AInteger: Integer);
    function  contentId_Specified(Index: Integer): boolean;
    procedure SetcontentType(Index: Integer; const Astring: string);
    function  contentType_Specified(Index: Integer): boolean;
    procedure SetcreationCode(Index: Integer; const Astring: string);
    function  creationCode_Specified(Index: Integer): boolean;
    procedure SetcreationDate(Index: Integer; const Astring: string);
    function  creationDate_Specified(Index: Integer): boolean;
    procedure SetcreatorId(Index: Integer; const AInteger: Integer);
    function  creatorId_Specified(Index: Integer): boolean;
    procedure SetfavouriteType(Index: Integer; const Astring: string);
    function  favouriteType_Specified(Index: Integer): boolean;
    procedure SetinstanceId(Index: Integer; const AInteger: Integer);
    function  instanceId_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetpersonId(Index: Integer; const AInteger: Integer);
    function  personId_Specified(Index: Integer): boolean;
    procedure Setsubject(Index: Integer; const Astring: string);
    function  subject_Specified(Index: Integer): boolean;
    procedure SettextEntityId(Index: Integer; const AInteger: Integer);
    function  textEntityId_Specified(Index: Integer): boolean;
    procedure SetwidthCode(Index: Integer; const Astring: string);
    function  widthCode_Specified(Index: Integer): boolean;
  published
    property contentId:     Integer  Index (IS_OPTN or IS_UNQL) read FcontentId write SetcontentId stored contentId_Specified;
    property contentType:   string   Index (IS_OPTN or IS_UNQL) read FcontentType write SetcontentType stored contentType_Specified;
    property creationCode:  string   Index (IS_OPTN or IS_UNQL) read FcreationCode write SetcreationCode stored creationCode_Specified;
    property creationDate:  string   Index (IS_OPTN or IS_UNQL) read FcreationDate write SetcreationDate stored creationDate_Specified;
    property creatorId:     Integer  Index (IS_OPTN or IS_UNQL) read FcreatorId write SetcreatorId stored creatorId_Specified;
    property favouriteType: string   Index (IS_OPTN or IS_UNQL) read FfavouriteType write SetfavouriteType stored favouriteType_Specified;
    property instanceId:    Integer  Index (IS_OPTN or IS_UNQL) read FinstanceId write SetinstanceId stored instanceId_Specified;
    property message_:      string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property personId:      Integer  Index (IS_OPTN or IS_UNQL) read FpersonId write SetpersonId stored personId_Specified;
    property subject:       string   Index (IS_OPTN or IS_UNQL) read Fsubject write Setsubject stored subject_Specified;
    property textEntityId:  Integer  Index (IS_OPTN or IS_UNQL) read FtextEntityId write SettextEntityId stored textEntityId_Specified;
    property widthCode:     string   Index (IS_OPTN or IS_UNQL) read FwidthCode write SetwidthCode stored widthCode_Specified;
  end;

  Array_Of_int = array of Integer;              { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : administrationReportGroup, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationReportGroup = class(TRemotable)
  private
    FassociatedReports: Array_Of_int;
    FassociatedReports_Specified: boolean;
    FgroupReports: Array_Of_administrationReport;
    FgroupReports_Specified: boolean;
    FpublishUUID: string;
    FpublishUUID_Specified: boolean;
    FreportGroupId: Integer;
    FreportGroupId_Specified: boolean;
    FreportGroupInternalReference: string;
    FreportGroupInternalReference_Specified: boolean;
    FreportGroupName: string;
    FreportGroupName_Specified: boolean;
    FreportGroupStatus: string;
    FreportGroupStatus_Specified: boolean;
    FreportGroupType: string;
    FreportGroupType_Specified: boolean;
    procedure SetassociatedReports(Index: Integer; const AArray_Of_int: Array_Of_int);
    function  associatedReports_Specified(Index: Integer): boolean;
    procedure SetgroupReports(Index: Integer; const AArray_Of_administrationReport: Array_Of_administrationReport);
    function  groupReports_Specified(Index: Integer): boolean;
    procedure SetpublishUUID(Index: Integer; const Astring: string);
    function  publishUUID_Specified(Index: Integer): boolean;
    procedure SetreportGroupId(Index: Integer; const AInteger: Integer);
    function  reportGroupId_Specified(Index: Integer): boolean;
    procedure SetreportGroupInternalReference(Index: Integer; const Astring: string);
    function  reportGroupInternalReference_Specified(Index: Integer): boolean;
    procedure SetreportGroupName(Index: Integer; const Astring: string);
    function  reportGroupName_Specified(Index: Integer): boolean;
    procedure SetreportGroupStatus(Index: Integer; const Astring: string);
    function  reportGroupStatus_Specified(Index: Integer): boolean;
    procedure SetreportGroupType(Index: Integer; const Astring: string);
    function  reportGroupType_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property associatedReports:            Array_Of_int                   Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FassociatedReports write SetassociatedReports stored associatedReports_Specified;
    property groupReports:                 Array_Of_administrationReport  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgroupReports write SetgroupReports stored groupReports_Specified;
    property publishUUID:                  string                         Index (IS_OPTN or IS_UNQL) read FpublishUUID write SetpublishUUID stored publishUUID_Specified;
    property reportGroupId:                Integer                        Index (IS_OPTN or IS_UNQL) read FreportGroupId write SetreportGroupId stored reportGroupId_Specified;
    property reportGroupInternalReference: string                         Index (IS_OPTN or IS_UNQL) read FreportGroupInternalReference write SetreportGroupInternalReference stored reportGroupInternalReference_Specified;
    property reportGroupName:              string                         Index (IS_OPTN or IS_UNQL) read FreportGroupName write SetreportGroupName stored reportGroupName_Specified;
    property reportGroupStatus:            string                         Index (IS_OPTN or IS_UNQL) read FreportGroupStatus write SetreportGroupStatus stored reportGroupStatus_Specified;
    property reportGroupType:              string                         Index (IS_OPTN or IS_UNQL) read FreportGroupType write SetreportGroupType stored reportGroupType_Specified;
  end;



  // ************************************************************************ //
  // XML       : contentResource, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  contentResource = class(TRemotable)
  private
    FresourceCode: string;
    FresourceCode_Specified: boolean;
    FresourceDescription: string;
    FresourceDescription_Specified: boolean;
    FresourceId: Integer;
    FresourceId_Specified: boolean;
    FresourceName: string;
    FresourceName_Specified: boolean;
    FresourceOrgId: Integer;
    FresourceOrgId_Specified: boolean;
    FresourceSubType: string;
    FresourceSubType_Specified: boolean;
    FresourceType: string;
    FresourceType_Specified: boolean;
    FresourceUUID: string;
    FresourceUUID_Specified: boolean;
    procedure SetresourceCode(Index: Integer; const Astring: string);
    function  resourceCode_Specified(Index: Integer): boolean;
    procedure SetresourceDescription(Index: Integer; const Astring: string);
    function  resourceDescription_Specified(Index: Integer): boolean;
    procedure SetresourceId(Index: Integer; const AInteger: Integer);
    function  resourceId_Specified(Index: Integer): boolean;
    procedure SetresourceName(Index: Integer; const Astring: string);
    function  resourceName_Specified(Index: Integer): boolean;
    procedure SetresourceOrgId(Index: Integer; const AInteger: Integer);
    function  resourceOrgId_Specified(Index: Integer): boolean;
    procedure SetresourceSubType(Index: Integer; const Astring: string);
    function  resourceSubType_Specified(Index: Integer): boolean;
    procedure SetresourceType(Index: Integer; const Astring: string);
    function  resourceType_Specified(Index: Integer): boolean;
    procedure SetresourceUUID(Index: Integer; const Astring: string);
    function  resourceUUID_Specified(Index: Integer): boolean;
  published
    property resourceCode:        string   Index (IS_OPTN or IS_UNQL) read FresourceCode write SetresourceCode stored resourceCode_Specified;
    property resourceDescription: string   Index (IS_OPTN or IS_UNQL) read FresourceDescription write SetresourceDescription stored resourceDescription_Specified;
    property resourceId:          Integer  Index (IS_OPTN or IS_UNQL) read FresourceId write SetresourceId stored resourceId_Specified;
    property resourceName:        string   Index (IS_OPTN or IS_UNQL) read FresourceName write SetresourceName stored resourceName_Specified;
    property resourceOrgId:       Integer  Index (IS_OPTN or IS_UNQL) read FresourceOrgId write SetresourceOrgId stored resourceOrgId_Specified;
    property resourceSubType:     string   Index (IS_OPTN or IS_UNQL) read FresourceSubType write SetresourceSubType stored resourceSubType_Specified;
    property resourceType:        string   Index (IS_OPTN or IS_UNQL) read FresourceType write SetresourceType stored resourceType_Specified;
    property resourceUUID:        string   Index (IS_OPTN or IS_UNQL) read FresourceUUID write SetresourceUUID stored resourceUUID_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationCacheCommand, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationCacheCommand = class(TRemotable)
  private
    FcacheType: string;
    FcacheType_Specified: boolean;
    FcommandArgs: commandArgs;
    FcommandType: string;
    FcommandType_Specified: boolean;
    procedure SetcacheType(Index: Integer; const Astring: string);
    function  cacheType_Specified(Index: Integer): boolean;
    procedure SetcommandType(Index: Integer; const Astring: string);
    function  commandType_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cacheType:   string       Index (IS_OPTN or IS_UNQL) read FcacheType write SetcacheType stored cacheType_Specified;
    property commandArgs: commandArgs  Index (IS_UNQL) read FcommandArgs write FcommandArgs;
    property commandType: string       Index (IS_OPTN or IS_UNQL) read FcommandType write SetcommandType stored commandType_Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  Exception2 = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : scheduleFrequency, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  scheduleFrequency = class(TRemotable)
  private
    FfrequencyCode: string;
    FfrequencyCode_Specified: boolean;
    FfrequencyTypeCode: string;
    FfrequencyTypeCode_Specified: boolean;
    FfrequencyUnit: Integer;
    FfrequencyUnit_Specified: boolean;
    FlocalRunTime: Integer;
    FlocalRunTime_Specified: boolean;
    FlocalTimezoneCode: string;
    FlocalTimezoneCode_Specified: boolean;
    procedure SetfrequencyCode(Index: Integer; const Astring: string);
    function  frequencyCode_Specified(Index: Integer): boolean;
    procedure SetfrequencyTypeCode(Index: Integer; const Astring: string);
    function  frequencyTypeCode_Specified(Index: Integer): boolean;
    procedure SetfrequencyUnit(Index: Integer; const AInteger: Integer);
    function  frequencyUnit_Specified(Index: Integer): boolean;
    procedure SetlocalRunTime(Index: Integer; const AInteger: Integer);
    function  localRunTime_Specified(Index: Integer): boolean;
    procedure SetlocalTimezoneCode(Index: Integer; const Astring: string);
    function  localTimezoneCode_Specified(Index: Integer): boolean;
  published
    property frequencyCode:     string   Index (IS_OPTN or IS_UNQL) read FfrequencyCode write SetfrequencyCode stored frequencyCode_Specified;
    property frequencyTypeCode: string   Index (IS_OPTN or IS_UNQL) read FfrequencyTypeCode write SetfrequencyTypeCode stored frequencyTypeCode_Specified;
    property frequencyUnit:     Integer  Index (IS_OPTN or IS_UNQL) read FfrequencyUnit write SetfrequencyUnit stored frequencyUnit_Specified;
    property localRunTime:      Integer  Index (IS_OPTN or IS_UNQL) read FlocalRunTime write SetlocalRunTime stored localRunTime_Specified;
    property localTimezoneCode: string   Index (IS_OPTN or IS_UNQL) read FlocalTimezoneCode write SetlocalTimezoneCode stored localTimezoneCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  entry2 = class(TRemotable)
  private
    Fkey: string;
    Fkey_Specified: boolean;
    Fvalue: string;
    Fvalue_Specified: boolean;
    procedure Setkey(Index: Integer; const Astring: string);
    function  key_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function  value_Specified(Index: Integer): boolean;
  published
    property key:   string  Index (IS_OPTN or IS_UNQL) read Fkey write Setkey stored key_Specified;
    property value: string  Index (IS_OPTN or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;

  roleFunctionList = array of entry2;           { "http://webservices.web.mi.hof.com/"[Cplx] }


  // ************************************************************************ //
  // XML       : importOption, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  importOption = class(TRemotable)
  private
    FitemIndex: Integer;
    FitemIndex_Specified: boolean;
    FoptionKey: string;
    FoptionKey_Specified: boolean;
    FoptionValue: string;
    FoptionValue_Specified: boolean;
    procedure SetitemIndex(Index: Integer; const AInteger: Integer);
    function  itemIndex_Specified(Index: Integer): boolean;
    procedure SetoptionKey(Index: Integer; const Astring: string);
    function  optionKey_Specified(Index: Integer): boolean;
    procedure SetoptionValue(Index: Integer; const Astring: string);
    function  optionValue_Specified(Index: Integer): boolean;
  published
    property itemIndex:   Integer  Index (IS_OPTN or IS_UNQL) read FitemIndex write SetitemIndex stored itemIndex_Specified;
    property optionKey:   string   Index (IS_OPTN or IS_UNQL) read FoptionKey write SetoptionKey stored optionKey_Specified;
    property optionValue: string   Index (IS_OPTN or IS_UNQL) read FoptionValue write SetoptionValue stored optionValue_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationViewField, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationViewField = class(TRemotable)
  private
    FfieldCategory: string;
    FfieldCategory_Specified: boolean;
    FfieldId: Integer;
    FfieldId_Specified: boolean;
    FlongDescription: string;
    FlongDescription_Specified: boolean;
    FshortDescription: string;
    FshortDescription_Specified: boolean;
    procedure SetfieldCategory(Index: Integer; const Astring: string);
    function  fieldCategory_Specified(Index: Integer): boolean;
    procedure SetfieldId(Index: Integer; const AInteger: Integer);
    function  fieldId_Specified(Index: Integer): boolean;
    procedure SetlongDescription(Index: Integer; const Astring: string);
    function  longDescription_Specified(Index: Integer): boolean;
    procedure SetshortDescription(Index: Integer; const Astring: string);
    function  shortDescription_Specified(Index: Integer): boolean;
  published
    property fieldCategory:    string   Index (IS_OPTN or IS_UNQL) read FfieldCategory write SetfieldCategory stored fieldCategory_Specified;
    property fieldId:          Integer  Index (IS_OPTN or IS_UNQL) read FfieldId write SetfieldId stored fieldId_Specified;
    property longDescription:  string   Index (IS_OPTN or IS_UNQL) read FlongDescription write SetlongDescription stored longDescription_Specified;
    property shortDescription: string   Index (IS_OPTN or IS_UNQL) read FshortDescription write SetshortDescription stored shortDescription_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationFunction, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationFunction = class(TRemotable)
  private
    FaccessLevelCode: string;
    FaccessLevelCode_Specified: boolean;
    FfunctionCode: string;
    FfunctionCode_Specified: boolean;
    FfunctionDescription: string;
    FfunctionDescription_Specified: boolean;
    FfunctionName: string;
    FfunctionName_Specified: boolean;
    FfunctionTypeCode: string;
    FfunctionTypeCode_Specified: boolean;
    procedure SetaccessLevelCode(Index: Integer; const Astring: string);
    function  accessLevelCode_Specified(Index: Integer): boolean;
    procedure SetfunctionCode(Index: Integer; const Astring: string);
    function  functionCode_Specified(Index: Integer): boolean;
    procedure SetfunctionDescription(Index: Integer; const Astring: string);
    function  functionDescription_Specified(Index: Integer): boolean;
    procedure SetfunctionName(Index: Integer; const Astring: string);
    function  functionName_Specified(Index: Integer): boolean;
    procedure SetfunctionTypeCode(Index: Integer; const Astring: string);
    function  functionTypeCode_Specified(Index: Integer): boolean;
  published
    property accessLevelCode:     string  Index (IS_OPTN or IS_UNQL) read FaccessLevelCode write SetaccessLevelCode stored accessLevelCode_Specified;
    property functionCode:        string  Index (IS_OPTN or IS_UNQL) read FfunctionCode write SetfunctionCode stored functionCode_Specified;
    property functionDescription: string  Index (IS_OPTN or IS_UNQL) read FfunctionDescription write SetfunctionDescription stored functionDescription_Specified;
    property functionName:        string  Index (IS_OPTN or IS_UNQL) read FfunctionName write SetfunctionName stored functionName_Specified;
    property functionTypeCode:    string  Index (IS_OPTN or IS_UNQL) read FfunctionTypeCode write SetfunctionTypeCode stored functionTypeCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationDataSourceClientLink, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationDataSourceClientLink = class(TRemotable)
  private
    FclientOrgId: Integer;
    FclientOrgId_Specified: boolean;
    FclientOrgName: string;
    FclientOrgName_Specified: boolean;
    FclientOrgRef: string;
    FclientOrgRef_Specified: boolean;
    FsourceId: Integer;
    FsourceId_Specified: boolean;
    FsourceName: string;
    FsourceName_Specified: boolean;
    procedure SetclientOrgId(Index: Integer; const AInteger: Integer);
    function  clientOrgId_Specified(Index: Integer): boolean;
    procedure SetclientOrgName(Index: Integer; const Astring: string);
    function  clientOrgName_Specified(Index: Integer): boolean;
    procedure SetclientOrgRef(Index: Integer; const Astring: string);
    function  clientOrgRef_Specified(Index: Integer): boolean;
    procedure SetsourceId(Index: Integer; const AInteger: Integer);
    function  sourceId_Specified(Index: Integer): boolean;
    procedure SetsourceName(Index: Integer; const Astring: string);
    function  sourceName_Specified(Index: Integer): boolean;
  published
    property clientOrgId:   Integer  Index (IS_OPTN or IS_UNQL) read FclientOrgId write SetclientOrgId stored clientOrgId_Specified;
    property clientOrgName: string   Index (IS_OPTN or IS_UNQL) read FclientOrgName write SetclientOrgName stored clientOrgName_Specified;
    property clientOrgRef:  string   Index (IS_OPTN or IS_UNQL) read FclientOrgRef write SetclientOrgRef stored clientOrgRef_Specified;
    property sourceId:      Integer  Index (IS_OPTN or IS_UNQL) read FsourceId write SetsourceId stored sourceId_Specified;
    property sourceName:    string   Index (IS_OPTN or IS_UNQL) read FsourceName write SetsourceName stored sourceName_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationDataSource, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationDataSource = class(TRemotable)
  private
    FaccessLevelCode: string;
    FaccessLevelCode_Specified: boolean;
    FclientSources: Array_Of_administrationDataSourceClientLink;
    FclientSources_Specified: boolean;
    FconnectionDriver: string;
    FconnectionDriver_Specified: boolean;
    FconnectionPath: string;
    FconnectionPath_Specified: boolean;
    FconnectionString: string;
    FconnectionString_Specified: boolean;
    FconnectionTimeout: Integer;
    FconnectionTimeout_Specified: boolean;
    FconnectionType: string;
    FconnectionType_Specified: boolean;
    FconnectionTypeCode: string;
    FconnectionTypeCode_Specified: boolean;
    FinheritChildSourceFilters: Boolean;
    FlogFile: string;
    FlogFile_Specified: boolean;
    FmaxAnalysisRows: Integer;
    FmaxAnalysisRows_Specified: boolean;
    FmaxRows: Integer;
    FmaxRows_Specified: boolean;
    FmaxmimumConnections: Integer;
    FmaxmimumConnections_Specified: boolean;
    FminimumConnections: Integer;
    FminimumConnections_Specified: boolean;
    FrefreshTime: Integer;
    FrefreshTime_Specified: boolean;
    FsourceDescription: string;
    FsourceDescription_Specified: boolean;
    FsourceId: Integer;
    FsourceId_Specified: boolean;
    FsourceName: string;
    FsourceName_Specified: boolean;
    FsourceOptions: Array_Of_administrationDataSourceOption;
    FsourceOptions_Specified: boolean;
    FsourceType: string;
    FsourceType_Specified: boolean;
    Ftimezone: string;
    Ftimezone_Specified: boolean;
    FuserName: string;
    FuserName_Specified: boolean;
    FuserPassword: string;
    FuserPassword_Specified: boolean;
    procedure SetaccessLevelCode(Index: Integer; const Astring: string);
    function  accessLevelCode_Specified(Index: Integer): boolean;
    procedure SetclientSources(Index: Integer; const AArray_Of_administrationDataSourceClientLink: Array_Of_administrationDataSourceClientLink);
    function  clientSources_Specified(Index: Integer): boolean;
    procedure SetconnectionDriver(Index: Integer; const Astring: string);
    function  connectionDriver_Specified(Index: Integer): boolean;
    procedure SetconnectionPath(Index: Integer; const Astring: string);
    function  connectionPath_Specified(Index: Integer): boolean;
    procedure SetconnectionString(Index: Integer; const Astring: string);
    function  connectionString_Specified(Index: Integer): boolean;
    procedure SetconnectionTimeout(Index: Integer; const AInteger: Integer);
    function  connectionTimeout_Specified(Index: Integer): boolean;
    procedure SetconnectionType(Index: Integer; const Astring: string);
    function  connectionType_Specified(Index: Integer): boolean;
    procedure SetconnectionTypeCode(Index: Integer; const Astring: string);
    function  connectionTypeCode_Specified(Index: Integer): boolean;
    procedure SetlogFile(Index: Integer; const Astring: string);
    function  logFile_Specified(Index: Integer): boolean;
    procedure SetmaxAnalysisRows(Index: Integer; const AInteger: Integer);
    function  maxAnalysisRows_Specified(Index: Integer): boolean;
    procedure SetmaxRows(Index: Integer; const AInteger: Integer);
    function  maxRows_Specified(Index: Integer): boolean;
    procedure SetmaxmimumConnections(Index: Integer; const AInteger: Integer);
    function  maxmimumConnections_Specified(Index: Integer): boolean;
    procedure SetminimumConnections(Index: Integer; const AInteger: Integer);
    function  minimumConnections_Specified(Index: Integer): boolean;
    procedure SetrefreshTime(Index: Integer; const AInteger: Integer);
    function  refreshTime_Specified(Index: Integer): boolean;
    procedure SetsourceDescription(Index: Integer; const Astring: string);
    function  sourceDescription_Specified(Index: Integer): boolean;
    procedure SetsourceId(Index: Integer; const AInteger: Integer);
    function  sourceId_Specified(Index: Integer): boolean;
    procedure SetsourceName(Index: Integer; const Astring: string);
    function  sourceName_Specified(Index: Integer): boolean;
    procedure SetsourceOptions(Index: Integer; const AArray_Of_administrationDataSourceOption: Array_Of_administrationDataSourceOption);
    function  sourceOptions_Specified(Index: Integer): boolean;
    procedure SetsourceType(Index: Integer; const Astring: string);
    function  sourceType_Specified(Index: Integer): boolean;
    procedure Settimezone(Index: Integer; const Astring: string);
    function  timezone_Specified(Index: Integer): boolean;
    procedure SetuserName(Index: Integer; const Astring: string);
    function  userName_Specified(Index: Integer): boolean;
    procedure SetuserPassword(Index: Integer; const Astring: string);
    function  userPassword_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property accessLevelCode:           string                                       Index (IS_OPTN or IS_UNQL) read FaccessLevelCode write SetaccessLevelCode stored accessLevelCode_Specified;
    property clientSources:             Array_Of_administrationDataSourceClientLink  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FclientSources write SetclientSources stored clientSources_Specified;
    property connectionDriver:          string                                       Index (IS_OPTN or IS_UNQL) read FconnectionDriver write SetconnectionDriver stored connectionDriver_Specified;
    property connectionPath:            string                                       Index (IS_OPTN or IS_UNQL) read FconnectionPath write SetconnectionPath stored connectionPath_Specified;
    property connectionString:          string                                       Index (IS_OPTN or IS_UNQL) read FconnectionString write SetconnectionString stored connectionString_Specified;
    property connectionTimeout:         Integer                                      Index (IS_OPTN or IS_UNQL) read FconnectionTimeout write SetconnectionTimeout stored connectionTimeout_Specified;
    property connectionType:            string                                       Index (IS_OPTN or IS_UNQL) read FconnectionType write SetconnectionType stored connectionType_Specified;
    property connectionTypeCode:        string                                       Index (IS_OPTN or IS_UNQL) read FconnectionTypeCode write SetconnectionTypeCode stored connectionTypeCode_Specified;
    property inheritChildSourceFilters: Boolean                                      Index (IS_UNQL) read FinheritChildSourceFilters write FinheritChildSourceFilters;
    property logFile:                   string                                       Index (IS_OPTN or IS_UNQL) read FlogFile write SetlogFile stored logFile_Specified;
    property maxAnalysisRows:           Integer                                      Index (IS_OPTN or IS_UNQL) read FmaxAnalysisRows write SetmaxAnalysisRows stored maxAnalysisRows_Specified;
    property maxRows:                   Integer                                      Index (IS_OPTN or IS_UNQL) read FmaxRows write SetmaxRows stored maxRows_Specified;
    property maxmimumConnections:       Integer                                      Index (IS_OPTN or IS_UNQL) read FmaxmimumConnections write SetmaxmimumConnections stored maxmimumConnections_Specified;
    property minimumConnections:        Integer                                      Index (IS_OPTN or IS_UNQL) read FminimumConnections write SetminimumConnections stored minimumConnections_Specified;
    property refreshTime:               Integer                                      Index (IS_OPTN or IS_UNQL) read FrefreshTime write SetrefreshTime stored refreshTime_Specified;
    property sourceDescription:         string                                       Index (IS_OPTN or IS_UNQL) read FsourceDescription write SetsourceDescription stored sourceDescription_Specified;
    property sourceId:                  Integer                                      Index (IS_OPTN or IS_UNQL) read FsourceId write SetsourceId stored sourceId_Specified;
    property sourceName:                string                                       Index (IS_OPTN or IS_UNQL) read FsourceName write SetsourceName stored sourceName_Specified;
    property sourceOptions:             Array_Of_administrationDataSourceOption      Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FsourceOptions write SetsourceOptions stored sourceOptions_Specified;
    property sourceType:                string                                       Index (IS_OPTN or IS_UNQL) read FsourceType write SetsourceType stored sourceType_Specified;
    property timezone:                  string                                       Index (IS_OPTN or IS_UNQL) read Ftimezone write Settimezone stored timezone_Specified;
    property userName:                  string                                       Index (IS_OPTN or IS_UNQL) read FuserName write SetuserName stored userName_Specified;
    property userPassword:              string                                       Index (IS_OPTN or IS_UNQL) read FuserPassword write SetuserPassword stored userPassword_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationClientOrg, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationClientOrg = class(TRemotable)
  private
    FclientId: Integer;
    FclientId_Specified: boolean;
    FclientName: string;
    FclientName_Specified: boolean;
    FclientReferenceId: string;
    FclientReferenceId_Specified: boolean;
    FdefaultOrg: Boolean;
    FtimeZoneCode: string;
    FtimeZoneCode_Specified: boolean;
    procedure SetclientId(Index: Integer; const AInteger: Integer);
    function  clientId_Specified(Index: Integer): boolean;
    procedure SetclientName(Index: Integer; const Astring: string);
    function  clientName_Specified(Index: Integer): boolean;
    procedure SetclientReferenceId(Index: Integer; const Astring: string);
    function  clientReferenceId_Specified(Index: Integer): boolean;
    procedure SettimeZoneCode(Index: Integer; const Astring: string);
    function  timeZoneCode_Specified(Index: Integer): boolean;
  published
    property clientId:          Integer  Index (IS_OPTN or IS_UNQL) read FclientId write SetclientId stored clientId_Specified;
    property clientName:        string   Index (IS_OPTN or IS_UNQL) read FclientName write SetclientName stored clientName_Specified;
    property clientReferenceId: string   Index (IS_OPTN or IS_UNQL) read FclientReferenceId write SetclientReferenceId stored clientReferenceId_Specified;
    property defaultOrg:        Boolean  Index (IS_UNQL) read FdefaultOrg write FdefaultOrg;
    property timeZoneCode:      string   Index (IS_OPTN or IS_UNQL) read FtimeZoneCode write SettimeZoneCode stored timeZoneCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationServiceRequest, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationServiceRequest = class(TRemotable)
  private
    FbinaryData: TByteSOAPArray;
    FbinaryData_Specified: boolean;
    FcacheCommands: Array_Of_administrationCacheCommand;
    FcacheCommands_Specified: boolean;
    Fclient: administrationClientOrg;
    Fclient_Specified: boolean;
    FcontentResources: Array_Of_contentResource;
    FcontentResources_Specified: boolean;
    FcustomParameters: string;
    FcustomParameters_Specified: boolean;
    FdashboardTabId: Integer;
    FdashboardTabId_Specified: boolean;
    Fdatasource: administrationDataSource;
    Fdatasource_Specified: boolean;
    Ffavourite: personFavourite;
    Ffavourite_Specified: boolean;
    Ffield: administrationViewField;
    Ffield_Specified: boolean;
    Ffunction_: string;
    Ffunction__Specified: boolean;
    Fgroup: administrationGroup;
    Fgroup_Specified: boolean;
    FimportOptions: Array_Of_importOption;
    FimportOptions_Specified: boolean;
    FloginId: string;
    FloginId_Specified: boolean;
    FloginSessionId: string;
    FloginSessionId_Specified: boolean;
    Fntlm: Boolean;
    ForgId: Integer;
    ForgId_Specified: boolean;
    ForgRef: string;
    ForgRef_Specified: boolean;
    Fparameters: reportRow;
    Fparameters_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    Fpeople: Array_Of_administrationPerson;
    Fpeople_Specified: boolean;
    Fperson: administrationPerson;
    Fperson_Specified: boolean;
    Fquery: string;
    Fquery_Specified: boolean;
    FreassignContentIpPerson: Integer;
    FreassignContentIpPerson_Specified: boolean;
    Freport: administrationReport;
    Freport_Specified: boolean;
    FreportGroup: administrationReportGroup;
    FreportGroup_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    FretrospectiveDays: Integer;
    FretrospectiveDays_Specified: boolean;
    Frole: administrationRole;
    Frole_Specified: boolean;
    FroleFunctionList: roleFunctionList;
    Fschedule: administrationSchedule;
    Fschedule_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    FsourceClientLink: administrationDataSourceClientLink;
    FsourceClientLink_Specified: boolean;
    FsourceId: Integer;
    FsourceId_Specified: boolean;
    Ftask: administrationTask;
    Ftask_Specified: boolean;
    FviewId: Integer;
    FviewId_Specified: boolean;
    FyellowfinContentExportFileType: string;
    FyellowfinContentExportFileType_Specified: boolean;
    procedure SetbinaryData(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  binaryData_Specified(Index: Integer): boolean;
    procedure SetcacheCommands(Index: Integer; const AArray_Of_administrationCacheCommand: Array_Of_administrationCacheCommand);
    function  cacheCommands_Specified(Index: Integer): boolean;
    procedure Setclient(Index: Integer; const AadministrationClientOrg: administrationClientOrg);
    function  client_Specified(Index: Integer): boolean;
    procedure SetcontentResources(Index: Integer; const AArray_Of_contentResource: Array_Of_contentResource);
    function  contentResources_Specified(Index: Integer): boolean;
    procedure SetcustomParameters(Index: Integer; const Astring: string);
    function  customParameters_Specified(Index: Integer): boolean;
    procedure SetdashboardTabId(Index: Integer; const AInteger: Integer);
    function  dashboardTabId_Specified(Index: Integer): boolean;
    procedure Setdatasource(Index: Integer; const AadministrationDataSource: administrationDataSource);
    function  datasource_Specified(Index: Integer): boolean;
    procedure Setfavourite(Index: Integer; const ApersonFavourite: personFavourite);
    function  favourite_Specified(Index: Integer): boolean;
    procedure Setfield(Index: Integer; const AadministrationViewField: administrationViewField);
    function  field_Specified(Index: Integer): boolean;
    procedure Setfunction_(Index: Integer; const Astring: string);
    function  function__Specified(Index: Integer): boolean;
    procedure Setgroup(Index: Integer; const AadministrationGroup: administrationGroup);
    function  group_Specified(Index: Integer): boolean;
    procedure SetimportOptions(Index: Integer; const AArray_Of_importOption: Array_Of_importOption);
    function  importOptions_Specified(Index: Integer): boolean;
    procedure SetloginId(Index: Integer; const Astring: string);
    function  loginId_Specified(Index: Integer): boolean;
    procedure SetloginSessionId(Index: Integer; const Astring: string);
    function  loginSessionId_Specified(Index: Integer): boolean;
    procedure SetorgId(Index: Integer; const AInteger: Integer);
    function  orgId_Specified(Index: Integer): boolean;
    procedure SetorgRef(Index: Integer; const Astring: string);
    function  orgRef_Specified(Index: Integer): boolean;
    procedure Setparameters(Index: Integer; const AreportRow: reportRow);
    function  parameters_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure Setpeople(Index: Integer; const AArray_Of_administrationPerson: Array_Of_administrationPerson);
    function  people_Specified(Index: Integer): boolean;
    procedure Setperson(Index: Integer; const AadministrationPerson: administrationPerson);
    function  person_Specified(Index: Integer): boolean;
    procedure Setquery(Index: Integer; const Astring: string);
    function  query_Specified(Index: Integer): boolean;
    procedure SetreassignContentIpPerson(Index: Integer; const AInteger: Integer);
    function  reassignContentIpPerson_Specified(Index: Integer): boolean;
    procedure Setreport(Index: Integer; const AadministrationReport: administrationReport);
    function  report_Specified(Index: Integer): boolean;
    procedure SetreportGroup(Index: Integer; const AadministrationReportGroup: administrationReportGroup);
    function  reportGroup_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SetretrospectiveDays(Index: Integer; const AInteger: Integer);
    function  retrospectiveDays_Specified(Index: Integer): boolean;
    procedure Setrole(Index: Integer; const AadministrationRole: administrationRole);
    function  role_Specified(Index: Integer): boolean;
    procedure Setschedule(Index: Integer; const AadministrationSchedule: administrationSchedule);
    function  schedule_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
    procedure SetsourceClientLink(Index: Integer; const AadministrationDataSourceClientLink: administrationDataSourceClientLink);
    function  sourceClientLink_Specified(Index: Integer): boolean;
    procedure SetsourceId(Index: Integer; const AInteger: Integer);
    function  sourceId_Specified(Index: Integer): boolean;
    procedure Settask(Index: Integer; const AadministrationTask: administrationTask);
    function  task_Specified(Index: Integer): boolean;
    procedure SetviewId(Index: Integer; const AInteger: Integer);
    function  viewId_Specified(Index: Integer): boolean;
    procedure SetyellowfinContentExportFileType(Index: Integer; const Astring: string);
    function  yellowfinContentExportFileType_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property binaryData:                     TByteSOAPArray                       Index (IS_OPTN or IS_UNQL) read FbinaryData write SetbinaryData stored binaryData_Specified;
    property cacheCommands:                  Array_Of_administrationCacheCommand  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcacheCommands write SetcacheCommands stored cacheCommands_Specified;
    property client:                         administrationClientOrg              Index (IS_OPTN or IS_UNQL) read Fclient write Setclient stored client_Specified;
    property contentResources:               Array_Of_contentResource             Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcontentResources write SetcontentResources stored contentResources_Specified;
    property customParameters:               string                               Index (IS_OPTN or IS_UNQL) read FcustomParameters write SetcustomParameters stored customParameters_Specified;
    property dashboardTabId:                 Integer                              Index (IS_OPTN or IS_UNQL) read FdashboardTabId write SetdashboardTabId stored dashboardTabId_Specified;
    property datasource:                     administrationDataSource             Index (IS_OPTN or IS_UNQL) read Fdatasource write Setdatasource stored datasource_Specified;
    property favourite:                      personFavourite                      Index (IS_OPTN or IS_UNQL) read Ffavourite write Setfavourite stored favourite_Specified;
    property field:                          administrationViewField              Index (IS_OPTN or IS_UNQL) read Ffield write Setfield stored field_Specified;
    property function_:                      string                               Index (IS_OPTN or IS_UNQL) read Ffunction_ write Setfunction_ stored function__Specified;
    property group:                          administrationGroup                  Index (IS_OPTN or IS_UNQL) read Fgroup write Setgroup stored group_Specified;
    property importOptions:                  Array_Of_importOption                Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FimportOptions write SetimportOptions stored importOptions_Specified;
    property loginId:                        string                               Index (IS_OPTN or IS_UNQL) read FloginId write SetloginId stored loginId_Specified;
    property loginSessionId:                 string                               Index (IS_OPTN or IS_UNQL) read FloginSessionId write SetloginSessionId stored loginSessionId_Specified;
    property ntlm:                           Boolean                              Index (IS_UNQL) read Fntlm write Fntlm;
    property orgId:                          Integer                              Index (IS_OPTN or IS_UNQL) read ForgId write SetorgId stored orgId_Specified;
    property orgRef:                         string                               Index (IS_OPTN or IS_UNQL) read ForgRef write SetorgRef stored orgRef_Specified;
    property parameters:                     reportRow                            Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fparameters write Setparameters stored parameters_Specified;
    property password:                       string                               Index (IS_OPTN or IS_UNQL) read Fpassword write Setpassword stored password_Specified;
    property people:                         Array_Of_administrationPerson        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fpeople write Setpeople stored people_Specified;
    property person:                         administrationPerson                 Index (IS_OPTN or IS_UNQL) read Fperson write Setperson stored person_Specified;
    property query:                          string                               Index (IS_OPTN or IS_UNQL) read Fquery write Setquery stored query_Specified;
    property reassignContentIpPerson:        Integer                              Index (IS_OPTN or IS_UNQL) read FreassignContentIpPerson write SetreassignContentIpPerson stored reassignContentIpPerson_Specified;
    property report:                         administrationReport                 Index (IS_OPTN or IS_UNQL) read Freport write Setreport stored report_Specified;
    property reportGroup:                    administrationReportGroup            Index (IS_OPTN or IS_UNQL) read FreportGroup write SetreportGroup stored reportGroup_Specified;
    property reportId:                       Integer                              Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property retrospectiveDays:              Integer                              Index (IS_OPTN or IS_UNQL) read FretrospectiveDays write SetretrospectiveDays stored retrospectiveDays_Specified;
    property role:                           administrationRole                   Index (IS_OPTN or IS_UNQL) read Frole write Setrole stored role_Specified;
    property roleFunctionList:               roleFunctionList                     Index (IS_UNQL) read FroleFunctionList write FroleFunctionList;
    property schedule:                       administrationSchedule               Index (IS_OPTN or IS_UNQL) read Fschedule write Setschedule stored schedule_Specified;
    property sessionId:                      string                               Index (IS_OPTN or IS_UNQL) read FsessionId write SetsessionId stored sessionId_Specified;
    property sourceClientLink:               administrationDataSourceClientLink   Index (IS_OPTN or IS_UNQL) read FsourceClientLink write SetsourceClientLink stored sourceClientLink_Specified;
    property sourceId:                       Integer                              Index (IS_OPTN or IS_UNQL) read FsourceId write SetsourceId stored sourceId_Specified;
    property task:                           administrationTask                   Index (IS_OPTN or IS_UNQL) read Ftask write Settask stored task_Specified;
    property viewId:                         Integer                              Index (IS_OPTN or IS_UNQL) read FviewId write SetviewId stored viewId_Specified;
    property yellowfinContentExportFileType: string                               Index (IS_OPTN or IS_UNQL) read FyellowfinContentExportFileType write SetyellowfinContentExportFileType stored yellowfinContentExportFileType_Specified;
  end;



  // ************************************************************************ //
  // XML       : reportBinaryObject, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportBinaryObject = class(TRemotable)
  private
    FcontentType: string;
    FcontentType_Specified: boolean;
    Fdata: TByteSOAPArray;
    Fdata_Specified: boolean;
    Fkey: string;
    Fkey_Specified: boolean;
    procedure SetcontentType(Index: Integer; const Astring: string);
    function  contentType_Specified(Index: Integer): boolean;
    procedure Setdata(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  data_Specified(Index: Integer): boolean;
    procedure Setkey(Index: Integer; const Astring: string);
    function  key_Specified(Index: Integer): boolean;
  published
    property contentType: string          Index (IS_OPTN or IS_UNQL) read FcontentType write SetcontentType stored contentType_Specified;
    property data:        TByteSOAPArray  Index (IS_OPTN or IS_UNQL) read Fdata write Setdata stored data_Specified;
    property key:         string          Index (IS_OPTN or IS_UNQL) read Fkey write Setkey stored key_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationSchedule, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationSchedule = class(TRemotable)
  private
    Ffrequency: scheduleFrequency;
    Ffrequency_Specified: boolean;
    FlastRunDateTimeGMT: TXSDateTime;
    FlastRunDateTimeGMT_Specified: boolean;
    FlastRunError: string;
    FlastRunError_Specified: boolean;
    FlastRunStatus: string;
    FlastRunStatus_Specified: boolean;
    FnextRunDateTimeGMT: TXSDateTime;
    FnextRunDateTimeGMT_Specified: boolean;
    FparentScheduleUUID: string;
    FparentScheduleUUID_Specified: boolean;
    FscheduleActive: Boolean;
    FscheduleDescription: string;
    FscheduleDescription_Specified: boolean;
    FscheduleTypeCode: string;
    FscheduleTypeCode_Specified: boolean;
    FscheduleTypeName: string;
    FscheduleTypeName_Specified: boolean;
    FscheduleUUID: string;
    FscheduleUUID_Specified: boolean;
    procedure Setfrequency(Index: Integer; const AscheduleFrequency: scheduleFrequency);
    function  frequency_Specified(Index: Integer): boolean;
    procedure SetlastRunDateTimeGMT(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  lastRunDateTimeGMT_Specified(Index: Integer): boolean;
    procedure SetlastRunError(Index: Integer; const Astring: string);
    function  lastRunError_Specified(Index: Integer): boolean;
    procedure SetlastRunStatus(Index: Integer; const Astring: string);
    function  lastRunStatus_Specified(Index: Integer): boolean;
    procedure SetnextRunDateTimeGMT(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  nextRunDateTimeGMT_Specified(Index: Integer): boolean;
    procedure SetparentScheduleUUID(Index: Integer; const Astring: string);
    function  parentScheduleUUID_Specified(Index: Integer): boolean;
    procedure SetscheduleDescription(Index: Integer; const Astring: string);
    function  scheduleDescription_Specified(Index: Integer): boolean;
    procedure SetscheduleTypeCode(Index: Integer; const Astring: string);
    function  scheduleTypeCode_Specified(Index: Integer): boolean;
    procedure SetscheduleTypeName(Index: Integer; const Astring: string);
    function  scheduleTypeName_Specified(Index: Integer): boolean;
    procedure SetscheduleUUID(Index: Integer; const Astring: string);
    function  scheduleUUID_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property frequency:           scheduleFrequency  Index (IS_OPTN or IS_UNQL) read Ffrequency write Setfrequency stored frequency_Specified;
    property lastRunDateTimeGMT:  TXSDateTime        Index (IS_OPTN or IS_UNQL) read FlastRunDateTimeGMT write SetlastRunDateTimeGMT stored lastRunDateTimeGMT_Specified;
    property lastRunError:        string             Index (IS_OPTN or IS_UNQL) read FlastRunError write SetlastRunError stored lastRunError_Specified;
    property lastRunStatus:       string             Index (IS_OPTN or IS_UNQL) read FlastRunStatus write SetlastRunStatus stored lastRunStatus_Specified;
    property nextRunDateTimeGMT:  TXSDateTime        Index (IS_OPTN or IS_UNQL) read FnextRunDateTimeGMT write SetnextRunDateTimeGMT stored nextRunDateTimeGMT_Specified;
    property parentScheduleUUID:  string             Index (IS_OPTN or IS_UNQL) read FparentScheduleUUID write SetparentScheduleUUID stored parentScheduleUUID_Specified;
    property scheduleActive:      Boolean            Index (IS_UNQL) read FscheduleActive write FscheduleActive;
    property scheduleDescription: string             Index (IS_OPTN or IS_UNQL) read FscheduleDescription write SetscheduleDescription stored scheduleDescription_Specified;
    property scheduleTypeCode:    string             Index (IS_OPTN or IS_UNQL) read FscheduleTypeCode write SetscheduleTypeCode stored scheduleTypeCode_Specified;
    property scheduleTypeName:    string             Index (IS_OPTN or IS_UNQL) read FscheduleTypeName write SetscheduleTypeName stored scheduleTypeName_Specified;
    property scheduleUUID:        string             Index (IS_OPTN or IS_UNQL) read FscheduleUUID write SetscheduleUUID stored scheduleUUID_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationReport, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationReport = class(TRemotable)
  private
    FauthoringMode: string;
    FauthoringMode_Specified: boolean;
    FaverageRunTime: Integer;
    FaverageRunTime_Specified: boolean;
    FbirtData: string;
    FbirtData_Specified: boolean;
    FchartTypeCode: string;
    FchartTypeCode_Specified: boolean;
    FdashboardEnabled: Boolean;
    FdataOutput: string;
    FdataOutput_Specified: boolean;
    FdeliveryMode: string;
    FdeliveryMode_Specified: boolean;
    FexecutionObject: string;
    FexecutionObject_Specified: boolean;
    FlastModifiedDate: TXSDateTime;
    FlastModifiedDate_Specified: boolean;
    FlastModifierId: Integer;
    FlastModifierId_Specified: boolean;
    FlastModifierName: string;
    FlastModifierName_Specified: boolean;
    FlastRunTime: Integer;
    FlastRunTime_Specified: boolean;
    FpublishDate: TXSDateTime;
    FpublishDate_Specified: boolean;
    FreportCategory: string;
    FreportCategory_Specified: boolean;
    FreportDescription: string;
    FreportDescription_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    FreportName: string;
    FreportName_Specified: boolean;
    FreportSubCategory: string;
    FreportSubCategory_Specified: boolean;
    FreportTemplate: string;
    FreportTemplate_Specified: boolean;
    FreportUUID: string;
    FreportUUID_Specified: boolean;
    FroleCode: string;
    FroleCode_Specified: boolean;
    FsourceId: Integer;
    FsourceId_Specified: boolean;
    FsourceName: string;
    FsourceName_Specified: boolean;
    Fusage: Integer;
    Fusage_Specified: boolean;
    FviewDescription: string;
    FviewDescription_Specified: boolean;
    FviewId: Integer;
    FviewId_Specified: boolean;
    FviewName: string;
    FviewName_Specified: boolean;
    procedure SetauthoringMode(Index: Integer; const Astring: string);
    function  authoringMode_Specified(Index: Integer): boolean;
    procedure SetaverageRunTime(Index: Integer; const AInteger: Integer);
    function  averageRunTime_Specified(Index: Integer): boolean;
    procedure SetbirtData(Index: Integer; const Astring: string);
    function  birtData_Specified(Index: Integer): boolean;
    procedure SetchartTypeCode(Index: Integer; const Astring: string);
    function  chartTypeCode_Specified(Index: Integer): boolean;
    procedure SetdataOutput(Index: Integer; const Astring: string);
    function  dataOutput_Specified(Index: Integer): boolean;
    procedure SetdeliveryMode(Index: Integer; const Astring: string);
    function  deliveryMode_Specified(Index: Integer): boolean;
    procedure SetexecutionObject(Index: Integer; const Astring: string);
    function  executionObject_Specified(Index: Integer): boolean;
    procedure SetlastModifiedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  lastModifiedDate_Specified(Index: Integer): boolean;
    procedure SetlastModifierId(Index: Integer; const AInteger: Integer);
    function  lastModifierId_Specified(Index: Integer): boolean;
    procedure SetlastModifierName(Index: Integer; const Astring: string);
    function  lastModifierName_Specified(Index: Integer): boolean;
    procedure SetlastRunTime(Index: Integer; const AInteger: Integer);
    function  lastRunTime_Specified(Index: Integer): boolean;
    procedure SetpublishDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  publishDate_Specified(Index: Integer): boolean;
    procedure SetreportCategory(Index: Integer; const Astring: string);
    function  reportCategory_Specified(Index: Integer): boolean;
    procedure SetreportDescription(Index: Integer; const Astring: string);
    function  reportDescription_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SetreportName(Index: Integer; const Astring: string);
    function  reportName_Specified(Index: Integer): boolean;
    procedure SetreportSubCategory(Index: Integer; const Astring: string);
    function  reportSubCategory_Specified(Index: Integer): boolean;
    procedure SetreportTemplate(Index: Integer; const Astring: string);
    function  reportTemplate_Specified(Index: Integer): boolean;
    procedure SetreportUUID(Index: Integer; const Astring: string);
    function  reportUUID_Specified(Index: Integer): boolean;
    procedure SetroleCode(Index: Integer; const Astring: string);
    function  roleCode_Specified(Index: Integer): boolean;
    procedure SetsourceId(Index: Integer; const AInteger: Integer);
    function  sourceId_Specified(Index: Integer): boolean;
    procedure SetsourceName(Index: Integer; const Astring: string);
    function  sourceName_Specified(Index: Integer): boolean;
    procedure Setusage(Index: Integer; const AInteger: Integer);
    function  usage_Specified(Index: Integer): boolean;
    procedure SetviewDescription(Index: Integer; const Astring: string);
    function  viewDescription_Specified(Index: Integer): boolean;
    procedure SetviewId(Index: Integer; const AInteger: Integer);
    function  viewId_Specified(Index: Integer): boolean;
    procedure SetviewName(Index: Integer; const Astring: string);
    function  viewName_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property authoringMode:     string       Index (IS_OPTN or IS_UNQL) read FauthoringMode write SetauthoringMode stored authoringMode_Specified;
    property averageRunTime:    Integer      Index (IS_OPTN or IS_UNQL) read FaverageRunTime write SetaverageRunTime stored averageRunTime_Specified;
    property birtData:          string       Index (IS_OPTN or IS_UNQL) read FbirtData write SetbirtData stored birtData_Specified;
    property chartTypeCode:     string       Index (IS_OPTN or IS_UNQL) read FchartTypeCode write SetchartTypeCode stored chartTypeCode_Specified;
    property dashboardEnabled:  Boolean      Index (IS_UNQL) read FdashboardEnabled write FdashboardEnabled;
    property dataOutput:        string       Index (IS_OPTN or IS_UNQL) read FdataOutput write SetdataOutput stored dataOutput_Specified;
    property deliveryMode:      string       Index (IS_OPTN or IS_UNQL) read FdeliveryMode write SetdeliveryMode stored deliveryMode_Specified;
    property executionObject:   string       Index (IS_OPTN or IS_UNQL) read FexecutionObject write SetexecutionObject stored executionObject_Specified;
    property lastModifiedDate:  TXSDateTime  Index (IS_OPTN or IS_UNQL) read FlastModifiedDate write SetlastModifiedDate stored lastModifiedDate_Specified;
    property lastModifierId:    Integer      Index (IS_OPTN or IS_UNQL) read FlastModifierId write SetlastModifierId stored lastModifierId_Specified;
    property lastModifierName:  string       Index (IS_OPTN or IS_UNQL) read FlastModifierName write SetlastModifierName stored lastModifierName_Specified;
    property lastRunTime:       Integer      Index (IS_OPTN or IS_UNQL) read FlastRunTime write SetlastRunTime stored lastRunTime_Specified;
    property publishDate:       TXSDateTime  Index (IS_OPTN or IS_UNQL) read FpublishDate write SetpublishDate stored publishDate_Specified;
    property reportCategory:    string       Index (IS_OPTN or IS_UNQL) read FreportCategory write SetreportCategory stored reportCategory_Specified;
    property reportDescription: string       Index (IS_OPTN or IS_UNQL) read FreportDescription write SetreportDescription stored reportDescription_Specified;
    property reportId:          Integer      Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property reportName:        string       Index (IS_OPTN or IS_UNQL) read FreportName write SetreportName stored reportName_Specified;
    property reportSubCategory: string       Index (IS_OPTN or IS_UNQL) read FreportSubCategory write SetreportSubCategory stored reportSubCategory_Specified;
    property reportTemplate:    string       Index (IS_OPTN or IS_UNQL) read FreportTemplate write SetreportTemplate stored reportTemplate_Specified;
    property reportUUID:        string       Index (IS_OPTN or IS_UNQL) read FreportUUID write SetreportUUID stored reportUUID_Specified;
    property roleCode:          string       Index (IS_OPTN or IS_UNQL) read FroleCode write SetroleCode stored roleCode_Specified;
    property sourceId:          Integer      Index (IS_OPTN or IS_UNQL) read FsourceId write SetsourceId stored sourceId_Specified;
    property sourceName:        string       Index (IS_OPTN or IS_UNQL) read FsourceName write SetsourceName stored sourceName_Specified;
    property usage:             Integer      Index (IS_OPTN or IS_UNQL) read Fusage write Setusage stored usage_Specified;
    property viewDescription:   string       Index (IS_OPTN or IS_UNQL) read FviewDescription write SetviewDescription stored viewDescription_Specified;
    property viewId:            Integer      Index (IS_OPTN or IS_UNQL) read FviewId write SetviewId stored viewId_Specified;
    property viewName:          string       Index (IS_OPTN or IS_UNQL) read FviewName write SetviewName stored viewName_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationTask, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationTask = class(TRemotable)
  private
    FactivityText: string;
    FactivityText_Specified: boolean;
    FdueDate: TXSDateTime;
    FdueDate_Specified: boolean;
    FtaskPriority: string;
    FtaskPriority_Specified: boolean;
    FtaskType: string;
    FtaskType_Specified: boolean;
    procedure SetactivityText(Index: Integer; const Astring: string);
    function  activityText_Specified(Index: Integer): boolean;
    procedure SetdueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dueDate_Specified(Index: Integer): boolean;
    procedure SettaskPriority(Index: Integer; const Astring: string);
    function  taskPriority_Specified(Index: Integer): boolean;
    procedure SettaskType(Index: Integer; const Astring: string);
    function  taskType_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property activityText: string       Index (IS_OPTN or IS_UNQL) read FactivityText write SetactivityText stored activityText_Specified;
    property dueDate:      TXSDateTime  Index (IS_OPTN or IS_UNQL) read FdueDate write SetdueDate stored dueDate_Specified;
    property taskPriority: string       Index (IS_OPTN or IS_UNQL) read FtaskPriority write SettaskPriority stored taskPriority_Specified;
    property taskType:     string       Index (IS_OPTN or IS_UNQL) read FtaskType write SettaskType stored taskType_Specified;
  end;



  // ************************************************************************ //
  // XML       : importIssueElement, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  importIssueElement = class(TRemotable)
  private
    FmessageComponents: reportRow;
    FmessageComponents_Specified: boolean;
    FmessageKey: string;
    FmessageKey_Specified: boolean;
    FrenderedMessage: string;
    FrenderedMessage_Specified: boolean;
    procedure SetmessageComponents(Index: Integer; const AreportRow: reportRow);
    function  messageComponents_Specified(Index: Integer): boolean;
    procedure SetmessageKey(Index: Integer; const Astring: string);
    function  messageKey_Specified(Index: Integer): boolean;
    procedure SetrenderedMessage(Index: Integer; const Astring: string);
    function  renderedMessage_Specified(Index: Integer): boolean;
  published
    property messageComponents: reportRow  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmessageComponents write SetmessageComponents stored messageComponents_Specified;
    property messageKey:        string     Index (IS_OPTN or IS_UNQL) read FmessageKey write SetmessageKey stored messageKey_Specified;
    property renderedMessage:   string     Index (IS_OPTN or IS_UNQL) read FrenderedMessage write SetrenderedMessage stored renderedMessage_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationGroupMember, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationGroupMember = class(TRemotable)
  private
    FinternalId: Integer;
    FinternalId_Specified: boolean;
    FloginId: string;
    FloginId_Specified: boolean;
    procedure SetinternalId(Index: Integer; const AInteger: Integer);
    function  internalId_Specified(Index: Integer): boolean;
    procedure SetloginId(Index: Integer; const Astring: string);
    function  loginId_Specified(Index: Integer): boolean;
  published
    property internalId: Integer  Index (IS_OPTN or IS_UNQL) read FinternalId write SetinternalId stored internalId_Specified;
    property loginId:    string   Index (IS_OPTN or IS_UNQL) read FloginId write SetloginId stored loginId_Specified;
  end;



  // ************************************************************************ //
  // XML       : administrationDataSourceOption, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  administrationDataSourceOption = class(TRemotable)
  private
    FoptionKey: string;
    FoptionKey_Specified: boolean;
    FoptionValue: string;
    FoptionValue_Specified: boolean;
    FvalueDataType: string;
    FvalueDataType_Specified: boolean;
    procedure SetoptionKey(Index: Integer; const Astring: string);
    function  optionKey_Specified(Index: Integer): boolean;
    procedure SetoptionValue(Index: Integer; const Astring: string);
    function  optionValue_Specified(Index: Integer): boolean;
    procedure SetvalueDataType(Index: Integer; const Astring: string);
    function  valueDataType_Specified(Index: Integer): boolean;
  published
    property optionKey:     string  Index (IS_OPTN or IS_UNQL) read FoptionKey write SetoptionKey stored optionKey_Specified;
    property optionValue:   string  Index (IS_OPTN or IS_UNQL) read FoptionValue write SetoptionValue stored optionValue_Specified;
    property valueDataType: string  Index (IS_OPTN or IS_UNQL) read FvalueDataType write SetvalueDataType stored valueDataType_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://webservices.web.mi.hof.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : LegacyAdministrationServicePortBinding
  // service   : LegacyAdministrationServiceService
  // port      : LegacyAdministrationServicePort
  // URL       : http://172.16.174.137:8080/webservices/LegacyAdministrationService
  // ************************************************************************ //
  LegacyAdministrationService = interface(IInvokable)
  ['{C0362B13-5A6D-070C-6D3B-2E92FF7608E8}']
    function  addColumnToViewsWithSourceId(const arg0: string; const arg1: string; const arg2: Integer; const arg3: string; const arg4: string; const arg5: string
                                           ): administrationServiceResponse; stdcall;
    function  addColumnToViewsWithSourceName(const arg0: string; const arg1: string; const arg2: string; const arg3: string; const arg4: string; const arg5: string
                                             ): administrationServiceResponse; stdcall;
    function  remoteAdministrationCall(const arg0: administrationServiceRequest): administrationServiceResponse; stdcall;
  end;

function GetLegacyAdministrationService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): LegacyAdministrationService;


implementation
  uses System.SysUtils;

function GetLegacyAdministrationService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): LegacyAdministrationService;
const
  defWSDL = 'http://172.16.174.137:8080/webservices/LegacyAdministrationService?wsdl';
  defURL  = 'http://172.16.174.137:8080/webservices/LegacyAdministrationService';
  defSvc  = 'LegacyAdministrationServiceService';
  defPrt  = 'LegacyAdministrationServicePort';
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
    Result := (RIO as LegacyAdministrationService);
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


destructor importIssue.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FissueElements)-1 do
    System.SysUtils.FreeAndNil(FissueElements[I]);
  System.SetLength(FissueElements, 0);
  System.SysUtils.FreeAndNil(Fresource);
  inherited Destroy;
end;

procedure importIssue.SetissueElements(Index: Integer; const AArray_Of_importIssueElement: Array_Of_importIssueElement);
begin
  FissueElements := AArray_Of_importIssueElement;
  FissueElements_Specified := True;
end;

function importIssue.issueElements_Specified(Index: Integer): boolean;
begin
  Result := FissueElements_Specified;
end;

procedure importIssue.SetitemKey(Index: Integer; const Astring: string);
begin
  FitemKey := Astring;
  FitemKey_Specified := True;
end;

function importIssue.itemKey_Specified(Index: Integer): boolean;
begin
  Result := FitemKey_Specified;
end;

procedure importIssue.Setresource(Index: Integer; const AcontentResource: contentResource);
begin
  Fresource := AcontentResource;
  Fresource_Specified := True;
end;

function importIssue.resource_Specified(Index: Integer): boolean;
begin
  Result := Fresource_Specified;
end;

destructor administrationRole.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ffunctions)-1 do
    System.SysUtils.FreeAndNil(Ffunctions[I]);
  System.SetLength(Ffunctions, 0);
  inherited Destroy;
end;

procedure administrationRole.Setfunctions(Index: Integer; const AArray_Of_administrationFunction: Array_Of_administrationFunction);
begin
  Ffunctions := AArray_Of_administrationFunction;
  Ffunctions_Specified := True;
end;

function administrationRole.functions_Specified(Index: Integer): boolean;
begin
  Result := Ffunctions_Specified;
end;

procedure administrationRole.SetroleCode(Index: Integer; const Astring: string);
begin
  FroleCode := Astring;
  FroleCode_Specified := True;
end;

function administrationRole.roleCode_Specified(Index: Integer): boolean;
begin
  Result := FroleCode_Specified;
end;

procedure administrationRole.SetroleDescription(Index: Integer; const Astring: string);
begin
  FroleDescription := Astring;
  FroleDescription_Specified := True;
end;

function administrationRole.roleDescription_Specified(Index: Integer): boolean;
begin
  Result := FroleDescription_Specified;
end;

procedure administrationRole.SetroleName(Index: Integer; const Astring: string);
begin
  FroleName := Astring;
  FroleName_Specified := True;
end;

function administrationRole.roleName_Specified(Index: Integer): boolean;
begin
  Result := FroleName_Specified;
end;

procedure Exception.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure entry.Setkey(Index: Integer; const Astring: string);
begin
  Fkey := Astring;
  Fkey_Specified := True;
end;

function entry.key_Specified(Index: Integer): boolean;
begin
  Result := Fkey_Specified;
end;

procedure entry.Setvalue(Index: Integer; const AVariant: Variant);
begin
  Fvalue := AVariant;
  Fvalue_Specified := True;
end;

function entry.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

destructor administrationGroup.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgroupMembers)-1 do
    System.SysUtils.FreeAndNil(FgroupMembers[I]);
  System.SetLength(FgroupMembers, 0);
  inherited Destroy;
end;

procedure administrationGroup.SetgroupDescription(Index: Integer; const Astring: string);
begin
  FgroupDescription := Astring;
  FgroupDescription_Specified := True;
end;

function administrationGroup.groupDescription_Specified(Index: Integer): boolean;
begin
  Result := FgroupDescription_Specified;
end;

procedure administrationGroup.SetgroupId(Index: Integer; const AInteger: Integer);
begin
  FgroupId := AInteger;
  FgroupId_Specified := True;
end;

function administrationGroup.groupId_Specified(Index: Integer): boolean;
begin
  Result := FgroupId_Specified;
end;

procedure administrationGroup.SetgroupInternalReference(Index: Integer; const Astring: string);
begin
  FgroupInternalReference := Astring;
  FgroupInternalReference_Specified := True;
end;

function administrationGroup.groupInternalReference_Specified(Index: Integer): boolean;
begin
  Result := FgroupInternalReference_Specified;
end;

procedure administrationGroup.SetgroupMembers(Index: Integer; const AArray_Of_administrationGroupMember: Array_Of_administrationGroupMember);
begin
  FgroupMembers := AArray_Of_administrationGroupMember;
  FgroupMembers_Specified := True;
end;

function administrationGroup.groupMembers_Specified(Index: Integer): boolean;
begin
  Result := FgroupMembers_Specified;
end;

procedure administrationGroup.SetgroupName(Index: Integer; const Astring: string);
begin
  FgroupName := Astring;
  FgroupName_Specified := True;
end;

function administrationGroup.groupName_Specified(Index: Integer): boolean;
begin
  Result := FgroupName_Specified;
end;

procedure administrationGroup.SetgroupStatus(Index: Integer; const Astring: string);
begin
  FgroupStatus := Astring;
  FgroupStatus_Specified := True;
end;

function administrationGroup.groupStatus_Specified(Index: Integer): boolean;
begin
  Result := FgroupStatus_Specified;
end;

destructor administrationServiceResponse.Destroy;
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

procedure administrationServiceResponse.SetbinaryAttachments(Index: Integer; const AArray_Of_reportBinaryObject: Array_Of_reportBinaryObject);
begin
  FbinaryAttachments := AArray_Of_reportBinaryObject;
  FbinaryAttachments_Specified := True;
end;

function administrationServiceResponse.binaryAttachments_Specified(Index: Integer): boolean;
begin
  Result := FbinaryAttachments_Specified;
end;

procedure administrationServiceResponse.SetbinaryData(Index: Integer; const Astring: string);
begin
  FbinaryData := Astring;
  FbinaryData_Specified := True;
end;

function administrationServiceResponse.binaryData_Specified(Index: Integer): boolean;
begin
  Result := FbinaryData_Specified;
end;

procedure administrationServiceResponse.Setclient(Index: Integer; const AadministrationClientOrg: administrationClientOrg);
begin
  Fclient := AadministrationClientOrg;
  Fclient_Specified := True;
end;

function administrationServiceResponse.client_Specified(Index: Integer): boolean;
begin
  Result := Fclient_Specified;
end;

procedure administrationServiceResponse.Setclients(Index: Integer; const AArray_Of_administrationClientOrg: Array_Of_administrationClientOrg);
begin
  Fclients := AArray_Of_administrationClientOrg;
  Fclients_Specified := True;
end;

function administrationServiceResponse.clients_Specified(Index: Integer): boolean;
begin
  Result := Fclients_Specified;
end;

procedure administrationServiceResponse.SetcontentResources(Index: Integer; const AArray_Of_contentResource: Array_Of_contentResource);
begin
  FcontentResources := AArray_Of_contentResource;
  FcontentResources_Specified := True;
end;

function administrationServiceResponse.contentResources_Specified(Index: Integer): boolean;
begin
  Result := FcontentResources_Specified;
end;

procedure administrationServiceResponse.SetcontentType(Index: Integer; const Astring: string);
begin
  FcontentType := Astring;
  FcontentType_Specified := True;
end;

function administrationServiceResponse.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure administrationServiceResponse.Setdatasources(Index: Integer; const AArray_Of_administrationDataSource: Array_Of_administrationDataSource);
begin
  Fdatasources := AArray_Of_administrationDataSource;
  Fdatasources_Specified := True;
end;

function administrationServiceResponse.datasources_Specified(Index: Integer): boolean;
begin
  Result := Fdatasources_Specified;
end;

procedure administrationServiceResponse.SetentityId(Index: Integer; const AInteger: Integer);
begin
  FentityId := AInteger;
  FentityId_Specified := True;
end;

function administrationServiceResponse.entityId_Specified(Index: Integer): boolean;
begin
  Result := FentityId_Specified;
end;

procedure administrationServiceResponse.SeterrorCode(Index: Integer; const AInteger: Integer);
begin
  FerrorCode := AInteger;
  FerrorCode_Specified := True;
end;

function administrationServiceResponse.errorCode_Specified(Index: Integer): boolean;
begin
  Result := FerrorCode_Specified;
end;

procedure administrationServiceResponse.SetfileName(Index: Integer; const Astring: string);
begin
  FfileName := Astring;
  FfileName_Specified := True;
end;

function administrationServiceResponse.fileName_Specified(Index: Integer): boolean;
begin
  Result := FfileName_Specified;
end;

procedure administrationServiceResponse.Setgroup(Index: Integer; const AadministrationGroup: administrationGroup);
begin
  Fgroup := AadministrationGroup;
  Fgroup_Specified := True;
end;

function administrationServiceResponse.group_Specified(Index: Integer): boolean;
begin
  Result := Fgroup_Specified;
end;

procedure administrationServiceResponse.Setgroups(Index: Integer; const AArray_Of_administrationGroup: Array_Of_administrationGroup);
begin
  Fgroups := AArray_Of_administrationGroup;
  Fgroups_Specified := True;
end;

function administrationServiceResponse.groups_Specified(Index: Integer): boolean;
begin
  Result := Fgroups_Specified;
end;

procedure administrationServiceResponse.SetimportIssues(Index: Integer; const AArray_Of_importIssue: Array_Of_importIssue);
begin
  FimportIssues := AArray_Of_importIssue;
  FimportIssues_Specified := True;
end;

function administrationServiceResponse.importIssues_Specified(Index: Integer): boolean;
begin
  Result := FimportIssues_Specified;
end;

procedure administrationServiceResponse.SetloadedDataSource(Index: Integer; const AadministrationDataSource: administrationDataSource);
begin
  FloadedDataSource := AadministrationDataSource;
  FloadedDataSource_Specified := True;
end;

function administrationServiceResponse.loadedDataSource_Specified(Index: Integer): boolean;
begin
  Result := FloadedDataSource_Specified;
end;

procedure administrationServiceResponse.SetloginSessionId(Index: Integer; const Astring: string);
begin
  FloginSessionId := Astring;
  FloginSessionId_Specified := True;
end;

function administrationServiceResponse.loginSessionId_Specified(Index: Integer): boolean;
begin
  Result := FloginSessionId_Specified;
end;

procedure administrationServiceResponse.Setmessages(Index: Integer; const AreportRow: reportRow);
begin
  Fmessages := AreportRow;
  Fmessages_Specified := True;
end;

function administrationServiceResponse.messages_Specified(Index: Integer): boolean;
begin
  Result := Fmessages_Specified;
end;

procedure administrationServiceResponse.SetparentDashboard(Index: Integer; const AparentDashboard: parentDashboard);
begin
  FparentDashboard := AparentDashboard;
  FparentDashboard_Specified := True;
end;

function administrationServiceResponse.parentDashboard_Specified(Index: Integer): boolean;
begin
  Result := FparentDashboard_Specified;
end;

procedure administrationServiceResponse.SetparentDashboards(Index: Integer; const AArray_Of_parentDashboard: Array_Of_parentDashboard);
begin
  FparentDashboards := AArray_Of_parentDashboard;
  FparentDashboards_Specified := True;
end;

function administrationServiceResponse.parentDashboards_Specified(Index: Integer): boolean;
begin
  Result := FparentDashboards_Specified;
end;

procedure administrationServiceResponse.SetparentReportGroups(Index: Integer; const AArray_Of_parentReportGroup: Array_Of_parentReportGroup);
begin
  FparentReportGroups := AArray_Of_parentReportGroup;
  FparentReportGroups_Specified := True;
end;

function administrationServiceResponse.parentReportGroups_Specified(Index: Integer): boolean;
begin
  Result := FparentReportGroups_Specified;
end;

procedure administrationServiceResponse.Setpeople(Index: Integer; const AArray_Of_administrationPerson: Array_Of_administrationPerson);
begin
  Fpeople := AArray_Of_administrationPerson;
  Fpeople_Specified := True;
end;

function administrationServiceResponse.people_Specified(Index: Integer): boolean;
begin
  Result := Fpeople_Specified;
end;

procedure administrationServiceResponse.Setperson(Index: Integer; const AadministrationPerson: administrationPerson);
begin
  Fperson := AadministrationPerson;
  Fperson_Specified := True;
end;

function administrationServiceResponse.person_Specified(Index: Integer): boolean;
begin
  Result := Fperson_Specified;
end;

procedure administrationServiceResponse.Setpersonfavourites(Index: Integer; const AArray_Of_personFavourite: Array_Of_personFavourite);
begin
  Fpersonfavourites := AArray_Of_personFavourite;
  Fpersonfavourites_Specified := True;
end;

function administrationServiceResponse.personfavourites_Specified(Index: Integer): boolean;
begin
  Result := Fpersonfavourites_Specified;
end;

procedure administrationServiceResponse.SetqueryResults(Index: Integer; const AArray_Of_reportRow: Array_Of_reportRow);
begin
  FqueryResults := AArray_Of_reportRow;
  FqueryResults_Specified := True;
end;

function administrationServiceResponse.queryResults_Specified(Index: Integer): boolean;
begin
  Result := FqueryResults_Specified;
end;

procedure administrationServiceResponse.Setreport(Index: Integer; const AadministrationReport: administrationReport);
begin
  Freport := AadministrationReport;
  Freport_Specified := True;
end;

function administrationServiceResponse.report_Specified(Index: Integer): boolean;
begin
  Result := Freport_Specified;
end;

procedure administrationServiceResponse.SetreportGroups(Index: Integer; const AArray_Of_administrationReportGroup: Array_Of_administrationReportGroup);
begin
  FreportGroups := AArray_Of_administrationReportGroup;
  FreportGroups_Specified := True;
end;

function administrationServiceResponse.reportGroups_Specified(Index: Integer): boolean;
begin
  Result := FreportGroups_Specified;
end;

procedure administrationServiceResponse.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function administrationServiceResponse.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure administrationServiceResponse.Setreports(Index: Integer; const AArray_Of_administrationReport: Array_Of_administrationReport);
begin
  Freports := AArray_Of_administrationReport;
  Freports_Specified := True;
end;

function administrationServiceResponse.reports_Specified(Index: Integer): boolean;
begin
  Result := Freports_Specified;
end;

procedure administrationServiceResponse.Setroles(Index: Integer; const AArray_Of_administrationRole: Array_Of_administrationRole);
begin
  Froles := AArray_Of_administrationRole;
  Froles_Specified := True;
end;

function administrationServiceResponse.roles_Specified(Index: Integer): boolean;
begin
  Result := Froles_Specified;
end;

procedure administrationServiceResponse.Setschedule(Index: Integer; const AadministrationSchedule: administrationSchedule);
begin
  Fschedule := AadministrationSchedule;
  Fschedule_Specified := True;
end;

function administrationServiceResponse.schedule_Specified(Index: Integer): boolean;
begin
  Result := Fschedule_Specified;
end;

procedure administrationServiceResponse.Setschedules(Index: Integer; const AArray_Of_administrationSchedule: Array_Of_administrationSchedule);
begin
  Fschedules := AArray_Of_administrationSchedule;
  Fschedules_Specified := True;
end;

function administrationServiceResponse.schedules_Specified(Index: Integer): boolean;
begin
  Result := Fschedules_Specified;
end;

procedure administrationServiceResponse.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function administrationServiceResponse.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

procedure administrationServiceResponse.SetstatusCode(Index: Integer; const Astring: string);
begin
  FstatusCode := Astring;
  FstatusCode_Specified := True;
end;

function administrationServiceResponse.statusCode_Specified(Index: Integer): boolean;
begin
  Result := FstatusCode_Specified;
end;

procedure parentDashboard.SetdashboardGroupId(Index: Integer; const AInteger: Integer);
begin
  FdashboardGroupId := AInteger;
  FdashboardGroupId_Specified := True;
end;

function parentDashboard.dashboardGroupId_Specified(Index: Integer): boolean;
begin
  Result := FdashboardGroupId_Specified;
end;

procedure parentDashboard.SetdashboardName(Index: Integer; const Astring: string);
begin
  FdashboardName := Astring;
  FdashboardName_Specified := True;
end;

function parentDashboard.dashboardName_Specified(Index: Integer): boolean;
begin
  Result := FdashboardName_Specified;
end;

procedure parentDashboard.SetstatusCodes(Index: Integer; const AreportRow: reportRow);
begin
  FstatusCodes := AreportRow;
  FstatusCodes_Specified := True;
end;

function parentDashboard.statusCodes_Specified(Index: Integer): boolean;
begin
  Result := FstatusCodes_Specified;
end;

procedure parentDashboard.SettabIds(Index: Integer; const AreportRow: reportRow);
begin
  FtabIds := AreportRow;
  FtabIds_Specified := True;
end;

function parentDashboard.tabIds_Specified(Index: Integer): boolean;
begin
  Result := FtabIds_Specified;
end;

procedure parentDashboard.SettabNames(Index: Integer; const AreportRow: reportRow);
begin
  FtabNames := AreportRow;
  FtabNames_Specified := True;
end;

function parentDashboard.tabNames_Specified(Index: Integer): boolean;
begin
  Result := FtabNames_Specified;
end;

destructor parentReportGroup.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FreportGroupSubTabs)-1 do
    System.SysUtils.FreeAndNil(FreportGroupSubTabs[I]);
  System.SetLength(FreportGroupSubTabs, 0);
  System.SysUtils.FreeAndNil(FreportGroup);
  inherited Destroy;
end;

procedure parentReportGroup.SetdisplayOrder(Index: Integer; const AInteger: Integer);
begin
  FdisplayOrder := AInteger;
  FdisplayOrder_Specified := True;
end;

function parentReportGroup.displayOrder_Specified(Index: Integer): boolean;
begin
  Result := FdisplayOrder_Specified;
end;

procedure parentReportGroup.SetreportGroup(Index: Integer; const AadministrationReportGroup: administrationReportGroup);
begin
  FreportGroup := AadministrationReportGroup;
  FreportGroup_Specified := True;
end;

function parentReportGroup.reportGroup_Specified(Index: Integer): boolean;
begin
  Result := FreportGroup_Specified;
end;

procedure parentReportGroup.SetreportGroupId(Index: Integer; const AInteger: Integer);
begin
  FreportGroupId := AInteger;
  FreportGroupId_Specified := True;
end;

function parentReportGroup.reportGroupId_Specified(Index: Integer): boolean;
begin
  Result := FreportGroupId_Specified;
end;

procedure parentReportGroup.SetreportGroupSubTabs(Index: Integer; const AArray_Of_administrationReportGroup: Array_Of_administrationReportGroup);
begin
  FreportGroupSubTabs := AArray_Of_administrationReportGroup;
  FreportGroupSubTabs_Specified := True;
end;

function parentReportGroup.reportGroupSubTabs_Specified(Index: Integer): boolean;
begin
  Result := FreportGroupSubTabs_Specified;
end;

procedure parentReportGroup.SetreportGroupUUID(Index: Integer; const Astring: string);
begin
  FreportGroupUUID := Astring;
  FreportGroupUUID_Specified := True;
end;

function parentReportGroup.reportGroupUUID_Specified(Index: Integer): boolean;
begin
  Result := FreportGroupUUID_Specified;
end;

procedure administrationPerson.SetemailAddress(Index: Integer; const Astring: string);
begin
  FemailAddress := Astring;
  FemailAddress_Specified := True;
end;

function administrationPerson.emailAddress_Specified(Index: Integer): boolean;
begin
  Result := FemailAddress_Specified;
end;

procedure administrationPerson.SetfirstName(Index: Integer; const Astring: string);
begin
  FfirstName := Astring;
  FfirstName_Specified := True;
end;

function administrationPerson.firstName_Specified(Index: Integer): boolean;
begin
  Result := FfirstName_Specified;
end;

procedure administrationPerson.Setinitial(Index: Integer; const Astring: string);
begin
  Finitial := Astring;
  Finitial_Specified := True;
end;

function administrationPerson.initial_Specified(Index: Integer): boolean;
begin
  Result := Finitial_Specified;
end;

procedure administrationPerson.SetipId(Index: Integer; const AInteger: Integer);
begin
  FipId := AInteger;
  FipId_Specified := True;
end;

function administrationPerson.ipId_Specified(Index: Integer): boolean;
begin
  Result := FipId_Specified;
end;

procedure administrationPerson.SetlanguageCode(Index: Integer; const Astring: string);
begin
  FlanguageCode := Astring;
  FlanguageCode_Specified := True;
end;

function administrationPerson.languageCode_Specified(Index: Integer): boolean;
begin
  Result := FlanguageCode_Specified;
end;

procedure administrationPerson.SetlastName(Index: Integer; const Astring: string);
begin
  FlastName := Astring;
  FlastName_Specified := True;
end;

function administrationPerson.lastName_Specified(Index: Integer): boolean;
begin
  Result := FlastName_Specified;
end;

procedure administrationPerson.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function administrationPerson.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure administrationPerson.SetroleCode(Index: Integer; const Astring: string);
begin
  FroleCode := Astring;
  FroleCode_Specified := True;
end;

function administrationPerson.roleCode_Specified(Index: Integer): boolean;
begin
  Result := FroleCode_Specified;
end;

procedure administrationPerson.SetsalutationCode(Index: Integer; const Astring: string);
begin
  FsalutationCode := Astring;
  FsalutationCode_Specified := True;
end;

function administrationPerson.salutationCode_Specified(Index: Integer): boolean;
begin
  Result := FsalutationCode_Specified;
end;

procedure administrationPerson.Setstatus(Index: Integer; const Astring: string);
begin
  Fstatus := Astring;
  Fstatus_Specified := True;
end;

function administrationPerson.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure administrationPerson.SettimeZoneCode(Index: Integer; const Astring: string);
begin
  FtimeZoneCode := Astring;
  FtimeZoneCode_Specified := True;
end;

function administrationPerson.timeZoneCode_Specified(Index: Integer): boolean;
begin
  Result := FtimeZoneCode_Specified;
end;

procedure administrationPerson.SetuserId(Index: Integer; const Astring: string);
begin
  FuserId := Astring;
  FuserId_Specified := True;
end;

function administrationPerson.userId_Specified(Index: Integer): boolean;
begin
  Result := FuserId_Specified;
end;

procedure personFavourite.SetcontentId(Index: Integer; const AInteger: Integer);
begin
  FcontentId := AInteger;
  FcontentId_Specified := True;
end;

function personFavourite.contentId_Specified(Index: Integer): boolean;
begin
  Result := FcontentId_Specified;
end;

procedure personFavourite.SetcontentType(Index: Integer; const Astring: string);
begin
  FcontentType := Astring;
  FcontentType_Specified := True;
end;

function personFavourite.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure personFavourite.SetcreationCode(Index: Integer; const Astring: string);
begin
  FcreationCode := Astring;
  FcreationCode_Specified := True;
end;

function personFavourite.creationCode_Specified(Index: Integer): boolean;
begin
  Result := FcreationCode_Specified;
end;

procedure personFavourite.SetcreationDate(Index: Integer; const Astring: string);
begin
  FcreationDate := Astring;
  FcreationDate_Specified := True;
end;

function personFavourite.creationDate_Specified(Index: Integer): boolean;
begin
  Result := FcreationDate_Specified;
end;

procedure personFavourite.SetcreatorId(Index: Integer; const AInteger: Integer);
begin
  FcreatorId := AInteger;
  FcreatorId_Specified := True;
end;

function personFavourite.creatorId_Specified(Index: Integer): boolean;
begin
  Result := FcreatorId_Specified;
end;

procedure personFavourite.SetfavouriteType(Index: Integer; const Astring: string);
begin
  FfavouriteType := Astring;
  FfavouriteType_Specified := True;
end;

function personFavourite.favouriteType_Specified(Index: Integer): boolean;
begin
  Result := FfavouriteType_Specified;
end;

procedure personFavourite.SetinstanceId(Index: Integer; const AInteger: Integer);
begin
  FinstanceId := AInteger;
  FinstanceId_Specified := True;
end;

function personFavourite.instanceId_Specified(Index: Integer): boolean;
begin
  Result := FinstanceId_Specified;
end;

procedure personFavourite.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function personFavourite.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure personFavourite.SetpersonId(Index: Integer; const AInteger: Integer);
begin
  FpersonId := AInteger;
  FpersonId_Specified := True;
end;

function personFavourite.personId_Specified(Index: Integer): boolean;
begin
  Result := FpersonId_Specified;
end;

procedure personFavourite.Setsubject(Index: Integer; const Astring: string);
begin
  Fsubject := Astring;
  Fsubject_Specified := True;
end;

function personFavourite.subject_Specified(Index: Integer): boolean;
begin
  Result := Fsubject_Specified;
end;

procedure personFavourite.SettextEntityId(Index: Integer; const AInteger: Integer);
begin
  FtextEntityId := AInteger;
  FtextEntityId_Specified := True;
end;

function personFavourite.textEntityId_Specified(Index: Integer): boolean;
begin
  Result := FtextEntityId_Specified;
end;

procedure personFavourite.SetwidthCode(Index: Integer; const Astring: string);
begin
  FwidthCode := Astring;
  FwidthCode_Specified := True;
end;

function personFavourite.widthCode_Specified(Index: Integer): boolean;
begin
  Result := FwidthCode_Specified;
end;

destructor administrationReportGroup.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgroupReports)-1 do
    System.SysUtils.FreeAndNil(FgroupReports[I]);
  System.SetLength(FgroupReports, 0);
  inherited Destroy;
end;

procedure administrationReportGroup.SetassociatedReports(Index: Integer; const AArray_Of_int: Array_Of_int);
begin
  FassociatedReports := AArray_Of_int;
  FassociatedReports_Specified := True;
end;

function administrationReportGroup.associatedReports_Specified(Index: Integer): boolean;
begin
  Result := FassociatedReports_Specified;
end;

procedure administrationReportGroup.SetgroupReports(Index: Integer; const AArray_Of_administrationReport: Array_Of_administrationReport);
begin
  FgroupReports := AArray_Of_administrationReport;
  FgroupReports_Specified := True;
end;

function administrationReportGroup.groupReports_Specified(Index: Integer): boolean;
begin
  Result := FgroupReports_Specified;
end;

procedure administrationReportGroup.SetpublishUUID(Index: Integer; const Astring: string);
begin
  FpublishUUID := Astring;
  FpublishUUID_Specified := True;
end;

function administrationReportGroup.publishUUID_Specified(Index: Integer): boolean;
begin
  Result := FpublishUUID_Specified;
end;

procedure administrationReportGroup.SetreportGroupId(Index: Integer; const AInteger: Integer);
begin
  FreportGroupId := AInteger;
  FreportGroupId_Specified := True;
end;

function administrationReportGroup.reportGroupId_Specified(Index: Integer): boolean;
begin
  Result := FreportGroupId_Specified;
end;

procedure administrationReportGroup.SetreportGroupInternalReference(Index: Integer; const Astring: string);
begin
  FreportGroupInternalReference := Astring;
  FreportGroupInternalReference_Specified := True;
end;

function administrationReportGroup.reportGroupInternalReference_Specified(Index: Integer): boolean;
begin
  Result := FreportGroupInternalReference_Specified;
end;

procedure administrationReportGroup.SetreportGroupName(Index: Integer; const Astring: string);
begin
  FreportGroupName := Astring;
  FreportGroupName_Specified := True;
end;

function administrationReportGroup.reportGroupName_Specified(Index: Integer): boolean;
begin
  Result := FreportGroupName_Specified;
end;

procedure administrationReportGroup.SetreportGroupStatus(Index: Integer; const Astring: string);
begin
  FreportGroupStatus := Astring;
  FreportGroupStatus_Specified := True;
end;

function administrationReportGroup.reportGroupStatus_Specified(Index: Integer): boolean;
begin
  Result := FreportGroupStatus_Specified;
end;

procedure administrationReportGroup.SetreportGroupType(Index: Integer; const Astring: string);
begin
  FreportGroupType := Astring;
  FreportGroupType_Specified := True;
end;

function administrationReportGroup.reportGroupType_Specified(Index: Integer): boolean;
begin
  Result := FreportGroupType_Specified;
end;

procedure contentResource.SetresourceCode(Index: Integer; const Astring: string);
begin
  FresourceCode := Astring;
  FresourceCode_Specified := True;
end;

function contentResource.resourceCode_Specified(Index: Integer): boolean;
begin
  Result := FresourceCode_Specified;
end;

procedure contentResource.SetresourceDescription(Index: Integer; const Astring: string);
begin
  FresourceDescription := Astring;
  FresourceDescription_Specified := True;
end;

function contentResource.resourceDescription_Specified(Index: Integer): boolean;
begin
  Result := FresourceDescription_Specified;
end;

procedure contentResource.SetresourceId(Index: Integer; const AInteger: Integer);
begin
  FresourceId := AInteger;
  FresourceId_Specified := True;
end;

function contentResource.resourceId_Specified(Index: Integer): boolean;
begin
  Result := FresourceId_Specified;
end;

procedure contentResource.SetresourceName(Index: Integer; const Astring: string);
begin
  FresourceName := Astring;
  FresourceName_Specified := True;
end;

function contentResource.resourceName_Specified(Index: Integer): boolean;
begin
  Result := FresourceName_Specified;
end;

procedure contentResource.SetresourceOrgId(Index: Integer; const AInteger: Integer);
begin
  FresourceOrgId := AInteger;
  FresourceOrgId_Specified := True;
end;

function contentResource.resourceOrgId_Specified(Index: Integer): boolean;
begin
  Result := FresourceOrgId_Specified;
end;

procedure contentResource.SetresourceSubType(Index: Integer; const Astring: string);
begin
  FresourceSubType := Astring;
  FresourceSubType_Specified := True;
end;

function contentResource.resourceSubType_Specified(Index: Integer): boolean;
begin
  Result := FresourceSubType_Specified;
end;

procedure contentResource.SetresourceType(Index: Integer; const Astring: string);
begin
  FresourceType := Astring;
  FresourceType_Specified := True;
end;

function contentResource.resourceType_Specified(Index: Integer): boolean;
begin
  Result := FresourceType_Specified;
end;

procedure contentResource.SetresourceUUID(Index: Integer; const Astring: string);
begin
  FresourceUUID := Astring;
  FresourceUUID_Specified := True;
end;

function contentResource.resourceUUID_Specified(Index: Integer): boolean;
begin
  Result := FresourceUUID_Specified;
end;

destructor administrationCacheCommand.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcommandArgs)-1 do
    System.SysUtils.FreeAndNil(FcommandArgs[I]);
  System.SetLength(FcommandArgs, 0);
  inherited Destroy;
end;

procedure administrationCacheCommand.SetcacheType(Index: Integer; const Astring: string);
begin
  FcacheType := Astring;
  FcacheType_Specified := True;
end;

function administrationCacheCommand.cacheType_Specified(Index: Integer): boolean;
begin
  Result := FcacheType_Specified;
end;

procedure administrationCacheCommand.SetcommandType(Index: Integer; const Astring: string);
begin
  FcommandType := Astring;
  FcommandType_Specified := True;
end;

function administrationCacheCommand.commandType_Specified(Index: Integer): boolean;
begin
  Result := FcommandType_Specified;
end;

procedure Exception2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure scheduleFrequency.SetfrequencyCode(Index: Integer; const Astring: string);
begin
  FfrequencyCode := Astring;
  FfrequencyCode_Specified := True;
end;

function scheduleFrequency.frequencyCode_Specified(Index: Integer): boolean;
begin
  Result := FfrequencyCode_Specified;
end;

procedure scheduleFrequency.SetfrequencyTypeCode(Index: Integer; const Astring: string);
begin
  FfrequencyTypeCode := Astring;
  FfrequencyTypeCode_Specified := True;
end;

function scheduleFrequency.frequencyTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FfrequencyTypeCode_Specified;
end;

procedure scheduleFrequency.SetfrequencyUnit(Index: Integer; const AInteger: Integer);
begin
  FfrequencyUnit := AInteger;
  FfrequencyUnit_Specified := True;
end;

function scheduleFrequency.frequencyUnit_Specified(Index: Integer): boolean;
begin
  Result := FfrequencyUnit_Specified;
end;

procedure scheduleFrequency.SetlocalRunTime(Index: Integer; const AInteger: Integer);
begin
  FlocalRunTime := AInteger;
  FlocalRunTime_Specified := True;
end;

function scheduleFrequency.localRunTime_Specified(Index: Integer): boolean;
begin
  Result := FlocalRunTime_Specified;
end;

procedure scheduleFrequency.SetlocalTimezoneCode(Index: Integer; const Astring: string);
begin
  FlocalTimezoneCode := Astring;
  FlocalTimezoneCode_Specified := True;
end;

function scheduleFrequency.localTimezoneCode_Specified(Index: Integer): boolean;
begin
  Result := FlocalTimezoneCode_Specified;
end;

procedure entry2.Setkey(Index: Integer; const Astring: string);
begin
  Fkey := Astring;
  Fkey_Specified := True;
end;

function entry2.key_Specified(Index: Integer): boolean;
begin
  Result := Fkey_Specified;
end;

procedure entry2.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function entry2.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

procedure importOption.SetitemIndex(Index: Integer; const AInteger: Integer);
begin
  FitemIndex := AInteger;
  FitemIndex_Specified := True;
end;

function importOption.itemIndex_Specified(Index: Integer): boolean;
begin
  Result := FitemIndex_Specified;
end;

procedure importOption.SetoptionKey(Index: Integer; const Astring: string);
begin
  FoptionKey := Astring;
  FoptionKey_Specified := True;
end;

function importOption.optionKey_Specified(Index: Integer): boolean;
begin
  Result := FoptionKey_Specified;
end;

procedure importOption.SetoptionValue(Index: Integer; const Astring: string);
begin
  FoptionValue := Astring;
  FoptionValue_Specified := True;
end;

function importOption.optionValue_Specified(Index: Integer): boolean;
begin
  Result := FoptionValue_Specified;
end;

procedure administrationViewField.SetfieldCategory(Index: Integer; const Astring: string);
begin
  FfieldCategory := Astring;
  FfieldCategory_Specified := True;
end;

function administrationViewField.fieldCategory_Specified(Index: Integer): boolean;
begin
  Result := FfieldCategory_Specified;
end;

procedure administrationViewField.SetfieldId(Index: Integer; const AInteger: Integer);
begin
  FfieldId := AInteger;
  FfieldId_Specified := True;
end;

function administrationViewField.fieldId_Specified(Index: Integer): boolean;
begin
  Result := FfieldId_Specified;
end;

procedure administrationViewField.SetlongDescription(Index: Integer; const Astring: string);
begin
  FlongDescription := Astring;
  FlongDescription_Specified := True;
end;

function administrationViewField.longDescription_Specified(Index: Integer): boolean;
begin
  Result := FlongDescription_Specified;
end;

procedure administrationViewField.SetshortDescription(Index: Integer; const Astring: string);
begin
  FshortDescription := Astring;
  FshortDescription_Specified := True;
end;

function administrationViewField.shortDescription_Specified(Index: Integer): boolean;
begin
  Result := FshortDescription_Specified;
end;

procedure administrationFunction.SetaccessLevelCode(Index: Integer; const Astring: string);
begin
  FaccessLevelCode := Astring;
  FaccessLevelCode_Specified := True;
end;

function administrationFunction.accessLevelCode_Specified(Index: Integer): boolean;
begin
  Result := FaccessLevelCode_Specified;
end;

procedure administrationFunction.SetfunctionCode(Index: Integer; const Astring: string);
begin
  FfunctionCode := Astring;
  FfunctionCode_Specified := True;
end;

function administrationFunction.functionCode_Specified(Index: Integer): boolean;
begin
  Result := FfunctionCode_Specified;
end;

procedure administrationFunction.SetfunctionDescription(Index: Integer; const Astring: string);
begin
  FfunctionDescription := Astring;
  FfunctionDescription_Specified := True;
end;

function administrationFunction.functionDescription_Specified(Index: Integer): boolean;
begin
  Result := FfunctionDescription_Specified;
end;

procedure administrationFunction.SetfunctionName(Index: Integer; const Astring: string);
begin
  FfunctionName := Astring;
  FfunctionName_Specified := True;
end;

function administrationFunction.functionName_Specified(Index: Integer): boolean;
begin
  Result := FfunctionName_Specified;
end;

procedure administrationFunction.SetfunctionTypeCode(Index: Integer; const Astring: string);
begin
  FfunctionTypeCode := Astring;
  FfunctionTypeCode_Specified := True;
end;

function administrationFunction.functionTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FfunctionTypeCode_Specified;
end;

procedure administrationDataSourceClientLink.SetclientOrgId(Index: Integer; const AInteger: Integer);
begin
  FclientOrgId := AInteger;
  FclientOrgId_Specified := True;
end;

function administrationDataSourceClientLink.clientOrgId_Specified(Index: Integer): boolean;
begin
  Result := FclientOrgId_Specified;
end;

procedure administrationDataSourceClientLink.SetclientOrgName(Index: Integer; const Astring: string);
begin
  FclientOrgName := Astring;
  FclientOrgName_Specified := True;
end;

function administrationDataSourceClientLink.clientOrgName_Specified(Index: Integer): boolean;
begin
  Result := FclientOrgName_Specified;
end;

procedure administrationDataSourceClientLink.SetclientOrgRef(Index: Integer; const Astring: string);
begin
  FclientOrgRef := Astring;
  FclientOrgRef_Specified := True;
end;

function administrationDataSourceClientLink.clientOrgRef_Specified(Index: Integer): boolean;
begin
  Result := FclientOrgRef_Specified;
end;

procedure administrationDataSourceClientLink.SetsourceId(Index: Integer; const AInteger: Integer);
begin
  FsourceId := AInteger;
  FsourceId_Specified := True;
end;

function administrationDataSourceClientLink.sourceId_Specified(Index: Integer): boolean;
begin
  Result := FsourceId_Specified;
end;

procedure administrationDataSourceClientLink.SetsourceName(Index: Integer; const Astring: string);
begin
  FsourceName := Astring;
  FsourceName_Specified := True;
end;

function administrationDataSourceClientLink.sourceName_Specified(Index: Integer): boolean;
begin
  Result := FsourceName_Specified;
end;

destructor administrationDataSource.Destroy;
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

procedure administrationDataSource.SetaccessLevelCode(Index: Integer; const Astring: string);
begin
  FaccessLevelCode := Astring;
  FaccessLevelCode_Specified := True;
end;

function administrationDataSource.accessLevelCode_Specified(Index: Integer): boolean;
begin
  Result := FaccessLevelCode_Specified;
end;

procedure administrationDataSource.SetclientSources(Index: Integer; const AArray_Of_administrationDataSourceClientLink: Array_Of_administrationDataSourceClientLink);
begin
  FclientSources := AArray_Of_administrationDataSourceClientLink;
  FclientSources_Specified := True;
end;

function administrationDataSource.clientSources_Specified(Index: Integer): boolean;
begin
  Result := FclientSources_Specified;
end;

procedure administrationDataSource.SetconnectionDriver(Index: Integer; const Astring: string);
begin
  FconnectionDriver := Astring;
  FconnectionDriver_Specified := True;
end;

function administrationDataSource.connectionDriver_Specified(Index: Integer): boolean;
begin
  Result := FconnectionDriver_Specified;
end;

procedure administrationDataSource.SetconnectionPath(Index: Integer; const Astring: string);
begin
  FconnectionPath := Astring;
  FconnectionPath_Specified := True;
end;

function administrationDataSource.connectionPath_Specified(Index: Integer): boolean;
begin
  Result := FconnectionPath_Specified;
end;

procedure administrationDataSource.SetconnectionString(Index: Integer; const Astring: string);
begin
  FconnectionString := Astring;
  FconnectionString_Specified := True;
end;

function administrationDataSource.connectionString_Specified(Index: Integer): boolean;
begin
  Result := FconnectionString_Specified;
end;

procedure administrationDataSource.SetconnectionTimeout(Index: Integer; const AInteger: Integer);
begin
  FconnectionTimeout := AInteger;
  FconnectionTimeout_Specified := True;
end;

function administrationDataSource.connectionTimeout_Specified(Index: Integer): boolean;
begin
  Result := FconnectionTimeout_Specified;
end;

procedure administrationDataSource.SetconnectionType(Index: Integer; const Astring: string);
begin
  FconnectionType := Astring;
  FconnectionType_Specified := True;
end;

function administrationDataSource.connectionType_Specified(Index: Integer): boolean;
begin
  Result := FconnectionType_Specified;
end;

procedure administrationDataSource.SetconnectionTypeCode(Index: Integer; const Astring: string);
begin
  FconnectionTypeCode := Astring;
  FconnectionTypeCode_Specified := True;
end;

function administrationDataSource.connectionTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FconnectionTypeCode_Specified;
end;

procedure administrationDataSource.SetlogFile(Index: Integer; const Astring: string);
begin
  FlogFile := Astring;
  FlogFile_Specified := True;
end;

function administrationDataSource.logFile_Specified(Index: Integer): boolean;
begin
  Result := FlogFile_Specified;
end;

procedure administrationDataSource.SetmaxAnalysisRows(Index: Integer; const AInteger: Integer);
begin
  FmaxAnalysisRows := AInteger;
  FmaxAnalysisRows_Specified := True;
end;

function administrationDataSource.maxAnalysisRows_Specified(Index: Integer): boolean;
begin
  Result := FmaxAnalysisRows_Specified;
end;

procedure administrationDataSource.SetmaxRows(Index: Integer; const AInteger: Integer);
begin
  FmaxRows := AInteger;
  FmaxRows_Specified := True;
end;

function administrationDataSource.maxRows_Specified(Index: Integer): boolean;
begin
  Result := FmaxRows_Specified;
end;

procedure administrationDataSource.SetmaxmimumConnections(Index: Integer; const AInteger: Integer);
begin
  FmaxmimumConnections := AInteger;
  FmaxmimumConnections_Specified := True;
end;

function administrationDataSource.maxmimumConnections_Specified(Index: Integer): boolean;
begin
  Result := FmaxmimumConnections_Specified;
end;

procedure administrationDataSource.SetminimumConnections(Index: Integer; const AInteger: Integer);
begin
  FminimumConnections := AInteger;
  FminimumConnections_Specified := True;
end;

function administrationDataSource.minimumConnections_Specified(Index: Integer): boolean;
begin
  Result := FminimumConnections_Specified;
end;

procedure administrationDataSource.SetrefreshTime(Index: Integer; const AInteger: Integer);
begin
  FrefreshTime := AInteger;
  FrefreshTime_Specified := True;
end;

function administrationDataSource.refreshTime_Specified(Index: Integer): boolean;
begin
  Result := FrefreshTime_Specified;
end;

procedure administrationDataSource.SetsourceDescription(Index: Integer; const Astring: string);
begin
  FsourceDescription := Astring;
  FsourceDescription_Specified := True;
end;

function administrationDataSource.sourceDescription_Specified(Index: Integer): boolean;
begin
  Result := FsourceDescription_Specified;
end;

procedure administrationDataSource.SetsourceId(Index: Integer; const AInteger: Integer);
begin
  FsourceId := AInteger;
  FsourceId_Specified := True;
end;

function administrationDataSource.sourceId_Specified(Index: Integer): boolean;
begin
  Result := FsourceId_Specified;
end;

procedure administrationDataSource.SetsourceName(Index: Integer; const Astring: string);
begin
  FsourceName := Astring;
  FsourceName_Specified := True;
end;

function administrationDataSource.sourceName_Specified(Index: Integer): boolean;
begin
  Result := FsourceName_Specified;
end;

procedure administrationDataSource.SetsourceOptions(Index: Integer; const AArray_Of_administrationDataSourceOption: Array_Of_administrationDataSourceOption);
begin
  FsourceOptions := AArray_Of_administrationDataSourceOption;
  FsourceOptions_Specified := True;
end;

function administrationDataSource.sourceOptions_Specified(Index: Integer): boolean;
begin
  Result := FsourceOptions_Specified;
end;

procedure administrationDataSource.SetsourceType(Index: Integer; const Astring: string);
begin
  FsourceType := Astring;
  FsourceType_Specified := True;
end;

function administrationDataSource.sourceType_Specified(Index: Integer): boolean;
begin
  Result := FsourceType_Specified;
end;

procedure administrationDataSource.Settimezone(Index: Integer; const Astring: string);
begin
  Ftimezone := Astring;
  Ftimezone_Specified := True;
end;

function administrationDataSource.timezone_Specified(Index: Integer): boolean;
begin
  Result := Ftimezone_Specified;
end;

procedure administrationDataSource.SetuserName(Index: Integer; const Astring: string);
begin
  FuserName := Astring;
  FuserName_Specified := True;
end;

function administrationDataSource.userName_Specified(Index: Integer): boolean;
begin
  Result := FuserName_Specified;
end;

procedure administrationDataSource.SetuserPassword(Index: Integer; const Astring: string);
begin
  FuserPassword := Astring;
  FuserPassword_Specified := True;
end;

function administrationDataSource.userPassword_Specified(Index: Integer): boolean;
begin
  Result := FuserPassword_Specified;
end;

procedure administrationClientOrg.SetclientId(Index: Integer; const AInteger: Integer);
begin
  FclientId := AInteger;
  FclientId_Specified := True;
end;

function administrationClientOrg.clientId_Specified(Index: Integer): boolean;
begin
  Result := FclientId_Specified;
end;

procedure administrationClientOrg.SetclientName(Index: Integer; const Astring: string);
begin
  FclientName := Astring;
  FclientName_Specified := True;
end;

function administrationClientOrg.clientName_Specified(Index: Integer): boolean;
begin
  Result := FclientName_Specified;
end;

procedure administrationClientOrg.SetclientReferenceId(Index: Integer; const Astring: string);
begin
  FclientReferenceId := Astring;
  FclientReferenceId_Specified := True;
end;

function administrationClientOrg.clientReferenceId_Specified(Index: Integer): boolean;
begin
  Result := FclientReferenceId_Specified;
end;

procedure administrationClientOrg.SettimeZoneCode(Index: Integer; const Astring: string);
begin
  FtimeZoneCode := Astring;
  FtimeZoneCode_Specified := True;
end;

function administrationClientOrg.timeZoneCode_Specified(Index: Integer): boolean;
begin
  Result := FtimeZoneCode_Specified;
end;

destructor administrationServiceRequest.Destroy;
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

procedure administrationServiceRequest.SetbinaryData(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  FbinaryData := ATByteSOAPArray;
  FbinaryData_Specified := True;
end;

function administrationServiceRequest.binaryData_Specified(Index: Integer): boolean;
begin
  Result := FbinaryData_Specified;
end;

procedure administrationServiceRequest.SetcacheCommands(Index: Integer; const AArray_Of_administrationCacheCommand: Array_Of_administrationCacheCommand);
begin
  FcacheCommands := AArray_Of_administrationCacheCommand;
  FcacheCommands_Specified := True;
end;

function administrationServiceRequest.cacheCommands_Specified(Index: Integer): boolean;
begin
  Result := FcacheCommands_Specified;
end;

procedure administrationServiceRequest.Setclient(Index: Integer; const AadministrationClientOrg: administrationClientOrg);
begin
  Fclient := AadministrationClientOrg;
  Fclient_Specified := True;
end;

function administrationServiceRequest.client_Specified(Index: Integer): boolean;
begin
  Result := Fclient_Specified;
end;

procedure administrationServiceRequest.SetcontentResources(Index: Integer; const AArray_Of_contentResource: Array_Of_contentResource);
begin
  FcontentResources := AArray_Of_contentResource;
  FcontentResources_Specified := True;
end;

function administrationServiceRequest.contentResources_Specified(Index: Integer): boolean;
begin
  Result := FcontentResources_Specified;
end;

procedure administrationServiceRequest.SetcustomParameters(Index: Integer; const Astring: string);
begin
  FcustomParameters := Astring;
  FcustomParameters_Specified := True;
end;

function administrationServiceRequest.customParameters_Specified(Index: Integer): boolean;
begin
  Result := FcustomParameters_Specified;
end;

procedure administrationServiceRequest.SetdashboardTabId(Index: Integer; const AInteger: Integer);
begin
  FdashboardTabId := AInteger;
  FdashboardTabId_Specified := True;
end;

function administrationServiceRequest.dashboardTabId_Specified(Index: Integer): boolean;
begin
  Result := FdashboardTabId_Specified;
end;

procedure administrationServiceRequest.Setdatasource(Index: Integer; const AadministrationDataSource: administrationDataSource);
begin
  Fdatasource := AadministrationDataSource;
  Fdatasource_Specified := True;
end;

function administrationServiceRequest.datasource_Specified(Index: Integer): boolean;
begin
  Result := Fdatasource_Specified;
end;

procedure administrationServiceRequest.Setfavourite(Index: Integer; const ApersonFavourite: personFavourite);
begin
  Ffavourite := ApersonFavourite;
  Ffavourite_Specified := True;
end;

function administrationServiceRequest.favourite_Specified(Index: Integer): boolean;
begin
  Result := Ffavourite_Specified;
end;

procedure administrationServiceRequest.Setfield(Index: Integer; const AadministrationViewField: administrationViewField);
begin
  Ffield := AadministrationViewField;
  Ffield_Specified := True;
end;

function administrationServiceRequest.field_Specified(Index: Integer): boolean;
begin
  Result := Ffield_Specified;
end;

procedure administrationServiceRequest.Setfunction_(Index: Integer; const Astring: string);
begin
  Ffunction_ := Astring;
  Ffunction__Specified := True;
end;

function administrationServiceRequest.function__Specified(Index: Integer): boolean;
begin
  Result := Ffunction__Specified;
end;

procedure administrationServiceRequest.Setgroup(Index: Integer; const AadministrationGroup: administrationGroup);
begin
  Fgroup := AadministrationGroup;
  Fgroup_Specified := True;
end;

function administrationServiceRequest.group_Specified(Index: Integer): boolean;
begin
  Result := Fgroup_Specified;
end;

procedure administrationServiceRequest.SetimportOptions(Index: Integer; const AArray_Of_importOption: Array_Of_importOption);
begin
  FimportOptions := AArray_Of_importOption;
  FimportOptions_Specified := True;
end;

function administrationServiceRequest.importOptions_Specified(Index: Integer): boolean;
begin
  Result := FimportOptions_Specified;
end;

procedure administrationServiceRequest.SetloginId(Index: Integer; const Astring: string);
begin
  FloginId := Astring;
  FloginId_Specified := True;
end;

function administrationServiceRequest.loginId_Specified(Index: Integer): boolean;
begin
  Result := FloginId_Specified;
end;

procedure administrationServiceRequest.SetloginSessionId(Index: Integer; const Astring: string);
begin
  FloginSessionId := Astring;
  FloginSessionId_Specified := True;
end;

function administrationServiceRequest.loginSessionId_Specified(Index: Integer): boolean;
begin
  Result := FloginSessionId_Specified;
end;

procedure administrationServiceRequest.SetorgId(Index: Integer; const AInteger: Integer);
begin
  ForgId := AInteger;
  ForgId_Specified := True;
end;

function administrationServiceRequest.orgId_Specified(Index: Integer): boolean;
begin
  Result := ForgId_Specified;
end;

procedure administrationServiceRequest.SetorgRef(Index: Integer; const Astring: string);
begin
  ForgRef := Astring;
  ForgRef_Specified := True;
end;

function administrationServiceRequest.orgRef_Specified(Index: Integer): boolean;
begin
  Result := ForgRef_Specified;
end;

procedure administrationServiceRequest.Setparameters(Index: Integer; const AreportRow: reportRow);
begin
  Fparameters := AreportRow;
  Fparameters_Specified := True;
end;

function administrationServiceRequest.parameters_Specified(Index: Integer): boolean;
begin
  Result := Fparameters_Specified;
end;

procedure administrationServiceRequest.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function administrationServiceRequest.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure administrationServiceRequest.Setpeople(Index: Integer; const AArray_Of_administrationPerson: Array_Of_administrationPerson);
begin
  Fpeople := AArray_Of_administrationPerson;
  Fpeople_Specified := True;
end;

function administrationServiceRequest.people_Specified(Index: Integer): boolean;
begin
  Result := Fpeople_Specified;
end;

procedure administrationServiceRequest.Setperson(Index: Integer; const AadministrationPerson: administrationPerson);
begin
  Fperson := AadministrationPerson;
  Fperson_Specified := True;
end;

function administrationServiceRequest.person_Specified(Index: Integer): boolean;
begin
  Result := Fperson_Specified;
end;

procedure administrationServiceRequest.Setquery(Index: Integer; const Astring: string);
begin
  Fquery := Astring;
  Fquery_Specified := True;
end;

function administrationServiceRequest.query_Specified(Index: Integer): boolean;
begin
  Result := Fquery_Specified;
end;

procedure administrationServiceRequest.SetreassignContentIpPerson(Index: Integer; const AInteger: Integer);
begin
  FreassignContentIpPerson := AInteger;
  FreassignContentIpPerson_Specified := True;
end;

function administrationServiceRequest.reassignContentIpPerson_Specified(Index: Integer): boolean;
begin
  Result := FreassignContentIpPerson_Specified;
end;

procedure administrationServiceRequest.Setreport(Index: Integer; const AadministrationReport: administrationReport);
begin
  Freport := AadministrationReport;
  Freport_Specified := True;
end;

function administrationServiceRequest.report_Specified(Index: Integer): boolean;
begin
  Result := Freport_Specified;
end;

procedure administrationServiceRequest.SetreportGroup(Index: Integer; const AadministrationReportGroup: administrationReportGroup);
begin
  FreportGroup := AadministrationReportGroup;
  FreportGroup_Specified := True;
end;

function administrationServiceRequest.reportGroup_Specified(Index: Integer): boolean;
begin
  Result := FreportGroup_Specified;
end;

procedure administrationServiceRequest.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function administrationServiceRequest.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure administrationServiceRequest.SetretrospectiveDays(Index: Integer; const AInteger: Integer);
begin
  FretrospectiveDays := AInteger;
  FretrospectiveDays_Specified := True;
end;

function administrationServiceRequest.retrospectiveDays_Specified(Index: Integer): boolean;
begin
  Result := FretrospectiveDays_Specified;
end;

procedure administrationServiceRequest.Setrole(Index: Integer; const AadministrationRole: administrationRole);
begin
  Frole := AadministrationRole;
  Frole_Specified := True;
end;

function administrationServiceRequest.role_Specified(Index: Integer): boolean;
begin
  Result := Frole_Specified;
end;

procedure administrationServiceRequest.Setschedule(Index: Integer; const AadministrationSchedule: administrationSchedule);
begin
  Fschedule := AadministrationSchedule;
  Fschedule_Specified := True;
end;

function administrationServiceRequest.schedule_Specified(Index: Integer): boolean;
begin
  Result := Fschedule_Specified;
end;

procedure administrationServiceRequest.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function administrationServiceRequest.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

procedure administrationServiceRequest.SetsourceClientLink(Index: Integer; const AadministrationDataSourceClientLink: administrationDataSourceClientLink);
begin
  FsourceClientLink := AadministrationDataSourceClientLink;
  FsourceClientLink_Specified := True;
end;

function administrationServiceRequest.sourceClientLink_Specified(Index: Integer): boolean;
begin
  Result := FsourceClientLink_Specified;
end;

procedure administrationServiceRequest.SetsourceId(Index: Integer; const AInteger: Integer);
begin
  FsourceId := AInteger;
  FsourceId_Specified := True;
end;

function administrationServiceRequest.sourceId_Specified(Index: Integer): boolean;
begin
  Result := FsourceId_Specified;
end;

procedure administrationServiceRequest.Settask(Index: Integer; const AadministrationTask: administrationTask);
begin
  Ftask := AadministrationTask;
  Ftask_Specified := True;
end;

function administrationServiceRequest.task_Specified(Index: Integer): boolean;
begin
  Result := Ftask_Specified;
end;

procedure administrationServiceRequest.SetviewId(Index: Integer; const AInteger: Integer);
begin
  FviewId := AInteger;
  FviewId_Specified := True;
end;

function administrationServiceRequest.viewId_Specified(Index: Integer): boolean;
begin
  Result := FviewId_Specified;
end;

procedure administrationServiceRequest.SetyellowfinContentExportFileType(Index: Integer; const Astring: string);
begin
  FyellowfinContentExportFileType := Astring;
  FyellowfinContentExportFileType_Specified := True;
end;

function administrationServiceRequest.yellowfinContentExportFileType_Specified(Index: Integer): boolean;
begin
  Result := FyellowfinContentExportFileType_Specified;
end;

procedure reportBinaryObject.SetcontentType(Index: Integer; const Astring: string);
begin
  FcontentType := Astring;
  FcontentType_Specified := True;
end;

function reportBinaryObject.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure reportBinaryObject.Setdata(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  Fdata := ATByteSOAPArray;
  Fdata_Specified := True;
end;

function reportBinaryObject.data_Specified(Index: Integer): boolean;
begin
  Result := Fdata_Specified;
end;

procedure reportBinaryObject.Setkey(Index: Integer; const Astring: string);
begin
  Fkey := Astring;
  Fkey_Specified := True;
end;

function reportBinaryObject.key_Specified(Index: Integer): boolean;
begin
  Result := Fkey_Specified;
end;

destructor administrationSchedule.Destroy;
begin
  System.SysUtils.FreeAndNil(Ffrequency);
  System.SysUtils.FreeAndNil(FlastRunDateTimeGMT);
  System.SysUtils.FreeAndNil(FnextRunDateTimeGMT);
  inherited Destroy;
end;

procedure administrationSchedule.Setfrequency(Index: Integer; const AscheduleFrequency: scheduleFrequency);
begin
  Ffrequency := AscheduleFrequency;
  Ffrequency_Specified := True;
end;

function administrationSchedule.frequency_Specified(Index: Integer): boolean;
begin
  Result := Ffrequency_Specified;
end;

procedure administrationSchedule.SetlastRunDateTimeGMT(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FlastRunDateTimeGMT := ATXSDateTime;
  FlastRunDateTimeGMT_Specified := True;
end;

function administrationSchedule.lastRunDateTimeGMT_Specified(Index: Integer): boolean;
begin
  Result := FlastRunDateTimeGMT_Specified;
end;

procedure administrationSchedule.SetlastRunError(Index: Integer; const Astring: string);
begin
  FlastRunError := Astring;
  FlastRunError_Specified := True;
end;

function administrationSchedule.lastRunError_Specified(Index: Integer): boolean;
begin
  Result := FlastRunError_Specified;
end;

procedure administrationSchedule.SetlastRunStatus(Index: Integer; const Astring: string);
begin
  FlastRunStatus := Astring;
  FlastRunStatus_Specified := True;
end;

function administrationSchedule.lastRunStatus_Specified(Index: Integer): boolean;
begin
  Result := FlastRunStatus_Specified;
end;

procedure administrationSchedule.SetnextRunDateTimeGMT(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FnextRunDateTimeGMT := ATXSDateTime;
  FnextRunDateTimeGMT_Specified := True;
end;

function administrationSchedule.nextRunDateTimeGMT_Specified(Index: Integer): boolean;
begin
  Result := FnextRunDateTimeGMT_Specified;
end;

procedure administrationSchedule.SetparentScheduleUUID(Index: Integer; const Astring: string);
begin
  FparentScheduleUUID := Astring;
  FparentScheduleUUID_Specified := True;
end;

function administrationSchedule.parentScheduleUUID_Specified(Index: Integer): boolean;
begin
  Result := FparentScheduleUUID_Specified;
end;

procedure administrationSchedule.SetscheduleDescription(Index: Integer; const Astring: string);
begin
  FscheduleDescription := Astring;
  FscheduleDescription_Specified := True;
end;

function administrationSchedule.scheduleDescription_Specified(Index: Integer): boolean;
begin
  Result := FscheduleDescription_Specified;
end;

procedure administrationSchedule.SetscheduleTypeCode(Index: Integer; const Astring: string);
begin
  FscheduleTypeCode := Astring;
  FscheduleTypeCode_Specified := True;
end;

function administrationSchedule.scheduleTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FscheduleTypeCode_Specified;
end;

procedure administrationSchedule.SetscheduleTypeName(Index: Integer; const Astring: string);
begin
  FscheduleTypeName := Astring;
  FscheduleTypeName_Specified := True;
end;

function administrationSchedule.scheduleTypeName_Specified(Index: Integer): boolean;
begin
  Result := FscheduleTypeName_Specified;
end;

procedure administrationSchedule.SetscheduleUUID(Index: Integer; const Astring: string);
begin
  FscheduleUUID := Astring;
  FscheduleUUID_Specified := True;
end;

function administrationSchedule.scheduleUUID_Specified(Index: Integer): boolean;
begin
  Result := FscheduleUUID_Specified;
end;

destructor administrationReport.Destroy;
begin
  System.SysUtils.FreeAndNil(FlastModifiedDate);
  System.SysUtils.FreeAndNil(FpublishDate);
  inherited Destroy;
end;

procedure administrationReport.SetauthoringMode(Index: Integer; const Astring: string);
begin
  FauthoringMode := Astring;
  FauthoringMode_Specified := True;
end;

function administrationReport.authoringMode_Specified(Index: Integer): boolean;
begin
  Result := FauthoringMode_Specified;
end;

procedure administrationReport.SetaverageRunTime(Index: Integer; const AInteger: Integer);
begin
  FaverageRunTime := AInteger;
  FaverageRunTime_Specified := True;
end;

function administrationReport.averageRunTime_Specified(Index: Integer): boolean;
begin
  Result := FaverageRunTime_Specified;
end;

procedure administrationReport.SetbirtData(Index: Integer; const Astring: string);
begin
  FbirtData := Astring;
  FbirtData_Specified := True;
end;

function administrationReport.birtData_Specified(Index: Integer): boolean;
begin
  Result := FbirtData_Specified;
end;

procedure administrationReport.SetchartTypeCode(Index: Integer; const Astring: string);
begin
  FchartTypeCode := Astring;
  FchartTypeCode_Specified := True;
end;

function administrationReport.chartTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FchartTypeCode_Specified;
end;

procedure administrationReport.SetdataOutput(Index: Integer; const Astring: string);
begin
  FdataOutput := Astring;
  FdataOutput_Specified := True;
end;

function administrationReport.dataOutput_Specified(Index: Integer): boolean;
begin
  Result := FdataOutput_Specified;
end;

procedure administrationReport.SetdeliveryMode(Index: Integer; const Astring: string);
begin
  FdeliveryMode := Astring;
  FdeliveryMode_Specified := True;
end;

function administrationReport.deliveryMode_Specified(Index: Integer): boolean;
begin
  Result := FdeliveryMode_Specified;
end;

procedure administrationReport.SetexecutionObject(Index: Integer; const Astring: string);
begin
  FexecutionObject := Astring;
  FexecutionObject_Specified := True;
end;

function administrationReport.executionObject_Specified(Index: Integer): boolean;
begin
  Result := FexecutionObject_Specified;
end;

procedure administrationReport.SetlastModifiedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FlastModifiedDate := ATXSDateTime;
  FlastModifiedDate_Specified := True;
end;

function administrationReport.lastModifiedDate_Specified(Index: Integer): boolean;
begin
  Result := FlastModifiedDate_Specified;
end;

procedure administrationReport.SetlastModifierId(Index: Integer; const AInteger: Integer);
begin
  FlastModifierId := AInteger;
  FlastModifierId_Specified := True;
end;

function administrationReport.lastModifierId_Specified(Index: Integer): boolean;
begin
  Result := FlastModifierId_Specified;
end;

procedure administrationReport.SetlastModifierName(Index: Integer; const Astring: string);
begin
  FlastModifierName := Astring;
  FlastModifierName_Specified := True;
end;

function administrationReport.lastModifierName_Specified(Index: Integer): boolean;
begin
  Result := FlastModifierName_Specified;
end;

procedure administrationReport.SetlastRunTime(Index: Integer; const AInteger: Integer);
begin
  FlastRunTime := AInteger;
  FlastRunTime_Specified := True;
end;

function administrationReport.lastRunTime_Specified(Index: Integer): boolean;
begin
  Result := FlastRunTime_Specified;
end;

procedure administrationReport.SetpublishDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FpublishDate := ATXSDateTime;
  FpublishDate_Specified := True;
end;

function administrationReport.publishDate_Specified(Index: Integer): boolean;
begin
  Result := FpublishDate_Specified;
end;

procedure administrationReport.SetreportCategory(Index: Integer; const Astring: string);
begin
  FreportCategory := Astring;
  FreportCategory_Specified := True;
end;

function administrationReport.reportCategory_Specified(Index: Integer): boolean;
begin
  Result := FreportCategory_Specified;
end;

procedure administrationReport.SetreportDescription(Index: Integer; const Astring: string);
begin
  FreportDescription := Astring;
  FreportDescription_Specified := True;
end;

function administrationReport.reportDescription_Specified(Index: Integer): boolean;
begin
  Result := FreportDescription_Specified;
end;

procedure administrationReport.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function administrationReport.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure administrationReport.SetreportName(Index: Integer; const Astring: string);
begin
  FreportName := Astring;
  FreportName_Specified := True;
end;

function administrationReport.reportName_Specified(Index: Integer): boolean;
begin
  Result := FreportName_Specified;
end;

procedure administrationReport.SetreportSubCategory(Index: Integer; const Astring: string);
begin
  FreportSubCategory := Astring;
  FreportSubCategory_Specified := True;
end;

function administrationReport.reportSubCategory_Specified(Index: Integer): boolean;
begin
  Result := FreportSubCategory_Specified;
end;

procedure administrationReport.SetreportTemplate(Index: Integer; const Astring: string);
begin
  FreportTemplate := Astring;
  FreportTemplate_Specified := True;
end;

function administrationReport.reportTemplate_Specified(Index: Integer): boolean;
begin
  Result := FreportTemplate_Specified;
end;

procedure administrationReport.SetreportUUID(Index: Integer; const Astring: string);
begin
  FreportUUID := Astring;
  FreportUUID_Specified := True;
end;

function administrationReport.reportUUID_Specified(Index: Integer): boolean;
begin
  Result := FreportUUID_Specified;
end;

procedure administrationReport.SetroleCode(Index: Integer; const Astring: string);
begin
  FroleCode := Astring;
  FroleCode_Specified := True;
end;

function administrationReport.roleCode_Specified(Index: Integer): boolean;
begin
  Result := FroleCode_Specified;
end;

procedure administrationReport.SetsourceId(Index: Integer; const AInteger: Integer);
begin
  FsourceId := AInteger;
  FsourceId_Specified := True;
end;

function administrationReport.sourceId_Specified(Index: Integer): boolean;
begin
  Result := FsourceId_Specified;
end;

procedure administrationReport.SetsourceName(Index: Integer; const Astring: string);
begin
  FsourceName := Astring;
  FsourceName_Specified := True;
end;

function administrationReport.sourceName_Specified(Index: Integer): boolean;
begin
  Result := FsourceName_Specified;
end;

procedure administrationReport.Setusage(Index: Integer; const AInteger: Integer);
begin
  Fusage := AInteger;
  Fusage_Specified := True;
end;

function administrationReport.usage_Specified(Index: Integer): boolean;
begin
  Result := Fusage_Specified;
end;

procedure administrationReport.SetviewDescription(Index: Integer; const Astring: string);
begin
  FviewDescription := Astring;
  FviewDescription_Specified := True;
end;

function administrationReport.viewDescription_Specified(Index: Integer): boolean;
begin
  Result := FviewDescription_Specified;
end;

procedure administrationReport.SetviewId(Index: Integer; const AInteger: Integer);
begin
  FviewId := AInteger;
  FviewId_Specified := True;
end;

function administrationReport.viewId_Specified(Index: Integer): boolean;
begin
  Result := FviewId_Specified;
end;

procedure administrationReport.SetviewName(Index: Integer; const Astring: string);
begin
  FviewName := Astring;
  FviewName_Specified := True;
end;

function administrationReport.viewName_Specified(Index: Integer): boolean;
begin
  Result := FviewName_Specified;
end;

destructor administrationTask.Destroy;
begin
  System.SysUtils.FreeAndNil(FdueDate);
  inherited Destroy;
end;

procedure administrationTask.SetactivityText(Index: Integer; const Astring: string);
begin
  FactivityText := Astring;
  FactivityText_Specified := True;
end;

function administrationTask.activityText_Specified(Index: Integer): boolean;
begin
  Result := FactivityText_Specified;
end;

procedure administrationTask.SetdueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdueDate := ATXSDateTime;
  FdueDate_Specified := True;
end;

function administrationTask.dueDate_Specified(Index: Integer): boolean;
begin
  Result := FdueDate_Specified;
end;

procedure administrationTask.SettaskPriority(Index: Integer; const Astring: string);
begin
  FtaskPriority := Astring;
  FtaskPriority_Specified := True;
end;

function administrationTask.taskPriority_Specified(Index: Integer): boolean;
begin
  Result := FtaskPriority_Specified;
end;

procedure administrationTask.SettaskType(Index: Integer; const Astring: string);
begin
  FtaskType := Astring;
  FtaskType_Specified := True;
end;

function administrationTask.taskType_Specified(Index: Integer): boolean;
begin
  Result := FtaskType_Specified;
end;

procedure importIssueElement.SetmessageComponents(Index: Integer; const AreportRow: reportRow);
begin
  FmessageComponents := AreportRow;
  FmessageComponents_Specified := True;
end;

function importIssueElement.messageComponents_Specified(Index: Integer): boolean;
begin
  Result := FmessageComponents_Specified;
end;

procedure importIssueElement.SetmessageKey(Index: Integer; const Astring: string);
begin
  FmessageKey := Astring;
  FmessageKey_Specified := True;
end;

function importIssueElement.messageKey_Specified(Index: Integer): boolean;
begin
  Result := FmessageKey_Specified;
end;

procedure importIssueElement.SetrenderedMessage(Index: Integer; const Astring: string);
begin
  FrenderedMessage := Astring;
  FrenderedMessage_Specified := True;
end;

function importIssueElement.renderedMessage_Specified(Index: Integer): boolean;
begin
  Result := FrenderedMessage_Specified;
end;

procedure administrationGroupMember.SetinternalId(Index: Integer; const AInteger: Integer);
begin
  FinternalId := AInteger;
  FinternalId_Specified := True;
end;

function administrationGroupMember.internalId_Specified(Index: Integer): boolean;
begin
  Result := FinternalId_Specified;
end;

procedure administrationGroupMember.SetloginId(Index: Integer; const Astring: string);
begin
  FloginId := Astring;
  FloginId_Specified := True;
end;

function administrationGroupMember.loginId_Specified(Index: Integer): boolean;
begin
  Result := FloginId_Specified;
end;

procedure administrationDataSourceOption.SetoptionKey(Index: Integer; const Astring: string);
begin
  FoptionKey := Astring;
  FoptionKey_Specified := True;
end;

function administrationDataSourceOption.optionKey_Specified(Index: Integer): boolean;
begin
  Result := FoptionKey_Specified;
end;

procedure administrationDataSourceOption.SetoptionValue(Index: Integer; const Astring: string);
begin
  FoptionValue := Astring;
  FoptionValue_Specified := True;
end;

function administrationDataSourceOption.optionValue_Specified(Index: Integer): boolean;
begin
  Result := FoptionValue_Specified;
end;

procedure administrationDataSourceOption.SetvalueDataType(Index: Integer; const Astring: string);
begin
  FvalueDataType := Astring;
  FvalueDataType_Specified := True;
end;

function administrationDataSourceOption.valueDataType_Specified(Index: Integer): boolean;
begin
  Result := FvalueDataType_Specified;
end;

initialization
  { LegacyAdministrationService }
  InvRegistry.RegisterInterface(TypeInfo(LegacyAdministrationService), 'http://webservices.web.mi.hof.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(LegacyAdministrationService), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(LegacyAdministrationService), ioDocument);
  { LegacyAdministrationService.addColumnToViewsWithSourceId }
  InvRegistry.RegisterMethodInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceId', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceId', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceId', 'arg1', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceId', 'arg2', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceId', 'arg3', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceId', 'arg4', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceId', 'arg5', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceId', 'return', '',
                                '', IS_UNQL);
  { LegacyAdministrationService.addColumnToViewsWithSourceName }
  InvRegistry.RegisterMethodInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceName', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceName', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceName', 'arg1', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceName', 'arg2', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceName', 'arg3', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceName', 'arg4', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceName', 'arg5', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'addColumnToViewsWithSourceName', 'return', '',
                                '', IS_UNQL);
  { LegacyAdministrationService.remoteAdministrationCall }
  InvRegistry.RegisterMethodInfo(TypeInfo(LegacyAdministrationService), 'remoteAdministrationCall', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'remoteAdministrationCall', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyAdministrationService), 'remoteAdministrationCall', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportBinaryObject), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportBinaryObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationClientOrg), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationClientOrg');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_contentResource), 'http://webservices.web.mi.hof.com/', 'Array_Of_contentResource');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationDataSource), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationDataSource');
  RemClassRegistry.RegisterXSInfo(TypeInfo(commandArgs), 'http://webservices.web.mi.hof.com/', 'commandArgs');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationGroup), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationGroup');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationGroupMember), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationGroupMember');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationDataSourceOption), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationDataSourceOption');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationDataSourceClientLink), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationDataSourceClientLink');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationSchedule), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationSchedule');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_importIssueElement), 'http://webservices.web.mi.hof.com/', 'Array_Of_importIssueElement');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_importOption), 'http://webservices.web.mi.hof.com/', 'Array_Of_importOption');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationCacheCommand), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationCacheCommand');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationFunction), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationFunction');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationPerson), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationPerson');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_parentReportGroup), 'http://webservices.web.mi.hof.com/', 'Array_Of_parentReportGroup');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_parentDashboard), 'http://webservices.web.mi.hof.com/', 'Array_Of_parentDashboard');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_importIssue), 'http://webservices.web.mi.hof.com/', 'Array_Of_importIssue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_personFavourite), 'http://webservices.web.mi.hof.com/', 'Array_Of_personFavourite');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationRole), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationRole');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationReport), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationReport');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_administrationReportGroup), 'http://webservices.web.mi.hof.com/', 'Array_Of_administrationReportGroup');
  RemClassRegistry.RegisterXSClass(importIssue, 'http://webservices.web.mi.hof.com/', 'importIssue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(reportRow), 'http://webservices.web.mi.hof.com/', 'reportRow');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportRow), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportRow');
  RemClassRegistry.RegisterXSClass(administrationRole, 'http://webservices.web.mi.hof.com/', 'administrationRole');
  RemClassRegistry.RegisterXSClass(Exception, 'http://webservices.web.mi.hof.com/', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(entry, 'http://webservices.web.mi.hof.com/', 'entry');
  RemClassRegistry.RegisterXSClass(administrationGroup, 'http://webservices.web.mi.hof.com/', 'administrationGroup');
  RemClassRegistry.RegisterXSClass(administrationServiceResponse, 'http://webservices.web.mi.hof.com/', 'administrationServiceResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(administrationServiceResponse), 'messages', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterXSClass(parentDashboard, 'http://webservices.web.mi.hof.com/', 'parentDashboard');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(parentDashboard), 'statusCodes', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(parentDashboard), 'tabIds', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(parentDashboard), 'tabNames', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterXSClass(parentReportGroup, 'http://webservices.web.mi.hof.com/', 'parentReportGroup');
  RemClassRegistry.RegisterXSClass(administrationPerson, 'http://webservices.web.mi.hof.com/', 'administrationPerson');
  RemClassRegistry.RegisterXSClass(personFavourite, 'http://webservices.web.mi.hof.com/', 'personFavourite');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(personFavourite), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_int), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_int');
  RemClassRegistry.RegisterXSClass(administrationReportGroup, 'http://webservices.web.mi.hof.com/', 'administrationReportGroup');
  RemClassRegistry.RegisterXSClass(contentResource, 'http://webservices.web.mi.hof.com/', 'contentResource');
  RemClassRegistry.RegisterXSClass(administrationCacheCommand, 'http://webservices.web.mi.hof.com/', 'administrationCacheCommand');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(administrationCacheCommand), 'commandArgs', '[ArrayItemName="entry"]');
  RemClassRegistry.RegisterXSClass(Exception2, 'http://webservices.web.mi.hof.com/', 'Exception2', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(scheduleFrequency, 'http://webservices.web.mi.hof.com/', 'scheduleFrequency');
  RemClassRegistry.RegisterXSClass(entry2, 'http://webservices.web.mi.hof.com/', 'entry2', 'entry');
  RemClassRegistry.RegisterXSInfo(TypeInfo(roleFunctionList), 'http://webservices.web.mi.hof.com/', 'roleFunctionList');
  RemClassRegistry.RegisterXSClass(importOption, 'http://webservices.web.mi.hof.com/', 'importOption');
  RemClassRegistry.RegisterXSClass(administrationViewField, 'http://webservices.web.mi.hof.com/', 'administrationViewField');
  RemClassRegistry.RegisterXSClass(administrationFunction, 'http://webservices.web.mi.hof.com/', 'administrationFunction');
  RemClassRegistry.RegisterXSClass(administrationDataSourceClientLink, 'http://webservices.web.mi.hof.com/', 'administrationDataSourceClientLink');
  RemClassRegistry.RegisterXSClass(administrationDataSource, 'http://webservices.web.mi.hof.com/', 'administrationDataSource');
  RemClassRegistry.RegisterXSClass(administrationClientOrg, 'http://webservices.web.mi.hof.com/', 'administrationClientOrg');
  RemClassRegistry.RegisterXSClass(administrationServiceRequest, 'http://webservices.web.mi.hof.com/', 'administrationServiceRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(administrationServiceRequest), 'function_', '[ExtName="function"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(administrationServiceRequest), 'parameters', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(administrationServiceRequest), 'roleFunctionList', '[ArrayItemName="entry"]');
  RemClassRegistry.RegisterXSClass(reportBinaryObject, 'http://webservices.web.mi.hof.com/', 'reportBinaryObject');
  RemClassRegistry.RegisterXSClass(administrationSchedule, 'http://webservices.web.mi.hof.com/', 'administrationSchedule');
  RemClassRegistry.RegisterXSClass(administrationReport, 'http://webservices.web.mi.hof.com/', 'administrationReport');
  RemClassRegistry.RegisterXSClass(administrationTask, 'http://webservices.web.mi.hof.com/', 'administrationTask');
  RemClassRegistry.RegisterXSClass(importIssueElement, 'http://webservices.web.mi.hof.com/', 'importIssueElement');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(importIssueElement), 'messageComponents', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterXSClass(administrationGroupMember, 'http://webservices.web.mi.hof.com/', 'administrationGroupMember');
  RemClassRegistry.RegisterXSClass(administrationDataSourceOption, 'http://webservices.web.mi.hof.com/', 'administrationDataSourceOption');

end.