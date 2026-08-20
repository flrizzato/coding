unit uEdgeForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX, System.IniFiles,
  Vcl.Edge, uLib;

type
  TEdgeForm = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fIniFile: TIniFile;
    procedure OnEdgeBrowserPermissionRequested(Sender: TCustomEdgeBrowser;
      Args: TPermissionRequestedEventArgs);
    procedure OnEdgeBrowserCreateWebViewCompleted(Sender: TCustomEdgeBrowser;
      AResult: HRESULT);
    procedure OnEdgeBrowserCapturePreviewCompleted(Sender: TCustomEdgeBrowser;
      AResult: HRESULT);
    procedure OnEdgeBrowserNewWindowRequested(Sender: TCustomEdgeBrowser;
      Args: TNewWindowRequestedEventArgs);
    procedure OnEdgeBrowserDownloadStarting(Sender: TCustomEdgeBrowser;
      Args: TDownloadStartingEventArgs);
  public
    { Public declarations }
    EdgeBrowser: TCustomEdgeBrowser;
    constructor CreateWithCaption(Owner: TComponent; IniFile: TIniFile;
      const sAcctName: string);
    procedure EdgeExecuteScript(const sNewNumber: string);
  end;

implementation

{$R *.dfm}

uses System.IOUtils, WinAPI.ShellAPI;

constructor TEdgeForm.CreateWithCaption(Owner: TComponent; IniFile: TIniFile;
  const sAcctName: string);
begin
  inherited Create(Owner);
  Caption := sAcctName;
  fIniFile := IniFile;

  EdgeBrowser := TCustomEdgeBrowser.Create(Self);
  EdgeBrowser.Parent := Self;
  EdgeBrowser.Align := TAlign.alClient;
  EdgeBrowser.Name := 'edge' + sAcctName;

  EdgeBrowser.OnCapturePreviewCompleted := OnEdgeBrowserCapturePreviewCompleted;
  EdgeBrowser.OnCreateWebViewCompleted := OnEdgeBrowserCreateWebViewCompleted;
  EdgeBrowser.OnPermissionRequested := OnEdgeBrowserPermissionRequested;
  EdgeBrowser.OnNewWindowRequested := OnEdgeBrowserNewWindowRequested;
  EdgeBrowser.OnDownloadStarting := OnEdgeBrowserDownloadStarting;

  var fDataFolder := ExtractFilePath(Application.ExeName) + 'Accounts' +
  PathDelim + UpperCase(sAcctName);
  ForceDirectories(fDataFolder);
  EdgeBrowser.UserDataFolder := fDataFolder;

  EdgeBrowser.CreateWebView;
end;

procedure TEdgeForm.OnEdgeBrowserCapturePreviewCompleted(
  Sender: TCustomEdgeBrowser; AResult: HRESULT);
begin
  var aFileName := IncludeTrailingPathDelimiter(EdgeBrowser.UserDataFolder) +
  'capturepreview.png';
  ShellExecute(0, 'EDIT', PChar(aFileName), '', '', SW_SHOWNORMAL);
end;

procedure TEdgeForm.OnEdgeBrowserCreateWebViewCompleted(
  Sender: TCustomEdgeBrowser; AResult: HRESULT);
begin
  Sender.DefaultContextMenusEnabled := True;
  Sender.DefaultScriptDialogsEnabled := True;
  Sender.StatusBarEnabled := False;
  Sender.WebMessageEnabled := True;
  Sender.ZoomControlEnabled := False;
  Sender.BuiltInErrorPageEnabled := False;
  Sender.DevToolsEnabled := False;
  Sender.Navigate('https://web.whatsapp.com');
end;

procedure TEdgeForm.OnEdgeBrowserNewWindowRequested(Sender: TCustomEdgeBrowser;
  Args: TNewWindowRequestedEventArgs);
var
  Uri: PWideChar;
begin
  if Succeeded(Args.ArgsInterface.Get_uri(Uri)) then
    begin
      ShellExecute(0, 'open', Uri, nil, nil, SW_SHOWNORMAL);
      Args.ArgsInterface.Set_Handled(1);
      CoTaskMemFree(Uri);
    end;
end;

procedure TEdgeForm.OnEdgeBrowserDownloadStarting(Sender: TCustomEdgeBrowser;
  Args: TDownloadStartingEventArgs);
var
  ResultFilePath: PWideChar;
  SaveDialog: TSaveDialog;
  LFileName: string;
begin
  Args.ArgsInterface.Set_Handled(1);

  if Succeeded(Args.ArgsInterface.Get_ResultFilePath(ResultFilePath)) then
    begin
      LFileName := ResultFilePath;
      CoTaskMemFree(ResultFilePath);

      SaveDialog := TSaveDialog.Create(nil);
      try
        SaveDialog.FileName := ExtractFileName(LFileName);
        if SaveDialog.Execute then
          begin
            Args.ArgsInterface.Set_ResultFilePath(PWideChar(SaveDialog.FileName));
          end
        else
          begin
            Args.ArgsInterface.Set_Cancel(1);
          end;
      finally
        SaveDialog.Free;
      end;
    end;
end;

procedure TEdgeForm.OnEdgeBrowserPermissionRequested(Sender: TCustomEdgeBrowser;
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
  // Go to a web page that requests permissions, e.g.:
  // https://whatwebcando.today/permissions.html

  var Uri: PChar;
  var PermissionType: COREWEBVIEW2_PERMISSION_KIND;
  var UserInitiated: Integer;

  if Succeeded(Args.ArgsInterface.Get_uri(Uri)) and
  Succeeded(Args.ArgsInterface.Get_PermissionKind(PermissionType)) and
  Succeeded(Args.ArgsInterface.Get_IsUserInitiated(UserInitiated)) then
    begin
      var Msg := Format
      ('Do you want to grant permission for %s to the website at %s?'#10#10,
        [NameOfPermissionType(PermissionType), Uri]);

      if LongBool(UserInitiated) then
        Msg := Msg + 'This request came from a user gesture.'
      else
        Msg := Msg + 'This request did not come from a user gesture.';

      var Response := Application.MessageBox(PChar(Msg), 'Permission Request',
        MB_YESNO or MB_ICONWARNING);

      var State: COREWEBVIEW2_PERMISSION_STATE;

      case Response of
        IDYES: State := COREWEBVIEW2_PERMISSION_STATE_ALLOW;
        else
          State := COREWEBVIEW2_PERMISSION_STATE_DENY;
      end;

      Args.ArgsInterface.Set_State(State);
      CoTaskMemFree(Uri);
    end;
end;

procedure TEdgeForm.EdgeExecuteScript(const sNewNumber: string);
begin
  var script := 'window.open("https://web.whatsapp.com/send?phone=' + sNewNumber
  + '&text&app_absent=0","_self")';
  EdgeBrowser.ExecuteScript(script);
end;

procedure TEdgeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caMinimize;
end;

procedure TEdgeForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  WindowSaveSettings(fIniFile, Self.Handle, Self.Caption);
end;

procedure TEdgeForm.FormShow(Sender: TObject);
begin
  WindowLoadSettings(fIniFile, Self.Handle, Self.Caption);
end;

end.


