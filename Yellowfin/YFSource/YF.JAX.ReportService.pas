// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://172.16.174.137:8080/webservices/LegacyReportService?wsdl
//  >Import : http://172.16.174.137:8080/webservices/LegacyReportService?wsdl>0
//  >Import : http://172.16.174.137:8080/webservices/LegacyReportService?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (29/06/2022 10:30:08 - - $Rev: 108085 $)
// ************************************************************************ //

unit YF.JAX.ReportService;

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
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  gisLayer             = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  gMapPoint            = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportChart          = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  gMapPolygon          = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  Exception            = class;                 { "http://webservices.web.mi.hof.com/"[Flt][GblElm] }
  gisShape             = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  Exception2           = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  breadCrumb           = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  condition            = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  dashboardFilterDefinition = class;            { "http://webservices.web.mi.hof.com/"[GblCplx] }
  dashboardFilter      = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  scheduleRecord       = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportComment        = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  gMap                 = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportFilter         = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  timeAggregationSelection = class;             { "http://webservices.web.mi.hof.com/"[GblCplx] }
  storyboardDescriptor = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  sortableTableColumn  = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  timeSliderSelection  = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  dashboardFieldDefinition = class;             { "http://webservices.web.mi.hof.com/"[GblCplx] }
  dashboardElement     = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  seriesSelection      = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportBinaryObject   = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  kpi                  = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  drillAnywhereTargets = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  dashboardDefinition  = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  gisMap               = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportSchema         = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportServiceRequest = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportServiceResponse = class;                { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportTabSelection   = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  reportPageSelection  = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }
  relatedReports       = class;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }

  Array_Of_condition = array of condition;      { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_reportComment = array of reportComment;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_reportSchema = array of reportSchema;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_reportChart = array of reportChart;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_breadCrumb = array of breadCrumb;    { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_reportBinaryObject = array of reportBinaryObject;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_gMapPolygon = array of gMapPolygon;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : gisLayer, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  gisLayer = class(TRemotable)
  private
  published
  end;

  Array_Of_gMapPoint = array of gMapPoint;      { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_reportFilter = array of reportFilter;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_dashboardFilter = array of dashboardFilter;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_dashboardElement = array of dashboardElement;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_timeSliderSelection = array of timeSliderSelection;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_timeAggregationSelection = array of timeAggregationSelection;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_storyboardDescriptor = array of storyboardDescriptor;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_dashboardFieldDefinition = array of dashboardFieldDefinition;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_gisShape = array of gisShape;        { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_gisLayer = array of gisLayer;        { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_dashboardDefinition = array of dashboardDefinition;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_dashboardFilterDefinition = array of dashboardFilterDefinition;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_gMap = array of gMap;                { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_gisMap = array of gisMap;            { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_drillAnywhereTargets = array of drillAnywhereTargets;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_reportPageSelection = array of reportPageSelection;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_sortableTableColumn = array of sortableTableColumn;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_seriesSelection = array of seriesSelection;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_reportTabSelection = array of reportTabSelection;   { "http://webservices.web.mi.hof.com/"[GblUbnd] }
  Array_Of_double = array of Double;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : gMapPoint, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  gMapPoint = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : reportChart, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportChart = class(TRemotable)
  private
    FcontentType: string;
    FcontentType_Specified: boolean;
    Fdata: string;
    Fdata_Specified: boolean;
    Ffilename: string;
    Ffilename_Specified: boolean;
    FreportIndex: string;
    FreportIndex_Specified: boolean;
    procedure SetcontentType(Index: Integer; const Astring: string);
    function  contentType_Specified(Index: Integer): boolean;
    procedure Setdata(Index: Integer; const Astring: string);
    function  data_Specified(Index: Integer): boolean;
    procedure Setfilename(Index: Integer; const Astring: string);
    function  filename_Specified(Index: Integer): boolean;
    procedure SetreportIndex(Index: Integer; const Astring: string);
    function  reportIndex_Specified(Index: Integer): boolean;
  published
    property contentType: string  Index (IS_OPTN or IS_UNQL) read FcontentType write SetcontentType stored contentType_Specified;
    property data:        string  Index (IS_OPTN or IS_UNQL) read Fdata write Setdata stored data_Specified;
    property filename:    string  Index (IS_OPTN or IS_UNQL) read Ffilename write Setfilename stored filename_Specified;
    property reportIndex: string  Index (IS_OPTN or IS_UNQL) read FreportIndex write SetreportIndex stored reportIndex_Specified;
  end;



  // ************************************************************************ //
  // XML       : gMapPolygon, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  gMapPolygon = class(TRemotable)
  private
    Flongitude: Array_Of_double;
    Flongitude_Specified: boolean;
    Flatitude: Array_Of_double;
    Flatitude_Specified: boolean;
    Ftitle: string;
    Ftitle_Specified: boolean;
    Flink: string;
    Flink_Specified: boolean;
    FminLat: Double;
    FminLat_Specified: boolean;
    FmaxLat: Double;
    FmaxLat_Specified: boolean;
    FminLong: Double;
    FminLong_Specified: boolean;
    FmaxLong: Double;
    FmaxLong_Specified: boolean;
    Fcolor: string;
    Fcolor_Specified: boolean;
    procedure Setlongitude(Index: Integer; const AArray_Of_double: Array_Of_double);
    function  longitude_Specified(Index: Integer): boolean;
    procedure Setlatitude(Index: Integer; const AArray_Of_double: Array_Of_double);
    function  latitude_Specified(Index: Integer): boolean;
    procedure Settitle(Index: Integer; const Astring: string);
    function  title_Specified(Index: Integer): boolean;
    procedure Setlink(Index: Integer; const Astring: string);
    function  link_Specified(Index: Integer): boolean;
    procedure SetminLat(Index: Integer; const ADouble: Double);
    function  minLat_Specified(Index: Integer): boolean;
    procedure SetmaxLat(Index: Integer; const ADouble: Double);
    function  maxLat_Specified(Index: Integer): boolean;
    procedure SetminLong(Index: Integer; const ADouble: Double);
    function  minLong_Specified(Index: Integer): boolean;
    procedure SetmaxLong(Index: Integer; const ADouble: Double);
    function  maxLong_Specified(Index: Integer): boolean;
    procedure Setcolor(Index: Integer; const Astring: string);
    function  color_Specified(Index: Integer): boolean;
  published
    property longitude: Array_Of_double  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Flongitude write Setlongitude stored longitude_Specified;
    property latitude:  Array_Of_double  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Flatitude write Setlatitude stored latitude_Specified;
    property title:     string           Index (IS_OPTN or IS_UNQL) read Ftitle write Settitle stored title_Specified;
    property link:      string           Index (IS_OPTN or IS_UNQL) read Flink write Setlink stored link_Specified;
    property minLat:    Double           Index (IS_OPTN or IS_UNQL) read FminLat write SetminLat stored minLat_Specified;
    property maxLat:    Double           Index (IS_OPTN or IS_UNQL) read FmaxLat write SetmaxLat stored maxLat_Specified;
    property minLong:   Double           Index (IS_OPTN or IS_UNQL) read FminLong write SetminLong stored minLong_Specified;
    property maxLong:   Double           Index (IS_OPTN or IS_UNQL) read FmaxLong write SetmaxLong stored maxLong_Specified;
    property color:     string           Index (IS_OPTN or IS_UNQL) read Fcolor write Setcolor stored color_Specified;
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
  // XML       : gisShape, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  gisShape = class(TRemotable)
  private
    FinteractionCommand: string;
    FinteractionCommand_Specified: boolean;
    Ftooltip: string;
    Ftooltip_Specified: boolean;
    procedure SetinteractionCommand(Index: Integer; const Astring: string);
    function  interactionCommand_Specified(Index: Integer): boolean;
    procedure Settooltip(Index: Integer; const Astring: string);
    function  tooltip_Specified(Index: Integer): boolean;
  published
    property interactionCommand: string  Index (IS_OPTN or IS_UNQL) read FinteractionCommand write SetinteractionCommand stored interactionCommand_Specified;
    property tooltip:            string  Index (IS_OPTN or IS_UNQL) read Ftooltip write Settooltip stored tooltip_Specified;
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
  // XML       : breadCrumb, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  breadCrumb = class(TRemotable)
  private
    FentityDescription: string;
    FentityDescription_Specified: boolean;
    FentityId: Integer;
    FentityId_Specified: boolean;
    FentityValue: string;
    FentityValue_Specified: boolean;
    FfieldTemplateId: Integer;
    FfieldTemplateId_Specified: boolean;
    FhyperLink: string;
    FhyperLink_Specified: boolean;
    ForderId: Integer;
    ForderId_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    FtypeCode: string;
    FtypeCode_Specified: boolean;
    procedure SetentityDescription(Index: Integer; const Astring: string);
    function  entityDescription_Specified(Index: Integer): boolean;
    procedure SetentityId(Index: Integer; const AInteger: Integer);
    function  entityId_Specified(Index: Integer): boolean;
    procedure SetentityValue(Index: Integer; const Astring: string);
    function  entityValue_Specified(Index: Integer): boolean;
    procedure SetfieldTemplateId(Index: Integer; const AInteger: Integer);
    function  fieldTemplateId_Specified(Index: Integer): boolean;
    procedure SethyperLink(Index: Integer; const Astring: string);
    function  hyperLink_Specified(Index: Integer): boolean;
    procedure SetorderId(Index: Integer; const AInteger: Integer);
    function  orderId_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SettypeCode(Index: Integer; const Astring: string);
    function  typeCode_Specified(Index: Integer): boolean;
  published
    property entityDescription: string   Index (IS_OPTN or IS_UNQL) read FentityDescription write SetentityDescription stored entityDescription_Specified;
    property entityId:          Integer  Index (IS_OPTN or IS_UNQL) read FentityId write SetentityId stored entityId_Specified;
    property entityValue:       string   Index (IS_OPTN or IS_UNQL) read FentityValue write SetentityValue stored entityValue_Specified;
    property fieldTemplateId:   Integer  Index (IS_OPTN or IS_UNQL) read FfieldTemplateId write SetfieldTemplateId stored fieldTemplateId_Specified;
    property hyperLink:         string   Index (IS_OPTN or IS_UNQL) read FhyperLink write SethyperLink stored hyperLink_Specified;
    property orderId:           Integer  Index (IS_OPTN or IS_UNQL) read ForderId write SetorderId stored orderId_Specified;
    property reportId:          Integer  Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property typeCode:          string   Index (IS_OPTN or IS_UNQL) read FtypeCode write SettypeCode stored typeCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : condition, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  condition = class(TRemotable)
  private
    FfieldId: Integer;
    FfieldId_Specified: boolean;
    Foperator: string;
    Foperator_Specified: boolean;
    Fvalue1: string;
    Fvalue1_Specified: boolean;
    Fvalue2: string;
    Fvalue2_Specified: boolean;
    procedure SetfieldId(Index: Integer; const AInteger: Integer);
    function  fieldId_Specified(Index: Integer): boolean;
    procedure Setoperator(Index: Integer; const Astring: string);
    function  operator_Specified(Index: Integer): boolean;
    procedure Setvalue1(Index: Integer; const Astring: string);
    function  value1_Specified(Index: Integer): boolean;
    procedure Setvalue2(Index: Integer; const Astring: string);
    function  value2_Specified(Index: Integer): boolean;
  published
    property fieldId:  Integer  Index (IS_OPTN or IS_UNQL) read FfieldId write SetfieldId stored fieldId_Specified;
    property operator: string   Index (IS_OPTN or IS_UNQL) read Foperator write Setoperator stored operator_Specified;
    property value1:   string   Index (IS_OPTN or IS_UNQL) read Fvalue1 write Setvalue1 stored value1_Specified;
    property value2:   string   Index (IS_OPTN or IS_UNQL) read Fvalue2 write Setvalue2 stored value2_Specified;
  end;

  Array_Of_int = array of Integer;              { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : dashboardFilterDefinition, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  dashboardFilterDefinition = class(TRemotable)
  private
    FcomponentId: Integer;
    FcomponentId_Specified: boolean;
    FcomponentTypeCode: string;
    FcomponentTypeCode_Specified: boolean;
    FdashboardFilterId: Integer;
    FdashboardFilterId_Specified: boolean;
    FdashboardFilterUUID: string;
    FdashboardFilterUUID_Specified: boolean;
    FentityId: Integer;
    FentityId_Specified: boolean;
    FentityTypeCode: string;
    FentityTypeCode_Specified: boolean;
    FformatKey: string;
    FformatKey_Specified: boolean;
    FformatValue: string;
    FformatValue_Specified: boolean;
    FgroupId: Integer;
    FgroupId_Specified: boolean;
    FreportFilterUUID: string;
    FreportFilterUUID_Specified: boolean;
    procedure SetcomponentId(Index: Integer; const AInteger: Integer);
    function  componentId_Specified(Index: Integer): boolean;
    procedure SetcomponentTypeCode(Index: Integer; const Astring: string);
    function  componentTypeCode_Specified(Index: Integer): boolean;
    procedure SetdashboardFilterId(Index: Integer; const AInteger: Integer);
    function  dashboardFilterId_Specified(Index: Integer): boolean;
    procedure SetdashboardFilterUUID(Index: Integer; const Astring: string);
    function  dashboardFilterUUID_Specified(Index: Integer): boolean;
    procedure SetentityId(Index: Integer; const AInteger: Integer);
    function  entityId_Specified(Index: Integer): boolean;
    procedure SetentityTypeCode(Index: Integer; const Astring: string);
    function  entityTypeCode_Specified(Index: Integer): boolean;
    procedure SetformatKey(Index: Integer; const Astring: string);
    function  formatKey_Specified(Index: Integer): boolean;
    procedure SetformatValue(Index: Integer; const Astring: string);
    function  formatValue_Specified(Index: Integer): boolean;
    procedure SetgroupId(Index: Integer; const AInteger: Integer);
    function  groupId_Specified(Index: Integer): boolean;
    procedure SetreportFilterUUID(Index: Integer; const Astring: string);
    function  reportFilterUUID_Specified(Index: Integer): boolean;
  published
    property componentId:         Integer  Index (IS_OPTN or IS_UNQL) read FcomponentId write SetcomponentId stored componentId_Specified;
    property componentTypeCode:   string   Index (IS_OPTN or IS_UNQL) read FcomponentTypeCode write SetcomponentTypeCode stored componentTypeCode_Specified;
    property dashboardFilterId:   Integer  Index (IS_OPTN or IS_UNQL) read FdashboardFilterId write SetdashboardFilterId stored dashboardFilterId_Specified;
    property dashboardFilterUUID: string   Index (IS_OPTN or IS_UNQL) read FdashboardFilterUUID write SetdashboardFilterUUID stored dashboardFilterUUID_Specified;
    property entityId:            Integer  Index (IS_OPTN or IS_UNQL) read FentityId write SetentityId stored entityId_Specified;
    property entityTypeCode:      string   Index (IS_OPTN or IS_UNQL) read FentityTypeCode write SetentityTypeCode stored entityTypeCode_Specified;
    property formatKey:           string   Index (IS_OPTN or IS_UNQL) read FformatKey write SetformatKey stored formatKey_Specified;
    property formatValue:         string   Index (IS_OPTN or IS_UNQL) read FformatValue write SetformatValue stored formatValue_Specified;
    property groupId:             Integer  Index (IS_OPTN or IS_UNQL) read FgroupId write SetgroupId stored groupId_Specified;
    property reportFilterUUID:    string   Index (IS_OPTN or IS_UNQL) read FreportFilterUUID write SetreportFilterUUID stored reportFilterUUID_Specified;
  end;



  // ************************************************************************ //
  // XML       : dashboardFilter, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  dashboardFilter = class(TRemotable)
  private
    FfilterId: Integer;
    FfilterId_Specified: boolean;
    FfilterType: string;
    FfilterType_Specified: boolean;
    FfilterValue: string;
    FfilterValue_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    FtabId: Integer;
    FtabId_Specified: boolean;
    FtemplateId: Integer;
    FtemplateId_Specified: boolean;
    procedure SetfilterId(Index: Integer; const AInteger: Integer);
    function  filterId_Specified(Index: Integer): boolean;
    procedure SetfilterType(Index: Integer; const Astring: string);
    function  filterType_Specified(Index: Integer): boolean;
    procedure SetfilterValue(Index: Integer; const Astring: string);
    function  filterValue_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SettabId(Index: Integer; const AInteger: Integer);
    function  tabId_Specified(Index: Integer): boolean;
    procedure SettemplateId(Index: Integer; const AInteger: Integer);
    function  templateId_Specified(Index: Integer): boolean;
  published
    property filterId:    Integer  Index (IS_OPTN or IS_UNQL) read FfilterId write SetfilterId stored filterId_Specified;
    property filterType:  string   Index (IS_OPTN or IS_UNQL) read FfilterType write SetfilterType stored filterType_Specified;
    property filterValue: string   Index (IS_OPTN or IS_UNQL) read FfilterValue write SetfilterValue stored filterValue_Specified;
    property reportId:    Integer  Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property tabId:       Integer  Index (IS_OPTN or IS_UNQL) read FtabId write SettabId stored tabId_Specified;
    property templateId:  Integer  Index (IS_OPTN or IS_UNQL) read FtemplateId write SettemplateId stored templateId_Specified;
  end;



  // ************************************************************************ //
  // XML       : scheduleRecord, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  scheduleRecord = class(TRemotable)
  private
    FadvancedTime: Integer;
    FadvancedTime_Specified: boolean;
    FadvancedTimezoneCode: string;
    FadvancedTimezoneCode_Specified: boolean;
    FbodyText: string;
    FbodyText_Specified: boolean;
    FconditionList: Array_Of_condition;
    FconditionList_Specified: boolean;
    Fformat: string;
    Fformat_Specified: boolean;
    FfrequencyCode: string;
    FfrequencyCode_Specified: boolean;
    FfrequencyTypeCode: string;
    FfrequencyTypeCode_Specified: boolean;
    FfrequencyUnit: Integer;
    FfrequencyUnit_Specified: boolean;
    Frecipient: Integer;
    Frecipient_Specified: boolean;
    Fsubject: string;
    Fsubject_Specified: boolean;
    procedure SetadvancedTime(Index: Integer; const AInteger: Integer);
    function  advancedTime_Specified(Index: Integer): boolean;
    procedure SetadvancedTimezoneCode(Index: Integer; const Astring: string);
    function  advancedTimezoneCode_Specified(Index: Integer): boolean;
    procedure SetbodyText(Index: Integer; const Astring: string);
    function  bodyText_Specified(Index: Integer): boolean;
    procedure SetconditionList(Index: Integer; const AArray_Of_condition: Array_Of_condition);
    function  conditionList_Specified(Index: Integer): boolean;
    procedure Setformat(Index: Integer; const Astring: string);
    function  format_Specified(Index: Integer): boolean;
    procedure SetfrequencyCode(Index: Integer; const Astring: string);
    function  frequencyCode_Specified(Index: Integer): boolean;
    procedure SetfrequencyTypeCode(Index: Integer; const Astring: string);
    function  frequencyTypeCode_Specified(Index: Integer): boolean;
    procedure SetfrequencyUnit(Index: Integer; const AInteger: Integer);
    function  frequencyUnit_Specified(Index: Integer): boolean;
    procedure Setrecipient(Index: Integer; const AInteger: Integer);
    function  recipient_Specified(Index: Integer): boolean;
    procedure Setsubject(Index: Integer; const Astring: string);
    function  subject_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property advancedTime:         Integer             Index (IS_OPTN or IS_UNQL) read FadvancedTime write SetadvancedTime stored advancedTime_Specified;
    property advancedTimezoneCode: string              Index (IS_OPTN or IS_UNQL) read FadvancedTimezoneCode write SetadvancedTimezoneCode stored advancedTimezoneCode_Specified;
    property bodyText:             string              Index (IS_OPTN or IS_UNQL) read FbodyText write SetbodyText stored bodyText_Specified;
    property conditionList:        Array_Of_condition  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FconditionList write SetconditionList stored conditionList_Specified;
    property format:               string              Index (IS_OPTN or IS_UNQL) read Fformat write Setformat stored format_Specified;
    property frequencyCode:        string              Index (IS_OPTN or IS_UNQL) read FfrequencyCode write SetfrequencyCode stored frequencyCode_Specified;
    property frequencyTypeCode:    string              Index (IS_OPTN or IS_UNQL) read FfrequencyTypeCode write SetfrequencyTypeCode stored frequencyTypeCode_Specified;
    property frequencyUnit:        Integer             Index (IS_OPTN or IS_UNQL) read FfrequencyUnit write SetfrequencyUnit stored frequencyUnit_Specified;
    property recipient:            Integer             Index (IS_OPTN or IS_UNQL) read Frecipient write Setrecipient stored recipient_Specified;
    property subject:              string              Index (IS_OPTN or IS_UNQL) read Fsubject write Setsubject stored subject_Specified;
  end;



  // ************************************************************************ //
  // XML       : reportComment, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportComment = class(TRemotable)
  private
    Fauthor: string;
    Fauthor_Specified: boolean;
    FauthorId: Integer;
    FauthorId_Specified: boolean;
    Fcomment: string;
    Fcomment_Specified: boolean;
    FcommentDate: string;
    FcommentDate_Specified: boolean;
    FcommentId: Integer;
    FcommentId_Specified: boolean;
    FlastActivityDate: string;
    FlastActivityDate_Specified: boolean;
    FparentCommentId: Integer;
    FparentCommentId_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    FstatusCode: string;
    FstatusCode_Specified: boolean;
    Ftitle: string;
    Ftitle_Specified: boolean;
    procedure Setauthor(Index: Integer; const Astring: string);
    function  author_Specified(Index: Integer): boolean;
    procedure SetauthorId(Index: Integer; const AInteger: Integer);
    function  authorId_Specified(Index: Integer): boolean;
    procedure Setcomment(Index: Integer; const Astring: string);
    function  comment_Specified(Index: Integer): boolean;
    procedure SetcommentDate(Index: Integer; const Astring: string);
    function  commentDate_Specified(Index: Integer): boolean;
    procedure SetcommentId(Index: Integer; const AInteger: Integer);
    function  commentId_Specified(Index: Integer): boolean;
    procedure SetlastActivityDate(Index: Integer; const Astring: string);
    function  lastActivityDate_Specified(Index: Integer): boolean;
    procedure SetparentCommentId(Index: Integer; const AInteger: Integer);
    function  parentCommentId_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SetstatusCode(Index: Integer; const Astring: string);
    function  statusCode_Specified(Index: Integer): boolean;
    procedure Settitle(Index: Integer; const Astring: string);
    function  title_Specified(Index: Integer): boolean;
  published
    property author:           string   Index (IS_OPTN or IS_UNQL) read Fauthor write Setauthor stored author_Specified;
    property authorId:         Integer  Index (IS_OPTN or IS_UNQL) read FauthorId write SetauthorId stored authorId_Specified;
    property comment:          string   Index (IS_OPTN or IS_UNQL) read Fcomment write Setcomment stored comment_Specified;
    property commentDate:      string   Index (IS_OPTN or IS_UNQL) read FcommentDate write SetcommentDate stored commentDate_Specified;
    property commentId:        Integer  Index (IS_OPTN or IS_UNQL) read FcommentId write SetcommentId stored commentId_Specified;
    property lastActivityDate: string   Index (IS_OPTN or IS_UNQL) read FlastActivityDate write SetlastActivityDate stored lastActivityDate_Specified;
    property parentCommentId:  Integer  Index (IS_OPTN or IS_UNQL) read FparentCommentId write SetparentCommentId stored parentCommentId_Specified;
    property reportId:         Integer  Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property statusCode:       string   Index (IS_OPTN or IS_UNQL) read FstatusCode write SetstatusCode stored statusCode_Specified;
    property title:            string   Index (IS_OPTN or IS_UNQL) read Ftitle write Settitle stored title_Specified;
  end;



  // ************************************************************************ //
  // XML       : gMap, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  gMap = class(TRemotable)
  private
    FmapLegendImage: string;
    FmapLegendImage_Specified: boolean;
    FmapPoints: Array_Of_gMapPoint;
    FmapPoints_Specified: boolean;
    FmapPolys: Array_Of_gMapPolygon;
    FmapPolys_Specified: boolean;
    procedure SetmapLegendImage(Index: Integer; const Astring: string);
    function  mapLegendImage_Specified(Index: Integer): boolean;
    procedure SetmapPoints(Index: Integer; const AArray_Of_gMapPoint: Array_Of_gMapPoint);
    function  mapPoints_Specified(Index: Integer): boolean;
    procedure SetmapPolys(Index: Integer; const AArray_Of_gMapPolygon: Array_Of_gMapPolygon);
    function  mapPolys_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property mapLegendImage: string                Index (IS_OPTN or IS_UNQL) read FmapLegendImage write SetmapLegendImage stored mapLegendImage_Specified;
    property mapPoints:      Array_Of_gMapPoint    Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmapPoints write SetmapPoints stored mapPoints_Specified;
    property mapPolys:       Array_Of_gMapPolygon  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmapPolys write SetmapPolys stored mapPolys_Specified;
  end;



  // ************************************************************************ //
  // XML       : reportFilter, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportFilter = class(TRemotable)
  private
    FdataValue: string;
    FdataValue_Specified: boolean;
    FfilterId: Integer;
    FfilterId_Specified: boolean;
    FisOmitted: Boolean;
    FisOmitted_Specified: boolean;
    procedure SetdataValue(Index: Integer; const Astring: string);
    function  dataValue_Specified(Index: Integer): boolean;
    procedure SetfilterId(Index: Integer; const AInteger: Integer);
    function  filterId_Specified(Index: Integer): boolean;
    procedure SetisOmitted(Index: Integer; const ABoolean: Boolean);
    function  isOmitted_Specified(Index: Integer): boolean;
  published
    property dataValue: string   Index (IS_OPTN or IS_UNQL) read FdataValue write SetdataValue stored dataValue_Specified;
    property filterId:  Integer  Index (IS_OPTN or IS_UNQL) read FfilterId write SetfilterId stored filterId_Specified;
    property isOmitted: Boolean  Index (IS_OPTN or IS_UNQL) read FisOmitted write SetisOmitted stored isOmitted_Specified;
  end;



  // ************************************************************************ //
  // XML       : timeAggregationSelection, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  timeAggregationSelection = class(TRemotable)
  private
    FgranularityString: string;
    FgranularityString_Specified: boolean;
    FgranularityStringKey: string;
    FgranularityStringKey_Specified: boolean;
    FhyperLink: string;
    FhyperLink_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    Fselected: Boolean;
    Fselected_Specified: boolean;
    procedure SetgranularityString(Index: Integer; const Astring: string);
    function  granularityString_Specified(Index: Integer): boolean;
    procedure SetgranularityStringKey(Index: Integer; const Astring: string);
    function  granularityStringKey_Specified(Index: Integer): boolean;
    procedure SethyperLink(Index: Integer; const Astring: string);
    function  hyperLink_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure Setselected(Index: Integer; const ABoolean: Boolean);
    function  selected_Specified(Index: Integer): boolean;
  published
    property granularityString:    string   Index (IS_OPTN or IS_UNQL) read FgranularityString write SetgranularityString stored granularityString_Specified;
    property granularityStringKey: string   Index (IS_OPTN or IS_UNQL) read FgranularityStringKey write SetgranularityStringKey stored granularityStringKey_Specified;
    property hyperLink:            string   Index (IS_OPTN or IS_UNQL) read FhyperLink write SethyperLink stored hyperLink_Specified;
    property reportId:             Integer  Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property selected:             Boolean  Index (IS_OPTN or IS_UNQL) read Fselected write Setselected stored selected_Specified;
  end;



  // ************************************************************************ //
  // XML       : storyboardDescriptor, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  storyboardDescriptor = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : sortableTableColumn, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  sortableTableColumn = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : timeSliderSelection, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  timeSliderSelection = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : dashboardFieldDefinition, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  dashboardFieldDefinition = class(TRemotable)
  private
    FfieldDescription: string;
    FfieldDescription_Specified: boolean;
    FfieldId: Integer;
    FfieldId_Specified: boolean;
    FfieldName: string;
    FfieldName_Specified: boolean;
    FfieldType: string;
    FfieldType_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    FtabId: Integer;
    FtabId_Specified: boolean;
    FtemplateId: Integer;
    FtemplateId_Specified: boolean;
    procedure SetfieldDescription(Index: Integer; const Astring: string);
    function  fieldDescription_Specified(Index: Integer): boolean;
    procedure SetfieldId(Index: Integer; const AInteger: Integer);
    function  fieldId_Specified(Index: Integer): boolean;
    procedure SetfieldName(Index: Integer; const Astring: string);
    function  fieldName_Specified(Index: Integer): boolean;
    procedure SetfieldType(Index: Integer; const Astring: string);
    function  fieldType_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SettabId(Index: Integer; const AInteger: Integer);
    function  tabId_Specified(Index: Integer): boolean;
    procedure SettemplateId(Index: Integer; const AInteger: Integer);
    function  templateId_Specified(Index: Integer): boolean;
  published
    property fieldDescription: string   Index (IS_OPTN or IS_UNQL) read FfieldDescription write SetfieldDescription stored fieldDescription_Specified;
    property fieldId:          Integer  Index (IS_OPTN or IS_UNQL) read FfieldId write SetfieldId stored fieldId_Specified;
    property fieldName:        string   Index (IS_OPTN or IS_UNQL) read FfieldName write SetfieldName stored fieldName_Specified;
    property fieldType:        string   Index (IS_OPTN or IS_UNQL) read FfieldType write SetfieldType stored fieldType_Specified;
    property reportId:         Integer  Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property tabId:            Integer  Index (IS_OPTN or IS_UNQL) read FtabId write SettabId stored tabId_Specified;
    property templateId:       Integer  Index (IS_OPTN or IS_UNQL) read FtemplateId write SettemplateId stored templateId_Specified;
  end;



  // ************************************************************************ //
  // XML       : dashboardElement, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  dashboardElement = class(TRemotable)
  private
    FcolumnNumber: Integer;
    FcolumnNumber_Specified: boolean;
    FentityId: Integer;
    FentityId_Specified: boolean;
    FentityTypeCode: string;
    FentityTypeCode_Specified: boolean;
    FportletHeight: Integer;
    FportletHeight_Specified: boolean;
    FportletStatus: string;
    FportletStatus_Specified: boolean;
    FrowNumber: Integer;
    FrowNumber_Specified: boolean;
    FsequenceNumber: Integer;
    FsequenceNumber_Specified: boolean;
    FstartDate: TXSDateTime;
    FstartDate_Specified: boolean;
    FtabId: Integer;
    FtabId_Specified: boolean;
    procedure SetcolumnNumber(Index: Integer; const AInteger: Integer);
    function  columnNumber_Specified(Index: Integer): boolean;
    procedure SetentityId(Index: Integer; const AInteger: Integer);
    function  entityId_Specified(Index: Integer): boolean;
    procedure SetentityTypeCode(Index: Integer; const Astring: string);
    function  entityTypeCode_Specified(Index: Integer): boolean;
    procedure SetportletHeight(Index: Integer; const AInteger: Integer);
    function  portletHeight_Specified(Index: Integer): boolean;
    procedure SetportletStatus(Index: Integer; const Astring: string);
    function  portletStatus_Specified(Index: Integer): boolean;
    procedure SetrowNumber(Index: Integer; const AInteger: Integer);
    function  rowNumber_Specified(Index: Integer): boolean;
    procedure SetsequenceNumber(Index: Integer; const AInteger: Integer);
    function  sequenceNumber_Specified(Index: Integer): boolean;
    procedure SetstartDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  startDate_Specified(Index: Integer): boolean;
    procedure SettabId(Index: Integer; const AInteger: Integer);
    function  tabId_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property columnNumber:   Integer      Index (IS_OPTN or IS_UNQL) read FcolumnNumber write SetcolumnNumber stored columnNumber_Specified;
    property entityId:       Integer      Index (IS_OPTN or IS_UNQL) read FentityId write SetentityId stored entityId_Specified;
    property entityTypeCode: string       Index (IS_OPTN or IS_UNQL) read FentityTypeCode write SetentityTypeCode stored entityTypeCode_Specified;
    property portletHeight:  Integer      Index (IS_OPTN or IS_UNQL) read FportletHeight write SetportletHeight stored portletHeight_Specified;
    property portletStatus:  string       Index (IS_OPTN or IS_UNQL) read FportletStatus write SetportletStatus stored portletStatus_Specified;
    property rowNumber:      Integer      Index (IS_OPTN or IS_UNQL) read FrowNumber write SetrowNumber stored rowNumber_Specified;
    property sequenceNumber: Integer      Index (IS_OPTN or IS_UNQL) read FsequenceNumber write SetsequenceNumber stored sequenceNumber_Specified;
    property startDate:      TXSDateTime  Index (IS_OPTN or IS_UNQL) read FstartDate write SetstartDate stored startDate_Specified;
    property tabId:          Integer      Index (IS_OPTN or IS_UNQL) read FtabId write SettabId stored tabId_Specified;
  end;



  // ************************************************************************ //
  // XML       : seriesSelection, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  seriesSelection = class(TRemotable)
  private
    Fdescription: string;
    Fdescription_Specified: boolean;
    FfieldId: Integer;
    FfieldId_Specified: boolean;
    Fhyperlink: string;
    Fhyperlink_Specified: boolean;
    FpctChange: string;
    FpctChange_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    Fselected: Boolean;
    FseriesThumb: TByteSOAPArray;
    FseriesThumb_Specified: boolean;
    FtotalValue: string;
    FtotalValue_Specified: boolean;
    FtrendCode: string;
    FtrendCode_Specified: boolean;
    FtypeCode: string;
    FtypeCode_Specified: boolean;
    procedure Setdescription(Index: Integer; const Astring: string);
    function  description_Specified(Index: Integer): boolean;
    procedure SetfieldId(Index: Integer; const AInteger: Integer);
    function  fieldId_Specified(Index: Integer): boolean;
    procedure Sethyperlink(Index: Integer; const Astring: string);
    function  hyperlink_Specified(Index: Integer): boolean;
    procedure SetpctChange(Index: Integer; const Astring: string);
    function  pctChange_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SetseriesThumb(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  seriesThumb_Specified(Index: Integer): boolean;
    procedure SettotalValue(Index: Integer; const Astring: string);
    function  totalValue_Specified(Index: Integer): boolean;
    procedure SettrendCode(Index: Integer; const Astring: string);
    function  trendCode_Specified(Index: Integer): boolean;
    procedure SettypeCode(Index: Integer; const Astring: string);
    function  typeCode_Specified(Index: Integer): boolean;
  published
    property description: string          Index (IS_OPTN or IS_UNQL) read Fdescription write Setdescription stored description_Specified;
    property fieldId:     Integer         Index (IS_OPTN or IS_UNQL) read FfieldId write SetfieldId stored fieldId_Specified;
    property hyperlink:   string          Index (IS_OPTN or IS_UNQL) read Fhyperlink write Sethyperlink stored hyperlink_Specified;
    property pctChange:   string          Index (IS_OPTN or IS_UNQL) read FpctChange write SetpctChange stored pctChange_Specified;
    property reportId:    Integer         Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property selected:    Boolean         Index (IS_UNQL) read Fselected write Fselected;
    property seriesThumb: TByteSOAPArray  Index (IS_OPTN or IS_UNQL) read FseriesThumb write SetseriesThumb stored seriesThumb_Specified;
    property totalValue:  string          Index (IS_OPTN or IS_UNQL) read FtotalValue write SettotalValue stored totalValue_Specified;
    property trendCode:   string          Index (IS_OPTN or IS_UNQL) read FtrendCode write SettrendCode stored trendCode_Specified;
    property typeCode:    string          Index (IS_OPTN or IS_UNQL) read FtypeCode write SettypeCode stored typeCode_Specified;
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
  // XML       : kpi, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  kpi = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : drillAnywhereTargets, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  drillAnywhereTargets = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : dashboardDefinition, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  dashboardDefinition = class(TRemotable)
  private
    FaccessCode: string;
    FaccessCode_Specified: boolean;
    Faudience: string;
    Faudience_Specified: boolean;
    FcategoryCode: string;
    FcategoryCode_Specified: boolean;
    Felements: Array_Of_dashboardElement;
    Felements_Specified: boolean;
    FendDate: TXSDateTime;
    FendDate_Specified: boolean;
    Ffields: Array_Of_dashboardFieldDefinition;
    Ffields_Specified: boolean;
    Ffilters: Array_Of_dashboardFilterDefinition;
    Ffilters_Specified: boolean;
    FgroupTypeCode: string;
    FgroupTypeCode_Specified: boolean;
    FlanguageCode: string;
    FlanguageCode_Specified: boolean;
    FlongDescription: string;
    FlongDescription_Specified: boolean;
    Fowner: Integer;
    Fowner_Specified: boolean;
    FownerTypeCode: string;
    FownerTypeCode_Specified: boolean;
    FparentGroupId: Integer;
    FparentGroupId_Specified: boolean;
    FshortDescription: string;
    FshortDescription_Specified: boolean;
    FstartDate: TXSDateTime;
    FstartDate_Specified: boolean;
    FstatusCode: string;
    FstatusCode_Specified: boolean;
    FstyleCode: string;
    FstyleCode_Specified: boolean;
    FsubCategoryCode: string;
    FsubCategoryCode_Specified: boolean;
    Fsubtabs: Array_Of_dashboardDefinition;
    Fsubtabs_Specified: boolean;
    FtabId: Integer;
    FtabId_Specified: boolean;
    procedure SetaccessCode(Index: Integer; const Astring: string);
    function  accessCode_Specified(Index: Integer): boolean;
    procedure Setaudience(Index: Integer; const Astring: string);
    function  audience_Specified(Index: Integer): boolean;
    procedure SetcategoryCode(Index: Integer; const Astring: string);
    function  categoryCode_Specified(Index: Integer): boolean;
    procedure Setelements(Index: Integer; const AArray_Of_dashboardElement: Array_Of_dashboardElement);
    function  elements_Specified(Index: Integer): boolean;
    procedure SetendDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  endDate_Specified(Index: Integer): boolean;
    procedure Setfields(Index: Integer; const AArray_Of_dashboardFieldDefinition: Array_Of_dashboardFieldDefinition);
    function  fields_Specified(Index: Integer): boolean;
    procedure Setfilters(Index: Integer; const AArray_Of_dashboardFilterDefinition: Array_Of_dashboardFilterDefinition);
    function  filters_Specified(Index: Integer): boolean;
    procedure SetgroupTypeCode(Index: Integer; const Astring: string);
    function  groupTypeCode_Specified(Index: Integer): boolean;
    procedure SetlanguageCode(Index: Integer; const Astring: string);
    function  languageCode_Specified(Index: Integer): boolean;
    procedure SetlongDescription(Index: Integer; const Astring: string);
    function  longDescription_Specified(Index: Integer): boolean;
    procedure Setowner(Index: Integer; const AInteger: Integer);
    function  owner_Specified(Index: Integer): boolean;
    procedure SetownerTypeCode(Index: Integer; const Astring: string);
    function  ownerTypeCode_Specified(Index: Integer): boolean;
    procedure SetparentGroupId(Index: Integer; const AInteger: Integer);
    function  parentGroupId_Specified(Index: Integer): boolean;
    procedure SetshortDescription(Index: Integer; const Astring: string);
    function  shortDescription_Specified(Index: Integer): boolean;
    procedure SetstartDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  startDate_Specified(Index: Integer): boolean;
    procedure SetstatusCode(Index: Integer; const Astring: string);
    function  statusCode_Specified(Index: Integer): boolean;
    procedure SetstyleCode(Index: Integer; const Astring: string);
    function  styleCode_Specified(Index: Integer): boolean;
    procedure SetsubCategoryCode(Index: Integer; const Astring: string);
    function  subCategoryCode_Specified(Index: Integer): boolean;
    procedure Setsubtabs(Index: Integer; const AArray_Of_dashboardDefinition: Array_Of_dashboardDefinition);
    function  subtabs_Specified(Index: Integer): boolean;
    procedure SettabId(Index: Integer; const AInteger: Integer);
    function  tabId_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property accessCode:       string                              Index (IS_OPTN or IS_UNQL) read FaccessCode write SetaccessCode stored accessCode_Specified;
    property audience:         string                              Index (IS_OPTN or IS_UNQL) read Faudience write Setaudience stored audience_Specified;
    property categoryCode:     string                              Index (IS_OPTN or IS_UNQL) read FcategoryCode write SetcategoryCode stored categoryCode_Specified;
    property elements:         Array_Of_dashboardElement           Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Felements write Setelements stored elements_Specified;
    property endDate:          TXSDateTime                         Index (IS_OPTN or IS_UNQL) read FendDate write SetendDate stored endDate_Specified;
    property fields:           Array_Of_dashboardFieldDefinition   Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ffields write Setfields stored fields_Specified;
    property filters:          Array_Of_dashboardFilterDefinition  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ffilters write Setfilters stored filters_Specified;
    property groupTypeCode:    string                              Index (IS_OPTN or IS_UNQL) read FgroupTypeCode write SetgroupTypeCode stored groupTypeCode_Specified;
    property languageCode:     string                              Index (IS_OPTN or IS_UNQL) read FlanguageCode write SetlanguageCode stored languageCode_Specified;
    property longDescription:  string                              Index (IS_OPTN or IS_UNQL) read FlongDescription write SetlongDescription stored longDescription_Specified;
    property owner:            Integer                             Index (IS_OPTN or IS_UNQL) read Fowner write Setowner stored owner_Specified;
    property ownerTypeCode:    string                              Index (IS_OPTN or IS_UNQL) read FownerTypeCode write SetownerTypeCode stored ownerTypeCode_Specified;
    property parentGroupId:    Integer                             Index (IS_OPTN or IS_UNQL) read FparentGroupId write SetparentGroupId stored parentGroupId_Specified;
    property shortDescription: string                              Index (IS_OPTN or IS_UNQL) read FshortDescription write SetshortDescription stored shortDescription_Specified;
    property startDate:        TXSDateTime                         Index (IS_OPTN or IS_UNQL) read FstartDate write SetstartDate stored startDate_Specified;
    property statusCode:       string                              Index (IS_OPTN or IS_UNQL) read FstatusCode write SetstatusCode stored statusCode_Specified;
    property styleCode:        string                              Index (IS_OPTN or IS_UNQL) read FstyleCode write SetstyleCode stored styleCode_Specified;
    property subCategoryCode:  string                              Index (IS_OPTN or IS_UNQL) read FsubCategoryCode write SetsubCategoryCode stored subCategoryCode_Specified;
    property subtabs:          Array_Of_dashboardDefinition        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fsubtabs write Setsubtabs stored subtabs_Specified;
    property tabId:            Integer                             Index (IS_OPTN or IS_UNQL) read FtabId write SettabId stored tabId_Specified;
  end;



  // ************************************************************************ //
  // XML       : gisMap, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  gisMap = class(TRemotable)
  private
    Flayers: Array_Of_gisLayer;
    Flayers_Specified: boolean;
    FmapIndex: Integer;
    FmapIndex_Specified: boolean;
    Fscale: TXSDecimal;
    Fscale_Specified: boolean;
    Fshapes: Array_Of_gisShape;
    Fshapes_Specified: boolean;
    procedure Setlayers(Index: Integer; const AArray_Of_gisLayer: Array_Of_gisLayer);
    function  layers_Specified(Index: Integer): boolean;
    procedure SetmapIndex(Index: Integer; const AInteger: Integer);
    function  mapIndex_Specified(Index: Integer): boolean;
    procedure Setscale(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  scale_Specified(Index: Integer): boolean;
    procedure Setshapes(Index: Integer; const AArray_Of_gisShape: Array_Of_gisShape);
    function  shapes_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property layers:   Array_Of_gisLayer  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Flayers write Setlayers stored layers_Specified;
    property mapIndex: Integer            Index (IS_OPTN or IS_UNQL) read FmapIndex write SetmapIndex stored mapIndex_Specified;
    property scale:    TXSDecimal         Index (IS_OPTN or IS_UNQL) read Fscale write Setscale stored scale_Specified;
    property shapes:   Array_Of_gisShape  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fshapes write Setshapes stored shapes_Specified;
  end;



  // ************************************************************************ //
  // XML       : reportSchema, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportSchema = class(TRemotable)
  private
    FallowPrompt: Boolean;
    FallowPrompt_Specified: boolean;
    FcachedValues: Boolean;
    FcachedValues_Specified: boolean;
    FcolumnLength: string;
    FcolumnLength_Specified: boolean;
    FcolumnName: string;
    FcolumnName_Specified: boolean;
    FdataType: string;
    FdataType_Specified: boolean;
    FdefaultValue1: string;
    FdefaultValue1_Specified: boolean;
    FdefaultValue2: string;
    FdefaultValue2_Specified: boolean;
    FdisplayName: string;
    FdisplayName_Specified: boolean;
    FfieldId: Integer;
    FfieldId_Specified: boolean;
    FfilterDisplayType: string;
    FfilterDisplayType_Specified: boolean;
    FfilterId: Integer;
    FfilterId_Specified: boolean;
    FfilterOmittable: Boolean;
    FfilterOmittable_Specified: boolean;
    FfilterType: string;
    FfilterType_Specified: boolean;
    FfilterTypeCode: string;
    FfilterTypeCode_Specified: boolean;
    FfilterUUID: string;
    FfilterUUID_Specified: boolean;
    Fhidden: Boolean;
    Fhidden_Specified: boolean;
    FmaximumValue: TXSDecimal;
    FmaximumValue_Specified: boolean;
    FminimumValue: TXSDecimal;
    FminimumValue_Specified: boolean;
    FnumberOfDecimals: Integer;
    FoutputLocation: string;
    FoutputLocation_Specified: boolean;
    FparentFilterId: Integer;
    FparentFilterId_Specified: boolean;
    Fprompt: Boolean;
    Fprompt_Specified: boolean;
    FsortOrder: Integer;
    FsortOrder_Specified: boolean;
    FvalueUnitCode: string;
    FvalueUnitCode_Specified: boolean;
    procedure SetallowPrompt(Index: Integer; const ABoolean: Boolean);
    function  allowPrompt_Specified(Index: Integer): boolean;
    procedure SetcachedValues(Index: Integer; const ABoolean: Boolean);
    function  cachedValues_Specified(Index: Integer): boolean;
    procedure SetcolumnLength(Index: Integer; const Astring: string);
    function  columnLength_Specified(Index: Integer): boolean;
    procedure SetcolumnName(Index: Integer; const Astring: string);
    function  columnName_Specified(Index: Integer): boolean;
    procedure SetdataType(Index: Integer; const Astring: string);
    function  dataType_Specified(Index: Integer): boolean;
    procedure SetdefaultValue1(Index: Integer; const Astring: string);
    function  defaultValue1_Specified(Index: Integer): boolean;
    procedure SetdefaultValue2(Index: Integer; const Astring: string);
    function  defaultValue2_Specified(Index: Integer): boolean;
    procedure SetdisplayName(Index: Integer; const Astring: string);
    function  displayName_Specified(Index: Integer): boolean;
    procedure SetfieldId(Index: Integer; const AInteger: Integer);
    function  fieldId_Specified(Index: Integer): boolean;
    procedure SetfilterDisplayType(Index: Integer; const Astring: string);
    function  filterDisplayType_Specified(Index: Integer): boolean;
    procedure SetfilterId(Index: Integer; const AInteger: Integer);
    function  filterId_Specified(Index: Integer): boolean;
    procedure SetfilterOmittable(Index: Integer; const ABoolean: Boolean);
    function  filterOmittable_Specified(Index: Integer): boolean;
    procedure SetfilterType(Index: Integer; const Astring: string);
    function  filterType_Specified(Index: Integer): boolean;
    procedure SetfilterTypeCode(Index: Integer; const Astring: string);
    function  filterTypeCode_Specified(Index: Integer): boolean;
    procedure SetfilterUUID(Index: Integer; const Astring: string);
    function  filterUUID_Specified(Index: Integer): boolean;
    procedure Sethidden(Index: Integer; const ABoolean: Boolean);
    function  hidden_Specified(Index: Integer): boolean;
    procedure SetmaximumValue(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  maximumValue_Specified(Index: Integer): boolean;
    procedure SetminimumValue(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  minimumValue_Specified(Index: Integer): boolean;
    procedure SetoutputLocation(Index: Integer; const Astring: string);
    function  outputLocation_Specified(Index: Integer): boolean;
    procedure SetparentFilterId(Index: Integer; const AInteger: Integer);
    function  parentFilterId_Specified(Index: Integer): boolean;
    procedure Setprompt(Index: Integer; const ABoolean: Boolean);
    function  prompt_Specified(Index: Integer): boolean;
    procedure SetsortOrder(Index: Integer; const AInteger: Integer);
    function  sortOrder_Specified(Index: Integer): boolean;
    procedure SetvalueUnitCode(Index: Integer; const Astring: string);
    function  valueUnitCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property allowPrompt:       Boolean     Index (IS_OPTN or IS_UNQL) read FallowPrompt write SetallowPrompt stored allowPrompt_Specified;
    property cachedValues:      Boolean     Index (IS_OPTN or IS_UNQL) read FcachedValues write SetcachedValues stored cachedValues_Specified;
    property columnLength:      string      Index (IS_OPTN or IS_UNQL) read FcolumnLength write SetcolumnLength stored columnLength_Specified;
    property columnName:        string      Index (IS_OPTN or IS_UNQL) read FcolumnName write SetcolumnName stored columnName_Specified;
    property dataType:          string      Index (IS_OPTN or IS_UNQL) read FdataType write SetdataType stored dataType_Specified;
    property defaultValue1:     string      Index (IS_OPTN or IS_UNQL) read FdefaultValue1 write SetdefaultValue1 stored defaultValue1_Specified;
    property defaultValue2:     string      Index (IS_OPTN or IS_UNQL) read FdefaultValue2 write SetdefaultValue2 stored defaultValue2_Specified;
    property displayName:       string      Index (IS_OPTN or IS_UNQL) read FdisplayName write SetdisplayName stored displayName_Specified;
    property fieldId:           Integer     Index (IS_OPTN or IS_UNQL) read FfieldId write SetfieldId stored fieldId_Specified;
    property filterDisplayType: string      Index (IS_OPTN or IS_UNQL) read FfilterDisplayType write SetfilterDisplayType stored filterDisplayType_Specified;
    property filterId:          Integer     Index (IS_OPTN or IS_UNQL) read FfilterId write SetfilterId stored filterId_Specified;
    property filterOmittable:   Boolean     Index (IS_OPTN or IS_UNQL) read FfilterOmittable write SetfilterOmittable stored filterOmittable_Specified;
    property filterType:        string      Index (IS_OPTN or IS_UNQL) read FfilterType write SetfilterType stored filterType_Specified;
    property filterTypeCode:    string      Index (IS_OPTN or IS_UNQL) read FfilterTypeCode write SetfilterTypeCode stored filterTypeCode_Specified;
    property filterUUID:        string      Index (IS_OPTN or IS_UNQL) read FfilterUUID write SetfilterUUID stored filterUUID_Specified;
    property hidden:            Boolean     Index (IS_OPTN or IS_UNQL) read Fhidden write Sethidden stored hidden_Specified;
    property maximumValue:      TXSDecimal  Index (IS_OPTN or IS_UNQL) read FmaximumValue write SetmaximumValue stored maximumValue_Specified;
    property minimumValue:      TXSDecimal  Index (IS_OPTN or IS_UNQL) read FminimumValue write SetminimumValue stored minimumValue_Specified;
    property numberOfDecimals:  Integer     Index (IS_UNQL) read FnumberOfDecimals write FnumberOfDecimals;
    property outputLocation:    string      Index (IS_OPTN or IS_UNQL) read FoutputLocation write SetoutputLocation stored outputLocation_Specified;
    property parentFilterId:    Integer     Index (IS_OPTN or IS_UNQL) read FparentFilterId write SetparentFilterId stored parentFilterId_Specified;
    property prompt:            Boolean     Index (IS_OPTN or IS_UNQL) read Fprompt write Setprompt stored prompt_Specified;
    property sortOrder:         Integer     Index (IS_OPTN or IS_UNQL) read FsortOrder write SetsortOrder stored sortOrder_Specified;
    property valueUnitCode:     string      Index (IS_OPTN or IS_UNQL) read FvalueUnitCode write SetvalueUnitCode stored valueUnitCode_Specified;
  end;

  reportRow  = array of string;                 { "http://webservices.web.mi.hof.com/"[GblCplx] }


  // ************************************************************************ //
  // XML       : reportServiceRequest, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportServiceRequest = class(TRemotable)
  private
    FabsoluteTableWidth: Integer;
    FabsoluteTableWidth_Specified: boolean;
    FactiveCharts: Boolean;
    FallowInteractiveGoogleMaps: Boolean;
    FalterationCommand: string;
    FalterationCommand_Specified: boolean;
    FbinaryURL: string;
    FbinaryURL_Specified: boolean;
    FchartHeight: Integer;
    FchartHeight_Specified: boolean;
    FchartPlacementCode: string;
    FchartPlacementCode_Specified: boolean;
    FchartScale: Integer;
    FchartScale_Specified: boolean;
    FchartWidth: Integer;
    FchartWidth_Specified: boolean;
    FdashboardFilters: Array_Of_dashboardFilter;
    FdashboardFilters_Specified: boolean;
    FdashboardTabId: Integer;
    FdashboardTabId_Specified: boolean;
    FdataFormattingOptionsType: string;
    FdataFormattingOptionsType_Specified: boolean;
    FdistributionText: string;
    FdistributionText_Specified: boolean;
    FdrillAnywhereCellValue: string;
    FdrillAnywhereCellValue_Specified: boolean;
    FdrillAnywhereFieldId: Integer;
    FdrillAnywhereFieldId_Specified: boolean;
    FdrillAnywhereUniqueValueName: string;
    FdrillAnywhereUniqueValueName_Specified: boolean;
    Ffilters: Array_Of_reportFilter;
    Ffilters_Specified: boolean;
    FfitTableWidth: Boolean;
    FfitTableWidth_Specified: boolean;
    FgisNavigation: Boolean;
    Fgmap: gMap;
    Fgmap_Specified: boolean;
    FimageType: string;
    FimageType_Specified: boolean;
    FimageURL: string;
    FimageURL_Specified: boolean;
    FkeepState: Boolean;
    FlanguageCode: string;
    FlanguageCode_Specified: boolean;
    FlinkFormatterClass: string;
    FlinkFormatterClass_Specified: boolean;
    FlinkURL: string;
    FlinkURL_Specified: boolean;
    FloginId: string;
    FloginId_Specified: boolean;
    FmultiChartEnabled: Boolean;
    FmultiReportTag: string;
    FmultiReportTag_Specified: boolean;
    Fntlm: Boolean;
    FobjectName: string;
    FobjectName_Specified: boolean;
    ForgId: Integer;
    ForgId_Specified: boolean;
    ForgRef: string;
    ForgRef_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    FreportBroadcastContent: string;
    FreportBroadcastContent_Specified: boolean;
    FreportBroadcastSubject: string;
    FreportBroadcastSubject_Specified: boolean;
    FreportClientReferenceId: string;
    FreportClientReferenceId_Specified: boolean;
    FreportComment: reportComment;
    FreportComment_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    FreportOptions: reportRow;
    FreportOptions_Specified: boolean;
    FreportRequest: string;
    FreportRequest_Specified: boolean;
    FreportUserId: string;
    FreportUserId_Specified: boolean;
    FreportUserPassword: string;
    FreportUserPassword_Specified: boolean;
    Fschedule: scheduleRecord;
    Fschedule_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    FshowAlertImages: Boolean;
    FshowAlertLegendTable: Boolean;
    FshowAlerts: Boolean;
    FshowCharts: Boolean;
    FshowCoDisplay: Boolean;
    FshowDrillDownStack: Boolean;
    FshowDrillThroughStack: Boolean;
    FshowLinks: Boolean;
    FshowPageSelection: Boolean;
    FshowSeriesSelection: Boolean;
    FshowSort: Boolean;
    FshowTabs: Boolean;
    FshowTimeSlider: Boolean;
    FshowTimeUnitSelection: Boolean;
    FshowTitle: Boolean;
    FsinglePage: Boolean;
    FsortColumn: Integer;
    FsortColumn_Specified: boolean;
    FtriggerJSGoogleMapsSetup: Boolean;
    FcommandsHistory: reportRow;
    FcommandsHistory_Specified: boolean;
    procedure SetabsoluteTableWidth(Index: Integer; const AInteger: Integer);
    function  absoluteTableWidth_Specified(Index: Integer): boolean;
    procedure SetalterationCommand(Index: Integer; const Astring: string);
    function  alterationCommand_Specified(Index: Integer): boolean;
    procedure SetbinaryURL(Index: Integer; const Astring: string);
    function  binaryURL_Specified(Index: Integer): boolean;
    procedure SetchartHeight(Index: Integer; const AInteger: Integer);
    function  chartHeight_Specified(Index: Integer): boolean;
    procedure SetchartPlacementCode(Index: Integer; const Astring: string);
    function  chartPlacementCode_Specified(Index: Integer): boolean;
    procedure SetchartScale(Index: Integer; const AInteger: Integer);
    function  chartScale_Specified(Index: Integer): boolean;
    procedure SetchartWidth(Index: Integer; const AInteger: Integer);
    function  chartWidth_Specified(Index: Integer): boolean;
    procedure SetdashboardFilters(Index: Integer; const AArray_Of_dashboardFilter: Array_Of_dashboardFilter);
    function  dashboardFilters_Specified(Index: Integer): boolean;
    procedure SetdashboardTabId(Index: Integer; const AInteger: Integer);
    function  dashboardTabId_Specified(Index: Integer): boolean;
    procedure SetdataFormattingOptionsType(Index: Integer; const Astring: string);
    function  dataFormattingOptionsType_Specified(Index: Integer): boolean;
    procedure SetdistributionText(Index: Integer; const Astring: string);
    function  distributionText_Specified(Index: Integer): boolean;
    procedure SetdrillAnywhereCellValue(Index: Integer; const Astring: string);
    function  drillAnywhereCellValue_Specified(Index: Integer): boolean;
    procedure SetdrillAnywhereFieldId(Index: Integer; const AInteger: Integer);
    function  drillAnywhereFieldId_Specified(Index: Integer): boolean;
    procedure SetdrillAnywhereUniqueValueName(Index: Integer; const Astring: string);
    function  drillAnywhereUniqueValueName_Specified(Index: Integer): boolean;
    procedure Setfilters(Index: Integer; const AArray_Of_reportFilter: Array_Of_reportFilter);
    function  filters_Specified(Index: Integer): boolean;
    procedure SetfitTableWidth(Index: Integer; const ABoolean: Boolean);
    function  fitTableWidth_Specified(Index: Integer): boolean;
    procedure Setgmap(Index: Integer; const AgMap: gMap);
    function  gmap_Specified(Index: Integer): boolean;
    procedure SetimageType(Index: Integer; const Astring: string);
    function  imageType_Specified(Index: Integer): boolean;
    procedure SetimageURL(Index: Integer; const Astring: string);
    function  imageURL_Specified(Index: Integer): boolean;
    procedure SetlanguageCode(Index: Integer; const Astring: string);
    function  languageCode_Specified(Index: Integer): boolean;
    procedure SetlinkFormatterClass(Index: Integer; const Astring: string);
    function  linkFormatterClass_Specified(Index: Integer): boolean;
    procedure SetlinkURL(Index: Integer; const Astring: string);
    function  linkURL_Specified(Index: Integer): boolean;
    procedure SetloginId(Index: Integer; const Astring: string);
    function  loginId_Specified(Index: Integer): boolean;
    procedure SetmultiReportTag(Index: Integer; const Astring: string);
    function  multiReportTag_Specified(Index: Integer): boolean;
    procedure SetobjectName(Index: Integer; const Astring: string);
    function  objectName_Specified(Index: Integer): boolean;
    procedure SetorgId(Index: Integer; const AInteger: Integer);
    function  orgId_Specified(Index: Integer): boolean;
    procedure SetorgRef(Index: Integer; const Astring: string);
    function  orgRef_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure SetreportBroadcastContent(Index: Integer; const Astring: string);
    function  reportBroadcastContent_Specified(Index: Integer): boolean;
    procedure SetreportBroadcastSubject(Index: Integer; const Astring: string);
    function  reportBroadcastSubject_Specified(Index: Integer): boolean;
    procedure SetreportClientReferenceId(Index: Integer; const Astring: string);
    function  reportClientReferenceId_Specified(Index: Integer): boolean;
    procedure SetreportComment(Index: Integer; const AreportComment: reportComment);
    function  reportComment_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SetreportOptions(Index: Integer; const AreportRow: reportRow);
    function  reportOptions_Specified(Index: Integer): boolean;
    procedure SetreportRequest(Index: Integer; const Astring: string);
    function  reportRequest_Specified(Index: Integer): boolean;
    procedure SetreportUserId(Index: Integer; const Astring: string);
    function  reportUserId_Specified(Index: Integer): boolean;
    procedure SetreportUserPassword(Index: Integer; const Astring: string);
    function  reportUserPassword_Specified(Index: Integer): boolean;
    procedure Setschedule(Index: Integer; const AscheduleRecord: scheduleRecord);
    function  schedule_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
    procedure SetsortColumn(Index: Integer; const AInteger: Integer);
    function  sortColumn_Specified(Index: Integer): boolean;
    procedure SetcommandsHistory(Index: Integer; const AreportRow: reportRow);
    function  commandsHistory_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property absoluteTableWidth:           Integer                   Index (IS_OPTN or IS_UNQL) read FabsoluteTableWidth write SetabsoluteTableWidth stored absoluteTableWidth_Specified;
    property activeCharts:                 Boolean                   Index (IS_UNQL) read FactiveCharts write FactiveCharts;
    property allowInteractiveGoogleMaps:   Boolean                   Index (IS_UNQL) read FallowInteractiveGoogleMaps write FallowInteractiveGoogleMaps;
    property alterationCommand:            string                    Index (IS_OPTN or IS_UNQL) read FalterationCommand write SetalterationCommand stored alterationCommand_Specified;
    property binaryURL:                    string                    Index (IS_OPTN or IS_UNQL) read FbinaryURL write SetbinaryURL stored binaryURL_Specified;
    property chartHeight:                  Integer                   Index (IS_OPTN or IS_UNQL) read FchartHeight write SetchartHeight stored chartHeight_Specified;
    property chartPlacementCode:           string                    Index (IS_OPTN or IS_UNQL) read FchartPlacementCode write SetchartPlacementCode stored chartPlacementCode_Specified;
    property chartScale:                   Integer                   Index (IS_OPTN or IS_UNQL) read FchartScale write SetchartScale stored chartScale_Specified;
    property chartWidth:                   Integer                   Index (IS_OPTN or IS_UNQL) read FchartWidth write SetchartWidth stored chartWidth_Specified;
    property dashboardFilters:             Array_Of_dashboardFilter  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdashboardFilters write SetdashboardFilters stored dashboardFilters_Specified;
    property dashboardTabId:               Integer                   Index (IS_OPTN or IS_UNQL) read FdashboardTabId write SetdashboardTabId stored dashboardTabId_Specified;
    property dataFormattingOptionsType:    string                    Index (IS_OPTN or IS_UNQL) read FdataFormattingOptionsType write SetdataFormattingOptionsType stored dataFormattingOptionsType_Specified;
    property distributionText:             string                    Index (IS_OPTN or IS_UNQL) read FdistributionText write SetdistributionText stored distributionText_Specified;
    property drillAnywhereCellValue:       string                    Index (IS_OPTN or IS_UNQL) read FdrillAnywhereCellValue write SetdrillAnywhereCellValue stored drillAnywhereCellValue_Specified;
    property drillAnywhereFieldId:         Integer                   Index (IS_OPTN or IS_UNQL) read FdrillAnywhereFieldId write SetdrillAnywhereFieldId stored drillAnywhereFieldId_Specified;
    property drillAnywhereUniqueValueName: string                    Index (IS_OPTN or IS_UNQL) read FdrillAnywhereUniqueValueName write SetdrillAnywhereUniqueValueName stored drillAnywhereUniqueValueName_Specified;
    property filters:                      Array_Of_reportFilter     Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ffilters write Setfilters stored filters_Specified;
    property fitTableWidth:                Boolean                   Index (IS_OPTN or IS_UNQL) read FfitTableWidth write SetfitTableWidth stored fitTableWidth_Specified;
    property gisNavigation:                Boolean                   Index (IS_UNQL) read FgisNavigation write FgisNavigation;
    property gmap:                         gMap                      Index (IS_OPTN or IS_UNQL) read Fgmap write Setgmap stored gmap_Specified;
    property imageType:                    string                    Index (IS_OPTN or IS_UNQL) read FimageType write SetimageType stored imageType_Specified;
    property imageURL:                     string                    Index (IS_OPTN or IS_UNQL) read FimageURL write SetimageURL stored imageURL_Specified;
    property keepState:                    Boolean                   Index (IS_UNQL) read FkeepState write FkeepState;
    property languageCode:                 string                    Index (IS_OPTN or IS_UNQL) read FlanguageCode write SetlanguageCode stored languageCode_Specified;
    property linkFormatterClass:           string                    Index (IS_OPTN or IS_UNQL) read FlinkFormatterClass write SetlinkFormatterClass stored linkFormatterClass_Specified;
    property linkURL:                      string                    Index (IS_OPTN or IS_UNQL) read FlinkURL write SetlinkURL stored linkURL_Specified;
    property loginId:                      string                    Index (IS_OPTN or IS_UNQL) read FloginId write SetloginId stored loginId_Specified;
    property multiChartEnabled:            Boolean                   Index (IS_UNQL) read FmultiChartEnabled write FmultiChartEnabled;
    property multiReportTag:               string                    Index (IS_OPTN or IS_UNQL) read FmultiReportTag write SetmultiReportTag stored multiReportTag_Specified;
    property ntlm:                         Boolean                   Index (IS_UNQL) read Fntlm write Fntlm;
    property objectName:                   string                    Index (IS_OPTN or IS_UNQL) read FobjectName write SetobjectName stored objectName_Specified;
    property orgId:                        Integer                   Index (IS_OPTN or IS_UNQL) read ForgId write SetorgId stored orgId_Specified;
    property orgRef:                       string                    Index (IS_OPTN or IS_UNQL) read ForgRef write SetorgRef stored orgRef_Specified;
    property password:                     string                    Index (IS_OPTN or IS_UNQL) read Fpassword write Setpassword stored password_Specified;
    property reportBroadcastContent:       string                    Index (IS_OPTN or IS_UNQL) read FreportBroadcastContent write SetreportBroadcastContent stored reportBroadcastContent_Specified;
    property reportBroadcastSubject:       string                    Index (IS_OPTN or IS_UNQL) read FreportBroadcastSubject write SetreportBroadcastSubject stored reportBroadcastSubject_Specified;
    property reportClientReferenceId:      string                    Index (IS_OPTN or IS_UNQL) read FreportClientReferenceId write SetreportClientReferenceId stored reportClientReferenceId_Specified;
    property reportComment:                reportComment             Index (IS_OPTN or IS_UNQL) read FreportComment write SetreportComment stored reportComment_Specified;
    property reportId:                     Integer                   Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property reportOptions:                reportRow                 Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FreportOptions write SetreportOptions stored reportOptions_Specified;
    property reportRequest:                string                    Index (IS_OPTN or IS_UNQL) read FreportRequest write SetreportRequest stored reportRequest_Specified;
    property reportUserId:                 string                    Index (IS_OPTN or IS_UNQL) read FreportUserId write SetreportUserId stored reportUserId_Specified;
    property reportUserPassword:           string                    Index (IS_OPTN or IS_UNQL) read FreportUserPassword write SetreportUserPassword stored reportUserPassword_Specified;
    property schedule:                     scheduleRecord            Index (IS_OPTN or IS_UNQL) read Fschedule write Setschedule stored schedule_Specified;
    property sessionId:                    string                    Index (IS_OPTN or IS_UNQL) read FsessionId write SetsessionId stored sessionId_Specified;
    property showAlertImages:              Boolean                   Index (IS_UNQL) read FshowAlertImages write FshowAlertImages;
    property showAlertLegendTable:         Boolean                   Index (IS_UNQL) read FshowAlertLegendTable write FshowAlertLegendTable;
    property showAlerts:                   Boolean                   Index (IS_UNQL) read FshowAlerts write FshowAlerts;
    property showCharts:                   Boolean                   Index (IS_UNQL) read FshowCharts write FshowCharts;
    property showCoDisplay:                Boolean                   Index (IS_UNQL) read FshowCoDisplay write FshowCoDisplay;
    property showDrillDownStack:           Boolean                   Index (IS_UNQL) read FshowDrillDownStack write FshowDrillDownStack;
    property showDrillThroughStack:        Boolean                   Index (IS_UNQL) read FshowDrillThroughStack write FshowDrillThroughStack;
    property showLinks:                    Boolean                   Index (IS_UNQL) read FshowLinks write FshowLinks;
    property showPageSelection:            Boolean                   Index (IS_UNQL) read FshowPageSelection write FshowPageSelection;
    property showSeriesSelection:          Boolean                   Index (IS_UNQL) read FshowSeriesSelection write FshowSeriesSelection;
    property showSort:                     Boolean                   Index (IS_UNQL) read FshowSort write FshowSort;
    property showTabs:                     Boolean                   Index (IS_UNQL) read FshowTabs write FshowTabs;
    property showTimeSlider:               Boolean                   Index (IS_UNQL) read FshowTimeSlider write FshowTimeSlider;
    property showTimeUnitSelection:        Boolean                   Index (IS_UNQL) read FshowTimeUnitSelection write FshowTimeUnitSelection;
    property showTitle:                    Boolean                   Index (IS_UNQL) read FshowTitle write FshowTitle;
    property singlePage:                   Boolean                   Index (IS_UNQL) read FsinglePage write FsinglePage;
    property sortColumn:                   Integer                   Index (IS_OPTN or IS_UNQL) read FsortColumn write SetsortColumn stored sortColumn_Specified;
    property triggerJSGoogleMapsSetup:     Boolean                   Index (IS_UNQL) read FtriggerJSGoogleMapsSetup write FtriggerJSGoogleMapsSetup;
    property commandsHistory:              reportRow                 Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcommandsHistory write SetcommandsHistory stored commandsHistory_Specified;
  end;

  Array_Of_reportRow = array of reportRow;      { "http://webservices.web.mi.hof.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : reportServiceResponse, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportServiceResponse = class(TRemotable)
  private
    Fauthor: string;
    Fauthor_Specified: boolean;
    FauthoringMode: string;
    FauthoringMode_Specified: boolean;
    FaverageRunTime: Integer;
    FaverageRunTime_Specified: boolean;
    FbinaryData: string;
    FbinaryData_Specified: boolean;
    FbinaryObjects: Array_Of_reportBinaryObject;
    FbinaryObjects_Specified: boolean;
    Fbreadcrumbs: Array_Of_breadCrumb;
    Fbreadcrumbs_Specified: boolean;
    FcanDrill: Boolean;
    FcanDrill_Specified: boolean;
    Fcategory: string;
    Fcategory_Specified: boolean;
    Fcharts: Array_Of_reportChart;
    Fcharts_Specified: boolean;
    Fcolumns: Array_Of_reportSchema;
    Fcolumns_Specified: boolean;
    FcommandsHistory: reportRow;
    FcommandsHistory_Specified: boolean;
    Fcomments: Array_Of_reportComment;
    Fcomments_Specified: boolean;
    FcontentType: string;
    FcontentType_Specified: boolean;
    Fdashboard: dashboardDefinition;
    Fdashboard_Specified: boolean;
    FdashboardEnabled: Boolean;
    FdataOutput: string;
    FdataOutput_Specified: boolean;
    Fdatasource: string;
    Fdatasource_Specified: boolean;
    FdisplayedReportId: Integer;
    FdisplayedReportId_Specified: boolean;
    FdrillAnywhereCategories: reportRow;
    FdrillAnywhereCategories_Specified: boolean;
    FdrillAnywhereTargets: Array_Of_drillAnywhereTargets;
    FdrillAnywhereTargets_Specified: boolean;
    FdrillCode: string;
    FdrillCode_Specified: boolean;
    FerrorCode: Integer;
    FerrorCode_Specified: boolean;
    FformatCode: string;
    FformatCode_Specified: boolean;
    FgisMap: Array_Of_gisMap;
    FgisMap_Specified: boolean;
    FgoogleMaps: Array_Of_gMap;
    FgoogleMaps_Specified: boolean;
    FhitCount: Integer;
    FhitCount_Specified: boolean;
    FKPI: kpi;
    FKPI_Specified: boolean;
    FlastModifiedDate: string;
    FlastModifiedDate_Specified: boolean;
    FlastRunDuration: Integer;
    FlastRunDuration_Specified: boolean;
    FlastRunStatus: string;
    FlastRunStatus_Specified: boolean;
    FlastRunTime: TXSDecimal;
    FlastRunTime_Specified: boolean;
    Fmessages: reportRow;
    Fmessages_Specified: boolean;
    FmodifiedReports: Array_Of_int;
    FmodifiedReports_Specified: boolean;
    FpreRunFilterString: string;
    FpreRunFilterString_Specified: boolean;
    Fprivate_: Boolean;
    Fprivate__Specified: boolean;
    FrelatedReports: relatedReports;
    FrelatedReports_Specified: boolean;
    FreportDescription: string;
    FreportDescription_Specified: boolean;
    FreportFilters: Array_Of_reportFilter;
    FreportFilters_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    FreportName: string;
    FreportName_Specified: boolean;
    FreportPageSelection: Array_Of_reportPageSelection;
    FreportPageSelection_Specified: boolean;
    FreportStyle: string;
    FreportStyle_Specified: boolean;
    FreportTabSelection: Array_Of_reportTabSelection;
    FreportTabSelection_Specified: boolean;
    FreportTemplate: string;
    FreportTemplate_Specified: boolean;
    FreportType: string;
    FreportType_Specified: boolean;
    FreportUUID: string;
    FreportUUID_Specified: boolean;
    FreportUsage: Integer;
    FreportUsage_Specified: boolean;
    Fresults: Array_Of_reportRow;
    Fresults_Specified: boolean;
    Fschedule: scheduleRecord;
    Fschedule_Specified: boolean;
    FselectedSortColumn: Integer;
    FselectedSortColumn_Specified: boolean;
    FselectedSortOrder: Integer;
    FselectedSortOrder_Specified: boolean;
    FseriesSelection: Array_Of_seriesSelection;
    FseriesSelection_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    FsortableColumns: Array_Of_sortableTableColumn;
    FsortableColumns_Specified: boolean;
    FstatusCode: string;
    FstatusCode_Specified: boolean;
    FstoryboardDescriptors: Array_Of_storyboardDescriptor;
    FstoryboardDescriptors_Specified: boolean;
    FsubCategory: string;
    FsubCategory_Specified: boolean;
    Ftags: string;
    Ftags_Specified: boolean;
    FtimeAggregationSelection: Array_Of_timeAggregationSelection;
    FtimeAggregationSelection_Specified: boolean;
    FtimeSliderSelection: Array_Of_timeSliderSelection;
    FtimeSliderSelection_Specified: boolean;
    FviewName: string;
    FviewName_Specified: boolean;
    procedure Setauthor(Index: Integer; const Astring: string);
    function  author_Specified(Index: Integer): boolean;
    procedure SetauthoringMode(Index: Integer; const Astring: string);
    function  authoringMode_Specified(Index: Integer): boolean;
    procedure SetaverageRunTime(Index: Integer; const AInteger: Integer);
    function  averageRunTime_Specified(Index: Integer): boolean;
    procedure SetbinaryData(Index: Integer; const Astring: string);
    function  binaryData_Specified(Index: Integer): boolean;
    procedure SetbinaryObjects(Index: Integer; const AArray_Of_reportBinaryObject: Array_Of_reportBinaryObject);
    function  binaryObjects_Specified(Index: Integer): boolean;
    procedure Setbreadcrumbs(Index: Integer; const AArray_Of_breadCrumb: Array_Of_breadCrumb);
    function  breadcrumbs_Specified(Index: Integer): boolean;
    procedure SetcanDrill(Index: Integer; const ABoolean: Boolean);
    function  canDrill_Specified(Index: Integer): boolean;
    procedure Setcategory(Index: Integer; const Astring: string);
    function  category_Specified(Index: Integer): boolean;
    procedure Setcharts(Index: Integer; const AArray_Of_reportChart: Array_Of_reportChart);
    function  charts_Specified(Index: Integer): boolean;
    procedure Setcolumns(Index: Integer; const AArray_Of_reportSchema: Array_Of_reportSchema);
    function  columns_Specified(Index: Integer): boolean;
    procedure SetcommandsHistory(Index: Integer; const AreportRow: reportRow);
    function  commandsHistory_Specified(Index: Integer): boolean;
    procedure Setcomments(Index: Integer; const AArray_Of_reportComment: Array_Of_reportComment);
    function  comments_Specified(Index: Integer): boolean;
    procedure SetcontentType(Index: Integer; const Astring: string);
    function  contentType_Specified(Index: Integer): boolean;
    procedure Setdashboard(Index: Integer; const AdashboardDefinition: dashboardDefinition);
    function  dashboard_Specified(Index: Integer): boolean;
    procedure SetdataOutput(Index: Integer; const Astring: string);
    function  dataOutput_Specified(Index: Integer): boolean;
    procedure Setdatasource(Index: Integer; const Astring: string);
    function  datasource_Specified(Index: Integer): boolean;
    procedure SetdisplayedReportId(Index: Integer; const AInteger: Integer);
    function  displayedReportId_Specified(Index: Integer): boolean;
    procedure SetdrillAnywhereCategories(Index: Integer; const AreportRow: reportRow);
    function  drillAnywhereCategories_Specified(Index: Integer): boolean;
    procedure SetdrillAnywhereTargets(Index: Integer; const AArray_Of_drillAnywhereTargets: Array_Of_drillAnywhereTargets);
    function  drillAnywhereTargets_Specified(Index: Integer): boolean;
    procedure SetdrillCode(Index: Integer; const Astring: string);
    function  drillCode_Specified(Index: Integer): boolean;
    procedure SeterrorCode(Index: Integer; const AInteger: Integer);
    function  errorCode_Specified(Index: Integer): boolean;
    procedure SetformatCode(Index: Integer; const Astring: string);
    function  formatCode_Specified(Index: Integer): boolean;
    procedure SetgisMap(Index: Integer; const AArray_Of_gisMap: Array_Of_gisMap);
    function  gisMap_Specified(Index: Integer): boolean;
    procedure SetgoogleMaps(Index: Integer; const AArray_Of_gMap: Array_Of_gMap);
    function  googleMaps_Specified(Index: Integer): boolean;
    procedure SethitCount(Index: Integer; const AInteger: Integer);
    function  hitCount_Specified(Index: Integer): boolean;
    procedure SetKPI(Index: Integer; const Akpi: kpi);
    function  KPI_Specified(Index: Integer): boolean;
    procedure SetlastModifiedDate(Index: Integer; const Astring: string);
    function  lastModifiedDate_Specified(Index: Integer): boolean;
    procedure SetlastRunDuration(Index: Integer; const AInteger: Integer);
    function  lastRunDuration_Specified(Index: Integer): boolean;
    procedure SetlastRunStatus(Index: Integer; const Astring: string);
    function  lastRunStatus_Specified(Index: Integer): boolean;
    procedure SetlastRunTime(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  lastRunTime_Specified(Index: Integer): boolean;
    procedure Setmessages(Index: Integer; const AreportRow: reportRow);
    function  messages_Specified(Index: Integer): boolean;
    procedure SetmodifiedReports(Index: Integer; const AArray_Of_int: Array_Of_int);
    function  modifiedReports_Specified(Index: Integer): boolean;
    procedure SetpreRunFilterString(Index: Integer; const Astring: string);
    function  preRunFilterString_Specified(Index: Integer): boolean;
    procedure Setprivate_(Index: Integer; const ABoolean: Boolean);
    function  private__Specified(Index: Integer): boolean;
    procedure SetrelatedReports(Index: Integer; const ArelatedReports: relatedReports);
    function  relatedReports_Specified(Index: Integer): boolean;
    procedure SetreportDescription(Index: Integer; const Astring: string);
    function  reportDescription_Specified(Index: Integer): boolean;
    procedure SetreportFilters(Index: Integer; const AArray_Of_reportFilter: Array_Of_reportFilter);
    function  reportFilters_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure SetreportName(Index: Integer; const Astring: string);
    function  reportName_Specified(Index: Integer): boolean;
    procedure SetreportPageSelection(Index: Integer; const AArray_Of_reportPageSelection: Array_Of_reportPageSelection);
    function  reportPageSelection_Specified(Index: Integer): boolean;
    procedure SetreportStyle(Index: Integer; const Astring: string);
    function  reportStyle_Specified(Index: Integer): boolean;
    procedure SetreportTabSelection(Index: Integer; const AArray_Of_reportTabSelection: Array_Of_reportTabSelection);
    function  reportTabSelection_Specified(Index: Integer): boolean;
    procedure SetreportTemplate(Index: Integer; const Astring: string);
    function  reportTemplate_Specified(Index: Integer): boolean;
    procedure SetreportType(Index: Integer; const Astring: string);
    function  reportType_Specified(Index: Integer): boolean;
    procedure SetreportUUID(Index: Integer; const Astring: string);
    function  reportUUID_Specified(Index: Integer): boolean;
    procedure SetreportUsage(Index: Integer; const AInteger: Integer);
    function  reportUsage_Specified(Index: Integer): boolean;
    procedure Setresults(Index: Integer; const AArray_Of_reportRow: Array_Of_reportRow);
    function  results_Specified(Index: Integer): boolean;
    procedure Setschedule(Index: Integer; const AscheduleRecord: scheduleRecord);
    function  schedule_Specified(Index: Integer): boolean;
    procedure SetselectedSortColumn(Index: Integer; const AInteger: Integer);
    function  selectedSortColumn_Specified(Index: Integer): boolean;
    procedure SetselectedSortOrder(Index: Integer; const AInteger: Integer);
    function  selectedSortOrder_Specified(Index: Integer): boolean;
    procedure SetseriesSelection(Index: Integer; const AArray_Of_seriesSelection: Array_Of_seriesSelection);
    function  seriesSelection_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
    procedure SetsortableColumns(Index: Integer; const AArray_Of_sortableTableColumn: Array_Of_sortableTableColumn);
    function  sortableColumns_Specified(Index: Integer): boolean;
    procedure SetstatusCode(Index: Integer; const Astring: string);
    function  statusCode_Specified(Index: Integer): boolean;
    procedure SetstoryboardDescriptors(Index: Integer; const AArray_Of_storyboardDescriptor: Array_Of_storyboardDescriptor);
    function  storyboardDescriptors_Specified(Index: Integer): boolean;
    procedure SetsubCategory(Index: Integer; const Astring: string);
    function  subCategory_Specified(Index: Integer): boolean;
    procedure Settags(Index: Integer; const Astring: string);
    function  tags_Specified(Index: Integer): boolean;
    procedure SettimeAggregationSelection(Index: Integer; const AArray_Of_timeAggregationSelection: Array_Of_timeAggregationSelection);
    function  timeAggregationSelection_Specified(Index: Integer): boolean;
    procedure SettimeSliderSelection(Index: Integer; const AArray_Of_timeSliderSelection: Array_Of_timeSliderSelection);
    function  timeSliderSelection_Specified(Index: Integer): boolean;
    procedure SetviewName(Index: Integer; const Astring: string);
    function  viewName_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property author:                   string                             Index (IS_OPTN or IS_UNQL) read Fauthor write Setauthor stored author_Specified;
    property authoringMode:            string                             Index (IS_OPTN or IS_UNQL) read FauthoringMode write SetauthoringMode stored authoringMode_Specified;
    property averageRunTime:           Integer                            Index (IS_OPTN or IS_UNQL) read FaverageRunTime write SetaverageRunTime stored averageRunTime_Specified;
    property binaryData:               string                             Index (IS_OPTN or IS_UNQL) read FbinaryData write SetbinaryData stored binaryData_Specified;
    property binaryObjects:            Array_Of_reportBinaryObject        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FbinaryObjects write SetbinaryObjects stored binaryObjects_Specified;
    property breadcrumbs:              Array_Of_breadCrumb                Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fbreadcrumbs write Setbreadcrumbs stored breadcrumbs_Specified;
    property canDrill:                 Boolean                            Index (IS_OPTN or IS_UNQL) read FcanDrill write SetcanDrill stored canDrill_Specified;
    property category:                 string                             Index (IS_OPTN or IS_UNQL) read Fcategory write Setcategory stored category_Specified;
    property charts:                   Array_Of_reportChart               Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fcharts write Setcharts stored charts_Specified;
    property columns:                  Array_Of_reportSchema              Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fcolumns write Setcolumns stored columns_Specified;
    property commandsHistory:          reportRow                          Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcommandsHistory write SetcommandsHistory stored commandsHistory_Specified;
    property comments:                 Array_Of_reportComment             Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fcomments write Setcomments stored comments_Specified;
    property contentType:              string                             Index (IS_OPTN or IS_UNQL) read FcontentType write SetcontentType stored contentType_Specified;
    property dashboard:                dashboardDefinition                Index (IS_OPTN or IS_UNQL) read Fdashboard write Setdashboard stored dashboard_Specified;
    property dashboardEnabled:         Boolean                            Index (IS_UNQL) read FdashboardEnabled write FdashboardEnabled;
    property dataOutput:               string                             Index (IS_OPTN or IS_UNQL) read FdataOutput write SetdataOutput stored dataOutput_Specified;
    property datasource:               string                             Index (IS_OPTN or IS_UNQL) read Fdatasource write Setdatasource stored datasource_Specified;
    property displayedReportId:        Integer                            Index (IS_OPTN or IS_UNQL) read FdisplayedReportId write SetdisplayedReportId stored displayedReportId_Specified;
    property drillAnywhereCategories:  reportRow                          Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdrillAnywhereCategories write SetdrillAnywhereCategories stored drillAnywhereCategories_Specified;
    property drillAnywhereTargets:     Array_Of_drillAnywhereTargets      Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdrillAnywhereTargets write SetdrillAnywhereTargets stored drillAnywhereTargets_Specified;
    property drillCode:                string                             Index (IS_OPTN or IS_UNQL) read FdrillCode write SetdrillCode stored drillCode_Specified;
    property errorCode:                Integer                            Index (IS_OPTN or IS_UNQL) read FerrorCode write SeterrorCode stored errorCode_Specified;
    property formatCode:               string                             Index (IS_OPTN or IS_UNQL) read FformatCode write SetformatCode stored formatCode_Specified;
    property gisMap:                   Array_Of_gisMap                    Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgisMap write SetgisMap stored gisMap_Specified;
    property googleMaps:               Array_Of_gMap                      Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgoogleMaps write SetgoogleMaps stored googleMaps_Specified;
    property hitCount:                 Integer                            Index (IS_OPTN or IS_UNQL) read FhitCount write SethitCount stored hitCount_Specified;
    property KPI:                      kpi                                Index (IS_OPTN or IS_UNQL) read FKPI write SetKPI stored KPI_Specified;
    property lastModifiedDate:         string                             Index (IS_OPTN or IS_UNQL) read FlastModifiedDate write SetlastModifiedDate stored lastModifiedDate_Specified;
    property lastRunDuration:          Integer                            Index (IS_OPTN or IS_UNQL) read FlastRunDuration write SetlastRunDuration stored lastRunDuration_Specified;
    property lastRunStatus:            string                             Index (IS_OPTN or IS_UNQL) read FlastRunStatus write SetlastRunStatus stored lastRunStatus_Specified;
    property lastRunTime:              TXSDecimal                         Index (IS_OPTN or IS_UNQL) read FlastRunTime write SetlastRunTime stored lastRunTime_Specified;
    property messages:                 reportRow                          Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fmessages write Setmessages stored messages_Specified;
    property modifiedReports:          Array_Of_int                       Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmodifiedReports write SetmodifiedReports stored modifiedReports_Specified;
    property preRunFilterString:       string                             Index (IS_OPTN or IS_UNQL) read FpreRunFilterString write SetpreRunFilterString stored preRunFilterString_Specified;
    property private_:                 Boolean                            Index (IS_OPTN or IS_UNQL) read Fprivate_ write Setprivate_ stored private__Specified;
    property relatedReports:           relatedReports                     Index (IS_OPTN or IS_UNQL) read FrelatedReports write SetrelatedReports stored relatedReports_Specified;
    property reportDescription:        string                             Index (IS_OPTN or IS_UNQL) read FreportDescription write SetreportDescription stored reportDescription_Specified;
    property reportFilters:            Array_Of_reportFilter              Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FreportFilters write SetreportFilters stored reportFilters_Specified;
    property reportId:                 Integer                            Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property reportName:               string                             Index (IS_OPTN or IS_UNQL) read FreportName write SetreportName stored reportName_Specified;
    property reportPageSelection:      Array_Of_reportPageSelection       Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FreportPageSelection write SetreportPageSelection stored reportPageSelection_Specified;
    property reportStyle:              string                             Index (IS_OPTN or IS_UNQL) read FreportStyle write SetreportStyle stored reportStyle_Specified;
    property reportTabSelection:       Array_Of_reportTabSelection        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FreportTabSelection write SetreportTabSelection stored reportTabSelection_Specified;
    property reportTemplate:           string                             Index (IS_OPTN or IS_UNQL) read FreportTemplate write SetreportTemplate stored reportTemplate_Specified;
    property reportType:               string                             Index (IS_OPTN or IS_UNQL) read FreportType write SetreportType stored reportType_Specified;
    property reportUUID:               string                             Index (IS_OPTN or IS_UNQL) read FreportUUID write SetreportUUID stored reportUUID_Specified;
    property reportUsage:              Integer                            Index (IS_OPTN or IS_UNQL) read FreportUsage write SetreportUsage stored reportUsage_Specified;
    property results:                  Array_Of_reportRow                 Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fresults write Setresults stored results_Specified;
    property schedule:                 scheduleRecord                     Index (IS_OPTN or IS_UNQL) read Fschedule write Setschedule stored schedule_Specified;
    property selectedSortColumn:       Integer                            Index (IS_OPTN or IS_UNQL) read FselectedSortColumn write SetselectedSortColumn stored selectedSortColumn_Specified;
    property selectedSortOrder:        Integer                            Index (IS_OPTN or IS_UNQL) read FselectedSortOrder write SetselectedSortOrder stored selectedSortOrder_Specified;
    property seriesSelection:          Array_Of_seriesSelection           Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FseriesSelection write SetseriesSelection stored seriesSelection_Specified;
    property sessionId:                string                             Index (IS_OPTN or IS_UNQL) read FsessionId write SetsessionId stored sessionId_Specified;
    property sortableColumns:          Array_Of_sortableTableColumn       Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FsortableColumns write SetsortableColumns stored sortableColumns_Specified;
    property statusCode:               string                             Index (IS_OPTN or IS_UNQL) read FstatusCode write SetstatusCode stored statusCode_Specified;
    property storyboardDescriptors:    Array_Of_storyboardDescriptor      Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FstoryboardDescriptors write SetstoryboardDescriptors stored storyboardDescriptors_Specified;
    property subCategory:              string                             Index (IS_OPTN or IS_UNQL) read FsubCategory write SetsubCategory stored subCategory_Specified;
    property tags:                     string                             Index (IS_OPTN or IS_UNQL) read Ftags write Settags stored tags_Specified;
    property timeAggregationSelection: Array_Of_timeAggregationSelection  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtimeAggregationSelection write SettimeAggregationSelection stored timeAggregationSelection_Specified;
    property timeSliderSelection:      Array_Of_timeSliderSelection       Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtimeSliderSelection write SettimeSliderSelection stored timeSliderSelection_Specified;
    property viewName:                 string                             Index (IS_OPTN or IS_UNQL) read FviewName write SetviewName stored viewName_Specified;
  end;



  // ************************************************************************ //
  // XML       : reportTabSelection, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportTabSelection = class(TRemotable)
  private
    FhyperLink: string;
    FhyperLink_Specified: boolean;
    Findex_: Integer;
    FreportId: Integer;
    FreportId_Specified: boolean;
    Fselected: Boolean;
    Fselected_Specified: boolean;
    FtabTitle: string;
    FtabTitle_Specified: boolean;
    procedure SethyperLink(Index: Integer; const Astring: string);
    function  hyperLink_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure Setselected(Index: Integer; const ABoolean: Boolean);
    function  selected_Specified(Index: Integer): boolean;
    procedure SettabTitle(Index: Integer; const Astring: string);
    function  tabTitle_Specified(Index: Integer): boolean;
  published
    property hyperLink: string   Index (IS_OPTN or IS_UNQL) read FhyperLink write SethyperLink stored hyperLink_Specified;
    property index_:    Integer  Index (IS_UNQL) read Findex_ write Findex_;
    property reportId:  Integer  Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property selected:  Boolean  Index (IS_OPTN or IS_UNQL) read Fselected write Setselected stored selected_Specified;
    property tabTitle:  string   Index (IS_OPTN or IS_UNQL) read FtabTitle write SettabTitle stored tabTitle_Specified;
  end;



  // ************************************************************************ //
  // XML       : reportPageSelection, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  reportPageSelection = class(TRemotable)
  private
    FhyperLink: string;
    FhyperLink_Specified: boolean;
    FpageTitle: string;
    FpageTitle_Specified: boolean;
    FreportId: Integer;
    FreportId_Specified: boolean;
    Fselected: Boolean;
    Fselected_Specified: boolean;
    procedure SethyperLink(Index: Integer; const Astring: string);
    function  hyperLink_Specified(Index: Integer): boolean;
    procedure SetpageTitle(Index: Integer; const Astring: string);
    function  pageTitle_Specified(Index: Integer): boolean;
    procedure SetreportId(Index: Integer; const AInteger: Integer);
    function  reportId_Specified(Index: Integer): boolean;
    procedure Setselected(Index: Integer; const ABoolean: Boolean);
    function  selected_Specified(Index: Integer): boolean;
  published
    property hyperLink: string   Index (IS_OPTN or IS_UNQL) read FhyperLink write SethyperLink stored hyperLink_Specified;
    property pageTitle: string   Index (IS_OPTN or IS_UNQL) read FpageTitle write SetpageTitle stored pageTitle_Specified;
    property reportId:  Integer  Index (IS_OPTN or IS_UNQL) read FreportId write SetreportId stored reportId_Specified;
    property selected:  Boolean  Index (IS_OPTN or IS_UNQL) read Fselected write Setselected stored selected_Specified;
  end;



  // ************************************************************************ //
  // XML       : relatedReports, global, <complexType>
  // Namespace : http://webservices.web.mi.hof.com/
  // ************************************************************************ //
  relatedReports = class(TRemotable)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://webservices.web.mi.hof.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : LegacyReportServicePortBinding
  // service   : LegacyReportServiceService
  // port      : LegacyReportServicePort
  // URL       : http://172.16.174.137:8080/webservices/LegacyReportService
  // ************************************************************************ //
  LegacyReportService = interface(IInvokable)
  ['{3EB8E8B7-6FE8-849B-B4BC-9C6DBF1604E1}']
    function  remoteReportCall(const arg0: reportServiceRequest): reportServiceResponse; stdcall;
  end;

function GetLegacyReportService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): LegacyReportService;


implementation
  uses System.SysUtils;

function GetLegacyReportService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): LegacyReportService;
const
  defWSDL = 'http://172.16.174.137:8080/webservices/LegacyReportService?wsdl';
  defURL  = 'http://172.16.174.137:8080/webservices/LegacyReportService';
  defSvc  = 'LegacyReportServiceService';
  defPrt  = 'LegacyReportServicePort';
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
    Result := (RIO as LegacyReportService);
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


procedure reportChart.SetcontentType(Index: Integer; const Astring: string);
begin
  FcontentType := Astring;
  FcontentType_Specified := True;
end;

function reportChart.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure reportChart.Setdata(Index: Integer; const Astring: string);
begin
  Fdata := Astring;
  Fdata_Specified := True;
end;

function reportChart.data_Specified(Index: Integer): boolean;
begin
  Result := Fdata_Specified;
end;

procedure reportChart.Setfilename(Index: Integer; const Astring: string);
begin
  Ffilename := Astring;
  Ffilename_Specified := True;
end;

function reportChart.filename_Specified(Index: Integer): boolean;
begin
  Result := Ffilename_Specified;
end;

procedure reportChart.SetreportIndex(Index: Integer; const Astring: string);
begin
  FreportIndex := Astring;
  FreportIndex_Specified := True;
end;

function reportChart.reportIndex_Specified(Index: Integer): boolean;
begin
  Result := FreportIndex_Specified;
end;

procedure gMapPolygon.Setlongitude(Index: Integer; const AArray_Of_double: Array_Of_double);
begin
  Flongitude := AArray_Of_double;
  Flongitude_Specified := True;
end;

function gMapPolygon.longitude_Specified(Index: Integer): boolean;
begin
  Result := Flongitude_Specified;
end;

procedure gMapPolygon.Setlatitude(Index: Integer; const AArray_Of_double: Array_Of_double);
begin
  Flatitude := AArray_Of_double;
  Flatitude_Specified := True;
end;

function gMapPolygon.latitude_Specified(Index: Integer): boolean;
begin
  Result := Flatitude_Specified;
end;

procedure gMapPolygon.Settitle(Index: Integer; const Astring: string);
begin
  Ftitle := Astring;
  Ftitle_Specified := True;
end;

function gMapPolygon.title_Specified(Index: Integer): boolean;
begin
  Result := Ftitle_Specified;
end;

procedure gMapPolygon.Setlink(Index: Integer; const Astring: string);
begin
  Flink := Astring;
  Flink_Specified := True;
end;

function gMapPolygon.link_Specified(Index: Integer): boolean;
begin
  Result := Flink_Specified;
end;

procedure gMapPolygon.SetminLat(Index: Integer; const ADouble: Double);
begin
  FminLat := ADouble;
  FminLat_Specified := True;
end;

function gMapPolygon.minLat_Specified(Index: Integer): boolean;
begin
  Result := FminLat_Specified;
end;

procedure gMapPolygon.SetmaxLat(Index: Integer; const ADouble: Double);
begin
  FmaxLat := ADouble;
  FmaxLat_Specified := True;
end;

function gMapPolygon.maxLat_Specified(Index: Integer): boolean;
begin
  Result := FmaxLat_Specified;
end;

procedure gMapPolygon.SetminLong(Index: Integer; const ADouble: Double);
begin
  FminLong := ADouble;
  FminLong_Specified := True;
end;

function gMapPolygon.minLong_Specified(Index: Integer): boolean;
begin
  Result := FminLong_Specified;
end;

procedure gMapPolygon.SetmaxLong(Index: Integer; const ADouble: Double);
begin
  FmaxLong := ADouble;
  FmaxLong_Specified := True;
end;

function gMapPolygon.maxLong_Specified(Index: Integer): boolean;
begin
  Result := FmaxLong_Specified;
end;

procedure gMapPolygon.Setcolor(Index: Integer; const Astring: string);
begin
  Fcolor := Astring;
  Fcolor_Specified := True;
end;

function gMapPolygon.color_Specified(Index: Integer): boolean;
begin
  Result := Fcolor_Specified;
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

procedure gisShape.SetinteractionCommand(Index: Integer; const Astring: string);
begin
  FinteractionCommand := Astring;
  FinteractionCommand_Specified := True;
end;

function gisShape.interactionCommand_Specified(Index: Integer): boolean;
begin
  Result := FinteractionCommand_Specified;
end;

procedure gisShape.Settooltip(Index: Integer; const Astring: string);
begin
  Ftooltip := Astring;
  Ftooltip_Specified := True;
end;

function gisShape.tooltip_Specified(Index: Integer): boolean;
begin
  Result := Ftooltip_Specified;
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

procedure breadCrumb.SetentityDescription(Index: Integer; const Astring: string);
begin
  FentityDescription := Astring;
  FentityDescription_Specified := True;
end;

function breadCrumb.entityDescription_Specified(Index: Integer): boolean;
begin
  Result := FentityDescription_Specified;
end;

procedure breadCrumb.SetentityId(Index: Integer; const AInteger: Integer);
begin
  FentityId := AInteger;
  FentityId_Specified := True;
end;

function breadCrumb.entityId_Specified(Index: Integer): boolean;
begin
  Result := FentityId_Specified;
end;

procedure breadCrumb.SetentityValue(Index: Integer; const Astring: string);
begin
  FentityValue := Astring;
  FentityValue_Specified := True;
end;

function breadCrumb.entityValue_Specified(Index: Integer): boolean;
begin
  Result := FentityValue_Specified;
end;

procedure breadCrumb.SetfieldTemplateId(Index: Integer; const AInteger: Integer);
begin
  FfieldTemplateId := AInteger;
  FfieldTemplateId_Specified := True;
end;

function breadCrumb.fieldTemplateId_Specified(Index: Integer): boolean;
begin
  Result := FfieldTemplateId_Specified;
end;

procedure breadCrumb.SethyperLink(Index: Integer; const Astring: string);
begin
  FhyperLink := Astring;
  FhyperLink_Specified := True;
end;

function breadCrumb.hyperLink_Specified(Index: Integer): boolean;
begin
  Result := FhyperLink_Specified;
end;

procedure breadCrumb.SetorderId(Index: Integer; const AInteger: Integer);
begin
  ForderId := AInteger;
  ForderId_Specified := True;
end;

function breadCrumb.orderId_Specified(Index: Integer): boolean;
begin
  Result := ForderId_Specified;
end;

procedure breadCrumb.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function breadCrumb.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure breadCrumb.SettypeCode(Index: Integer; const Astring: string);
begin
  FtypeCode := Astring;
  FtypeCode_Specified := True;
end;

function breadCrumb.typeCode_Specified(Index: Integer): boolean;
begin
  Result := FtypeCode_Specified;
end;

procedure condition.SetfieldId(Index: Integer; const AInteger: Integer);
begin
  FfieldId := AInteger;
  FfieldId_Specified := True;
end;

function condition.fieldId_Specified(Index: Integer): boolean;
begin
  Result := FfieldId_Specified;
end;

procedure condition.Setoperator(Index: Integer; const Astring: string);
begin
  Foperator := Astring;
  Foperator_Specified := True;
end;

function condition.operator_Specified(Index: Integer): boolean;
begin
  Result := Foperator_Specified;
end;

procedure condition.Setvalue1(Index: Integer; const Astring: string);
begin
  Fvalue1 := Astring;
  Fvalue1_Specified := True;
end;

function condition.value1_Specified(Index: Integer): boolean;
begin
  Result := Fvalue1_Specified;
end;

procedure condition.Setvalue2(Index: Integer; const Astring: string);
begin
  Fvalue2 := Astring;
  Fvalue2_Specified := True;
end;

function condition.value2_Specified(Index: Integer): boolean;
begin
  Result := Fvalue2_Specified;
end;

procedure dashboardFilterDefinition.SetcomponentId(Index: Integer; const AInteger: Integer);
begin
  FcomponentId := AInteger;
  FcomponentId_Specified := True;
end;

function dashboardFilterDefinition.componentId_Specified(Index: Integer): boolean;
begin
  Result := FcomponentId_Specified;
end;

procedure dashboardFilterDefinition.SetcomponentTypeCode(Index: Integer; const Astring: string);
begin
  FcomponentTypeCode := Astring;
  FcomponentTypeCode_Specified := True;
end;

function dashboardFilterDefinition.componentTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FcomponentTypeCode_Specified;
end;

procedure dashboardFilterDefinition.SetdashboardFilterId(Index: Integer; const AInteger: Integer);
begin
  FdashboardFilterId := AInteger;
  FdashboardFilterId_Specified := True;
end;

function dashboardFilterDefinition.dashboardFilterId_Specified(Index: Integer): boolean;
begin
  Result := FdashboardFilterId_Specified;
end;

procedure dashboardFilterDefinition.SetdashboardFilterUUID(Index: Integer; const Astring: string);
begin
  FdashboardFilterUUID := Astring;
  FdashboardFilterUUID_Specified := True;
end;

function dashboardFilterDefinition.dashboardFilterUUID_Specified(Index: Integer): boolean;
begin
  Result := FdashboardFilterUUID_Specified;
end;

procedure dashboardFilterDefinition.SetentityId(Index: Integer; const AInteger: Integer);
begin
  FentityId := AInteger;
  FentityId_Specified := True;
end;

function dashboardFilterDefinition.entityId_Specified(Index: Integer): boolean;
begin
  Result := FentityId_Specified;
end;

procedure dashboardFilterDefinition.SetentityTypeCode(Index: Integer; const Astring: string);
begin
  FentityTypeCode := Astring;
  FentityTypeCode_Specified := True;
end;

function dashboardFilterDefinition.entityTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FentityTypeCode_Specified;
end;

procedure dashboardFilterDefinition.SetformatKey(Index: Integer; const Astring: string);
begin
  FformatKey := Astring;
  FformatKey_Specified := True;
end;

function dashboardFilterDefinition.formatKey_Specified(Index: Integer): boolean;
begin
  Result := FformatKey_Specified;
end;

procedure dashboardFilterDefinition.SetformatValue(Index: Integer; const Astring: string);
begin
  FformatValue := Astring;
  FformatValue_Specified := True;
end;

function dashboardFilterDefinition.formatValue_Specified(Index: Integer): boolean;
begin
  Result := FformatValue_Specified;
end;

procedure dashboardFilterDefinition.SetgroupId(Index: Integer; const AInteger: Integer);
begin
  FgroupId := AInteger;
  FgroupId_Specified := True;
end;

function dashboardFilterDefinition.groupId_Specified(Index: Integer): boolean;
begin
  Result := FgroupId_Specified;
end;

procedure dashboardFilterDefinition.SetreportFilterUUID(Index: Integer; const Astring: string);
begin
  FreportFilterUUID := Astring;
  FreportFilterUUID_Specified := True;
end;

function dashboardFilterDefinition.reportFilterUUID_Specified(Index: Integer): boolean;
begin
  Result := FreportFilterUUID_Specified;
end;

procedure dashboardFilter.SetfilterId(Index: Integer; const AInteger: Integer);
begin
  FfilterId := AInteger;
  FfilterId_Specified := True;
end;

function dashboardFilter.filterId_Specified(Index: Integer): boolean;
begin
  Result := FfilterId_Specified;
end;

procedure dashboardFilter.SetfilterType(Index: Integer; const Astring: string);
begin
  FfilterType := Astring;
  FfilterType_Specified := True;
end;

function dashboardFilter.filterType_Specified(Index: Integer): boolean;
begin
  Result := FfilterType_Specified;
end;

procedure dashboardFilter.SetfilterValue(Index: Integer; const Astring: string);
begin
  FfilterValue := Astring;
  FfilterValue_Specified := True;
end;

function dashboardFilter.filterValue_Specified(Index: Integer): boolean;
begin
  Result := FfilterValue_Specified;
end;

procedure dashboardFilter.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function dashboardFilter.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure dashboardFilter.SettabId(Index: Integer; const AInteger: Integer);
begin
  FtabId := AInteger;
  FtabId_Specified := True;
end;

function dashboardFilter.tabId_Specified(Index: Integer): boolean;
begin
  Result := FtabId_Specified;
end;

procedure dashboardFilter.SettemplateId(Index: Integer; const AInteger: Integer);
begin
  FtemplateId := AInteger;
  FtemplateId_Specified := True;
end;

function dashboardFilter.templateId_Specified(Index: Integer): boolean;
begin
  Result := FtemplateId_Specified;
end;

destructor scheduleRecord.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FconditionList)-1 do
    System.SysUtils.FreeAndNil(FconditionList[I]);
  System.SetLength(FconditionList, 0);
  inherited Destroy;
end;

procedure scheduleRecord.SetadvancedTime(Index: Integer; const AInteger: Integer);
begin
  FadvancedTime := AInteger;
  FadvancedTime_Specified := True;
end;

function scheduleRecord.advancedTime_Specified(Index: Integer): boolean;
begin
  Result := FadvancedTime_Specified;
end;

procedure scheduleRecord.SetadvancedTimezoneCode(Index: Integer; const Astring: string);
begin
  FadvancedTimezoneCode := Astring;
  FadvancedTimezoneCode_Specified := True;
end;

function scheduleRecord.advancedTimezoneCode_Specified(Index: Integer): boolean;
begin
  Result := FadvancedTimezoneCode_Specified;
end;

procedure scheduleRecord.SetbodyText(Index: Integer; const Astring: string);
begin
  FbodyText := Astring;
  FbodyText_Specified := True;
end;

function scheduleRecord.bodyText_Specified(Index: Integer): boolean;
begin
  Result := FbodyText_Specified;
end;

procedure scheduleRecord.SetconditionList(Index: Integer; const AArray_Of_condition: Array_Of_condition);
begin
  FconditionList := AArray_Of_condition;
  FconditionList_Specified := True;
end;

function scheduleRecord.conditionList_Specified(Index: Integer): boolean;
begin
  Result := FconditionList_Specified;
end;

procedure scheduleRecord.Setformat(Index: Integer; const Astring: string);
begin
  Fformat := Astring;
  Fformat_Specified := True;
end;

function scheduleRecord.format_Specified(Index: Integer): boolean;
begin
  Result := Fformat_Specified;
end;

procedure scheduleRecord.SetfrequencyCode(Index: Integer; const Astring: string);
begin
  FfrequencyCode := Astring;
  FfrequencyCode_Specified := True;
end;

function scheduleRecord.frequencyCode_Specified(Index: Integer): boolean;
begin
  Result := FfrequencyCode_Specified;
end;

procedure scheduleRecord.SetfrequencyTypeCode(Index: Integer; const Astring: string);
begin
  FfrequencyTypeCode := Astring;
  FfrequencyTypeCode_Specified := True;
end;

function scheduleRecord.frequencyTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FfrequencyTypeCode_Specified;
end;

procedure scheduleRecord.SetfrequencyUnit(Index: Integer; const AInteger: Integer);
begin
  FfrequencyUnit := AInteger;
  FfrequencyUnit_Specified := True;
end;

function scheduleRecord.frequencyUnit_Specified(Index: Integer): boolean;
begin
  Result := FfrequencyUnit_Specified;
end;

procedure scheduleRecord.Setrecipient(Index: Integer; const AInteger: Integer);
begin
  Frecipient := AInteger;
  Frecipient_Specified := True;
end;

function scheduleRecord.recipient_Specified(Index: Integer): boolean;
begin
  Result := Frecipient_Specified;
end;

procedure scheduleRecord.Setsubject(Index: Integer; const Astring: string);
begin
  Fsubject := Astring;
  Fsubject_Specified := True;
end;

function scheduleRecord.subject_Specified(Index: Integer): boolean;
begin
  Result := Fsubject_Specified;
end;

procedure reportComment.Setauthor(Index: Integer; const Astring: string);
begin
  Fauthor := Astring;
  Fauthor_Specified := True;
end;

function reportComment.author_Specified(Index: Integer): boolean;
begin
  Result := Fauthor_Specified;
end;

procedure reportComment.SetauthorId(Index: Integer; const AInteger: Integer);
begin
  FauthorId := AInteger;
  FauthorId_Specified := True;
end;

function reportComment.authorId_Specified(Index: Integer): boolean;
begin
  Result := FauthorId_Specified;
end;

procedure reportComment.Setcomment(Index: Integer; const Astring: string);
begin
  Fcomment := Astring;
  Fcomment_Specified := True;
end;

function reportComment.comment_Specified(Index: Integer): boolean;
begin
  Result := Fcomment_Specified;
end;

procedure reportComment.SetcommentDate(Index: Integer; const Astring: string);
begin
  FcommentDate := Astring;
  FcommentDate_Specified := True;
end;

function reportComment.commentDate_Specified(Index: Integer): boolean;
begin
  Result := FcommentDate_Specified;
end;

procedure reportComment.SetcommentId(Index: Integer; const AInteger: Integer);
begin
  FcommentId := AInteger;
  FcommentId_Specified := True;
end;

function reportComment.commentId_Specified(Index: Integer): boolean;
begin
  Result := FcommentId_Specified;
end;

procedure reportComment.SetlastActivityDate(Index: Integer; const Astring: string);
begin
  FlastActivityDate := Astring;
  FlastActivityDate_Specified := True;
end;

function reportComment.lastActivityDate_Specified(Index: Integer): boolean;
begin
  Result := FlastActivityDate_Specified;
end;

procedure reportComment.SetparentCommentId(Index: Integer; const AInteger: Integer);
begin
  FparentCommentId := AInteger;
  FparentCommentId_Specified := True;
end;

function reportComment.parentCommentId_Specified(Index: Integer): boolean;
begin
  Result := FparentCommentId_Specified;
end;

procedure reportComment.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function reportComment.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure reportComment.SetstatusCode(Index: Integer; const Astring: string);
begin
  FstatusCode := Astring;
  FstatusCode_Specified := True;
end;

function reportComment.statusCode_Specified(Index: Integer): boolean;
begin
  Result := FstatusCode_Specified;
end;

procedure reportComment.Settitle(Index: Integer; const Astring: string);
begin
  Ftitle := Astring;
  Ftitle_Specified := True;
end;

function reportComment.title_Specified(Index: Integer): boolean;
begin
  Result := Ftitle_Specified;
end;

destructor gMap.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FmapPoints)-1 do
    System.SysUtils.FreeAndNil(FmapPoints[I]);
  System.SetLength(FmapPoints, 0);
  for I := 0 to System.Length(FmapPolys)-1 do
    System.SysUtils.FreeAndNil(FmapPolys[I]);
  System.SetLength(FmapPolys, 0);
  inherited Destroy;
end;

procedure gMap.SetmapLegendImage(Index: Integer; const Astring: string);
begin
  FmapLegendImage := Astring;
  FmapLegendImage_Specified := True;
end;

function gMap.mapLegendImage_Specified(Index: Integer): boolean;
begin
  Result := FmapLegendImage_Specified;
end;

procedure gMap.SetmapPoints(Index: Integer; const AArray_Of_gMapPoint: Array_Of_gMapPoint);
begin
  FmapPoints := AArray_Of_gMapPoint;
  FmapPoints_Specified := True;
end;

function gMap.mapPoints_Specified(Index: Integer): boolean;
begin
  Result := FmapPoints_Specified;
end;

procedure gMap.SetmapPolys(Index: Integer; const AArray_Of_gMapPolygon: Array_Of_gMapPolygon);
begin
  FmapPolys := AArray_Of_gMapPolygon;
  FmapPolys_Specified := True;
end;

function gMap.mapPolys_Specified(Index: Integer): boolean;
begin
  Result := FmapPolys_Specified;
end;

procedure reportFilter.SetdataValue(Index: Integer; const Astring: string);
begin
  FdataValue := Astring;
  FdataValue_Specified := True;
end;

function reportFilter.dataValue_Specified(Index: Integer): boolean;
begin
  Result := FdataValue_Specified;
end;

procedure reportFilter.SetfilterId(Index: Integer; const AInteger: Integer);
begin
  FfilterId := AInteger;
  FfilterId_Specified := True;
end;

function reportFilter.filterId_Specified(Index: Integer): boolean;
begin
  Result := FfilterId_Specified;
end;

procedure reportFilter.SetisOmitted(Index: Integer; const ABoolean: Boolean);
begin
  FisOmitted := ABoolean;
  FisOmitted_Specified := True;
end;

function reportFilter.isOmitted_Specified(Index: Integer): boolean;
begin
  Result := FisOmitted_Specified;
end;

procedure timeAggregationSelection.SetgranularityString(Index: Integer; const Astring: string);
begin
  FgranularityString := Astring;
  FgranularityString_Specified := True;
end;

function timeAggregationSelection.granularityString_Specified(Index: Integer): boolean;
begin
  Result := FgranularityString_Specified;
end;

procedure timeAggregationSelection.SetgranularityStringKey(Index: Integer; const Astring: string);
begin
  FgranularityStringKey := Astring;
  FgranularityStringKey_Specified := True;
end;

function timeAggregationSelection.granularityStringKey_Specified(Index: Integer): boolean;
begin
  Result := FgranularityStringKey_Specified;
end;

procedure timeAggregationSelection.SethyperLink(Index: Integer; const Astring: string);
begin
  FhyperLink := Astring;
  FhyperLink_Specified := True;
end;

function timeAggregationSelection.hyperLink_Specified(Index: Integer): boolean;
begin
  Result := FhyperLink_Specified;
end;

procedure timeAggregationSelection.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function timeAggregationSelection.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure timeAggregationSelection.Setselected(Index: Integer; const ABoolean: Boolean);
begin
  Fselected := ABoolean;
  Fselected_Specified := True;
end;

function timeAggregationSelection.selected_Specified(Index: Integer): boolean;
begin
  Result := Fselected_Specified;
end;

procedure dashboardFieldDefinition.SetfieldDescription(Index: Integer; const Astring: string);
begin
  FfieldDescription := Astring;
  FfieldDescription_Specified := True;
end;

function dashboardFieldDefinition.fieldDescription_Specified(Index: Integer): boolean;
begin
  Result := FfieldDescription_Specified;
end;

procedure dashboardFieldDefinition.SetfieldId(Index: Integer; const AInteger: Integer);
begin
  FfieldId := AInteger;
  FfieldId_Specified := True;
end;

function dashboardFieldDefinition.fieldId_Specified(Index: Integer): boolean;
begin
  Result := FfieldId_Specified;
end;

procedure dashboardFieldDefinition.SetfieldName(Index: Integer; const Astring: string);
begin
  FfieldName := Astring;
  FfieldName_Specified := True;
end;

function dashboardFieldDefinition.fieldName_Specified(Index: Integer): boolean;
begin
  Result := FfieldName_Specified;
end;

procedure dashboardFieldDefinition.SetfieldType(Index: Integer; const Astring: string);
begin
  FfieldType := Astring;
  FfieldType_Specified := True;
end;

function dashboardFieldDefinition.fieldType_Specified(Index: Integer): boolean;
begin
  Result := FfieldType_Specified;
end;

procedure dashboardFieldDefinition.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function dashboardFieldDefinition.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure dashboardFieldDefinition.SettabId(Index: Integer; const AInteger: Integer);
begin
  FtabId := AInteger;
  FtabId_Specified := True;
end;

function dashboardFieldDefinition.tabId_Specified(Index: Integer): boolean;
begin
  Result := FtabId_Specified;
end;

procedure dashboardFieldDefinition.SettemplateId(Index: Integer; const AInteger: Integer);
begin
  FtemplateId := AInteger;
  FtemplateId_Specified := True;
end;

function dashboardFieldDefinition.templateId_Specified(Index: Integer): boolean;
begin
  Result := FtemplateId_Specified;
end;

destructor dashboardElement.Destroy;
begin
  System.SysUtils.FreeAndNil(FstartDate);
  inherited Destroy;
end;

procedure dashboardElement.SetcolumnNumber(Index: Integer; const AInteger: Integer);
begin
  FcolumnNumber := AInteger;
  FcolumnNumber_Specified := True;
end;

function dashboardElement.columnNumber_Specified(Index: Integer): boolean;
begin
  Result := FcolumnNumber_Specified;
end;

procedure dashboardElement.SetentityId(Index: Integer; const AInteger: Integer);
begin
  FentityId := AInteger;
  FentityId_Specified := True;
end;

function dashboardElement.entityId_Specified(Index: Integer): boolean;
begin
  Result := FentityId_Specified;
end;

procedure dashboardElement.SetentityTypeCode(Index: Integer; const Astring: string);
begin
  FentityTypeCode := Astring;
  FentityTypeCode_Specified := True;
end;

function dashboardElement.entityTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FentityTypeCode_Specified;
end;

procedure dashboardElement.SetportletHeight(Index: Integer; const AInteger: Integer);
begin
  FportletHeight := AInteger;
  FportletHeight_Specified := True;
end;

function dashboardElement.portletHeight_Specified(Index: Integer): boolean;
begin
  Result := FportletHeight_Specified;
end;

procedure dashboardElement.SetportletStatus(Index: Integer; const Astring: string);
begin
  FportletStatus := Astring;
  FportletStatus_Specified := True;
end;

function dashboardElement.portletStatus_Specified(Index: Integer): boolean;
begin
  Result := FportletStatus_Specified;
end;

procedure dashboardElement.SetrowNumber(Index: Integer; const AInteger: Integer);
begin
  FrowNumber := AInteger;
  FrowNumber_Specified := True;
end;

function dashboardElement.rowNumber_Specified(Index: Integer): boolean;
begin
  Result := FrowNumber_Specified;
end;

procedure dashboardElement.SetsequenceNumber(Index: Integer; const AInteger: Integer);
begin
  FsequenceNumber := AInteger;
  FsequenceNumber_Specified := True;
end;

function dashboardElement.sequenceNumber_Specified(Index: Integer): boolean;
begin
  Result := FsequenceNumber_Specified;
end;

procedure dashboardElement.SetstartDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FstartDate := ATXSDateTime;
  FstartDate_Specified := True;
end;

function dashboardElement.startDate_Specified(Index: Integer): boolean;
begin
  Result := FstartDate_Specified;
end;

procedure dashboardElement.SettabId(Index: Integer; const AInteger: Integer);
begin
  FtabId := AInteger;
  FtabId_Specified := True;
end;

function dashboardElement.tabId_Specified(Index: Integer): boolean;
begin
  Result := FtabId_Specified;
end;

procedure seriesSelection.Setdescription(Index: Integer; const Astring: string);
begin
  Fdescription := Astring;
  Fdescription_Specified := True;
end;

function seriesSelection.description_Specified(Index: Integer): boolean;
begin
  Result := Fdescription_Specified;
end;

procedure seriesSelection.SetfieldId(Index: Integer; const AInteger: Integer);
begin
  FfieldId := AInteger;
  FfieldId_Specified := True;
end;

function seriesSelection.fieldId_Specified(Index: Integer): boolean;
begin
  Result := FfieldId_Specified;
end;

procedure seriesSelection.Sethyperlink(Index: Integer; const Astring: string);
begin
  Fhyperlink := Astring;
  Fhyperlink_Specified := True;
end;

function seriesSelection.hyperlink_Specified(Index: Integer): boolean;
begin
  Result := Fhyperlink_Specified;
end;

procedure seriesSelection.SetpctChange(Index: Integer; const Astring: string);
begin
  FpctChange := Astring;
  FpctChange_Specified := True;
end;

function seriesSelection.pctChange_Specified(Index: Integer): boolean;
begin
  Result := FpctChange_Specified;
end;

procedure seriesSelection.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function seriesSelection.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure seriesSelection.SetseriesThumb(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  FseriesThumb := ATByteSOAPArray;
  FseriesThumb_Specified := True;
end;

function seriesSelection.seriesThumb_Specified(Index: Integer): boolean;
begin
  Result := FseriesThumb_Specified;
end;

procedure seriesSelection.SettotalValue(Index: Integer; const Astring: string);
begin
  FtotalValue := Astring;
  FtotalValue_Specified := True;
end;

function seriesSelection.totalValue_Specified(Index: Integer): boolean;
begin
  Result := FtotalValue_Specified;
end;

procedure seriesSelection.SettrendCode(Index: Integer; const Astring: string);
begin
  FtrendCode := Astring;
  FtrendCode_Specified := True;
end;

function seriesSelection.trendCode_Specified(Index: Integer): boolean;
begin
  Result := FtrendCode_Specified;
end;

procedure seriesSelection.SettypeCode(Index: Integer; const Astring: string);
begin
  FtypeCode := Astring;
  FtypeCode_Specified := True;
end;

function seriesSelection.typeCode_Specified(Index: Integer): boolean;
begin
  Result := FtypeCode_Specified;
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

destructor dashboardDefinition.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Felements)-1 do
    System.SysUtils.FreeAndNil(Felements[I]);
  System.SetLength(Felements, 0);
  for I := 0 to System.Length(Ffields)-1 do
    System.SysUtils.FreeAndNil(Ffields[I]);
  System.SetLength(Ffields, 0);
  for I := 0 to System.Length(Ffilters)-1 do
    System.SysUtils.FreeAndNil(Ffilters[I]);
  System.SetLength(Ffilters, 0);
  for I := 0 to System.Length(Fsubtabs)-1 do
    System.SysUtils.FreeAndNil(Fsubtabs[I]);
  System.SetLength(Fsubtabs, 0);
  System.SysUtils.FreeAndNil(FendDate);
  System.SysUtils.FreeAndNil(FstartDate);
  inherited Destroy;
end;

procedure dashboardDefinition.SetaccessCode(Index: Integer; const Astring: string);
begin
  FaccessCode := Astring;
  FaccessCode_Specified := True;
end;

function dashboardDefinition.accessCode_Specified(Index: Integer): boolean;
begin
  Result := FaccessCode_Specified;
end;

procedure dashboardDefinition.Setaudience(Index: Integer; const Astring: string);
begin
  Faudience := Astring;
  Faudience_Specified := True;
end;

function dashboardDefinition.audience_Specified(Index: Integer): boolean;
begin
  Result := Faudience_Specified;
end;

procedure dashboardDefinition.SetcategoryCode(Index: Integer; const Astring: string);
begin
  FcategoryCode := Astring;
  FcategoryCode_Specified := True;
end;

function dashboardDefinition.categoryCode_Specified(Index: Integer): boolean;
begin
  Result := FcategoryCode_Specified;
end;

procedure dashboardDefinition.Setelements(Index: Integer; const AArray_Of_dashboardElement: Array_Of_dashboardElement);
begin
  Felements := AArray_Of_dashboardElement;
  Felements_Specified := True;
end;

function dashboardDefinition.elements_Specified(Index: Integer): boolean;
begin
  Result := Felements_Specified;
end;

procedure dashboardDefinition.SetendDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FendDate := ATXSDateTime;
  FendDate_Specified := True;
end;

function dashboardDefinition.endDate_Specified(Index: Integer): boolean;
begin
  Result := FendDate_Specified;
end;

procedure dashboardDefinition.Setfields(Index: Integer; const AArray_Of_dashboardFieldDefinition: Array_Of_dashboardFieldDefinition);
begin
  Ffields := AArray_Of_dashboardFieldDefinition;
  Ffields_Specified := True;
end;

function dashboardDefinition.fields_Specified(Index: Integer): boolean;
begin
  Result := Ffields_Specified;
end;

procedure dashboardDefinition.Setfilters(Index: Integer; const AArray_Of_dashboardFilterDefinition: Array_Of_dashboardFilterDefinition);
begin
  Ffilters := AArray_Of_dashboardFilterDefinition;
  Ffilters_Specified := True;
end;

function dashboardDefinition.filters_Specified(Index: Integer): boolean;
begin
  Result := Ffilters_Specified;
end;

procedure dashboardDefinition.SetgroupTypeCode(Index: Integer; const Astring: string);
begin
  FgroupTypeCode := Astring;
  FgroupTypeCode_Specified := True;
end;

function dashboardDefinition.groupTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FgroupTypeCode_Specified;
end;

procedure dashboardDefinition.SetlanguageCode(Index: Integer; const Astring: string);
begin
  FlanguageCode := Astring;
  FlanguageCode_Specified := True;
end;

function dashboardDefinition.languageCode_Specified(Index: Integer): boolean;
begin
  Result := FlanguageCode_Specified;
end;

procedure dashboardDefinition.SetlongDescription(Index: Integer; const Astring: string);
begin
  FlongDescription := Astring;
  FlongDescription_Specified := True;
end;

function dashboardDefinition.longDescription_Specified(Index: Integer): boolean;
begin
  Result := FlongDescription_Specified;
end;

procedure dashboardDefinition.Setowner(Index: Integer; const AInteger: Integer);
begin
  Fowner := AInteger;
  Fowner_Specified := True;
end;

function dashboardDefinition.owner_Specified(Index: Integer): boolean;
begin
  Result := Fowner_Specified;
end;

procedure dashboardDefinition.SetownerTypeCode(Index: Integer; const Astring: string);
begin
  FownerTypeCode := Astring;
  FownerTypeCode_Specified := True;
end;

function dashboardDefinition.ownerTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FownerTypeCode_Specified;
end;

procedure dashboardDefinition.SetparentGroupId(Index: Integer; const AInteger: Integer);
begin
  FparentGroupId := AInteger;
  FparentGroupId_Specified := True;
end;

function dashboardDefinition.parentGroupId_Specified(Index: Integer): boolean;
begin
  Result := FparentGroupId_Specified;
end;

procedure dashboardDefinition.SetshortDescription(Index: Integer; const Astring: string);
begin
  FshortDescription := Astring;
  FshortDescription_Specified := True;
end;

function dashboardDefinition.shortDescription_Specified(Index: Integer): boolean;
begin
  Result := FshortDescription_Specified;
end;

procedure dashboardDefinition.SetstartDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FstartDate := ATXSDateTime;
  FstartDate_Specified := True;
end;

function dashboardDefinition.startDate_Specified(Index: Integer): boolean;
begin
  Result := FstartDate_Specified;
end;

procedure dashboardDefinition.SetstatusCode(Index: Integer; const Astring: string);
begin
  FstatusCode := Astring;
  FstatusCode_Specified := True;
end;

function dashboardDefinition.statusCode_Specified(Index: Integer): boolean;
begin
  Result := FstatusCode_Specified;
end;

procedure dashboardDefinition.SetstyleCode(Index: Integer; const Astring: string);
begin
  FstyleCode := Astring;
  FstyleCode_Specified := True;
end;

function dashboardDefinition.styleCode_Specified(Index: Integer): boolean;
begin
  Result := FstyleCode_Specified;
end;

procedure dashboardDefinition.SetsubCategoryCode(Index: Integer; const Astring: string);
begin
  FsubCategoryCode := Astring;
  FsubCategoryCode_Specified := True;
end;

function dashboardDefinition.subCategoryCode_Specified(Index: Integer): boolean;
begin
  Result := FsubCategoryCode_Specified;
end;

procedure dashboardDefinition.Setsubtabs(Index: Integer; const AArray_Of_dashboardDefinition: Array_Of_dashboardDefinition);
begin
  Fsubtabs := AArray_Of_dashboardDefinition;
  Fsubtabs_Specified := True;
end;

function dashboardDefinition.subtabs_Specified(Index: Integer): boolean;
begin
  Result := Fsubtabs_Specified;
end;

procedure dashboardDefinition.SettabId(Index: Integer; const AInteger: Integer);
begin
  FtabId := AInteger;
  FtabId_Specified := True;
end;

function dashboardDefinition.tabId_Specified(Index: Integer): boolean;
begin
  Result := FtabId_Specified;
end;

destructor gisMap.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Flayers)-1 do
    System.SysUtils.FreeAndNil(Flayers[I]);
  System.SetLength(Flayers, 0);
  for I := 0 to System.Length(Fshapes)-1 do
    System.SysUtils.FreeAndNil(Fshapes[I]);
  System.SetLength(Fshapes, 0);
  System.SysUtils.FreeAndNil(Fscale);
  inherited Destroy;
end;

procedure gisMap.Setlayers(Index: Integer; const AArray_Of_gisLayer: Array_Of_gisLayer);
begin
  Flayers := AArray_Of_gisLayer;
  Flayers_Specified := True;
end;

function gisMap.layers_Specified(Index: Integer): boolean;
begin
  Result := Flayers_Specified;
end;

procedure gisMap.SetmapIndex(Index: Integer; const AInteger: Integer);
begin
  FmapIndex := AInteger;
  FmapIndex_Specified := True;
end;

function gisMap.mapIndex_Specified(Index: Integer): boolean;
begin
  Result := FmapIndex_Specified;
end;

procedure gisMap.Setscale(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  Fscale := ATXSDecimal;
  Fscale_Specified := True;
end;

function gisMap.scale_Specified(Index: Integer): boolean;
begin
  Result := Fscale_Specified;
end;

procedure gisMap.Setshapes(Index: Integer; const AArray_Of_gisShape: Array_Of_gisShape);
begin
  Fshapes := AArray_Of_gisShape;
  Fshapes_Specified := True;
end;

function gisMap.shapes_Specified(Index: Integer): boolean;
begin
  Result := Fshapes_Specified;
end;

destructor reportSchema.Destroy;
begin
  System.SysUtils.FreeAndNil(FmaximumValue);
  System.SysUtils.FreeAndNil(FminimumValue);
  inherited Destroy;
end;

procedure reportSchema.SetallowPrompt(Index: Integer; const ABoolean: Boolean);
begin
  FallowPrompt := ABoolean;
  FallowPrompt_Specified := True;
end;

function reportSchema.allowPrompt_Specified(Index: Integer): boolean;
begin
  Result := FallowPrompt_Specified;
end;

procedure reportSchema.SetcachedValues(Index: Integer; const ABoolean: Boolean);
begin
  FcachedValues := ABoolean;
  FcachedValues_Specified := True;
end;

function reportSchema.cachedValues_Specified(Index: Integer): boolean;
begin
  Result := FcachedValues_Specified;
end;

procedure reportSchema.SetcolumnLength(Index: Integer; const Astring: string);
begin
  FcolumnLength := Astring;
  FcolumnLength_Specified := True;
end;

function reportSchema.columnLength_Specified(Index: Integer): boolean;
begin
  Result := FcolumnLength_Specified;
end;

procedure reportSchema.SetcolumnName(Index: Integer; const Astring: string);
begin
  FcolumnName := Astring;
  FcolumnName_Specified := True;
end;

function reportSchema.columnName_Specified(Index: Integer): boolean;
begin
  Result := FcolumnName_Specified;
end;

procedure reportSchema.SetdataType(Index: Integer; const Astring: string);
begin
  FdataType := Astring;
  FdataType_Specified := True;
end;

function reportSchema.dataType_Specified(Index: Integer): boolean;
begin
  Result := FdataType_Specified;
end;

procedure reportSchema.SetdefaultValue1(Index: Integer; const Astring: string);
begin
  FdefaultValue1 := Astring;
  FdefaultValue1_Specified := True;
end;

function reportSchema.defaultValue1_Specified(Index: Integer): boolean;
begin
  Result := FdefaultValue1_Specified;
end;

procedure reportSchema.SetdefaultValue2(Index: Integer; const Astring: string);
begin
  FdefaultValue2 := Astring;
  FdefaultValue2_Specified := True;
end;

function reportSchema.defaultValue2_Specified(Index: Integer): boolean;
begin
  Result := FdefaultValue2_Specified;
end;

procedure reportSchema.SetdisplayName(Index: Integer; const Astring: string);
begin
  FdisplayName := Astring;
  FdisplayName_Specified := True;
end;

function reportSchema.displayName_Specified(Index: Integer): boolean;
begin
  Result := FdisplayName_Specified;
end;

procedure reportSchema.SetfieldId(Index: Integer; const AInteger: Integer);
begin
  FfieldId := AInteger;
  FfieldId_Specified := True;
end;

function reportSchema.fieldId_Specified(Index: Integer): boolean;
begin
  Result := FfieldId_Specified;
end;

procedure reportSchema.SetfilterDisplayType(Index: Integer; const Astring: string);
begin
  FfilterDisplayType := Astring;
  FfilterDisplayType_Specified := True;
end;

function reportSchema.filterDisplayType_Specified(Index: Integer): boolean;
begin
  Result := FfilterDisplayType_Specified;
end;

procedure reportSchema.SetfilterId(Index: Integer; const AInteger: Integer);
begin
  FfilterId := AInteger;
  FfilterId_Specified := True;
end;

function reportSchema.filterId_Specified(Index: Integer): boolean;
begin
  Result := FfilterId_Specified;
end;

procedure reportSchema.SetfilterOmittable(Index: Integer; const ABoolean: Boolean);
begin
  FfilterOmittable := ABoolean;
  FfilterOmittable_Specified := True;
end;

function reportSchema.filterOmittable_Specified(Index: Integer): boolean;
begin
  Result := FfilterOmittable_Specified;
end;

procedure reportSchema.SetfilterType(Index: Integer; const Astring: string);
begin
  FfilterType := Astring;
  FfilterType_Specified := True;
end;

function reportSchema.filterType_Specified(Index: Integer): boolean;
begin
  Result := FfilterType_Specified;
end;

procedure reportSchema.SetfilterTypeCode(Index: Integer; const Astring: string);
begin
  FfilterTypeCode := Astring;
  FfilterTypeCode_Specified := True;
end;

function reportSchema.filterTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FfilterTypeCode_Specified;
end;

procedure reportSchema.SetfilterUUID(Index: Integer; const Astring: string);
begin
  FfilterUUID := Astring;
  FfilterUUID_Specified := True;
end;

function reportSchema.filterUUID_Specified(Index: Integer): boolean;
begin
  Result := FfilterUUID_Specified;
end;

procedure reportSchema.Sethidden(Index: Integer; const ABoolean: Boolean);
begin
  Fhidden := ABoolean;
  Fhidden_Specified := True;
end;

function reportSchema.hidden_Specified(Index: Integer): boolean;
begin
  Result := Fhidden_Specified;
end;

procedure reportSchema.SetmaximumValue(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FmaximumValue := ATXSDecimal;
  FmaximumValue_Specified := True;
end;

function reportSchema.maximumValue_Specified(Index: Integer): boolean;
begin
  Result := FmaximumValue_Specified;
end;

procedure reportSchema.SetminimumValue(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FminimumValue := ATXSDecimal;
  FminimumValue_Specified := True;
end;

function reportSchema.minimumValue_Specified(Index: Integer): boolean;
begin
  Result := FminimumValue_Specified;
end;

procedure reportSchema.SetoutputLocation(Index: Integer; const Astring: string);
begin
  FoutputLocation := Astring;
  FoutputLocation_Specified := True;
end;

function reportSchema.outputLocation_Specified(Index: Integer): boolean;
begin
  Result := FoutputLocation_Specified;
end;

procedure reportSchema.SetparentFilterId(Index: Integer; const AInteger: Integer);
begin
  FparentFilterId := AInteger;
  FparentFilterId_Specified := True;
end;

function reportSchema.parentFilterId_Specified(Index: Integer): boolean;
begin
  Result := FparentFilterId_Specified;
end;

procedure reportSchema.Setprompt(Index: Integer; const ABoolean: Boolean);
begin
  Fprompt := ABoolean;
  Fprompt_Specified := True;
end;

function reportSchema.prompt_Specified(Index: Integer): boolean;
begin
  Result := Fprompt_Specified;
end;

procedure reportSchema.SetsortOrder(Index: Integer; const AInteger: Integer);
begin
  FsortOrder := AInteger;
  FsortOrder_Specified := True;
end;

function reportSchema.sortOrder_Specified(Index: Integer): boolean;
begin
  Result := FsortOrder_Specified;
end;

procedure reportSchema.SetvalueUnitCode(Index: Integer; const Astring: string);
begin
  FvalueUnitCode := Astring;
  FvalueUnitCode_Specified := True;
end;

function reportSchema.valueUnitCode_Specified(Index: Integer): boolean;
begin
  Result := FvalueUnitCode_Specified;
end;

destructor reportServiceRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdashboardFilters)-1 do
    System.SysUtils.FreeAndNil(FdashboardFilters[I]);
  System.SetLength(FdashboardFilters, 0);
  for I := 0 to System.Length(Ffilters)-1 do
    System.SysUtils.FreeAndNil(Ffilters[I]);
  System.SetLength(Ffilters, 0);
  System.SysUtils.FreeAndNil(Fgmap);
  System.SysUtils.FreeAndNil(FreportComment);
  System.SysUtils.FreeAndNil(Fschedule);
  inherited Destroy;
end;

procedure reportServiceRequest.SetabsoluteTableWidth(Index: Integer; const AInteger: Integer);
begin
  FabsoluteTableWidth := AInteger;
  FabsoluteTableWidth_Specified := True;
end;

function reportServiceRequest.absoluteTableWidth_Specified(Index: Integer): boolean;
begin
  Result := FabsoluteTableWidth_Specified;
end;

procedure reportServiceRequest.SetalterationCommand(Index: Integer; const Astring: string);
begin
  FalterationCommand := Astring;
  FalterationCommand_Specified := True;
end;

function reportServiceRequest.alterationCommand_Specified(Index: Integer): boolean;
begin
  Result := FalterationCommand_Specified;
end;

procedure reportServiceRequest.SetbinaryURL(Index: Integer; const Astring: string);
begin
  FbinaryURL := Astring;
  FbinaryURL_Specified := True;
end;

function reportServiceRequest.binaryURL_Specified(Index: Integer): boolean;
begin
  Result := FbinaryURL_Specified;
end;

procedure reportServiceRequest.SetchartHeight(Index: Integer; const AInteger: Integer);
begin
  FchartHeight := AInteger;
  FchartHeight_Specified := True;
end;

function reportServiceRequest.chartHeight_Specified(Index: Integer): boolean;
begin
  Result := FchartHeight_Specified;
end;

procedure reportServiceRequest.SetchartPlacementCode(Index: Integer; const Astring: string);
begin
  FchartPlacementCode := Astring;
  FchartPlacementCode_Specified := True;
end;

function reportServiceRequest.chartPlacementCode_Specified(Index: Integer): boolean;
begin
  Result := FchartPlacementCode_Specified;
end;

procedure reportServiceRequest.SetchartScale(Index: Integer; const AInteger: Integer);
begin
  FchartScale := AInteger;
  FchartScale_Specified := True;
end;

function reportServiceRequest.chartScale_Specified(Index: Integer): boolean;
begin
  Result := FchartScale_Specified;
end;

procedure reportServiceRequest.SetchartWidth(Index: Integer; const AInteger: Integer);
begin
  FchartWidth := AInteger;
  FchartWidth_Specified := True;
end;

function reportServiceRequest.chartWidth_Specified(Index: Integer): boolean;
begin
  Result := FchartWidth_Specified;
end;

procedure reportServiceRequest.SetdashboardFilters(Index: Integer; const AArray_Of_dashboardFilter: Array_Of_dashboardFilter);
begin
  FdashboardFilters := AArray_Of_dashboardFilter;
  FdashboardFilters_Specified := True;
end;

function reportServiceRequest.dashboardFilters_Specified(Index: Integer): boolean;
begin
  Result := FdashboardFilters_Specified;
end;

procedure reportServiceRequest.SetdashboardTabId(Index: Integer; const AInteger: Integer);
begin
  FdashboardTabId := AInteger;
  FdashboardTabId_Specified := True;
end;

function reportServiceRequest.dashboardTabId_Specified(Index: Integer): boolean;
begin
  Result := FdashboardTabId_Specified;
end;

procedure reportServiceRequest.SetdataFormattingOptionsType(Index: Integer; const Astring: string);
begin
  FdataFormattingOptionsType := Astring;
  FdataFormattingOptionsType_Specified := True;
end;

function reportServiceRequest.dataFormattingOptionsType_Specified(Index: Integer): boolean;
begin
  Result := FdataFormattingOptionsType_Specified;
end;

procedure reportServiceRequest.SetdistributionText(Index: Integer; const Astring: string);
begin
  FdistributionText := Astring;
  FdistributionText_Specified := True;
end;

function reportServiceRequest.distributionText_Specified(Index: Integer): boolean;
begin
  Result := FdistributionText_Specified;
end;

procedure reportServiceRequest.SetdrillAnywhereCellValue(Index: Integer; const Astring: string);
begin
  FdrillAnywhereCellValue := Astring;
  FdrillAnywhereCellValue_Specified := True;
end;

function reportServiceRequest.drillAnywhereCellValue_Specified(Index: Integer): boolean;
begin
  Result := FdrillAnywhereCellValue_Specified;
end;

procedure reportServiceRequest.SetdrillAnywhereFieldId(Index: Integer; const AInteger: Integer);
begin
  FdrillAnywhereFieldId := AInteger;
  FdrillAnywhereFieldId_Specified := True;
end;

function reportServiceRequest.drillAnywhereFieldId_Specified(Index: Integer): boolean;
begin
  Result := FdrillAnywhereFieldId_Specified;
end;

procedure reportServiceRequest.SetdrillAnywhereUniqueValueName(Index: Integer; const Astring: string);
begin
  FdrillAnywhereUniqueValueName := Astring;
  FdrillAnywhereUniqueValueName_Specified := True;
end;

function reportServiceRequest.drillAnywhereUniqueValueName_Specified(Index: Integer): boolean;
begin
  Result := FdrillAnywhereUniqueValueName_Specified;
end;

procedure reportServiceRequest.Setfilters(Index: Integer; const AArray_Of_reportFilter: Array_Of_reportFilter);
begin
  Ffilters := AArray_Of_reportFilter;
  Ffilters_Specified := True;
end;

function reportServiceRequest.filters_Specified(Index: Integer): boolean;
begin
  Result := Ffilters_Specified;
end;

procedure reportServiceRequest.SetfitTableWidth(Index: Integer; const ABoolean: Boolean);
begin
  FfitTableWidth := ABoolean;
  FfitTableWidth_Specified := True;
end;

function reportServiceRequest.fitTableWidth_Specified(Index: Integer): boolean;
begin
  Result := FfitTableWidth_Specified;
end;

procedure reportServiceRequest.Setgmap(Index: Integer; const AgMap: gMap);
begin
  Fgmap := AgMap;
  Fgmap_Specified := True;
end;

function reportServiceRequest.gmap_Specified(Index: Integer): boolean;
begin
  Result := Fgmap_Specified;
end;

procedure reportServiceRequest.SetimageType(Index: Integer; const Astring: string);
begin
  FimageType := Astring;
  FimageType_Specified := True;
end;

function reportServiceRequest.imageType_Specified(Index: Integer): boolean;
begin
  Result := FimageType_Specified;
end;

procedure reportServiceRequest.SetimageURL(Index: Integer; const Astring: string);
begin
  FimageURL := Astring;
  FimageURL_Specified := True;
end;

function reportServiceRequest.imageURL_Specified(Index: Integer): boolean;
begin
  Result := FimageURL_Specified;
end;

procedure reportServiceRequest.SetlanguageCode(Index: Integer; const Astring: string);
begin
  FlanguageCode := Astring;
  FlanguageCode_Specified := True;
end;

function reportServiceRequest.languageCode_Specified(Index: Integer): boolean;
begin
  Result := FlanguageCode_Specified;
end;

procedure reportServiceRequest.SetlinkFormatterClass(Index: Integer; const Astring: string);
begin
  FlinkFormatterClass := Astring;
  FlinkFormatterClass_Specified := True;
end;

function reportServiceRequest.linkFormatterClass_Specified(Index: Integer): boolean;
begin
  Result := FlinkFormatterClass_Specified;
end;

procedure reportServiceRequest.SetlinkURL(Index: Integer; const Astring: string);
begin
  FlinkURL := Astring;
  FlinkURL_Specified := True;
end;

function reportServiceRequest.linkURL_Specified(Index: Integer): boolean;
begin
  Result := FlinkURL_Specified;
end;

procedure reportServiceRequest.SetloginId(Index: Integer; const Astring: string);
begin
  FloginId := Astring;
  FloginId_Specified := True;
end;

function reportServiceRequest.loginId_Specified(Index: Integer): boolean;
begin
  Result := FloginId_Specified;
end;

procedure reportServiceRequest.SetmultiReportTag(Index: Integer; const Astring: string);
begin
  FmultiReportTag := Astring;
  FmultiReportTag_Specified := True;
end;

function reportServiceRequest.multiReportTag_Specified(Index: Integer): boolean;
begin
  Result := FmultiReportTag_Specified;
end;

procedure reportServiceRequest.SetobjectName(Index: Integer; const Astring: string);
begin
  FobjectName := Astring;
  FobjectName_Specified := True;
end;

function reportServiceRequest.objectName_Specified(Index: Integer): boolean;
begin
  Result := FobjectName_Specified;
end;

procedure reportServiceRequest.SetorgId(Index: Integer; const AInteger: Integer);
begin
  ForgId := AInteger;
  ForgId_Specified := True;
end;

function reportServiceRequest.orgId_Specified(Index: Integer): boolean;
begin
  Result := ForgId_Specified;
end;

procedure reportServiceRequest.SetorgRef(Index: Integer; const Astring: string);
begin
  ForgRef := Astring;
  ForgRef_Specified := True;
end;

function reportServiceRequest.orgRef_Specified(Index: Integer): boolean;
begin
  Result := ForgRef_Specified;
end;

procedure reportServiceRequest.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function reportServiceRequest.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure reportServiceRequest.SetreportBroadcastContent(Index: Integer; const Astring: string);
begin
  FreportBroadcastContent := Astring;
  FreportBroadcastContent_Specified := True;
end;

function reportServiceRequest.reportBroadcastContent_Specified(Index: Integer): boolean;
begin
  Result := FreportBroadcastContent_Specified;
end;

procedure reportServiceRequest.SetreportBroadcastSubject(Index: Integer; const Astring: string);
begin
  FreportBroadcastSubject := Astring;
  FreportBroadcastSubject_Specified := True;
end;

function reportServiceRequest.reportBroadcastSubject_Specified(Index: Integer): boolean;
begin
  Result := FreportBroadcastSubject_Specified;
end;

procedure reportServiceRequest.SetreportClientReferenceId(Index: Integer; const Astring: string);
begin
  FreportClientReferenceId := Astring;
  FreportClientReferenceId_Specified := True;
end;

function reportServiceRequest.reportClientReferenceId_Specified(Index: Integer): boolean;
begin
  Result := FreportClientReferenceId_Specified;
end;

procedure reportServiceRequest.SetreportComment(Index: Integer; const AreportComment: reportComment);
begin
  FreportComment := AreportComment;
  FreportComment_Specified := True;
end;

function reportServiceRequest.reportComment_Specified(Index: Integer): boolean;
begin
  Result := FreportComment_Specified;
end;

procedure reportServiceRequest.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function reportServiceRequest.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure reportServiceRequest.SetreportOptions(Index: Integer; const AreportRow: reportRow);
begin
  FreportOptions := AreportRow;
  FreportOptions_Specified := True;
end;

function reportServiceRequest.reportOptions_Specified(Index: Integer): boolean;
begin
  Result := FreportOptions_Specified;
end;

procedure reportServiceRequest.SetreportRequest(Index: Integer; const Astring: string);
begin
  FreportRequest := Astring;
  FreportRequest_Specified := True;
end;

function reportServiceRequest.reportRequest_Specified(Index: Integer): boolean;
begin
  Result := FreportRequest_Specified;
end;

procedure reportServiceRequest.SetreportUserId(Index: Integer; const Astring: string);
begin
  FreportUserId := Astring;
  FreportUserId_Specified := True;
end;

function reportServiceRequest.reportUserId_Specified(Index: Integer): boolean;
begin
  Result := FreportUserId_Specified;
end;

procedure reportServiceRequest.SetreportUserPassword(Index: Integer; const Astring: string);
begin
  FreportUserPassword := Astring;
  FreportUserPassword_Specified := True;
end;

function reportServiceRequest.reportUserPassword_Specified(Index: Integer): boolean;
begin
  Result := FreportUserPassword_Specified;
end;

procedure reportServiceRequest.Setschedule(Index: Integer; const AscheduleRecord: scheduleRecord);
begin
  Fschedule := AscheduleRecord;
  Fschedule_Specified := True;
end;

function reportServiceRequest.schedule_Specified(Index: Integer): boolean;
begin
  Result := Fschedule_Specified;
end;

procedure reportServiceRequest.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function reportServiceRequest.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

procedure reportServiceRequest.SetsortColumn(Index: Integer; const AInteger: Integer);
begin
  FsortColumn := AInteger;
  FsortColumn_Specified := True;
end;

function reportServiceRequest.sortColumn_Specified(Index: Integer): boolean;
begin
  Result := FsortColumn_Specified;
end;

procedure reportServiceRequest.SetcommandsHistory(Index: Integer; const AreportRow: reportRow);
begin
  FcommandsHistory := AreportRow;
  FcommandsHistory_Specified := True;
end;

function reportServiceRequest.commandsHistory_Specified(Index: Integer): boolean;
begin
  Result := FcommandsHistory_Specified;
end;

destructor reportServiceResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FbinaryObjects)-1 do
    System.SysUtils.FreeAndNil(FbinaryObjects[I]);
  System.SetLength(FbinaryObjects, 0);
  for I := 0 to System.Length(Fbreadcrumbs)-1 do
    System.SysUtils.FreeAndNil(Fbreadcrumbs[I]);
  System.SetLength(Fbreadcrumbs, 0);
  for I := 0 to System.Length(Fcharts)-1 do
    System.SysUtils.FreeAndNil(Fcharts[I]);
  System.SetLength(Fcharts, 0);
  for I := 0 to System.Length(Fcolumns)-1 do
    System.SysUtils.FreeAndNil(Fcolumns[I]);
  System.SetLength(Fcolumns, 0);
  for I := 0 to System.Length(Fcomments)-1 do
    System.SysUtils.FreeAndNil(Fcomments[I]);
  System.SetLength(Fcomments, 0);
  for I := 0 to System.Length(FdrillAnywhereTargets)-1 do
    System.SysUtils.FreeAndNil(FdrillAnywhereTargets[I]);
  System.SetLength(FdrillAnywhereTargets, 0);
  for I := 0 to System.Length(FgisMap)-1 do
    System.SysUtils.FreeAndNil(FgisMap[I]);
  System.SetLength(FgisMap, 0);
  for I := 0 to System.Length(FgoogleMaps)-1 do
    System.SysUtils.FreeAndNil(FgoogleMaps[I]);
  System.SetLength(FgoogleMaps, 0);
  for I := 0 to System.Length(FreportFilters)-1 do
    System.SysUtils.FreeAndNil(FreportFilters[I]);
  System.SetLength(FreportFilters, 0);
  for I := 0 to System.Length(FreportPageSelection)-1 do
    System.SysUtils.FreeAndNil(FreportPageSelection[I]);
  System.SetLength(FreportPageSelection, 0);
  for I := 0 to System.Length(FreportTabSelection)-1 do
    System.SysUtils.FreeAndNil(FreportTabSelection[I]);
  System.SetLength(FreportTabSelection, 0);
  for I := 0 to System.Length(FseriesSelection)-1 do
    System.SysUtils.FreeAndNil(FseriesSelection[I]);
  System.SetLength(FseriesSelection, 0);
  for I := 0 to System.Length(FsortableColumns)-1 do
    System.SysUtils.FreeAndNil(FsortableColumns[I]);
  System.SetLength(FsortableColumns, 0);
  for I := 0 to System.Length(FstoryboardDescriptors)-1 do
    System.SysUtils.FreeAndNil(FstoryboardDescriptors[I]);
  System.SetLength(FstoryboardDescriptors, 0);
  for I := 0 to System.Length(FtimeAggregationSelection)-1 do
    System.SysUtils.FreeAndNil(FtimeAggregationSelection[I]);
  System.SetLength(FtimeAggregationSelection, 0);
  for I := 0 to System.Length(FtimeSliderSelection)-1 do
    System.SysUtils.FreeAndNil(FtimeSliderSelection[I]);
  System.SetLength(FtimeSliderSelection, 0);
  System.SysUtils.FreeAndNil(Fdashboard);
  System.SysUtils.FreeAndNil(FKPI);
  System.SysUtils.FreeAndNil(FlastRunTime);
  System.SysUtils.FreeAndNil(FrelatedReports);
  System.SysUtils.FreeAndNil(Fschedule);
  inherited Destroy;
end;

procedure reportServiceResponse.Setauthor(Index: Integer; const Astring: string);
begin
  Fauthor := Astring;
  Fauthor_Specified := True;
end;

function reportServiceResponse.author_Specified(Index: Integer): boolean;
begin
  Result := Fauthor_Specified;
end;

procedure reportServiceResponse.SetauthoringMode(Index: Integer; const Astring: string);
begin
  FauthoringMode := Astring;
  FauthoringMode_Specified := True;
end;

function reportServiceResponse.authoringMode_Specified(Index: Integer): boolean;
begin
  Result := FauthoringMode_Specified;
end;

procedure reportServiceResponse.SetaverageRunTime(Index: Integer; const AInteger: Integer);
begin
  FaverageRunTime := AInteger;
  FaverageRunTime_Specified := True;
end;

function reportServiceResponse.averageRunTime_Specified(Index: Integer): boolean;
begin
  Result := FaverageRunTime_Specified;
end;

procedure reportServiceResponse.SetbinaryData(Index: Integer; const Astring: string);
begin
  FbinaryData := Astring;
  FbinaryData_Specified := True;
end;

function reportServiceResponse.binaryData_Specified(Index: Integer): boolean;
begin
  Result := FbinaryData_Specified;
end;

procedure reportServiceResponse.SetbinaryObjects(Index: Integer; const AArray_Of_reportBinaryObject: Array_Of_reportBinaryObject);
begin
  FbinaryObjects := AArray_Of_reportBinaryObject;
  FbinaryObjects_Specified := True;
end;

function reportServiceResponse.binaryObjects_Specified(Index: Integer): boolean;
begin
  Result := FbinaryObjects_Specified;
end;

procedure reportServiceResponse.Setbreadcrumbs(Index: Integer; const AArray_Of_breadCrumb: Array_Of_breadCrumb);
begin
  Fbreadcrumbs := AArray_Of_breadCrumb;
  Fbreadcrumbs_Specified := True;
end;

function reportServiceResponse.breadcrumbs_Specified(Index: Integer): boolean;
begin
  Result := Fbreadcrumbs_Specified;
end;

procedure reportServiceResponse.SetcanDrill(Index: Integer; const ABoolean: Boolean);
begin
  FcanDrill := ABoolean;
  FcanDrill_Specified := True;
end;

function reportServiceResponse.canDrill_Specified(Index: Integer): boolean;
begin
  Result := FcanDrill_Specified;
end;

procedure reportServiceResponse.Setcategory(Index: Integer; const Astring: string);
begin
  Fcategory := Astring;
  Fcategory_Specified := True;
end;

function reportServiceResponse.category_Specified(Index: Integer): boolean;
begin
  Result := Fcategory_Specified;
end;

procedure reportServiceResponse.Setcharts(Index: Integer; const AArray_Of_reportChart: Array_Of_reportChart);
begin
  Fcharts := AArray_Of_reportChart;
  Fcharts_Specified := True;
end;

function reportServiceResponse.charts_Specified(Index: Integer): boolean;
begin
  Result := Fcharts_Specified;
end;

procedure reportServiceResponse.Setcolumns(Index: Integer; const AArray_Of_reportSchema: Array_Of_reportSchema);
begin
  Fcolumns := AArray_Of_reportSchema;
  Fcolumns_Specified := True;
end;

function reportServiceResponse.columns_Specified(Index: Integer): boolean;
begin
  Result := Fcolumns_Specified;
end;

procedure reportServiceResponse.SetcommandsHistory(Index: Integer; const AreportRow: reportRow);
begin
  FcommandsHistory := AreportRow;
  FcommandsHistory_Specified := True;
end;

function reportServiceResponse.commandsHistory_Specified(Index: Integer): boolean;
begin
  Result := FcommandsHistory_Specified;
end;

procedure reportServiceResponse.Setcomments(Index: Integer; const AArray_Of_reportComment: Array_Of_reportComment);
begin
  Fcomments := AArray_Of_reportComment;
  Fcomments_Specified := True;
end;

function reportServiceResponse.comments_Specified(Index: Integer): boolean;
begin
  Result := Fcomments_Specified;
end;

procedure reportServiceResponse.SetcontentType(Index: Integer; const Astring: string);
begin
  FcontentType := Astring;
  FcontentType_Specified := True;
end;

function reportServiceResponse.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure reportServiceResponse.Setdashboard(Index: Integer; const AdashboardDefinition: dashboardDefinition);
begin
  Fdashboard := AdashboardDefinition;
  Fdashboard_Specified := True;
end;

function reportServiceResponse.dashboard_Specified(Index: Integer): boolean;
begin
  Result := Fdashboard_Specified;
end;

procedure reportServiceResponse.SetdataOutput(Index: Integer; const Astring: string);
begin
  FdataOutput := Astring;
  FdataOutput_Specified := True;
end;

function reportServiceResponse.dataOutput_Specified(Index: Integer): boolean;
begin
  Result := FdataOutput_Specified;
end;

procedure reportServiceResponse.Setdatasource(Index: Integer; const Astring: string);
begin
  Fdatasource := Astring;
  Fdatasource_Specified := True;
end;

function reportServiceResponse.datasource_Specified(Index: Integer): boolean;
begin
  Result := Fdatasource_Specified;
end;

procedure reportServiceResponse.SetdisplayedReportId(Index: Integer; const AInteger: Integer);
begin
  FdisplayedReportId := AInteger;
  FdisplayedReportId_Specified := True;
end;

function reportServiceResponse.displayedReportId_Specified(Index: Integer): boolean;
begin
  Result := FdisplayedReportId_Specified;
end;

procedure reportServiceResponse.SetdrillAnywhereCategories(Index: Integer; const AreportRow: reportRow);
begin
  FdrillAnywhereCategories := AreportRow;
  FdrillAnywhereCategories_Specified := True;
end;

function reportServiceResponse.drillAnywhereCategories_Specified(Index: Integer): boolean;
begin
  Result := FdrillAnywhereCategories_Specified;
end;

procedure reportServiceResponse.SetdrillAnywhereTargets(Index: Integer; const AArray_Of_drillAnywhereTargets: Array_Of_drillAnywhereTargets);
begin
  FdrillAnywhereTargets := AArray_Of_drillAnywhereTargets;
  FdrillAnywhereTargets_Specified := True;
end;

function reportServiceResponse.drillAnywhereTargets_Specified(Index: Integer): boolean;
begin
  Result := FdrillAnywhereTargets_Specified;
end;

procedure reportServiceResponse.SetdrillCode(Index: Integer; const Astring: string);
begin
  FdrillCode := Astring;
  FdrillCode_Specified := True;
end;

function reportServiceResponse.drillCode_Specified(Index: Integer): boolean;
begin
  Result := FdrillCode_Specified;
end;

procedure reportServiceResponse.SeterrorCode(Index: Integer; const AInteger: Integer);
begin
  FerrorCode := AInteger;
  FerrorCode_Specified := True;
end;

function reportServiceResponse.errorCode_Specified(Index: Integer): boolean;
begin
  Result := FerrorCode_Specified;
end;

procedure reportServiceResponse.SetformatCode(Index: Integer; const Astring: string);
begin
  FformatCode := Astring;
  FformatCode_Specified := True;
end;

function reportServiceResponse.formatCode_Specified(Index: Integer): boolean;
begin
  Result := FformatCode_Specified;
end;

procedure reportServiceResponse.SetgisMap(Index: Integer; const AArray_Of_gisMap: Array_Of_gisMap);
begin
  FgisMap := AArray_Of_gisMap;
  FgisMap_Specified := True;
end;

function reportServiceResponse.gisMap_Specified(Index: Integer): boolean;
begin
  Result := FgisMap_Specified;
end;

procedure reportServiceResponse.SetgoogleMaps(Index: Integer; const AArray_Of_gMap: Array_Of_gMap);
begin
  FgoogleMaps := AArray_Of_gMap;
  FgoogleMaps_Specified := True;
end;

function reportServiceResponse.googleMaps_Specified(Index: Integer): boolean;
begin
  Result := FgoogleMaps_Specified;
end;

procedure reportServiceResponse.SethitCount(Index: Integer; const AInteger: Integer);
begin
  FhitCount := AInteger;
  FhitCount_Specified := True;
end;

function reportServiceResponse.hitCount_Specified(Index: Integer): boolean;
begin
  Result := FhitCount_Specified;
end;

procedure reportServiceResponse.SetKPI(Index: Integer; const Akpi: kpi);
begin
  FKPI := Akpi;
  FKPI_Specified := True;
end;

function reportServiceResponse.KPI_Specified(Index: Integer): boolean;
begin
  Result := FKPI_Specified;
end;

procedure reportServiceResponse.SetlastModifiedDate(Index: Integer; const Astring: string);
begin
  FlastModifiedDate := Astring;
  FlastModifiedDate_Specified := True;
end;

function reportServiceResponse.lastModifiedDate_Specified(Index: Integer): boolean;
begin
  Result := FlastModifiedDate_Specified;
end;

procedure reportServiceResponse.SetlastRunDuration(Index: Integer; const AInteger: Integer);
begin
  FlastRunDuration := AInteger;
  FlastRunDuration_Specified := True;
end;

function reportServiceResponse.lastRunDuration_Specified(Index: Integer): boolean;
begin
  Result := FlastRunDuration_Specified;
end;

procedure reportServiceResponse.SetlastRunStatus(Index: Integer; const Astring: string);
begin
  FlastRunStatus := Astring;
  FlastRunStatus_Specified := True;
end;

function reportServiceResponse.lastRunStatus_Specified(Index: Integer): boolean;
begin
  Result := FlastRunStatus_Specified;
end;

procedure reportServiceResponse.SetlastRunTime(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FlastRunTime := ATXSDecimal;
  FlastRunTime_Specified := True;
end;

function reportServiceResponse.lastRunTime_Specified(Index: Integer): boolean;
begin
  Result := FlastRunTime_Specified;
end;

procedure reportServiceResponse.Setmessages(Index: Integer; const AreportRow: reportRow);
begin
  Fmessages := AreportRow;
  Fmessages_Specified := True;
end;

function reportServiceResponse.messages_Specified(Index: Integer): boolean;
begin
  Result := Fmessages_Specified;
end;

procedure reportServiceResponse.SetmodifiedReports(Index: Integer; const AArray_Of_int: Array_Of_int);
begin
  FmodifiedReports := AArray_Of_int;
  FmodifiedReports_Specified := True;
end;

function reportServiceResponse.modifiedReports_Specified(Index: Integer): boolean;
begin
  Result := FmodifiedReports_Specified;
end;

procedure reportServiceResponse.SetpreRunFilterString(Index: Integer; const Astring: string);
begin
  FpreRunFilterString := Astring;
  FpreRunFilterString_Specified := True;
end;

function reportServiceResponse.preRunFilterString_Specified(Index: Integer): boolean;
begin
  Result := FpreRunFilterString_Specified;
end;

procedure reportServiceResponse.Setprivate_(Index: Integer; const ABoolean: Boolean);
begin
  Fprivate_ := ABoolean;
  Fprivate__Specified := True;
end;

function reportServiceResponse.private__Specified(Index: Integer): boolean;
begin
  Result := Fprivate__Specified;
end;

procedure reportServiceResponse.SetrelatedReports(Index: Integer; const ArelatedReports: relatedReports);
begin
  FrelatedReports := ArelatedReports;
  FrelatedReports_Specified := True;
end;

function reportServiceResponse.relatedReports_Specified(Index: Integer): boolean;
begin
  Result := FrelatedReports_Specified;
end;

procedure reportServiceResponse.SetreportDescription(Index: Integer; const Astring: string);
begin
  FreportDescription := Astring;
  FreportDescription_Specified := True;
end;

function reportServiceResponse.reportDescription_Specified(Index: Integer): boolean;
begin
  Result := FreportDescription_Specified;
end;

procedure reportServiceResponse.SetreportFilters(Index: Integer; const AArray_Of_reportFilter: Array_Of_reportFilter);
begin
  FreportFilters := AArray_Of_reportFilter;
  FreportFilters_Specified := True;
end;

function reportServiceResponse.reportFilters_Specified(Index: Integer): boolean;
begin
  Result := FreportFilters_Specified;
end;

procedure reportServiceResponse.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function reportServiceResponse.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure reportServiceResponse.SetreportName(Index: Integer; const Astring: string);
begin
  FreportName := Astring;
  FreportName_Specified := True;
end;

function reportServiceResponse.reportName_Specified(Index: Integer): boolean;
begin
  Result := FreportName_Specified;
end;

procedure reportServiceResponse.SetreportPageSelection(Index: Integer; const AArray_Of_reportPageSelection: Array_Of_reportPageSelection);
begin
  FreportPageSelection := AArray_Of_reportPageSelection;
  FreportPageSelection_Specified := True;
end;

function reportServiceResponse.reportPageSelection_Specified(Index: Integer): boolean;
begin
  Result := FreportPageSelection_Specified;
end;

procedure reportServiceResponse.SetreportStyle(Index: Integer; const Astring: string);
begin
  FreportStyle := Astring;
  FreportStyle_Specified := True;
end;

function reportServiceResponse.reportStyle_Specified(Index: Integer): boolean;
begin
  Result := FreportStyle_Specified;
end;

procedure reportServiceResponse.SetreportTabSelection(Index: Integer; const AArray_Of_reportTabSelection: Array_Of_reportTabSelection);
begin
  FreportTabSelection := AArray_Of_reportTabSelection;
  FreportTabSelection_Specified := True;
end;

function reportServiceResponse.reportTabSelection_Specified(Index: Integer): boolean;
begin
  Result := FreportTabSelection_Specified;
end;

procedure reportServiceResponse.SetreportTemplate(Index: Integer; const Astring: string);
begin
  FreportTemplate := Astring;
  FreportTemplate_Specified := True;
end;

function reportServiceResponse.reportTemplate_Specified(Index: Integer): boolean;
begin
  Result := FreportTemplate_Specified;
end;

procedure reportServiceResponse.SetreportType(Index: Integer; const Astring: string);
begin
  FreportType := Astring;
  FreportType_Specified := True;
end;

function reportServiceResponse.reportType_Specified(Index: Integer): boolean;
begin
  Result := FreportType_Specified;
end;

procedure reportServiceResponse.SetreportUUID(Index: Integer; const Astring: string);
begin
  FreportUUID := Astring;
  FreportUUID_Specified := True;
end;

function reportServiceResponse.reportUUID_Specified(Index: Integer): boolean;
begin
  Result := FreportUUID_Specified;
end;

procedure reportServiceResponse.SetreportUsage(Index: Integer; const AInteger: Integer);
begin
  FreportUsage := AInteger;
  FreportUsage_Specified := True;
end;

function reportServiceResponse.reportUsage_Specified(Index: Integer): boolean;
begin
  Result := FreportUsage_Specified;
end;

procedure reportServiceResponse.Setresults(Index: Integer; const AArray_Of_reportRow: Array_Of_reportRow);
begin
  Fresults := AArray_Of_reportRow;
  Fresults_Specified := True;
end;

function reportServiceResponse.results_Specified(Index: Integer): boolean;
begin
  Result := Fresults_Specified;
end;

procedure reportServiceResponse.Setschedule(Index: Integer; const AscheduleRecord: scheduleRecord);
begin
  Fschedule := AscheduleRecord;
  Fschedule_Specified := True;
end;

function reportServiceResponse.schedule_Specified(Index: Integer): boolean;
begin
  Result := Fschedule_Specified;
end;

procedure reportServiceResponse.SetselectedSortColumn(Index: Integer; const AInteger: Integer);
begin
  FselectedSortColumn := AInteger;
  FselectedSortColumn_Specified := True;
end;

function reportServiceResponse.selectedSortColumn_Specified(Index: Integer): boolean;
begin
  Result := FselectedSortColumn_Specified;
end;

procedure reportServiceResponse.SetselectedSortOrder(Index: Integer; const AInteger: Integer);
begin
  FselectedSortOrder := AInteger;
  FselectedSortOrder_Specified := True;
end;

function reportServiceResponse.selectedSortOrder_Specified(Index: Integer): boolean;
begin
  Result := FselectedSortOrder_Specified;
end;

procedure reportServiceResponse.SetseriesSelection(Index: Integer; const AArray_Of_seriesSelection: Array_Of_seriesSelection);
begin
  FseriesSelection := AArray_Of_seriesSelection;
  FseriesSelection_Specified := True;
end;

function reportServiceResponse.seriesSelection_Specified(Index: Integer): boolean;
begin
  Result := FseriesSelection_Specified;
end;

procedure reportServiceResponse.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function reportServiceResponse.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

procedure reportServiceResponse.SetsortableColumns(Index: Integer; const AArray_Of_sortableTableColumn: Array_Of_sortableTableColumn);
begin
  FsortableColumns := AArray_Of_sortableTableColumn;
  FsortableColumns_Specified := True;
end;

function reportServiceResponse.sortableColumns_Specified(Index: Integer): boolean;
begin
  Result := FsortableColumns_Specified;
end;

procedure reportServiceResponse.SetstatusCode(Index: Integer; const Astring: string);
begin
  FstatusCode := Astring;
  FstatusCode_Specified := True;
end;

function reportServiceResponse.statusCode_Specified(Index: Integer): boolean;
begin
  Result := FstatusCode_Specified;
end;

procedure reportServiceResponse.SetstoryboardDescriptors(Index: Integer; const AArray_Of_storyboardDescriptor: Array_Of_storyboardDescriptor);
begin
  FstoryboardDescriptors := AArray_Of_storyboardDescriptor;
  FstoryboardDescriptors_Specified := True;
end;

function reportServiceResponse.storyboardDescriptors_Specified(Index: Integer): boolean;
begin
  Result := FstoryboardDescriptors_Specified;
end;

procedure reportServiceResponse.SetsubCategory(Index: Integer; const Astring: string);
begin
  FsubCategory := Astring;
  FsubCategory_Specified := True;
end;

function reportServiceResponse.subCategory_Specified(Index: Integer): boolean;
begin
  Result := FsubCategory_Specified;
end;

procedure reportServiceResponse.Settags(Index: Integer; const Astring: string);
begin
  Ftags := Astring;
  Ftags_Specified := True;
end;

function reportServiceResponse.tags_Specified(Index: Integer): boolean;
begin
  Result := Ftags_Specified;
end;

procedure reportServiceResponse.SettimeAggregationSelection(Index: Integer; const AArray_Of_timeAggregationSelection: Array_Of_timeAggregationSelection);
begin
  FtimeAggregationSelection := AArray_Of_timeAggregationSelection;
  FtimeAggregationSelection_Specified := True;
end;

function reportServiceResponse.timeAggregationSelection_Specified(Index: Integer): boolean;
begin
  Result := FtimeAggregationSelection_Specified;
end;

procedure reportServiceResponse.SettimeSliderSelection(Index: Integer; const AArray_Of_timeSliderSelection: Array_Of_timeSliderSelection);
begin
  FtimeSliderSelection := AArray_Of_timeSliderSelection;
  FtimeSliderSelection_Specified := True;
end;

function reportServiceResponse.timeSliderSelection_Specified(Index: Integer): boolean;
begin
  Result := FtimeSliderSelection_Specified;
end;

procedure reportServiceResponse.SetviewName(Index: Integer; const Astring: string);
begin
  FviewName := Astring;
  FviewName_Specified := True;
end;

function reportServiceResponse.viewName_Specified(Index: Integer): boolean;
begin
  Result := FviewName_Specified;
end;

procedure reportTabSelection.SethyperLink(Index: Integer; const Astring: string);
begin
  FhyperLink := Astring;
  FhyperLink_Specified := True;
end;

function reportTabSelection.hyperLink_Specified(Index: Integer): boolean;
begin
  Result := FhyperLink_Specified;
end;

procedure reportTabSelection.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function reportTabSelection.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure reportTabSelection.Setselected(Index: Integer; const ABoolean: Boolean);
begin
  Fselected := ABoolean;
  Fselected_Specified := True;
end;

function reportTabSelection.selected_Specified(Index: Integer): boolean;
begin
  Result := Fselected_Specified;
end;

procedure reportTabSelection.SettabTitle(Index: Integer; const Astring: string);
begin
  FtabTitle := Astring;
  FtabTitle_Specified := True;
end;

function reportTabSelection.tabTitle_Specified(Index: Integer): boolean;
begin
  Result := FtabTitle_Specified;
end;

procedure reportPageSelection.SethyperLink(Index: Integer; const Astring: string);
begin
  FhyperLink := Astring;
  FhyperLink_Specified := True;
end;

function reportPageSelection.hyperLink_Specified(Index: Integer): boolean;
begin
  Result := FhyperLink_Specified;
end;

procedure reportPageSelection.SetpageTitle(Index: Integer; const Astring: string);
begin
  FpageTitle := Astring;
  FpageTitle_Specified := True;
end;

function reportPageSelection.pageTitle_Specified(Index: Integer): boolean;
begin
  Result := FpageTitle_Specified;
end;

procedure reportPageSelection.SetreportId(Index: Integer; const AInteger: Integer);
begin
  FreportId := AInteger;
  FreportId_Specified := True;
end;

function reportPageSelection.reportId_Specified(Index: Integer): boolean;
begin
  Result := FreportId_Specified;
end;

procedure reportPageSelection.Setselected(Index: Integer; const ABoolean: Boolean);
begin
  Fselected := ABoolean;
  Fselected_Specified := True;
end;

function reportPageSelection.selected_Specified(Index: Integer): boolean;
begin
  Result := Fselected_Specified;
end;

initialization
  { LegacyReportService }
  InvRegistry.RegisterInterface(TypeInfo(LegacyReportService), 'http://webservices.web.mi.hof.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(LegacyReportService), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(LegacyReportService), ioDocument);
  { LegacyReportService.remoteReportCall }
  InvRegistry.RegisterMethodInfo(TypeInfo(LegacyReportService), 'remoteReportCall', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyReportService), 'remoteReportCall', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(LegacyReportService), 'remoteReportCall', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_condition), 'http://webservices.web.mi.hof.com/', 'Array_Of_condition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportComment), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportComment');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportSchema), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportSchema');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportChart), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportChart');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_breadCrumb), 'http://webservices.web.mi.hof.com/', 'Array_Of_breadCrumb');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportBinaryObject), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportBinaryObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_gMapPolygon), 'http://webservices.web.mi.hof.com/', 'Array_Of_gMapPolygon');
  RemClassRegistry.RegisterXSClass(gisLayer, 'http://webservices.web.mi.hof.com/', 'gisLayer');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_gMapPoint), 'http://webservices.web.mi.hof.com/', 'Array_Of_gMapPoint');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportFilter), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportFilter');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_dashboardFilter), 'http://webservices.web.mi.hof.com/', 'Array_Of_dashboardFilter');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_dashboardElement), 'http://webservices.web.mi.hof.com/', 'Array_Of_dashboardElement');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_timeSliderSelection), 'http://webservices.web.mi.hof.com/', 'Array_Of_timeSliderSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_timeAggregationSelection), 'http://webservices.web.mi.hof.com/', 'Array_Of_timeAggregationSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_storyboardDescriptor), 'http://webservices.web.mi.hof.com/', 'Array_Of_storyboardDescriptor');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_dashboardFieldDefinition), 'http://webservices.web.mi.hof.com/', 'Array_Of_dashboardFieldDefinition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_gisShape), 'http://webservices.web.mi.hof.com/', 'Array_Of_gisShape');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_gisLayer), 'http://webservices.web.mi.hof.com/', 'Array_Of_gisLayer');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_dashboardDefinition), 'http://webservices.web.mi.hof.com/', 'Array_Of_dashboardDefinition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_dashboardFilterDefinition), 'http://webservices.web.mi.hof.com/', 'Array_Of_dashboardFilterDefinition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_gMap), 'http://webservices.web.mi.hof.com/', 'Array_Of_gMap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_gisMap), 'http://webservices.web.mi.hof.com/', 'Array_Of_gisMap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_drillAnywhereTargets), 'http://webservices.web.mi.hof.com/', 'Array_Of_drillAnywhereTargets');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportPageSelection), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportPageSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_sortableTableColumn), 'http://webservices.web.mi.hof.com/', 'Array_Of_sortableTableColumn');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_seriesSelection), 'http://webservices.web.mi.hof.com/', 'Array_Of_seriesSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportTabSelection), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportTabSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_double), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_double');
  RemClassRegistry.RegisterXSClass(gMapPoint, 'http://webservices.web.mi.hof.com/', 'gMapPoint');
  RemClassRegistry.RegisterXSClass(reportChart, 'http://webservices.web.mi.hof.com/', 'reportChart');
  RemClassRegistry.RegisterXSClass(gMapPolygon, 'http://webservices.web.mi.hof.com/', 'gMapPolygon');
  RemClassRegistry.RegisterXSClass(Exception, 'http://webservices.web.mi.hof.com/', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(gisShape, 'http://webservices.web.mi.hof.com/', 'gisShape');
  RemClassRegistry.RegisterXSClass(Exception2, 'http://webservices.web.mi.hof.com/', 'Exception2', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(breadCrumb, 'http://webservices.web.mi.hof.com/', 'breadCrumb');
  RemClassRegistry.RegisterXSClass(condition, 'http://webservices.web.mi.hof.com/', 'condition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_int), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_int');
  RemClassRegistry.RegisterXSClass(dashboardFilterDefinition, 'http://webservices.web.mi.hof.com/', 'dashboardFilterDefinition');
  RemClassRegistry.RegisterXSClass(dashboardFilter, 'http://webservices.web.mi.hof.com/', 'dashboardFilter');
  RemClassRegistry.RegisterXSClass(scheduleRecord, 'http://webservices.web.mi.hof.com/', 'scheduleRecord');
  RemClassRegistry.RegisterXSClass(reportComment, 'http://webservices.web.mi.hof.com/', 'reportComment');
  RemClassRegistry.RegisterXSClass(gMap, 'http://webservices.web.mi.hof.com/', 'gMap');
  RemClassRegistry.RegisterXSClass(reportFilter, 'http://webservices.web.mi.hof.com/', 'reportFilter');
  RemClassRegistry.RegisterXSClass(timeAggregationSelection, 'http://webservices.web.mi.hof.com/', 'timeAggregationSelection');
  RemClassRegistry.RegisterXSClass(storyboardDescriptor, 'http://webservices.web.mi.hof.com/', 'storyboardDescriptor');
  RemClassRegistry.RegisterXSClass(sortableTableColumn, 'http://webservices.web.mi.hof.com/', 'sortableTableColumn');
  RemClassRegistry.RegisterXSClass(timeSliderSelection, 'http://webservices.web.mi.hof.com/', 'timeSliderSelection');
  RemClassRegistry.RegisterXSClass(dashboardFieldDefinition, 'http://webservices.web.mi.hof.com/', 'dashboardFieldDefinition');
  RemClassRegistry.RegisterXSClass(dashboardElement, 'http://webservices.web.mi.hof.com/', 'dashboardElement');
  RemClassRegistry.RegisterXSClass(seriesSelection, 'http://webservices.web.mi.hof.com/', 'seriesSelection');
  RemClassRegistry.RegisterXSClass(reportBinaryObject, 'http://webservices.web.mi.hof.com/', 'reportBinaryObject');
  RemClassRegistry.RegisterXSClass(kpi, 'http://webservices.web.mi.hof.com/', 'kpi');
  RemClassRegistry.RegisterXSClass(drillAnywhereTargets, 'http://webservices.web.mi.hof.com/', 'drillAnywhereTargets');
  RemClassRegistry.RegisterXSClass(dashboardDefinition, 'http://webservices.web.mi.hof.com/', 'dashboardDefinition');
  RemClassRegistry.RegisterXSClass(gisMap, 'http://webservices.web.mi.hof.com/', 'gisMap');
  RemClassRegistry.RegisterXSClass(reportSchema, 'http://webservices.web.mi.hof.com/', 'reportSchema');
  RemClassRegistry.RegisterXSInfo(TypeInfo(reportRow), 'http://webservices.web.mi.hof.com/', 'reportRow');
  RemClassRegistry.RegisterXSClass(reportServiceRequest, 'http://webservices.web.mi.hof.com/', 'reportServiceRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportServiceRequest), 'reportOptions', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportServiceRequest), 'commandsHistory', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_reportRow), 'http://webservices.web.mi.hof.com/', 'Array_Of_reportRow');
  RemClassRegistry.RegisterXSClass(reportServiceResponse, 'http://webservices.web.mi.hof.com/', 'reportServiceResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportServiceResponse), 'commandsHistory', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportServiceResponse), 'drillAnywhereCategories', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportServiceResponse), 'messages', '[ArrayItemName="dataValue"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportServiceResponse), 'private_', '[ExtName="private"]');
  RemClassRegistry.RegisterXSClass(reportTabSelection, 'http://webservices.web.mi.hof.com/', 'reportTabSelection');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportTabSelection), 'index_', '[ExtName="index"]');
  RemClassRegistry.RegisterXSClass(reportPageSelection, 'http://webservices.web.mi.hof.com/', 'reportPageSelection');
  RemClassRegistry.RegisterXSClass(relatedReports, 'http://webservices.web.mi.hof.com/', 'relatedReports');

end.