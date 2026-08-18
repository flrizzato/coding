unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.TitleBarCtrls,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.ComCtrls, Vcl.ToolWin, System.Actions, Vcl.ActnList,
  IniFiles, WebView2, Winapi.ActiveX, Vcl.Edge, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.Menus, Vcl.FormTabsBar, Vcl.StdActns;

type
  TMainForm = class(TForm)
    ImageCollection: TImageCollection;
    VirtualImageList: TVirtualImageList;
    ActionManager: TActionManager;
    actNewAcc: TAction;
    actRemAcc: TAction;
    actNewMsg: TAction;
    actPrint: TAction;
    TitleBarPanel1: TTitleBarPanel;
    FormTabsBar1: TFormTabsBar;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    PopupMenu1: TPopupMenu;
    Cascade1: TMenuItem;
    Arrange1: TMenuItem;
    ileHorizontally1: TMenuItem;
    ileVertically1: TMenuItem;
    MinimizeAll1: TMenuItem;
    procedure actionNewAccountExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionRemAccountExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actionNewMessageExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure TitleBarPanel1CustomButtons0Paint(Sender: TObject);
    procedure TitleBarPanel1CustomButtons1Paint(Sender: TObject);
    procedure TitleBarPanel1CustomButtons2Paint(Sender: TObject);
    procedure TitleBarPanel1CustomButtons3Paint(Sender: TObject);
    procedure TitleBarPanel1CustomButtons4Paint(Sender: TObject);
    procedure TitleBarPanel1CustomButtons4Click(Sender: TObject);
  private
    { Private declarations }
    fIniFile: TIniFile;
    stlAccounts: TStringList;
    procedure CustomButtonsPaint(Sender: TObject; AIndex: integer;
      PopMenu: TPopupMenu = nil);
  public
    { Public declarations }
  end;

var MainForm: TMainForm;

implementation

{$R *.dfm}

uses System.IOUtils, System.RegularExpressions, System.UITypes, uEdgeForm, uLib;

procedure TMainForm.CustomButtonsPaint(Sender: TObject; AIndex: integer;
  PopMenu: TPopupMenu = nil);
begin
  var LButton := TSystemTitlebarButton(Sender);
  if Assigned(PopMenu) then
    LButton.PopupMenu := PopMenu;
  var R := LButton.ClientRect;
  InflateRect(R, -ScaleValue(6), -ScaleValue(6));
  ImageCollection.Draw(LButton.Canvas, R, AIndex, True);
end;

procedure TMainForm.TitleBarPanel1CustomButtons0Paint(Sender: TObject);
begin
  CustomButtonsPaint(Sender, 0);
end;

procedure TMainForm.TitleBarPanel1CustomButtons1Paint(Sender: TObject);
begin
  CustomButtonsPaint(Sender, 1);
end;

procedure TMainForm.TitleBarPanel1CustomButtons2Paint(Sender: TObject);
begin
  CustomButtonsPaint(Sender, 2);
end;

procedure TMainForm.TitleBarPanel1CustomButtons3Paint(Sender: TObject);
begin
  CustomButtonsPaint(Sender, 3);
end;

procedure TMainForm.TitleBarPanel1CustomButtons4Paint(Sender: TObject);
begin
  CustomButtonsPaint(Sender, 4, PopupMenu1);
end;

procedure TMainForm.TitleBarPanel1CustomButtons4Click(Sender: TObject);
begin
 TSystemTitlebarButton(Sender).PopupMenu.Popup(
  TSystemTitlebarButton(Sender).Left+25, TSystemTitlebarButton(Sender).Top+25);
end;

procedure TMainForm.actionNewAccountExecute(Sender: TObject);

 function IsValidAcctName(const sAcctName: string): Boolean;
 begin
   if sAcctName.IsEmpty or (sAcctName.Length < 4) then
     raise Exception.Create
      ('The account name must contain three or more characters!');

   if not TRegEx.IsMatch(sAcctName, '^[A-Za-z0-9_-]+$') then
     raise Exception.Create
      ('The account name must contain only letters and numbers!');

   if stlAccounts.IndexOf(sAcctName + '=' + UpperCase(sAcctName)) > -1 then
    raise Exception.Create('The account name must be unique!');

   Result := True;
 end;

begin
  var sAcctName: string := '';
  if InputQuery('Create a New Account', 'Account Unique Name', sAcctName) then
  begin
    sAcctName := sAcctName.Trim;
    if IsValidAcctName(sAcctName) then
    begin
      fIniFile.WriteString('Accounts', sAcctName, UpperCase(sAcctName));
      stlAccounts.AddPair(sAcctName, UpperCase(sAcctName));
      TEdgeForm.CreateWithCaption(Application, fIniFile, sAcctName);
    end
  end;
end;

procedure TMainForm.actionNewMessageExecute(Sender: TObject);
begin
  var sNewNumber: string := '';
  if InputQuery('Start New Conversation', 'Phone Number', sNewNumber) then
    begin
      if not TRegEx.IsMatch(sNewNumber, '^[0-9]*$') then
        raise Exception.Create
          ('The account name must contain only letters and numbers!');
      TEdgeForm(Self.ActiveMDIChild).EdgeExecuteScript(sNewNumber);
    end;
end;

procedure TMainForm.actionRemAccountExecute(Sender: TObject);
begin
  var sAcctName := Self.ActiveMDIChild.Caption;
  if MessageDlg('This account [' + sAcctName +
    '] will be removed. Confirm?', TMsgDlgType.mtConfirmation,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = IDYES then
   begin
     TEdgeForm(Self.ActiveMDIChild).EdgeBrowser.CloseWebView;
     TEdgeForm(Self.ActiveMDIChild).Close;

     fIniFile.DeleteKey('Accounts', sAcctName);
     stlAccounts.Delete(stlAccounts.IndexOf(sAcctName + '=' +
        UpperCase(sAcctName)));

     var fDataFolder := ExtractFilePath(Application.ExeName) + 'Accounts' +
       PathDelim + UpperCase(sAcctName);
     if DirectoryExists(fDataFolder) then
      begin
        Sleep(1000);
        TDirectory.Delete(fDataFolder, True);
      end;
   end;
end;

procedure TMainForm.actPrintExecute(Sender: TObject);
begin
  var aFileName := IncludeTrailingPathDelimiter(TEdgeForm(Self.ActiveMDIChild).
    EdgeBrowser.UserDataFolder) + 'capturepreview.png';
  TEdgeForm(Self.ActiveMDIChild).EdgeBrowser.CapturePreview(aFileName);
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  WindowSaveSettings(fIniFile, Self.Handle, Self.Name);
  CanClose := True;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  stlAccounts := TStringList.Create;
  fIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'QuickWhats.ini');
  fIniFile.ReadSectionValues('Accounts', stlAccounts);
  Self.OnDestroy := FormDestroy;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  stlAccounts.Free;
  fIniFile.Free;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  WindowLoadSettings(fIniFile, Self.Handle, Self.Name);
  if stlAccounts.Count > 0 then
    for var i: Integer := 0 to stlAccounts.Count - 1 do
      TEdgeForm.CreateWithCaption(Application, fIniFile, stlAccounts.Names[i]);
end;

end.
