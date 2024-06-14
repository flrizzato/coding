unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.TitleBarCtrls,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.ComCtrls, Vcl.ToolWin, System.Actions, Vcl.ActnList,
  IniFiles, WebView2, Winapi.ActiveX, Vcl.Edge, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.Menus;

type
  TMainForm = class(TForm)
    ImageCollection: TImageCollection;
    VirtualImageList: TVirtualImageList;
    PageControl: TPageControl;
    ActionManager: TActionManager;
    ActionToolBar: TActionToolBar;
    actNewAcc: TAction;
    actRemAcc: TAction;
    actNewMsg: TAction;
    actPrint: TAction;
    procedure actionNewAccountExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionRemAccountExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actionNewMessageExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }

    fIniFile: TIniFile;
    stlAccounts: TStringList;

    {
      Credits for the Save/Load Seetings feature:
      https://www.davidghoyle.co.uk/WordPress/?p=2100
    }
    function MonitorProfile: string;
    procedure AppSaveSettings;
    procedure AppLoadSettings;

    function IsValidAcctName(sAcctName: string): Boolean;
    function CreateNewTab(sAcctName: string): TTabSheet;
    function CreateNewEdge(const fTabSheet: TTabSheet; sAcctName: string)
      : TCustomEdgeBrowser;
    procedure RemoveAccount(sAcctName: string);
    function FindTheEdge(const fTabSheet: TTabSheet): TCustomEdgeBrowser;

    procedure OnEdgeCreateWebViewCompleted(Sender: TCustomEdgeBrowser;
      AResult: HRESULT);
    procedure OnEdgeBrowserPermissionRequested(Sender: TCustomEdgeBrowser;
      Args: TPermissionRequestedEventArgs);
    procedure OnEdgeCapturePreviewCompleted(Sender: TCustomEdgeBrowser;
      AResult: HRESULT);
  public
    { Public declarations }
  end;

var MainForm: TMainForm;

implementation

{$R *.dfm}

uses System.IOUtils, System.RegularExpressions, System.UITypes,
  ShellAPI;

function TMainForm.MonitorProfile: string;
const strMask = '%d=%dDPI(%s,%d,%d,%d,%d)';
var iMonitor: Integer; M: TMonitor;
begin
  Result := '';
  for iMonitor := 0 To Screen.MonitorCount - 1 Do
  begin
    If Result <> '' Then
      Result := Result + ':';
    M := Screen.Monitors[iMonitor];
    Result := Result + Format(strMask, [M.MonitorNum, M.PixelsPerInch,
      BoolToStr(M.Primary, True), M.Left, M.Top, M.Width, M.Height]);
  end;
end;

procedure TMainForm.AppSaveSettings;
Var strMonitorProfile: String; recWndPlmt: TWindowPlacement;
Begin
  strMonitorProfile := MonitorProfile;
  recWndPlmt.Length := SizeOf(TWindowPlacement);
  GetWindowPlacement(Handle, @recWndPlmt);
  fIniFile.WriteInteger(strMonitorProfile, 'Top',
    recWndPlmt.rcNormalPosition.Top);
  fIniFile.WriteInteger(strMonitorProfile, 'Left',
    recWndPlmt.rcNormalPosition.Left);
  fIniFile.WriteInteger(strMonitorProfile, 'Height',
    recWndPlmt.rcNormalPosition.Height);
  fIniFile.WriteInteger(strMonitorProfile, 'Width',
    recWndPlmt.rcNormalPosition.Width);
  fIniFile.WriteInteger(strMonitorProfile, 'WindowState', recWndPlmt.showCmd);
  fIniFile.UpdateFile;
end;

procedure TMainForm.AppLoadSettings;
var strMonitorProfile: String; recWndPlmt: TWindowPlacement;
begin
  strMonitorProfile := MonitorProfile;
  recWndPlmt.Length := SizeOf(TWindowPlacement);
  recWndPlmt.rcNormalPosition.Top := fIniFile.ReadInteger(strMonitorProfile,
    'Top', 100);
  recWndPlmt.rcNormalPosition.Left := fIniFile.ReadInteger(strMonitorProfile,
    'Left', 100);
  recWndPlmt.rcNormalPosition.Height := fIniFile.ReadInteger(strMonitorProfile,
    'Height', 480);
  recWndPlmt.rcNormalPosition.Width := fIniFile.ReadInteger(strMonitorProfile,
    'Width', 640);
  recWndPlmt.showCmd := fIniFile.ReadInteger(strMonitorProfile, 'WindowState',
    SW_NORMAL);
  SetWindowPlacement(Handle, @recWndPlmt);
end;

procedure TMainForm.actionNewAccountExecute(Sender: TObject);
begin
  var sAcctName: string := '';
  if InputQuery('Create a New Account', 'Account Unique Name', sAcctName) then
  begin
    sAcctName := sAcctName.Trim;
    if IsValidAcctName(sAcctName) then
    begin
      CreateNewEdge(CreateNewTab(sAcctName), sAcctName);
      PageControl.ActivePageIndex := PageControl.PageCount - 1;
      fIniFile.WriteString('Accounts', sAcctName, UpperCase(sAcctName));
      stlAccounts.AddPair(sAcctName, UpperCase(sAcctName));
    end
  end;
end;

procedure TMainForm.actionNewMessageExecute(Sender: TObject);
begin
  if FindTheEdge(PageControl.ActivePage) <> nil then
  begin
    var sNewNumber: string := '';
    if InputQuery('Start New Conversation', 'Phone Number', sNewNumber) then
    begin
      if not TRegEx.IsMatch(sNewNumber, '^[0-9]*$') then
        raise Exception.Create
          ('The account name must contain only letters and numbers!');

      var
      script := 'window.open("https://web.whatsapp.com/send?phone=' + sNewNumber
        + '&text&app_absent=0","_self")';
      FindTheEdge(PageControl.ActivePage).ExecuteScript(script);
    end;
  end;
end;

procedure TMainForm.actionRemAccountExecute(Sender: TObject);
begin
  if PageControl.PageCount > 0 then
    if MessageDlg('This account [' + PageControl.ActivePage.Caption +
      '] will be removed. Confirm?', TMsgDlgType.mtConfirmation,
      [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = IDYES then
      RemoveAccount(Trim(PageControl.ActivePage.Caption));
end;

procedure TMainForm.actPrintExecute(Sender: TObject);
begin
  var
  aFileName := IncludeTrailingPathDelimiter(FindTheEdge(PageControl.ActivePage)
    .UserDataFolder) + 'capturepreview.png';
  FindTheEdge(PageControl.ActivePage).CapturePreview(aFileName);
end;

function TMainForm.FindTheEdge(const fTabSheet: TTabSheet): TCustomEdgeBrowser;
var i: Integer;
begin
  Result := nil;
  for i := 0 to fTabSheet.ControlCount - 1 do
    if fTabSheet.Controls[i] is TCustomEdgeBrowser then
    begin
      Result := TCustomEdgeBrowser(fTabSheet.Controls[i]);
      Exit;
    end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  AppSaveSettings;
  CanClose := True;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  stlAccounts := TStringList.Create;
  fIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'QuickWhats.ini');
  fIniFile.ReadSectionValues('Accounts', stlAccounts);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  AppLoadSettings;
  if stlAccounts.Count > 0 then
  begin
    for var i: Integer := 0 to stlAccounts.Count - 1 do
      CreateNewEdge(CreateNewTab(stlAccounts.Names[i]), stlAccounts.Names[i]);
    PageControl.ActivePageIndex := 0;
  end;
end;

procedure TMainForm.OnEdgeCapturePreviewCompleted(Sender: TCustomEdgeBrowser;
  AResult: HRESULT);
begin
  var
  aFileName := IncludeTrailingPathDelimiter(FindTheEdge(PageControl.ActivePage)
    .UserDataFolder) + 'capturepreview.png';
  ShellExecute(0, 'EDIT', PChar(aFileName), '', '', SW_SHOWNORMAL);
end;

procedure TMainForm.OnEdgeCreateWebViewCompleted(Sender: TCustomEdgeBrowser;
  AResult: HRESULT);
begin
  Sender.DefaultContextMenusEnabled := True;
  Sender.DefaultScriptDialogsEnabled := True;
  Sender.StatusBarEnabled := True;
  Sender.WebMessageEnabled := True;
  Sender.ZoomControlEnabled := True;
  Sender.Navigate('https://web.whatsapp.com');
end;

procedure TMainForm.OnEdgeBrowserPermissionRequested(Sender: TCustomEdgeBrowser;
  Args: TPermissionRequestedEventArgs);

  function NameOfPermissionType(PermissionType
    : COREWEBVIEW2_PERMISSION_KIND): string;
  begin
    case PermissionType of
      COREWEBVIEW2_PERMISSION_KIND_MICROPHONE:
        Result := 'Microphone';
      COREWEBVIEW2_PERMISSION_KIND_CAMERA:
        Result := 'Camera';
      COREWEBVIEW2_PERMISSION_KIND_GEOLOCATION:
        Result := 'Geolocation';
      COREWEBVIEW2_PERMISSION_KIND_NOTIFICATIONS:
        Result := 'Notifications';
      COREWEBVIEW2_PERMISSION_KIND_OTHER_SENSORS:
        Result := 'Generic Sensors';
      COREWEBVIEW2_PERMISSION_KIND_CLIPBOARD_READ:
        Result := 'Clipboard Read';
    else
      Result := 'Unknown resources';
    end;
  end;

begin
{$IFDEF DEBUG}
  OutputDebugString('EdgeBrowser OnPermissionRequested');
{$ENDIF}

  // Go to a web page that requests permissions, e.g.:
  // https://whatwebcando.today/permissions.html

  // NOTE: camera & notification permission requests do not come through here
  // Without the event handler in place, the requests do not appear on-screen in Edge.
  // This _looks_ like a bug in the (pre-release) version of WebView2 used to set up this demo.

  var Uri: PChar;
  var PermissionType: COREWEBVIEW2_PERMISSION_KIND;
  var UserInitiated: Integer;
  if Succeeded(Args.ArgsInterface.Get_uri(Uri)) and
    Succeeded(Args.ArgsInterface.Get_PermissionKind(PermissionType)) and
    Succeeded(Args.ArgsInterface.Get_IsUserInitiated(UserInitiated)) then
  begin
    var
    Msg := Format
      ('Do you want to grant permission for %s to the website at %s?'#10#10,
      [NameOfPermissionType(PermissionType), Uri]);
    if LongBool(UserInitiated) then
      Msg := Msg + 'This request came from a user gesture.'
    else
      Msg := Msg + 'This request did not come from a user gesture.';
    var
    Response := Application.MessageBox(PChar(Msg), 'Permission Request',
      MB_YESNO or MB_ICONWARNING);
    var State: COREWEBVIEW2_PERMISSION_STATE;
      case Response of IDYES: State := COREWEBVIEW2_PERMISSION_STATE_ALLOW;
  else
    State := COREWEBVIEW2_PERMISSION_STATE_DENY;
end;
Args.ArgsInterface.Set_State(State);
CoTaskMemFree(Uri);
end;
end;

function TMainForm.IsValidAcctName(sAcctName: string): Boolean;
begin
  if sAcctName.IsEmpty or (sAcctName.Length < 4) then
    raise Exception.Create
      ('The account name must contain three or more characters!');

  if not TRegEx.IsMatch(sAcctName, '([A-Za-z0-9\-\_]+)') then
    raise Exception.Create
      ('The account name must contain only letters and numbers!');

  if stlAccounts.IndexOf(sAcctName + '=' + UpperCase(sAcctName)) > -1 then
    raise Exception.Create('The account name must be unique!');

  Result := True;
end;

function TMainForm.CreateNewTab(sAcctName: string): TTabSheet;
begin
  Result := TTabSheet.Create(PageControl);
  Result.Name := 'tab' + sAcctName;
  Result.PageControl := PageControl;
  Result.Caption := '  ' + sAcctName + ' ';
end;

function TMainForm.CreateNewEdge(const fTabSheet: TTabSheet; sAcctName: string)
  : TCustomEdgeBrowser;
begin
  var
  fDataFolder := ExtractFilePath(Application.ExeName) + 'Accounts' + PathDelim +
    UpperCase(sAcctName);
  ForceDirectories(fDataFolder);

  Result := TEdgeBrowser.Create(fTabSheet);
  Result.Name := 'edge' + sAcctName;
  Result.OnCreateWebViewCompleted := OnEdgeCreateWebViewCompleted;
  Result.OnPermissionRequested := OnEdgeBrowserPermissionRequested;
  Result.OnCapturePreviewCompleted := OnEdgeCapturePreviewCompleted;
  Result.UserDataFolder := fDataFolder;
  Result.Align := alClient;
  Result.Parent := fTabSheet;
  Result.CreateWebView;
end;

procedure TMainForm.RemoveAccount(sAcctName: string);
begin
  FindTheEdge(PageControl.ActivePage).CloseWebView;
  PageControl.ActivePage.Free;

  fIniFile.DeleteKey('Accounts', sAcctName);
  stlAccounts.Delete(stlAccounts.IndexOf(sAcctName + '=' +
    UpperCase(sAcctName)));

  var
  fDataFolder := ExtractFilePath(Application.ExeName) + 'Accounts' + PathDelim +
    UpperCase(sAcctName);
  if DirectoryExists(fDataFolder) then
  begin
    Sleep(1000);
    TDirectory.Delete(fDataFolder, True);
  end;

  PageControl.ActivePageIndex := 0;
end;

end.
