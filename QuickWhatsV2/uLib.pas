unit uLib;

interface

uses
  System.IniFiles, System.Math, System.SysUtils, System.Types,
  WinAPI.Windows, VCL.Forms;

function GetMonitorProfile: string;
procedure WindowSaveSettings(fIniFile: TIniFile; Handle: THandle;
  const WindowName: string);
procedure WindowLoadSettings(fIniFile: TIniFile; Handle: THandle;
  const WindowName: string);

implementation

function GetMonitorProfile: string;
const
  strMask = '%d=%dDPI(%s,%d,%d,%d,%d)';
var
  iMonitor: Integer;
  M: TMonitor;
  Profile: TStringBuilder;
begin
  Profile := TStringBuilder.Create;
  try
    for iMonitor := 0 to Screen.MonitorCount - 1 do
    begin
      if Profile.Length > 0 then
        Profile.Append(':');
      M := Screen.Monitors[iMonitor];
      Profile.Append(Format(strMask, [M.MonitorNum, M.PixelsPerInch,
        BoolToStr(M.Primary, True), M.Left, M.Top, M.Width, M.Height]));
    end;
    Result := Profile.ToString;
  finally
    Profile.Free;
  end;
end;

function GetWindowSection(const WindowName: string): string;
begin
  Result := GetMonitorProfile + '|' + WindowName;
end;

function IsVisibleOnMonitor(const WindowRect: TRect): Boolean;
var
  iMonitor: Integer;
  Intersection: TRect;
begin
  Result := False;
  for iMonitor := 0 to Screen.MonitorCount - 1 do
    if IntersectRect(Intersection, WindowRect,
      Screen.Monitors[iMonitor].WorkareaRect) then
      Exit(True);
end;

function GetPrimaryWorkArea: TRect;
var
  iMonitor: Integer;
begin
  Result := Rect(0, 0, GetSystemMetrics(SM_CXSCREEN),
    GetSystemMetrics(SM_CYSCREEN));
  for iMonitor := 0 to Screen.MonitorCount - 1 do
    if Screen.Monitors[iMonitor].Primary then
      Exit(Screen.Monitors[iMonitor].WorkareaRect);
end;

procedure NormalizeWindowPlacement(var WindowPlacement: TWindowPlacement);
var
  WindowRect: TRect;
  WorkArea: TRect;
  WindowWidth: Integer;
  WindowHeight: Integer;
begin
  WindowRect := WindowPlacement.rcNormalPosition;
  WindowWidth := WindowRect.Right - WindowRect.Left;
  WindowHeight := WindowRect.Bottom - WindowRect.Top;
  WorkArea := GetPrimaryWorkArea;

  if (WindowWidth <= 0) or (WindowHeight <= 0) then
  begin
    WindowWidth := 640;
    WindowHeight := 480;
  end;

  WindowWidth := Min(WindowWidth, WorkArea.Right - WorkArea.Left);
  WindowHeight := Min(WindowHeight, WorkArea.Bottom - WorkArea.Top);

  if not IsVisibleOnMonitor(WindowRect) then
  begin
    WindowRect.Left := WorkArea.Left;
    WindowRect.Top := WorkArea.Top;
  end;

  WindowRect.Right := WindowRect.Left + WindowWidth;
  WindowRect.Bottom := WindowRect.Top + WindowHeight;
  WindowPlacement.rcNormalPosition := WindowRect;
end;

procedure WindowSaveSettings(fIniFile: TIniFile; Handle: THandle;
  const WindowName: string);
var
  MonitorProfile: string;
  WindowPlacement: TWindowPlacement;
begin
  if not Assigned(fIniFile) then
    Exit;

  FillChar(WindowPlacement, SizeOf(WindowPlacement), 0);
  WindowPlacement.Length := SizeOf(WindowPlacement);
  if not GetWindowPlacement(Handle, @WindowPlacement) then
    Exit;

  MonitorProfile := GetWindowSection(WindowName);
  fIniFile.WriteInteger(MonitorProfile, 'Top',
    WindowPlacement.rcNormalPosition.Top);
  fIniFile.WriteInteger(MonitorProfile, 'Left',
    WindowPlacement.rcNormalPosition.Left);
  fIniFile.WriteInteger(MonitorProfile, 'Height',
    WindowPlacement.rcNormalPosition.Bottom -
    WindowPlacement.rcNormalPosition.Top);
  fIniFile.WriteInteger(MonitorProfile, 'Width',
    WindowPlacement.rcNormalPosition.Right -
    WindowPlacement.rcNormalPosition.Left);
  fIniFile.WriteInteger(MonitorProfile, 'WindowState', WindowPlacement.showCmd);
  fIniFile.UpdateFile;
end;

procedure WindowLoadSettings(fIniFile: TIniFile; Handle: THandle;
  const WindowName: string);
var
  MonitorProfile: string;
  WindowPlacement: TWindowPlacement;
begin
  if not Assigned(fIniFile) then
    Exit;

  MonitorProfile := GetWindowSection(WindowName);
  if not fIniFile.SectionExists(MonitorProfile) then
    Exit;

  FillChar(WindowPlacement, SizeOf(WindowPlacement), 0);
  WindowPlacement.Length := SizeOf(WindowPlacement);
  if not GetWindowPlacement(Handle, @WindowPlacement) then
    Exit;

  WindowPlacement.rcNormalPosition.Top := fIniFile.ReadInteger(MonitorProfile,
    'Top', WindowPlacement.rcNormalPosition.Top);
  WindowPlacement.rcNormalPosition.Left := fIniFile.ReadInteger(MonitorProfile,
    'Left', WindowPlacement.rcNormalPosition.Left);
  WindowPlacement.rcNormalPosition.Bottom :=
    WindowPlacement.rcNormalPosition.Top + fIniFile.ReadInteger(MonitorProfile,
    'Height', WindowPlacement.rcNormalPosition.Bottom -
    WindowPlacement.rcNormalPosition.Top);
  WindowPlacement.rcNormalPosition.Right :=
    WindowPlacement.rcNormalPosition.Left + fIniFile.ReadInteger(MonitorProfile,
    'Width', WindowPlacement.rcNormalPosition.Right -
    WindowPlacement.rcNormalPosition.Left);
  WindowPlacement.showCmd := fIniFile.ReadInteger(MonitorProfile, 'WindowState',
    SW_NORMAL);

  if WindowPlacement.showCmd in [SW_HIDE, SW_MINIMIZE, SW_SHOWMINIMIZED] then
    WindowPlacement.showCmd := SW_SHOWNORMAL;

  NormalizeWindowPlacement(WindowPlacement);
  SetWindowPlacement(Handle, @WindowPlacement);
end;

end.
