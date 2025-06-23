unit Frames.ReportsList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Controls.Presentation, YF.SOAP.ReportService.Data, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Grid.Style,
  Fmx.Bind.Grid, Data.Bind.Grid, FMX.ScrollBox, FMX.Grid, System.Actions,
  FMX.ActnList, FMX.WebBrowser, FMX.TabControl, FMX.Edit, FMX.Memo.Types,
  FMX.Memo, FMX.ListBox, FMX.Objects, FMX.Layouts, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Frames.FilterBase, System.Generics.Collections,
  FMX.MultiView;

type
  TFrameReportList = class(TFrame)
    lvReports: TListView;
    Splitter1: TSplitter;
    ToolBar1: TToolBar;
    btnRefresh: TButton;
    bsDBReports: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    Grid1: TGrid;
    bsDBSchema: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    tcReportList: TTabControl;
    tabSchema: TTabItem;
    tabReport: TTabItem;
    tbReport: TToolBar;
    btnRunReport: TButton;
    ActionListReportList: TActionList;
    actRunReport: TAction;
    lblFilePath: TLabel;
    rbHTML: TRadioButton;
    rbText: TRadioButton;
    rbPDF: TRadioButton;
    rbXLS: TRadioButton;
    ToolBar3: TToolBar;
    lblReportTitle: TLabel;
    lblReportDescription: TLabel;
    tcOutput: TTabControl;
    tabBrowser: TTabItem;
    tabSource: TTabItem;
    memoSource: TMemo;
    cbListType: TComboBox;
    imgFav: TImage;
    LinkControlToField1: TLinkControlToField;
    imgFilter: TImage;
    mvFilter: TMultiView;
    vsbFilter: TVertScrollBox;
    loMain: TLayout;
    cbReportType: TComboBox;
    loStaticOptions: TLayout;
    procedure btnRefreshClick(Sender: TObject);
    procedure lvReportsPullRefresh(Sender: TObject);
    procedure actRunReportUpdate(Sender: TObject);
    procedure actRunReportExecute(Sender: TObject);
    procedure lvReportsItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure cbListTypeChange(Sender: TObject);
    procedure imgFavClick(Sender: TObject);
    procedure cbReportTypeChange(Sender: TObject);
  private
    { Private declarations }
    FActiveFilter : TObjectList<TFrameFilterBase>;
    FWebBrowser1 : TWebBrowser;
  public
    { Public declarations }
    procedure Reload;
    constructor Create(AOwner : TComponent); reintroduce;
    destructor Destroy; override;
  end;

implementation

{$R *.fmx}

uses
  YF.JAX.ReportService,
  YF.JAX.ReportService.Helper,
  YF.SOAP.Defaults,
  YF.SOAP.Constants,
  YF.SOAP.UserMethods,
  System.NetEncoding,
  System.IOUtils, Frames.Filter.ComboBox, Frames.Filter.Date,
  Frames.Filter.SpinBox, Frames.Filter.Text;

procedure TFrameReportList.actRunReportExecute(Sender: TObject);
var
  LoadWebView    : Boolean;
  LoadSourceView : Boolean;

  procedure InitiateBrowser;
  begin
    if FWebBrowser1 = nil then begin
      FWebBrowser1 := TWebBrowser.Create(tabBrowser);
      FWebBrowser1.Parent := tabBrowser;
      FWebBrowser1.Align := TAlignLayout.Client;
      FWebBrowser1.Visible := True;
      FWebBrowser1.WindowsEngine := TWindowsEngine.EdgeIfAvailable;
    end;
  end;

begin
  // Static
  if cbReportType.ItemIndex = 0 then begin
    {$REGION 'Static WebService Based Call'}
    // This is the Interfaced Object to call the WebService.
    var WS := GetLegacyReportService(False,YFDefaults.GetServiceURL(TYFDefaults.TYFService.Reports));

    var FReportType := '';
    if rbPDF.IsChecked then begin
      FReportType := YRR_PDF;
      LoadWebView    := True;
      LoadSourceView := False;
    end else if rbText.IsChecked then begin
      FReportType := YRR_CSV;
      LoadWebView    := False;
      LoadSourceView := True;
    end else if rbXLS.IsChecked then begin
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
    end;

    var Result := WS.remoteReportCall(Req);
    try
      if SameStr(Result.statusCode,YRS_SUCCESS) then begin

        lblReportTitle.Visible := True;
        lblReportTitle.Text := Result.reportName;
        lblReportDescription.Visible := True;
        lblReportDescription.Text := Result.reportDescription;

        var FS := TMemoryStream.Create;
        try
          var FBytes := TNetEncoding.Base64.DecodeStringToBytes(Result.binaryData);
          FS.WriteBuffer(FBytes, Length(FBytes));
          FS.Seek(0,0);

          // TPath.Combine(TPath.GetDirectoryName(ParamStr(0)),'report_temp.'+FReportType);

          var FN := TPath.Combine(TPath.GetCachePath,'report_temp.'+FReportType);
          FS.SaveToFile(FN);
          lblFilePath.Text := FN;

          if not tcReportList.Visible then
            tcReportList.Visible := True;

          if LoadSourceView then
            memoSource.Lines.LoadFromFile(FN);
          if LoadWebView then begin
            InitiateBrowser;
            FWebBrowser1.Width := tabBrowser.Width - (tabBrowser.Margins.Left + tabBrowser.Margins.Right);

            FWebBrowser1.Navigate('file://'+FN);
          end;

          tabBrowser.Visible := LoadWebView;
          tabSource.Visible := LoadSourceView;

          if (tcOutput.ActiveTab = nil) or (tcOutput.ActiveTab.Visible = False) then begin
            if tabBrowser.Visible then
              tcOutput.ActiveTab := tabBrowser
            else
            if tabSource.Visible then
              tcOutput.ActiveTab := tabSource;
          end;

        finally
          FS.Free;
        end;
      end;
    finally
      Result.Free;
    end;
  {$ENDREGION}
  end
  else
  begin
    {$REGION 'Interactive URL'}
    // Get the base URL for the session
    // Add in the paramaters if selected for the report
    InitiateBrowser;
    if not tcReportList.Visible then
      begin
        tcReportList.Visible := True;
        tcOutput.ActiveTab := tabBrowser;
      end;
    var aURL := TYFUserMethods.GenerateYellowfinSingleSignOnURL('VIEWREPORT')+Format('&reportid=%d',[YF_ReportData.mtReportsreportID.AsInteger]);

    // Add in filters (optional)
    for var CurrFilter in FActiveFilter do begin
      if CurrFilter.FilterEnabled then begin
        var FilterValues := CurrFilter.FilterString;
        // what happens if the filter string has a space
        aURL := aURL + Format('&filter%d=%s',[CurrFilter.FilterID,FilterValues]);
      end;
    end;
    lblReportDescription.Visible := False;
    lblReportTitle.Visible := False;
    FWebBrowser1.Navigate(aURL);
    {$ENDREGION}
  end;
end;

procedure TFrameReportList.actRunReportUpdate(Sender: TObject);
begin
  actRunReport.Enabled := YF_ReportData.mtReports.Active and
                          (YF_ReportData.mtReportsreportID.AsInteger > 0);
  loStaticOptions.Visible := cbReportType.ItemIndex = 0;
end;

procedure TFrameReportList.btnRefreshClick(Sender: TObject);
begin
  Reload;
end;

procedure TFrameReportList.cbListTypeChange(Sender: TObject);
begin
  case cbListType.ItemIndex of
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

procedure TFrameReportList.cbReportTypeChange(Sender: TObject);
begin
  actRunReport.Execute;
end;

constructor TFrameReportList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FActiveFilter := TObjectList<TFrameFilterBase>.Create;
  tcReportList.ActiveTab := tabReport;
  tcOutput.ActiveTab := tabBrowser;
  tcReportList.Visible := False;
end;

destructor TFrameReportList.Destroy;
begin
  FActiveFilter.Clear;
  FActiveFilter.Free;
  inherited;
end;

procedure TFrameReportList.imgFavClick(Sender: TObject);
begin
  YF_ReportData.ToggleFavourate(YF_ReportData.mtReportsreportID.AsInteger);
end;

procedure TFrameReportList.lvReportsItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  mt : TFDMemTable;
begin
  // Report Selection has Changed.... Update UI
  FActiveFilter.Clear;
  var FShowFilter := False;

  // Load in the Filters that are searchable.
  mt := TFDMemTable.Create(Self);
  try
    mt.CloneCursor(YF_ReportData.mtReportSchema);
    mt.First;
    while not mt.Eof do begin
      if mt.FieldByName('FilterID').AsInteger > 0 then begin
        // Found a Filter. Load it!
        var  FFilterFrame : TFrameFilterBase;
        if mt.FieldByName('FilterDisplayType').AsString = YRFDT_DROPDOWN then
          FFilterFrame := TFrameFilterComboBox.Create(vsbFilter,mt.FieldByName('FilterID').AsInteger)
        else
        if mt.FieldByName('FilterDisplayType').AsString = YRFDT_DATE then
          FFilterFrame := TFrameFilterDate.Create(vsbFilter,mt.FieldByName('FilterID').AsInteger)
        else
        if mt.FieldByName('FilterDisplayType').AsString = YRFDT_NUMERIC_SLIDER then
          FFilterFrame := TFrameFilterNumber.Create(vsbFilter,mt.FieldByName('FilterID').AsInteger)
        else // YRFDT_TEXT as Default
          FFilterFrame := TFrameFilterText.Create(vsbFilter,mt.FieldByName('FilterID').AsInteger);

        FFilterFrame.Name := 'Filter'+mt.FieldByName('FilterID').AsString;
        FFilterFrame.Position.Y := 100000;
        FFilterFrame.Align := TAlignLayout.Top;
        FActiveFilter.Add(FFilterFrame);

        vsbFilter.AddObject(FFilterFrame);
        FShowFilter := True;
      end;
      mt.Next;
    end;
    imgFilter.Enabled := FShowFilter;
  finally
    mt.Free;
  end;

  // Update the Selected Report
  actRunReport.Execute;
end;

procedure TFrameReportList.lvReportsPullRefresh(Sender: TObject);
begin
  Reload;
end;

procedure TFrameReportList.Reload;
begin
  YF_ReportData.Reload;
end;

end.
