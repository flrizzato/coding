// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://172.16.174.137:8080/services/ReportService?wsdl
//  >Import : http://172.16.174.137:8080/services/ReportService?wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (24/06/2022 18:25:14 - - $Rev: 108085 $)
// ************************************************************************ //

unit YF.ReportService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]

  RelatedReports       = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  GISMapPoint          = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  RelatedReportField   = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  DashboardFilter      = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportComment        = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  Condition            = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ScheduleRecord       = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  GMap                 = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  GMapPolygon          = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  SortableTableColumn  = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  DrillAnywhereTargets = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  DrillTarget          = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  RelatedReport        = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  GISShape             = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportRow            = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  GMapPoint            = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportPageSelection  = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportTabSelection   = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  StoryboardDescriptor = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  TimeAggregationSelection = class;             { "http://service.web.mi.hof.com"[GblCplx] }
  GISLayer             = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportFilter         = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportServiceRequest = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  DashboardElement     = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  DashboardFilterDefinition = class;            { "http://service.web.mi.hof.com"[GblCplx] }
  DashboardDefinition  = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  DashboardFieldDefinition = class;             { "http://service.web.mi.hof.com"[GblCplx] }
  GISMap               = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  SeriesSelection      = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  TimeSliderSelection  = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportBinaryObject   = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  KPI                  = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  BreadCrumb           = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportSchema         = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportChart          = class;                 { "http://service.web.mi.hof.com"[GblCplx] }
  ReportServiceResponse = class;                { "http://service.web.mi.hof.com"[GblCplx] }

  ArrayOfGISMap = array of GISMap;              { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfGISShape = array of GISShape;          { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfGMap = array of GMap;                  { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfRelatedReportField = array of RelatedReportField;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfGISMapPoint = array of GISMapPoint;    { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfDrillTarget = array of DrillTarget;    { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfDashboardDefinition = array of DashboardDefinition;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfGISLayer = array of GISLayer;          { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfDrillAnywhereTargets = array of DrillAnywhereTargets;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfRelatedReport = array of RelatedReport;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfStoryboardDescriptor = array of StoryboardDescriptor;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfSortableTableColumn = array of SortableTableColumn;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfTimeAggregationSelection = array of TimeAggregationSelection;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfTimeSliderSelection = array of TimeSliderSelection;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfReportPageSelection = array of ReportPageSelection;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfReportTabSelection = array of ReportTabSelection;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfSeriesSelection = array of SeriesSelection;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfReportRow = array of ReportRow;        { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfGMapPolygon = array of GMapPolygon;    { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfGMapPoint = array of GMapPoint;        { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfCondition = array of Condition;        { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOf_soapenc_double = array of Double;     { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : RelatedReports, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  RelatedReports = class(TRemotable)
  private
    FrelatedReports: ArrayOfRelatedReport;
    FreportId: Integer;
  public
    destructor Destroy; override;
  published
    property relatedReports: ArrayOfRelatedReport  read FrelatedReports write FrelatedReports;
    property reportId:       Integer               read FreportId write FreportId;
  end;



  // ************************************************************************ //
  // XML       : GISMapPoint, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  GISMapPoint = class(TRemotable)
  private
    Fx: Integer;
    Fy: Integer;
  published
    property x: Integer  read Fx write Fx;
    property y: Integer  read Fy write Fy;
  end;

  ArrayOf_soapenc_int = array of Integer;       { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : RelatedReportField, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  RelatedReportField = class(TRemotable)
  private
    FchildFilterId: Integer;
    FparentFieldId: Integer;
    FparentFilterId: Integer;
  published
    property childFilterId:  Integer  read FchildFilterId write FchildFilterId;
    property parentFieldId:  Integer  read FparentFieldId write FparentFieldId;
    property parentFilterId: Integer  read FparentFilterId write FparentFilterId;
  end;



  // ************************************************************************ //
  // XML       : DashboardFilter, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  DashboardFilter = class(TRemotable)
  private
    FfilterId: Integer;
    FfilterType: string;
    FfilterValue: string;
    FreportId: Integer;
    FtabId: Integer;
    FtemplateId: Integer;
  published
    property filterId:    Integer  read FfilterId write FfilterId;
    property filterType:  string   read FfilterType write FfilterType;
    property filterValue: string   read FfilterValue write FfilterValue;
    property reportId:    Integer  read FreportId write FreportId;
    property tabId:       Integer  read FtabId write FtabId;
    property templateId:  Integer  read FtemplateId write FtemplateId;
  end;



  // ************************************************************************ //
  // XML       : ReportComment, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportComment = class(TRemotable)
  private
    Fauthor: string;
    FauthorId: Integer;
    Fcomment: string;
    FcommentDate: string;
    FcommentId: Integer;
    FlastActivityDate: string;
    FparentCommentId: Integer;
    FreportId: Integer;
    FstatusCode: string;
    Ftitle: string;
  published
    property author:           string   read Fauthor write Fauthor;
    property authorId:         Integer  read FauthorId write FauthorId;
    property comment:          string   read Fcomment write Fcomment;
    property commentDate:      string   read FcommentDate write FcommentDate;
    property commentId:        Integer  read FcommentId write FcommentId;
    property lastActivityDate: string   read FlastActivityDate write FlastActivityDate;
    property parentCommentId:  Integer  read FparentCommentId write FparentCommentId;
    property reportId:         Integer  read FreportId write FreportId;
    property statusCode:       string   read FstatusCode write FstatusCode;
    property title:            string   read Ftitle write Ftitle;
  end;



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



  // ************************************************************************ //
  // XML       : ScheduleRecord, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ScheduleRecord = class(TRemotable)
  private
    FadvancedTime: Integer;
    FadvancedTimezoneCode: string;
    FbodyText: string;
    FconditionList: ArrayOfCondition;
    Fformat: string;
    FfrequencyCode: string;
    FfrequencyTypeCode: string;
    FfrequencyUnit: Integer;
    Frecipient: Integer;
    Fsubject: string;
  public
    destructor Destroy; override;
  published
    property advancedTime:         Integer           read FadvancedTime write FadvancedTime;
    property advancedTimezoneCode: string            read FadvancedTimezoneCode write FadvancedTimezoneCode;
    property bodyText:             string            read FbodyText write FbodyText;
    property conditionList:        ArrayOfCondition  read FconditionList write FconditionList;
    property format:               string            read Fformat write Fformat;
    property frequencyCode:        string            read FfrequencyCode write FfrequencyCode;
    property frequencyTypeCode:    string            read FfrequencyTypeCode write FfrequencyTypeCode;
    property frequencyUnit:        Integer           read FfrequencyUnit write FfrequencyUnit;
    property recipient:            Integer           read Frecipient write Frecipient;
    property subject:              string            read Fsubject write Fsubject;
  end;



  // ************************************************************************ //
  // XML       : GMap, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  GMap = class(TRemotable)
  private
    FmapIndex: Integer;
    FmapLegendImage: string;
    FmapPoints: ArrayOfGMapPoint;
    FmapPolys: ArrayOfGMapPolygon;
  public
    destructor Destroy; override;
  published
    property mapIndex:       Integer             read FmapIndex write FmapIndex;
    property mapLegendImage: string              read FmapLegendImage write FmapLegendImage;
    property mapPoints:      ArrayOfGMapPoint    read FmapPoints write FmapPoints;
    property mapPolys:       ArrayOfGMapPolygon  read FmapPolys write FmapPolys;
  end;



  // ************************************************************************ //
  // XML       : GMapPolygon, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  GMapPolygon = class(TRemotable)
  private
    Fcolor: string;
    Flatitude: ArrayOf_soapenc_double;
    Flink: string;
    Flongitude: ArrayOf_soapenc_double;
    FmaxLat: Double;
    FmaxLong: Double;
    FminLat: Double;
    FminLong: Double;
    Ftitle: string;
  published
    property color:     string                  read Fcolor write Fcolor;
    property latitude:  ArrayOf_soapenc_double  read Flatitude write Flatitude;
    property link:      string                  read Flink write Flink;
    property longitude: ArrayOf_soapenc_double  read Flongitude write Flongitude;
    property maxLat:    Double                  read FmaxLat write FmaxLat;
    property maxLong:   Double                  read FmaxLong write FmaxLong;
    property minLat:    Double                  read FminLat write FminLat;
    property minLong:   Double                  read FminLong write FminLong;
    property title:     string                  read Ftitle write Ftitle;
  end;



  // ************************************************************************ //
  // XML       : SortableTableColumn, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  SortableTableColumn = class(TRemotable)
  private
    FcolumnId: Integer;
    FdisplayName: string;
    FreportId: Integer;
  published
    property columnId:    Integer  read FcolumnId write FcolumnId;
    property displayName: string   read FdisplayName write FdisplayName;
    property reportId:    Integer  read FreportId write FreportId;
  end;



  // ************************************************************************ //
  // XML       : DrillAnywhereTargets, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  DrillAnywhereTargets = class(TRemotable)
  private
    FparentCategory: string;
    Ftargets: ArrayOfDrillTarget;
  public
    destructor Destroy; override;
  published
    property parentCategory: string              read FparentCategory write FparentCategory;
    property targets:        ArrayOfDrillTarget  read Ftargets write Ftargets;
  end;



  // ************************************************************************ //
  // XML       : DrillTarget, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  DrillTarget = class(TRemotable)
  private
    FURL: string;
    Fname_: string;
    Fvalue: string;
  published
    property URL:   string  read FURL write FURL;
    property name_: string  read Fname_ write Fname_;
    property value: string  read Fvalue write Fvalue;
  end;



  // ************************************************************************ //
  // XML       : RelatedReport, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  RelatedReport = class(TRemotable)
  private
    FdisplayName: string;
    FrelatedReportFields: ArrayOfRelatedReportField;
    FrelationshipTypeCode: string;
    FreportId: Integer;
  public
    destructor Destroy; override;
  published
    property displayName:          string                     read FdisplayName write FdisplayName;
    property relatedReportFields:  ArrayOfRelatedReportField  read FrelatedReportFields write FrelatedReportFields;
    property relationshipTypeCode: string                     read FrelationshipTypeCode write FrelationshipTypeCode;
    property reportId:             Integer                    read FreportId write FreportId;
  end;



  // ************************************************************************ //
  // XML       : GISShape, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  GISShape = class(TRemotable)
  private
    FboundsHeight: Double;
    FboundsLeft: Double;
    FboundsTop: Double;
    FboundsWidth: Double;
    FinteractionCommand: string;
    Fpoints: ArrayOfGISMapPoint;
    FshapeType: string;
    Ftooltip: string;
  public
    destructor Destroy; override;
  published
    property boundsHeight:       Double              read FboundsHeight write FboundsHeight;
    property boundsLeft:         Double              read FboundsLeft write FboundsLeft;
    property boundsTop:          Double              read FboundsTop write FboundsTop;
    property boundsWidth:        Double              read FboundsWidth write FboundsWidth;
    property interactionCommand: string              read FinteractionCommand write FinteractionCommand;
    property points:             ArrayOfGISMapPoint  read Fpoints write Fpoints;
    property shapeType:          string              read FshapeType write FshapeType;
    property tooltip:            string              read Ftooltip write Ftooltip;
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

  ArrayOfDashboardFilter = array of DashboardFilter;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : GMapPoint, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  GMapPoint = class(TRemotable)
  private
    Fdescription: string;
    Flatitude: Double;
    Flink: string;
    Flongitude: Double;
    Ftitle: string;
  published
    property description: string  read Fdescription write Fdescription;
    property latitude:    Double  read Flatitude write Flatitude;
    property link:        string  read Flink write Flink;
    property longitude:   Double  read Flongitude write Flongitude;
    property title:       string  read Ftitle write Ftitle;
  end;

  ArrayOfReportFilter = array of ReportFilter;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : ReportPageSelection, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportPageSelection = class(TRemotable)
  private
    FhyperLink: string;
    FpageTitle: string;
    FreportId: Integer;
    Fselected: Boolean;
  published
    property hyperLink: string   read FhyperLink write FhyperLink;
    property pageTitle: string   read FpageTitle write FpageTitle;
    property reportId:  Integer  read FreportId write FreportId;
    property selected:  Boolean  read Fselected write Fselected;
  end;



  // ************************************************************************ //
  // XML       : ReportTabSelection, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportTabSelection = class(TRemotable)
  private
    FhyperLink: string;
    Findex_: Integer;
    FreportId: Integer;
    Fselected: Boolean;
    FtabTitle: string;
  published
    property hyperLink: string   read FhyperLink write FhyperLink;
    property index_:    Integer  read Findex_ write Findex_;
    property reportId:  Integer  read FreportId write FreportId;
    property selected:  Boolean  read Fselected write Fselected;
    property tabTitle:  string   read FtabTitle write FtabTitle;
  end;



  // ************************************************************************ //
  // XML       : StoryboardDescriptor, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  StoryboardDescriptor = class(TRemotable)
  private
    Fdescription: string;
    FdisplayName: string;
    Ffavourite: Boolean;
    FimageId: Integer;
    FipOrg: Integer;
    Fuuid: string;
  published
    property description: string   read Fdescription write Fdescription;
    property displayName: string   read FdisplayName write FdisplayName;
    property favourite:   Boolean  read Ffavourite write Ffavourite;
    property imageId:     Integer  read FimageId write FimageId;
    property ipOrg:       Integer  read FipOrg write FipOrg;
    property uuid:        string   read Fuuid write Fuuid;
  end;



  // ************************************************************************ //
  // XML       : TimeAggregationSelection, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  TimeAggregationSelection = class(TRemotable)
  private
    FgranularityString: string;
    FgranularityStringKey: string;
    FhyperLink: string;
    FreportId: Integer;
    Fselected: Boolean;
  published
    property granularityString:    string   read FgranularityString write FgranularityString;
    property granularityStringKey: string   read FgranularityStringKey write FgranularityStringKey;
    property hyperLink:            string   read FhyperLink write FhyperLink;
    property reportId:             Integer  read FreportId write FreportId;
    property selected:             Boolean  read Fselected write Fselected;
  end;



  // ************************************************************************ //
  // XML       : GISLayer, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  GISLayer = class(TRemotable)
  private
    FdisplayName: string;
    Fenabled: Boolean;
    Fid: Integer;
    FlayerIndex: Integer;
  published
    property displayName: string   read FdisplayName write FdisplayName;
    property enabled:     Boolean  read Fenabled write Fenabled;
    property id:          Integer  read Fid write Fid;
    property layerIndex:  Integer  read FlayerIndex write FlayerIndex;
  end;



  // ************************************************************************ //
  // XML       : ReportFilter, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportFilter = class(TRemotable)
  private
    FdataValue: string;
    FfilterId: Integer;
    FisOmitted: Boolean;
  published
    property dataValue: string   read FdataValue write FdataValue;
    property filterId:  Integer  read FfilterId write FfilterId;
    property isOmitted: Boolean  read FisOmitted write FisOmitted;
  end;



  // ************************************************************************ //
  // XML       : ReportServiceRequest, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportServiceRequest = class(TRemotable)
  private
    FabsoluteTableWidth: Integer;
    FactiveCharts: Boolean;
    FallowInteractiveGoogleMaps: Boolean;
    FalterationCommand: string;
    FbinaryURL: string;
    FchartHeight: Integer;
    FchartPlacementCode: string;
    FchartScale: Integer;
    FchartWidth: Integer;
    FcommandsHistory: ArrayOf_soapenc_string;
    FdashboardFilters: ArrayOfDashboardFilter;
    FdashboardTabId: Integer;
    FdataFormattingOptionsType: string;
    FdistributionText: string;
    FdrillAnywhereCellValue: string;
    FdrillAnywhereFieldId: Integer;
    FdrillAnywhereUniqueValueName: string;
    Ffilters: ArrayOfReportFilter;
    FfitTableWidth: Boolean;
    FgisNavigation: Boolean;
    Fgmap: GMap;
    FimageType: string;
    FimageURL: string;
    FkeepState: Boolean;
    FlanguageCode: string;
    FlinkFormatterClass: string;
    FlinkURL: string;
    FloginId: string;
    FmultiChartEnabled: Boolean;
    FmultiReportTag: string;
    Fntlm: Boolean;
    FobjectName: string;
    ForgId: Integer;
    ForgRef: string;
    Fpassword: string;
    FreportBroadcastContent: string;
    FreportBroadcastSubject: string;
    FreportClientReferenceId: string;
    FreportComment: ReportComment;
    FreportId: Integer;
    FreportOptions: ArrayOf_soapenc_string;
    FreportRequest: string;
    FreportUserId: string;
    FreportUserPassword: string;
    Fschedule: ScheduleRecord;
    FsessionId: string;
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
    FtriggerJSGoogleMapsSetup: Boolean;
  public
    destructor Destroy; override;
  published
    property absoluteTableWidth:           Integer                 read FabsoluteTableWidth write FabsoluteTableWidth;
    property activeCharts:                 Boolean                 read FactiveCharts write FactiveCharts;
    property allowInteractiveGoogleMaps:   Boolean                 read FallowInteractiveGoogleMaps write FallowInteractiveGoogleMaps;
    property alterationCommand:            string                  read FalterationCommand write FalterationCommand;
    property binaryURL:                    string                  read FbinaryURL write FbinaryURL;
    property chartHeight:                  Integer                 read FchartHeight write FchartHeight;
    property chartPlacementCode:           string                  read FchartPlacementCode write FchartPlacementCode;
    property chartScale:                   Integer                 read FchartScale write FchartScale;
    property chartWidth:                   Integer                 read FchartWidth write FchartWidth;
    property commandsHistory:              ArrayOf_soapenc_string  read FcommandsHistory write FcommandsHistory;
    property dashboardFilters:             ArrayOfDashboardFilter  read FdashboardFilters write FdashboardFilters;
    property dashboardTabId:               Integer                 read FdashboardTabId write FdashboardTabId;
    property dataFormattingOptionsType:    string                  read FdataFormattingOptionsType write FdataFormattingOptionsType;
    property distributionText:             string                  read FdistributionText write FdistributionText;
    property drillAnywhereCellValue:       string                  read FdrillAnywhereCellValue write FdrillAnywhereCellValue;
    property drillAnywhereFieldId:         Integer                 read FdrillAnywhereFieldId write FdrillAnywhereFieldId;
    property drillAnywhereUniqueValueName: string                  read FdrillAnywhereUniqueValueName write FdrillAnywhereUniqueValueName;
    property filters:                      ArrayOfReportFilter     read Ffilters write Ffilters;
    property fitTableWidth:                Boolean                 read FfitTableWidth write FfitTableWidth;
    property gisNavigation:                Boolean                 read FgisNavigation write FgisNavigation;
    property gmap:                         GMap                    read Fgmap write Fgmap;
    property imageType:                    string                  read FimageType write FimageType;
    property imageURL:                     string                  read FimageURL write FimageURL;
    property keepState:                    Boolean                 read FkeepState write FkeepState;
    property languageCode:                 string                  read FlanguageCode write FlanguageCode;
    property linkFormatterClass:           string                  read FlinkFormatterClass write FlinkFormatterClass;
    property linkURL:                      string                  read FlinkURL write FlinkURL;
    property loginId:                      string                  read FloginId write FloginId;
    property multiChartEnabled:            Boolean                 read FmultiChartEnabled write FmultiChartEnabled;
    property multiReportTag:               string                  read FmultiReportTag write FmultiReportTag;
    property ntlm:                         Boolean                 read Fntlm write Fntlm;
    property objectName:                   string                  read FobjectName write FobjectName;
    property orgId:                        Integer                 read ForgId write ForgId;
    property orgRef:                       string                  read ForgRef write ForgRef;
    property password:                     string                  read Fpassword write Fpassword;
    property reportBroadcastContent:       string                  read FreportBroadcastContent write FreportBroadcastContent;
    property reportBroadcastSubject:       string                  read FreportBroadcastSubject write FreportBroadcastSubject;
    property reportClientReferenceId:      string                  read FreportClientReferenceId write FreportClientReferenceId;
    property reportComment:                ReportComment           read FreportComment write FreportComment;
    property reportId:                     Integer                 read FreportId write FreportId;
    property reportOptions:                ArrayOf_soapenc_string  read FreportOptions write FreportOptions;
    property reportRequest:                string                  read FreportRequest write FreportRequest;
    property reportUserId:                 string                  read FreportUserId write FreportUserId;
    property reportUserPassword:           string                  read FreportUserPassword write FreportUserPassword;
    property schedule:                     ScheduleRecord          read Fschedule write Fschedule;
    property sessionId:                    string                  read FsessionId write FsessionId;
    property showAlertImages:              Boolean                 read FshowAlertImages write FshowAlertImages;
    property showAlertLegendTable:         Boolean                 read FshowAlertLegendTable write FshowAlertLegendTable;
    property showAlerts:                   Boolean                 read FshowAlerts write FshowAlerts;
    property showCharts:                   Boolean                 read FshowCharts write FshowCharts;
    property showCoDisplay:                Boolean                 read FshowCoDisplay write FshowCoDisplay;
    property showDrillDownStack:           Boolean                 read FshowDrillDownStack write FshowDrillDownStack;
    property showDrillThroughStack:        Boolean                 read FshowDrillThroughStack write FshowDrillThroughStack;
    property showLinks:                    Boolean                 read FshowLinks write FshowLinks;
    property showPageSelection:            Boolean                 read FshowPageSelection write FshowPageSelection;
    property showSeriesSelection:          Boolean                 read FshowSeriesSelection write FshowSeriesSelection;
    property showSort:                     Boolean                 read FshowSort write FshowSort;
    property showTabs:                     Boolean                 read FshowTabs write FshowTabs;
    property showTimeSlider:               Boolean                 read FshowTimeSlider write FshowTimeSlider;
    property showTimeUnitSelection:        Boolean                 read FshowTimeUnitSelection write FshowTimeUnitSelection;
    property showTitle:                    Boolean                 read FshowTitle write FshowTitle;
    property singlePage:                   Boolean                 read FsinglePage write FsinglePage;
    property sortColumn:                   Integer                 read FsortColumn write FsortColumn;
    property triggerJSGoogleMapsSetup:     Boolean                 read FtriggerJSGoogleMapsSetup write FtriggerJSGoogleMapsSetup;
  end;



  // ************************************************************************ //
  // XML       : DashboardElement, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  DashboardElement = class(TRemotable)
  private
    FcolumnNumber: Integer;
    FentityId: Integer;
    FentityTypeCode: string;
    FportletHeight: Integer;
    FportletStatus: string;
    FrowNumber: Integer;
    FsequenceNumber: Integer;
    FstartDate: TXSDateTime;
    FtabId: Integer;
  public
    destructor Destroy; override;
  published
    property columnNumber:   Integer      read FcolumnNumber write FcolumnNumber;
    property entityId:       Integer      read FentityId write FentityId;
    property entityTypeCode: string       read FentityTypeCode write FentityTypeCode;
    property portletHeight:  Integer      read FportletHeight write FportletHeight;
    property portletStatus:  string       read FportletStatus write FportletStatus;
    property rowNumber:      Integer      read FrowNumber write FrowNumber;
    property sequenceNumber: Integer      read FsequenceNumber write FsequenceNumber;
    property startDate:      TXSDateTime  read FstartDate write FstartDate;
    property tabId:          Integer      read FtabId write FtabId;
  end;

  ArrayOfReportComment = array of ReportComment;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfReportSchema = array of ReportSchema;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfDashboardElement = array of DashboardElement;   { "http://service.web.mi.hof.com"[GblCplx] }
  ArrayOfDashboardFilterDefinition = array of DashboardFilterDefinition;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : DashboardFilterDefinition, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  DashboardFilterDefinition = class(TRemotable)
  private
    FcomponentId: Integer;
    FcomponentTypeCode: string;
    FdashboardFilterId: Integer;
    FdashboardFilterUUID: string;
    FentityId: Integer;
    FentityTypeCode: string;
    FformatKey: string;
    FformatValue: string;
    FgroupId: Integer;
    FreportFilterUUID: string;
  published
    property componentId:         Integer  read FcomponentId write FcomponentId;
    property componentTypeCode:   string   read FcomponentTypeCode write FcomponentTypeCode;
    property dashboardFilterId:   Integer  read FdashboardFilterId write FdashboardFilterId;
    property dashboardFilterUUID: string   read FdashboardFilterUUID write FdashboardFilterUUID;
    property entityId:            Integer  read FentityId write FentityId;
    property entityTypeCode:      string   read FentityTypeCode write FentityTypeCode;
    property formatKey:           string   read FformatKey write FformatKey;
    property formatValue:         string   read FformatValue write FformatValue;
    property groupId:             Integer  read FgroupId write FgroupId;
    property reportFilterUUID:    string   read FreportFilterUUID write FreportFilterUUID;
  end;

  ArrayOfDashboardFieldDefinition = array of DashboardFieldDefinition;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : DashboardDefinition, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  DashboardDefinition = class(TRemotable)
  private
    FaccessCode: string;
    Faudience: string;
    FcategoryCode: string;
    Felements: ArrayOfDashboardElement;
    FendDate: TXSDateTime;
    Ffields: ArrayOfDashboardFieldDefinition;
    Ffilters: ArrayOfDashboardFilterDefinition;
    FgroupTypeCode: string;
    FlanguageCode: string;
    FlongDescription: string;
    Fowner: Integer;
    FownerTypeCode: string;
    FparentGroupId: Integer;
    FshortDescription: string;
    FstartDate: TXSDateTime;
    FstatusCode: string;
    FstyleCode: string;
    FsubCategoryCode: string;
    Fsubtabs: ArrayOfDashboardDefinition;
    FtabId: Integer;
  public
    destructor Destroy; override;
  published
    property accessCode:       string                            read FaccessCode write FaccessCode;
    property audience:         string                            read Faudience write Faudience;
    property categoryCode:     string                            read FcategoryCode write FcategoryCode;
    property elements:         ArrayOfDashboardElement           read Felements write Felements;
    property endDate:          TXSDateTime                       read FendDate write FendDate;
    property fields:           ArrayOfDashboardFieldDefinition   read Ffields write Ffields;
    property filters:          ArrayOfDashboardFilterDefinition  read Ffilters write Ffilters;
    property groupTypeCode:    string                            read FgroupTypeCode write FgroupTypeCode;
    property languageCode:     string                            read FlanguageCode write FlanguageCode;
    property longDescription:  string                            read FlongDescription write FlongDescription;
    property owner:            Integer                           read Fowner write Fowner;
    property ownerTypeCode:    string                            read FownerTypeCode write FownerTypeCode;
    property parentGroupId:    Integer                           read FparentGroupId write FparentGroupId;
    property shortDescription: string                            read FshortDescription write FshortDescription;
    property startDate:        TXSDateTime                       read FstartDate write FstartDate;
    property statusCode:       string                            read FstatusCode write FstatusCode;
    property styleCode:        string                            read FstyleCode write FstyleCode;
    property subCategoryCode:  string                            read FsubCategoryCode write FsubCategoryCode;
    property subtabs:          ArrayOfDashboardDefinition        read Fsubtabs write Fsubtabs;
    property tabId:            Integer                           read FtabId write FtabId;
  end;



  // ************************************************************************ //
  // XML       : DashboardFieldDefinition, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  DashboardFieldDefinition = class(TRemotable)
  private
    FfieldDescription: string;
    FfieldId: Integer;
    FfieldName: string;
    FfieldType: string;
    FreportId: Integer;
    FtabId: Integer;
    FtemplateId: Integer;
  published
    property fieldDescription: string   read FfieldDescription write FfieldDescription;
    property fieldId:          Integer  read FfieldId write FfieldId;
    property fieldName:        string   read FfieldName write FfieldName;
    property fieldType:        string   read FfieldType write FfieldType;
    property reportId:         Integer  read FreportId write FreportId;
    property tabId:            Integer  read FtabId write FtabId;
    property templateId:       Integer  read FtemplateId write FtemplateId;
  end;



  // ************************************************************************ //
  // XML       : GISMap, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  GISMap = class(TRemotable)
  private
    FimageHeight: Integer;
    FimageWidth: Integer;
    Flayers: ArrayOfGISLayer;
    FmapImage: string;
    FmapIndex: Integer;
    Fscale: TXSDecimal;
    Fshapes: ArrayOfGISShape;
    FzoomLevel: Integer;
    Fzoomx: Double;
    Fzoomy: Double;
  public
    destructor Destroy; override;
  published
    property imageHeight: Integer          read FimageHeight write FimageHeight;
    property imageWidth:  Integer          read FimageWidth write FimageWidth;
    property layers:      ArrayOfGISLayer  read Flayers write Flayers;
    property mapImage:    string           read FmapImage write FmapImage;
    property mapIndex:    Integer          read FmapIndex write FmapIndex;
    property scale:       TXSDecimal       read Fscale write Fscale;
    property shapes:      ArrayOfGISShape  read Fshapes write Fshapes;
    property zoomLevel:   Integer          read FzoomLevel write FzoomLevel;
    property zoomx:       Double           read Fzoomx write Fzoomx;
    property zoomy:       Double           read Fzoomy write Fzoomy;
  end;

  ArrayOfReportBinaryObject = array of ReportBinaryObject;   { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : SeriesSelection, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  SeriesSelection = class(TRemotable)
  private
    Fdescription: string;
    FfieldId: Integer;
    Fhyperlink: string;
    FpctChange: string;
    FreportId: Integer;
    Fselected: Boolean;
    FseriesThumb: TByteSOAPArray;
    FtotalValue: string;
    FtrendCode: string;
    FtypeCode: string;
  published
    property description: string          read Fdescription write Fdescription;
    property fieldId:     Integer         read FfieldId write FfieldId;
    property hyperlink:   string          read Fhyperlink write Fhyperlink;
    property pctChange:   string          read FpctChange write FpctChange;
    property reportId:    Integer         read FreportId write FreportId;
    property selected:    Boolean         read Fselected write Fselected;
    property seriesThumb: TByteSOAPArray  read FseriesThumb write FseriesThumb;
    property totalValue:  string          read FtotalValue write FtotalValue;
    property trendCode:   string          read FtrendCode write FtrendCode;
    property typeCode:    string          read FtypeCode write FtypeCode;
  end;



  // ************************************************************************ //
  // XML       : TimeSliderSelection, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  TimeSliderSelection = class(TRemotable)
  private
    FpreviewImage: TByteSOAPArray;
    FrangeMaximum: Int64;
    FrangeMinimum: Int64;
    FreportId: Integer;
    FselectedEndDate: Int64;
    FselectedStartDate: Int64;
  published
    property previewImage:      TByteSOAPArray  read FpreviewImage write FpreviewImage;
    property rangeMaximum:      Int64           read FrangeMaximum write FrangeMaximum;
    property rangeMinimum:      Int64           read FrangeMinimum write FrangeMinimum;
    property reportId:          Integer         read FreportId write FreportId;
    property selectedEndDate:   Int64           read FselectedEndDate write FselectedEndDate;
    property selectedStartDate: Int64           read FselectedStartDate write FselectedStartDate;
  end;



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
  // XML       : KPI, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  KPI = class(TRemotable)
  private
    Factual: string;
    Ftarget: string;
    Fvariance: string;
  published
    property actual:   string  read Factual write Factual;
    property target:   string  read Ftarget write Ftarget;
    property variance: string  read Fvariance write Fvariance;
  end;



  // ************************************************************************ //
  // XML       : BreadCrumb, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  BreadCrumb = class(TRemotable)
  private
    FentityDescription: string;
    FentityId: Integer;
    FentityValue: string;
    FfieldTemplateId: Integer;
    FhyperLink: string;
    ForderId: Integer;
    FreportId: Integer;
    FtypeCode: string;
  published
    property entityDescription: string   read FentityDescription write FentityDescription;
    property entityId:          Integer  read FentityId write FentityId;
    property entityValue:       string   read FentityValue write FentityValue;
    property fieldTemplateId:   Integer  read FfieldTemplateId write FfieldTemplateId;
    property hyperLink:         string   read FhyperLink write FhyperLink;
    property orderId:           Integer  read ForderId write ForderId;
    property reportId:          Integer  read FreportId write FreportId;
    property typeCode:          string   read FtypeCode write FtypeCode;
  end;



  // ************************************************************************ //
  // XML       : ReportSchema, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportSchema = class(TRemotable)
  private
    FallowPrompt: Boolean;
    FcachedValues: Boolean;
    FcolumnLength: string;
    FcolumnName: string;
    FdataType: string;
    FdefaultValue1: string;
    FdefaultValue2: string;
    FdisplayName: string;
    FfieldId: Integer;
    FfilterDisplayType: string;
    FfilterId: Integer;
    FfilterOmittable: Boolean;
    FfilterType: string;
    FfilterTypeCode: string;
    FfilterUUID: string;
    Fhidden: Boolean;
    FmaximumValue: TXSDecimal;
    FminimumValue: TXSDecimal;
    FnumberOfDecimals: Integer;
    FoutputLocation: string;
    FparentFilterId: Integer;
    Fprompt: Boolean;
    FsortOrder: Integer;
    FvalueUnitCode: string;
  public
    destructor Destroy; override;
  published
    property allowPrompt:       Boolean     read FallowPrompt write FallowPrompt;
    property cachedValues:      Boolean     read FcachedValues write FcachedValues;
    property columnLength:      string      read FcolumnLength write FcolumnLength;
    property columnName:        string      read FcolumnName write FcolumnName;
    property dataType:          string      read FdataType write FdataType;
    property defaultValue1:     string      read FdefaultValue1 write FdefaultValue1;
    property defaultValue2:     string      read FdefaultValue2 write FdefaultValue2;
    property displayName:       string      read FdisplayName write FdisplayName;
    property fieldId:           Integer     read FfieldId write FfieldId;
    property filterDisplayType: string      read FfilterDisplayType write FfilterDisplayType;
    property filterId:          Integer     read FfilterId write FfilterId;
    property filterOmittable:   Boolean     read FfilterOmittable write FfilterOmittable;
    property filterType:        string      read FfilterType write FfilterType;
    property filterTypeCode:    string      read FfilterTypeCode write FfilterTypeCode;
    property filterUUID:        string      read FfilterUUID write FfilterUUID;
    property hidden:            Boolean     read Fhidden write Fhidden;
    property maximumValue:      TXSDecimal  read FmaximumValue write FmaximumValue;
    property minimumValue:      TXSDecimal  read FminimumValue write FminimumValue;
    property numberOfDecimals:  Integer     read FnumberOfDecimals write FnumberOfDecimals;
    property outputLocation:    string      read FoutputLocation write FoutputLocation;
    property parentFilterId:    Integer     read FparentFilterId write FparentFilterId;
    property prompt:            Boolean     read Fprompt write Fprompt;
    property sortOrder:         Integer     read FsortOrder write FsortOrder;
    property valueUnitCode:     string      read FvalueUnitCode write FvalueUnitCode;
  end;

  ArrayOfReportChart = array of ReportChart;    { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : ReportChart, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportChart = class(TRemotable)
  private
    FcontentType: string;
    Fdata: string;
    Ffilename: string;
    FreportIndex: string;
  published
    property contentType: string  read FcontentType write FcontentType;
    property data:        string  read Fdata write Fdata;
    property filename:    string  read Ffilename write Ffilename;
    property reportIndex: string  read FreportIndex write FreportIndex;
  end;

  ArrayOfBreadCrumb = array of BreadCrumb;      { "http://service.web.mi.hof.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : ReportServiceResponse, global, <complexType>
  // Namespace : http://service.web.mi.hof.com
  // ************************************************************************ //
  ReportServiceResponse = class(TRemotable)
  private
    FKPI: KPI;
    Fauthor: string;
    FauthoringMode: string;
    FaverageRunTime: Integer;
    FbinaryData: string;
    FbinaryObjects: ArrayOfReportBinaryObject;
    Fbreadcrumbs: ArrayOfBreadCrumb;
    FcanDrill: Boolean;
    FcanSubscribeToReport: Boolean;
    Fcategory: string;
    Fcharts: ArrayOfReportChart;
    Fcolumns: ArrayOfReportSchema;
    FcommandsHistory: ArrayOf_soapenc_string;
    Fcomments: ArrayOfReportComment;
    FcontentType: string;
    Fdashboard: DashboardDefinition;
    FdashboardEnabled: Boolean;
    FdataOutput: string;
    Fdatasource: string;
    FdisplayedReportId: Integer;
    FdrillAnywhereCategories: ArrayOf_soapenc_string;
    FdrillAnywhereTargets: ArrayOfDrillAnywhereTargets;
    FdrillCode: string;
    FerrorCode: Integer;
    FformatCode: string;
    FgisMap: ArrayOfGISMap;
    FgoogleMaps: ArrayOfGMap;
    FhitCount: Integer;
    FlastModifiedDate: string;
    FlastRunDuration: Integer;
    FlastRunStatus: string;
    FlastRunTime: TXSDecimal;
    Fmessages: ArrayOf_soapenc_string;
    FmodifiedReports: ArrayOf_soapenc_int;
    FpreRunFilterString: string;
    Fprivate_: Boolean;
    FrelatedReports: RelatedReports;
    FreportDescription: string;
    FreportFilters: ArrayOfReportFilter;
    FreportId: Integer;
    FreportName: string;
    FreportPageSelection: ArrayOfReportPageSelection;
    FreportStyle: string;
    FreportTabSelection: ArrayOfReportTabSelection;
    FreportTemplate: string;
    FreportType: string;
    FreportUUID: string;
    FreportUsage: Integer;
    Fresults: ArrayOfReportRow;
    Fschedule: ScheduleRecord;
    FselectedSortColumn: Integer;
    FselectedSortOrder: Integer;
    FseriesSelection: ArrayOfSeriesSelection;
    FsessionId: string;
    FsortableColumns: ArrayOfSortableTableColumn;
    FstatusCode: string;
    FstoryboardDescriptors: ArrayOfStoryboardDescriptor;
    FsubCategory: string;
    Ftags: string;
    FtimeAggregationSelection: ArrayOfTimeAggregationSelection;
    FtimeSliderSelection: ArrayOfTimeSliderSelection;
    FuserCanSubscribeToReport: Boolean;
    FviewName: string;
  public
    destructor Destroy; override;
  published
    property KPI:                      KPI                              read FKPI write FKPI;
    property author:                   string                           read Fauthor write Fauthor;
    property authoringMode:            string                           read FauthoringMode write FauthoringMode;
    property averageRunTime:           Integer                          read FaverageRunTime write FaverageRunTime;
    property binaryData:               string                           read FbinaryData write FbinaryData;
    property binaryObjects:            ArrayOfReportBinaryObject        read FbinaryObjects write FbinaryObjects;
    property breadcrumbs:              ArrayOfBreadCrumb                read Fbreadcrumbs write Fbreadcrumbs;
    property canDrill:                 Boolean                          read FcanDrill write FcanDrill;
    property canSubscribeToReport:     Boolean                          read FcanSubscribeToReport write FcanSubscribeToReport;
    property category:                 string                           read Fcategory write Fcategory;
    property charts:                   ArrayOfReportChart               read Fcharts write Fcharts;
    property columns:                  ArrayOfReportSchema              read Fcolumns write Fcolumns;
    property commandsHistory:          ArrayOf_soapenc_string           read FcommandsHistory write FcommandsHistory;
    property comments:                 ArrayOfReportComment             read Fcomments write Fcomments;
    property contentType:              string                           read FcontentType write FcontentType;
    property dashboard:                DashboardDefinition              read Fdashboard write Fdashboard;
    property dashboardEnabled:         Boolean                          read FdashboardEnabled write FdashboardEnabled;
    property dataOutput:               string                           read FdataOutput write FdataOutput;
    property datasource:               string                           read Fdatasource write Fdatasource;
    property displayedReportId:        Integer                          read FdisplayedReportId write FdisplayedReportId;
    property drillAnywhereCategories:  ArrayOf_soapenc_string           read FdrillAnywhereCategories write FdrillAnywhereCategories;
    property drillAnywhereTargets:     ArrayOfDrillAnywhereTargets      read FdrillAnywhereTargets write FdrillAnywhereTargets;
    property drillCode:                string                           read FdrillCode write FdrillCode;
    property errorCode:                Integer                          read FerrorCode write FerrorCode;
    property formatCode:               string                           read FformatCode write FformatCode;
    property gisMap:                   ArrayOfGISMap                    read FgisMap write FgisMap;
    property googleMaps:               ArrayOfGMap                      read FgoogleMaps write FgoogleMaps;
    property hitCount:                 Integer                          read FhitCount write FhitCount;
    property lastModifiedDate:         string                           read FlastModifiedDate write FlastModifiedDate;
    property lastRunDuration:          Integer                          read FlastRunDuration write FlastRunDuration;
    property lastRunStatus:            string                           read FlastRunStatus write FlastRunStatus;
    property lastRunTime:              TXSDecimal                       read FlastRunTime write FlastRunTime;
    property messages:                 ArrayOf_soapenc_string           read Fmessages write Fmessages;
    property modifiedReports:          ArrayOf_soapenc_int              read FmodifiedReports write FmodifiedReports;
    property preRunFilterString:       string                           read FpreRunFilterString write FpreRunFilterString;
    property private_:                 Boolean                          read Fprivate_ write Fprivate_;
    property relatedReports:           RelatedReports                   read FrelatedReports write FrelatedReports;
    property reportDescription:        string                           read FreportDescription write FreportDescription;
    property reportFilters:            ArrayOfReportFilter              read FreportFilters write FreportFilters;
    property reportId:                 Integer                          read FreportId write FreportId;
    property reportName:               string                           read FreportName write FreportName;
    property reportPageSelection:      ArrayOfReportPageSelection       read FreportPageSelection write FreportPageSelection;
    property reportStyle:              string                           read FreportStyle write FreportStyle;
    property reportTabSelection:       ArrayOfReportTabSelection        read FreportTabSelection write FreportTabSelection;
    property reportTemplate:           string                           read FreportTemplate write FreportTemplate;
    property reportType:               string                           read FreportType write FreportType;
    property reportUUID:               string                           read FreportUUID write FreportUUID;
    property reportUsage:              Integer                          read FreportUsage write FreportUsage;
    property results:                  ArrayOfReportRow                 read Fresults write Fresults;
    property schedule:                 ScheduleRecord                   read Fschedule write Fschedule;
    property selectedSortColumn:       Integer                          read FselectedSortColumn write FselectedSortColumn;
    property selectedSortOrder:        Integer                          read FselectedSortOrder write FselectedSortOrder;
    property seriesSelection:          ArrayOfSeriesSelection           read FseriesSelection write FseriesSelection;
    property sessionId:                string                           read FsessionId write FsessionId;
    property sortableColumns:          ArrayOfSortableTableColumn       read FsortableColumns write FsortableColumns;
    property statusCode:               string                           read FstatusCode write FstatusCode;
    property storyboardDescriptors:    ArrayOfStoryboardDescriptor      read FstoryboardDescriptors write FstoryboardDescriptors;
    property subCategory:              string                           read FsubCategory write FsubCategory;
    property tags:                     string                           read Ftags write Ftags;
    property timeAggregationSelection: ArrayOfTimeAggregationSelection  read FtimeAggregationSelection write FtimeAggregationSelection;
    property timeSliderSelection:      ArrayOfTimeSliderSelection       read FtimeSliderSelection write FtimeSliderSelection;
    property userCanSubscribeToReport: Boolean                          read FuserCanSubscribeToReport write FuserCanSubscribeToReport;
    property viewName:                 string                           read FviewName write FviewName;
  end;


  // ************************************************************************ //
  // Namespace : http://service.web.mi.hof.com
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : ReportServiceSoapBinding
  // service   : ReportServiceService
  // port      : ReportService
  // URL       : http://172.16.174.137:8080/services/ReportService
  // ************************************************************************ //
  ReportService = interface(IInvokable)
  ['{3475BD16-7830-A3F5-549E-89BF819A7C11}']
    function  remoteReportCall(const req: ReportServiceRequest): ReportServiceResponse; stdcall;
  end;

function GetReportService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ReportService;


implementation
  uses System.SysUtils;

function GetReportService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ReportService;
const
  defWSDL = 'http://172.16.174.137:8080/services/ReportService?wsdl';
  defURL  = 'http://172.16.174.137:8080/services/ReportService';
  defSvc  = 'ReportServiceService';
  defPrt  = 'ReportService';
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
    Result := (RIO as ReportService);
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


destructor RelatedReports.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FrelatedReports)-1 do
    System.SysUtils.FreeAndNil(FrelatedReports[I]);
  System.SetLength(FrelatedReports, 0);
  inherited Destroy;
end;

destructor ScheduleRecord.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FconditionList)-1 do
    System.SysUtils.FreeAndNil(FconditionList[I]);
  System.SetLength(FconditionList, 0);
  inherited Destroy;
end;

destructor GMap.Destroy;
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

destructor DrillAnywhereTargets.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftargets)-1 do
    System.SysUtils.FreeAndNil(Ftargets[I]);
  System.SetLength(Ftargets, 0);
  inherited Destroy;
end;

destructor RelatedReport.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FrelatedReportFields)-1 do
    System.SysUtils.FreeAndNil(FrelatedReportFields[I]);
  System.SetLength(FrelatedReportFields, 0);
  inherited Destroy;
end;

destructor GISShape.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fpoints)-1 do
    System.SysUtils.FreeAndNil(Fpoints[I]);
  System.SetLength(Fpoints, 0);
  inherited Destroy;
end;

destructor ReportServiceRequest.Destroy;
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

destructor DashboardElement.Destroy;
begin
  System.SysUtils.FreeAndNil(FstartDate);
  inherited Destroy;
end;

destructor DashboardDefinition.Destroy;
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

destructor GISMap.Destroy;
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

destructor ReportSchema.Destroy;
begin
  System.SysUtils.FreeAndNil(FmaximumValue);
  System.SysUtils.FreeAndNil(FminimumValue);
  inherited Destroy;
end;

destructor ReportServiceResponse.Destroy;
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
  for I := 0 to System.Length(Fresults)-1 do
    System.SysUtils.FreeAndNil(Fresults[I]);
  System.SetLength(Fresults, 0);
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
  System.SysUtils.FreeAndNil(FKPI);
  System.SysUtils.FreeAndNil(Fdashboard);
  System.SysUtils.FreeAndNil(FlastRunTime);
  System.SysUtils.FreeAndNil(FrelatedReports);
  System.SysUtils.FreeAndNil(Fschedule);
  inherited Destroy;
end;

initialization
  { ReportService }
  InvRegistry.RegisterInterface(TypeInfo(ReportService), 'http://service.web.mi.hof.com', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ReportService), '');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGISMap), 'http://service.web.mi.hof.com', 'ArrayOfGISMap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGISShape), 'http://service.web.mi.hof.com', 'ArrayOfGISShape');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGMap), 'http://service.web.mi.hof.com', 'ArrayOfGMap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRelatedReportField), 'http://service.web.mi.hof.com', 'ArrayOfRelatedReportField');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGISMapPoint), 'http://service.web.mi.hof.com', 'ArrayOfGISMapPoint');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDrillTarget), 'http://service.web.mi.hof.com', 'ArrayOfDrillTarget');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDashboardDefinition), 'http://service.web.mi.hof.com', 'ArrayOfDashboardDefinition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGISLayer), 'http://service.web.mi.hof.com', 'ArrayOfGISLayer');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDrillAnywhereTargets), 'http://service.web.mi.hof.com', 'ArrayOfDrillAnywhereTargets');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRelatedReport), 'http://service.web.mi.hof.com', 'ArrayOfRelatedReport');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfStoryboardDescriptor), 'http://service.web.mi.hof.com', 'ArrayOfStoryboardDescriptor');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSortableTableColumn), 'http://service.web.mi.hof.com', 'ArrayOfSortableTableColumn');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTimeAggregationSelection), 'http://service.web.mi.hof.com', 'ArrayOfTimeAggregationSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTimeSliderSelection), 'http://service.web.mi.hof.com', 'ArrayOfTimeSliderSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportPageSelection), 'http://service.web.mi.hof.com', 'ArrayOfReportPageSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportTabSelection), 'http://service.web.mi.hof.com', 'ArrayOfReportTabSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSeriesSelection), 'http://service.web.mi.hof.com', 'ArrayOfSeriesSelection');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportRow), 'http://service.web.mi.hof.com', 'ArrayOfReportRow');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGMapPolygon), 'http://service.web.mi.hof.com', 'ArrayOfGMapPolygon');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGMapPoint), 'http://service.web.mi.hof.com', 'ArrayOfGMapPoint');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCondition), 'http://service.web.mi.hof.com', 'ArrayOfCondition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOf_soapenc_double), 'http://service.web.mi.hof.com', 'ArrayOf_soapenc_double');
  RemClassRegistry.RegisterXSClass(RelatedReports, 'http://service.web.mi.hof.com', 'RelatedReports');
  RemClassRegistry.RegisterXSClass(GISMapPoint, 'http://service.web.mi.hof.com', 'GISMapPoint');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOf_soapenc_int), 'http://service.web.mi.hof.com', 'ArrayOf_soapenc_int');
  RemClassRegistry.RegisterXSClass(RelatedReportField, 'http://service.web.mi.hof.com', 'RelatedReportField');
  RemClassRegistry.RegisterXSClass(DashboardFilter, 'http://service.web.mi.hof.com', 'DashboardFilter');
  RemClassRegistry.RegisterXSClass(ReportComment, 'http://service.web.mi.hof.com', 'ReportComment');
  RemClassRegistry.RegisterXSClass(Condition, 'http://service.web.mi.hof.com', 'Condition');
  RemClassRegistry.RegisterXSClass(ScheduleRecord, 'http://service.web.mi.hof.com', 'ScheduleRecord');
  RemClassRegistry.RegisterXSClass(GMap, 'http://service.web.mi.hof.com', 'GMap');
  RemClassRegistry.RegisterXSClass(GMapPolygon, 'http://service.web.mi.hof.com', 'GMapPolygon');
  RemClassRegistry.RegisterXSClass(SortableTableColumn, 'http://service.web.mi.hof.com', 'SortableTableColumn');
  RemClassRegistry.RegisterXSClass(DrillAnywhereTargets, 'http://service.web.mi.hof.com', 'DrillAnywhereTargets');
  RemClassRegistry.RegisterXSClass(DrillTarget, 'http://service.web.mi.hof.com', 'DrillTarget');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DrillTarget), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(RelatedReport, 'http://service.web.mi.hof.com', 'RelatedReport');
  RemClassRegistry.RegisterXSClass(GISShape, 'http://service.web.mi.hof.com', 'GISShape');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOf_soapenc_string), 'http://service.web.mi.hof.com', 'ArrayOf_soapenc_string');
  RemClassRegistry.RegisterXSClass(ReportRow, 'http://service.web.mi.hof.com', 'ReportRow');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDashboardFilter), 'http://service.web.mi.hof.com', 'ArrayOfDashboardFilter');
  RemClassRegistry.RegisterXSClass(GMapPoint, 'http://service.web.mi.hof.com', 'GMapPoint');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportFilter), 'http://service.web.mi.hof.com', 'ArrayOfReportFilter');
  RemClassRegistry.RegisterXSClass(ReportPageSelection, 'http://service.web.mi.hof.com', 'ReportPageSelection');
  RemClassRegistry.RegisterXSClass(ReportTabSelection, 'http://service.web.mi.hof.com', 'ReportTabSelection');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReportTabSelection), 'index_', '[ExtName="index"]');
  RemClassRegistry.RegisterXSClass(StoryboardDescriptor, 'http://service.web.mi.hof.com', 'StoryboardDescriptor');
  RemClassRegistry.RegisterXSClass(TimeAggregationSelection, 'http://service.web.mi.hof.com', 'TimeAggregationSelection');
  RemClassRegistry.RegisterXSClass(GISLayer, 'http://service.web.mi.hof.com', 'GISLayer');
  RemClassRegistry.RegisterXSClass(ReportFilter, 'http://service.web.mi.hof.com', 'ReportFilter');
  RemClassRegistry.RegisterXSClass(ReportServiceRequest, 'http://service.web.mi.hof.com', 'ReportServiceRequest');
  RemClassRegistry.RegisterXSClass(DashboardElement, 'http://service.web.mi.hof.com', 'DashboardElement');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportComment), 'http://service.web.mi.hof.com', 'ArrayOfReportComment');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportSchema), 'http://service.web.mi.hof.com', 'ArrayOfReportSchema');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDashboardElement), 'http://service.web.mi.hof.com', 'ArrayOfDashboardElement');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDashboardFilterDefinition), 'http://service.web.mi.hof.com', 'ArrayOfDashboardFilterDefinition');
  RemClassRegistry.RegisterXSClass(DashboardFilterDefinition, 'http://service.web.mi.hof.com', 'DashboardFilterDefinition');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDashboardFieldDefinition), 'http://service.web.mi.hof.com', 'ArrayOfDashboardFieldDefinition');
  RemClassRegistry.RegisterXSClass(DashboardDefinition, 'http://service.web.mi.hof.com', 'DashboardDefinition');
  RemClassRegistry.RegisterXSClass(DashboardFieldDefinition, 'http://service.web.mi.hof.com', 'DashboardFieldDefinition');
  RemClassRegistry.RegisterXSClass(GISMap, 'http://service.web.mi.hof.com', 'GISMap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportBinaryObject), 'http://service.web.mi.hof.com', 'ArrayOfReportBinaryObject');
  RemClassRegistry.RegisterXSClass(SeriesSelection, 'http://service.web.mi.hof.com', 'SeriesSelection');
  RemClassRegistry.RegisterXSClass(TimeSliderSelection, 'http://service.web.mi.hof.com', 'TimeSliderSelection');
  RemClassRegistry.RegisterXSClass(ReportBinaryObject, 'http://service.web.mi.hof.com', 'ReportBinaryObject');
  RemClassRegistry.RegisterXSClass(KPI, 'http://service.web.mi.hof.com', 'KPI');
  RemClassRegistry.RegisterXSClass(BreadCrumb, 'http://service.web.mi.hof.com', 'BreadCrumb');
  RemClassRegistry.RegisterXSClass(ReportSchema, 'http://service.web.mi.hof.com', 'ReportSchema');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfReportChart), 'http://service.web.mi.hof.com', 'ArrayOfReportChart');
  RemClassRegistry.RegisterXSClass(ReportChart, 'http://service.web.mi.hof.com', 'ReportChart');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfBreadCrumb), 'http://service.web.mi.hof.com', 'ArrayOfBreadCrumb');
  RemClassRegistry.RegisterXSClass(ReportServiceResponse, 'http://service.web.mi.hof.com', 'ReportServiceResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReportServiceResponse), 'private_', '[ExtName="private"]');

end.