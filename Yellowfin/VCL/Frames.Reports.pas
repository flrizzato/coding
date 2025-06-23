unit Frames.Reports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, YF.SOAP.ReportService.Data,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.DBCGrids,
  Data.DB, Vcl.DBCtrls, Vcl.OleCtrls, SHDocVw, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList,
  Frames.Filter.Base, System.Generics.Collections, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.VirtualImage, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, Vcl.BaseImageCollection, Vcl.ImageCollection;

type
  TFrameReports = class(TFrame)
    pnlReportList: TPanel;
    pnlHeader: TPanel;
    cbListType: TComboBox;
    BindingsList1: TBindingsList;
    dsReportData: TDataSource;
    lvReportList: TListView;
    BindSourceDB1: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    plReports: TPanel;
    pcReports: TPageControl;
    tabBrowser: TTabSheet;
    tabSource: TTabSheet;
    tabSchema: TTabSheet;
    lblReportTitle: TLabel;
    lblReportDescription: TLabel;
    WebBrowser1: TWebBrowser;
    memoSource: TMemo;
    DBGrid1: TDBGrid;
    dsReportSchema: TDataSource;
    alReports: TActionList;
    actRunReport: TAction;
    actReloadFilters: TAction;
    pnlReportOptions: TPanel;
    rbHTML: TRadioButton;
    rbText: TRadioButton;
    rbPDF: TRadioButton;
    rbXLS: TRadioButton;
    Button1: TButton;
    imgFavourate: TImage;
    svFilters: TSplitView;
    tabStart: TTabSheet;
    Label1: TLabel;
    LinkControlToField1: TLinkControlToField;
    sbFilters: TScrollBox;
    Splitter1: TSplitter;
    viLogo: TVirtualImage;
    imgFilter: TVirtualImage;
    procedure cbListTypeChange(Sender: TObject);
    procedure lvReportListSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure actRunReportExecute(Sender: TObject);
    procedure actReloadFiltersExecute(Sender: TObject);
    procedure imgFilterClick(Sender: TObject);
    procedure imgFavourateClick(Sender: TObject);
  private
    { Private declarations }
    FCreatingForm : Boolean;
    FActiveFilter : TObjectList<TFrameFilterBase>;
    procedure ReloadReports(ALoadReportIndex : Integer);
  public
    { Public declarations }
    constructor Create(AOwner : TComponent; LoadReportIndex : Integer = 0); reintroduce;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

uses YF.SOAP.Constants, YF.JAX.ReportService, YF.JAX.ReportService.Helper,
  YF.SOAP.Defaults, System.NetEncoding, System.IOUtils, Frames.Filter.Combo,
  Frames.Filter.Date, Frames.Filter.Spinbox, Frames.Filter.Text,
  YF.VCL.Resources;

{ TFrame1 }

procedure TFrameReports.actReloadFiltersExecute(Sender: TObject);
var
  mt : TFDMemTable;
begin
  // Report Selection has Changed.... Update UI
  FActiveFilter.Clear;
  var FShowFilter := False;

  // Load in the Filters that are searchable.
  mt := TFDMemTable.Create(Self);
  try
    YF_ReportData.LoadSchema(YF_ReportData.mtReportsreportID.AsInteger);

    mt.CloneCursor(YF_ReportData.mtReportSchema);
    mt.First;
    while not mt.Eof do begin
      if mt.FieldByName('FilterID').AsInteger > 0 then begin
        // Found a Filter. Load it!
        var  FFilterFrame : TFrameFilterBase;
        if mt.FieldByName('FilterDisplayType').AsString = YRFDT_DROPDOWN then
          FFilterFrame := TFrameFilterCombo.Create(sbFilters,mt.FieldByName('FilterID').AsInteger)
        else
        if mt.FieldByName('FilterDisplayType').AsString = YRFDT_DATE then
          FFilterFrame := TFrameFilterDate.Create(sbFilters,mt.FieldByName('FilterID').AsInteger)
        else
        if mt.FieldByName('FilterDisplayType').AsString = YRFDT_NUMERIC_SLIDER then
          FFilterFrame := TFrameFilterSpinbox.Create(sbFilters,mt.FieldByName('FilterID').AsInteger)
        else // YRFDT_TEXT as Default
          FFilterFrame := TFrameFilterText.Create(sbFilters,mt.FieldByName('FilterID').AsInteger);

        FFilterFrame.Parent := sbFilters;
        FFilterFrame.Name := 'Filter'+mt.FieldByName('FilterID').AsString;
        FFilterFrame.Top := 100000;
        FFilterFrame.Align := TAlign.alTop;
        if FFilterFrame.Height < 63 then
          FFilterFrame.Height := 63;

        FActiveFilter.Add(FFilterFrame);
        FShowFilter := True;
      end;
      mt.Next;
    end;

    imgFilter.Enabled := FShowFilter;
    if imgFilter.Enabled then
      imgFilter.ImageName := 'Filter'
    else
      imgFilter.ImageName := 'Filter_Disabled'

  finally
    mt.Free;
  end;
end;

procedure TFrameReports.actRunReportExecute(Sender: TObject);
var
  LoadWebView    : Boolean;
  LoadSourceView : Boolean;
begin
  if FCreatingForm then
    Exit;

  // This is the Interfaced Object to call the WebService.
  var WS := GetLegacyReportService(False,YFDefaults.GetServiceURL(TYFDefaults.TYFService.Reports));

  var FReportType := '';
  if rbPDF.Checked then begin
    FReportType := YRR_PDF;
    LoadWebView    := True;
    LoadSourceView := False;
  end else if rbText.Checked then begin
    FReportType := YRR_CSV;
    LoadWebView    := False;
    LoadSourceView := True;
  end else if rbXLS.Checked then begin
    FReportType := YRR_XLS;
    LoadWebView    := True;
    LoadSourceView := False;
  end
  else begin
    FReportType := YRR_HTML;
    LoadWebView    := True;
    LoadSourceView := True;
  end;

  var Req := ReportServiceRequest.CreateWithDefaults(YFDefaults,FReportType);
  Req.ReportID := YF_ReportData.mtReportsreportID.AsInteger;

  if FActiveFilter.Count > 0 then begin
    var ReportFilters : Array_Of_ReportFilter := [];

    for var CurrFilter in FActiveFilter do begin
      if CurrFilter.FilterEnabled then begin
        SetLength(ReportFilters, Length(ReportFilters)+1);
        ReportFilters[Length(ReportFilters)-1] := CurrFilter.GetReportFilter;
      end;
    end;
    Req.filters := ReportFilters;
    svFilters.Visible := False;
  end;

  var Result := WS.remoteReportCall(Req);
  try
    if SameStr(Result.statusCode,YRS_SUCCESS) then begin

      lblReportTitle.Caption := Result.reportName;
      lblReportDescription.Caption := Result.reportDescription;

      var FS := TMemoryStream.Create;
      try
        var FBytes := TNetEncoding.Base64.DecodeStringToBytes(Result.binaryData);
        FS.WriteBuffer(FBytes, Length(FBytes));
        FS.Seek(0,0);

        var FN := TPath.Combine(TPath.GetCachePath,'report_temp.'+FReportType);
        FS.SaveToFile(FN);

        if LoadSourceView then
          memoSource.Lines.LoadFromFile(FN);
        if LoadWebView then
          WebBrowser1.Navigate('file://'+FN);

        tabBrowser.Visible := LoadWebView;
        tabSource.Visible := LoadSourceView;

        if tabBrowser.Visible then begin
          pcReports.ActivePage := tabBrowser
        end else
        if tabSource.Visible then
          pcReports.ActivePage := tabSource;

      finally
        FS.Free;
      end;
    end;
  finally
    Result.Free;
  end;
end;

procedure TFrameReports.cbListTypeChange(Sender: TObject);
begin
  ReloadReports(cbListType.ItemIndex);
end;

constructor TFrameReports.Create(AOwner: TComponent; LoadReportIndex : Integer);
begin
  FCreatingForm := True;
  try
    inherited Create(AOwner);
    // Defaults to load All Reports
    FActiveFilter := TObjectList<TFrameFilterBase>.Create;
    svFilters.Visible := False;

    // Work around for Client Width issue.
    WebBrowser1.Width := pcReports.Width;

    cbListType.ItemIndex := LoadReportIndex;
    ReloadReports(LoadReportIndex);

    // Set initial width based on HighDPI settings for scroll bar
    pnlReportList.Width := 250 + GetSystemMetrics(SM_CXVSCROLL);

    // Hack to get around Overlay of Edge Browser in 11.1
    pcReports.ActivePage := tabStart;
  finally
    FCreatingForm := False;
  end;
end;

destructor TFrameReports.Destroy;
begin
  FActiveFilter.Free;
  inherited;
end;

procedure TFrameReports.imgFavourateClick(Sender: TObject);
begin
  YF_ReportData.ToggleFavourate(YF_ReportData.mtReportsreportID.AsInteger);
end;

procedure TFrameReports.imgFilterClick(Sender: TObject);
begin
  svFilters.Visible := not svFilters.Visible;
end;

procedure TFrameReports.lvReportListSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if FCreatingForm then
    Exit;

  actReloadFilters.Execute;
  actRunReport.Execute;
end;

procedure TFrameReports.ReloadReports(ALoadReportIndex: Integer);
begin
  case ALoadReportIndex of
    //All User Reports
    0 : YF_ReportData.Reload(YRC_GETALLUSERREPORTS);
    //My Reports
    1 : YF_ReportData.Reload(YRC_GETUSERREPORTS);
    //Favourates
    2 : YF_ReportData.Reload(YRC_GETFAVOURITES);
    //Drafts
    3 : YF_ReportData.Reload(YRC_GETUSERDRAFTREPORTS);
  end;
end;

end.
