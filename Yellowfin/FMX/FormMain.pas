unit FormMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Layouts, FMX.Objects,
  FMX.MultiView, FMX.TabControl, FMX.Effects, Frames.Settings,
  Frames.ReportsList, FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FireDAC.Stan.Intf,
  FireDAC.Comp.UI, Frames.YellowfinBrowser;

type
  TMainForm = class(TForm)
    tcMain: TTabControl;
    tabSettings: TTabItem;
    tabReports: TTabItem;
    MultiView1: TMultiView;
    imgYellowFinLogo: TImage;
    background: TRectangle;
    BackgroundBrush: TBrushObject;
    ToolBar1: TToolBar;
    loMain: TLayout;
    btnMenu: TButton;
    btnSettings: TButton;
    btnReports: TButton;
    btnUsers: TButton;
    tabUsers: TTabItem;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tabSingleSignon: TTabItem;
    btnSingleSignon: TButton;
    StyleBook1: TStyleBook;
    procedure btnSettingsClick(Sender: TObject);
    procedure btnReportsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tcMainChange(Sender: TObject);
    procedure btnUsersClick(Sender: TObject);
    procedure btnSingleSignonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}
{$R *.Macintosh.fmx MACOS}

uses YF.SOAP.ReportService.Data, TabHelper, Frames.Users, YF.Resources,
  YF.FMX.Resources;

procedure TMainForm.btnReportsClick(Sender: TObject);
begin
  tcMain.ActiveTab := tabReports;
  // Reports uses the core data. If its already loaded, use the cache.

  if YF_ReportData.mtReports.RecordCount = 0 then
    YF_ReportData.Reload;
end;

procedure TMainForm.btnSettingsClick(Sender: TObject);
begin
  tcMain.ActiveTab := tabSettings;
end;

procedure TMainForm.btnSingleSignonClick(Sender: TObject);
begin
  tcMain.ActiveTab := tabSingleSignon;
end;

procedure TMainForm.btnUsersClick(Sender: TObject);
begin
  tcMain.ActiveTab := tabUsers;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  var Favs : IFavourateImages := TYF_FMXResources.Create(Self);
  YF_ReportData := TYF_ReportData.Create(Self, Favs);

  tcMain.ActiveTab := tabSettings;
  tcMain.TabPosition := TTabPosition.None;
  tcMainChange(nil); // Ensure Default Tab is loaded.

  if TOSVersion.Platform in [TOSVersion.TPlatform.pfAndroid, TOSVersion.TPlatform.pfiOS] then
    MultiView1.Mode := TMultiViewMode.Drawer;
end;

procedure TMainForm.tcMainChange(Sender: TObject);
  procedure ParentToTab(aFrame : TFrame; aParent : TTabItem);
  begin
    aFrame.Parent := aParent;
    aFrame.Align := TAlignLayout.Client;
    aFrame.Visible := True;
  end;
begin
  // Sections loaded on demand - this keeps startup lean and reduces API calls.
  if (tcMain.ActiveTab = tabReports) then begin
    if not tabReports.Contains(TFrameReportList) then
      ParentToTab(TFrameReportList.Create(tcMain.ActiveTab),tabReports);
  end
  else if tcMain.ActiveTab = tabSettings then begin
    if not tabSettings.Contains(TFrameSettings) then
      ParentToTab(TFrameSettings.Create(tcMain.ActiveTab),tabSettings);
  end
  else if tcMain.ActiveTab = tabUsers then begin
    if not tabUsers.Contains(TFrameUsers) then
      ParentToTab(TFrameUsers.Create(tcMain.ActiveTab),tabUsers);
  end
  else if tcMain.ActiveTab = tabSingleSignon then begin
    if not tabSingleSignon.Contains(TFrameYellowfinBrowser) then
      ParentToTab(TFrameYellowfinBrowser.Create(tcMain.ActiveTab),tabSingleSignon);
  end;
end;

end.
