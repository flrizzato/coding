unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  IPPeerClient, REST.Backend.ServiceTypes, REST.Backend.MetaTypes, System.JSON,
  REST.Backend.EMSServices, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, FMX.StdCtrls,
  Data.Bind.Components, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts,
  Data.Bind.ObjectScope, REST.Backend.BindSource,
  REST.Backend.ServiceComponents, REST.Backend.EMSProvider, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  REST.Backend.Providers;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    LoginTab: TTabItem;
    EMSProvider1: TEMSProvider;
    BackendAuthLogin: TBackendAuth;
    LayoutLogin: TLayout;
    EditUserName: TEdit;
    LabelUserName: TLabel;
    LinkControlToFieldUserName: TLinkControlToField;
    BindingsList1: TBindingsList;
    EditPassword: TEdit;
    LabelPassword: TLabel;
    LinkControlToFieldPassword: TLinkControlToField;
    Login: TButton;
    LayoutLogOut: TLayout;
    LogOut: TButton;
    Label1: TLabel;
    LoggedUser: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    SignUpTab: TTabItem;
    BackendAuthSignUp: TBackendAuth;
    EditUserName2: TEdit;
    LabelUserName2: TLabel;
    LinkControlToFieldUserName2: TLinkControlToField;
    EditPassword2: TEdit;
    LabelPassword2: TLabel;
    LinkControlToFieldPassword2: TLinkControlToField;
    EditUserDetailemail: TEdit;
    LabelUserDetailemail: TLabel;
    LinkControlToFieldUserDetailemail: TLinkControlToField;
    SignUp: TButton;
    Label2: TLabel;
    labelLoginTitle: TLabel;
    Label4: TLabel;
    BackendQuery1: TBackendQuery;
    LayoutUsers: TLayout;
    ListView1: TListView;
    GetUsers: TButton;
    Label3: TLabel;
    BackendUsers1: TBackendUsers;
    UpdatePassword: TButton;
    NewPassword: TLabel;
    editedPassword: TEdit;
    DeleteUser: TButton;
    LabelUserIDSelected: TLabel;
    labelIDSelected: TLabel;
    LinkFillControlToPropertyText: TLinkFillControlToProperty;
    procedure FormCreate(Sender: TObject);
    procedure LoginClick(Sender: TObject);
    procedure LogOutClick(Sender: TObject);
    procedure BackendAuthLoginLoggedIn(Sender: TObject);
    procedure BackendAuthLoginLoggedOut(Sender: TObject);
    procedure SignUpClick(Sender: TObject);
    procedure BackendAuthSignUpSignedUp(Sender: TObject);
    procedure GetUsersClick(Sender: TObject);
    procedure UpdatePasswordClick(Sender: TObject);
    procedure DeleteUserClick(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
  private
    { Private declarations }
    procedure ShowLogin; // method to show or hide Login and LogOut Layouts, based on login status.
    procedure UpdateListUsers(AUsers: TJSONArray); // Retrieve RAD Server Users List.
    procedure ShowUsersLayOut;  //show User List only if RAD Server User is logged in.
    procedure ShowUserButtons;  //show fields to update a selected RAD Server user fom the list.

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.BackendAuthLoginLoggedIn(Sender: TObject);
begin
ShowLogin;
ShowUsersLayOut;
end;

procedure TForm2.BackendAuthLoginLoggedOut(Sender: TObject);
begin
BackendAuthLogin.ClearFieldValues;
ShowLogin;
ShowUsersLayOut;
end;

procedure TForm2.BackendAuthSignUpSignedUp(Sender: TObject);
begin
   EditUserName2.Text := '';
   EditPassword2.Text := '';
   EditUserDetailemail.Text := '';
   GetUsersClick(nil);
end;

procedure TForm2.DeleteUserClick(Sender: TObject);
var
username: String;
_id: String;
begin
if ListView1.Selected <> nil then
begin
username := (TListViewItem(ListView1.Selected).Text);
_id :=  (TListViewItem(ListView1.Selected).Detail);

    MessageDlg('You are about to Delete User '+ username + ' id = '+ _id,
    System.UITypes.TMsgDlgType.mtInformation,
    [
      System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbNo,
      System.UITypes.TMsgDlgBtn.mbCancel
    ], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
        begin
          BackendUsers1.Users.DeleteUser(TListViewItem(ListView1.Selected).Detail);
          ShowMessage('Username:  '+ username + ' deleted.');
        end;
        mrNo:
          ShowMessage('Username:  '+ username + ' NOT deleted.');
        mrCancel:
          ShowMessage('Delete operation Canceled');
      end;
    end);
  end;
   GetUsersClick(nil);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Application.Title := 'RAD Server Users Management';
ShowLogin;
ShowUsersLayOut;
end;

procedure TForm2.GetUsersClick(Sender: TObject);
begin
BackendQuery1.ClearResult();
BackendQuery1.Execute;
UpdateListUsers(BackendQuery1.JSONResult);
end;


procedure TForm2.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  if ListView1.Selected <> nil then
  index := ListView1.Selected.Index;
end;

procedure TForm2.LoginClick(Sender: TObject);
begin
      try
        BackendAuthLogin.Login;
        Except
        on E: Exception do
        begin
          ShowMessage('Connection to RAD Server failed');
        end;

      end;
end;

procedure TForm2.LogOutClick(Sender: TObject);
begin
BackendAuthLogin.Logout;
end;

procedure TForm2.ShowLogin;
begin
LayoutLogOut.Position := LayoutLogIn.Position;
LayOutLogIn.Visible := not BackendAuthLogin.LoggedIn;
LayOutLogOut.Visible := BackendAuthLogin.LoggedIn;
labelLoginTitle.Visible :=  not BackendAuthLogin.LoggedIn;
SignUpTab.Visible := BackendAuthLogin.LoggedIn; //SignUpTab visible when RAD Server user is logged in.
end;

procedure TForm2.ShowUserButtons;
begin
    NewPassword.Visible := true;
    editedPassword.Visible := true;
    UpdatePassword.Visible := true;
    DeleteUser.Visible := true;
end;

procedure TForm2.ShowUsersLayOut;
begin
LayoutUsers.Visible := BackendAuthLogin.LoggedIn;
ListView1.Visible := false;
NewPassword.Visible := false;
editedPassword.Visible := false;
UpdatePassword.Visible := false;
DeleteUser.Visible := false;
end;

procedure TForm2.SignUpClick(Sender: TObject);
begin
BackendAuthSignUp.Signup;
end;

procedure TForm2.UpdateListUsers(AUsers: TJSONArray);
var
I: Integer;
LUser: TJSONValue;
LUsername: String;
_id: String;
item:  TListViewItem;
begin
  ListView1.Items.Clear;
  ListView1.Visible :=true;
  for I := 0 to AUsers.Count-1 do
  begin
    item :=ListView1.Items.Add;
    LUser := AUSers.Items[I];
    LUsername := LUser.GetValue<string>('username');
    _id := LUser.GetValue<string>('_id');
    item.Text := LUsername;
    item.Detail := _id;
  end;
   ShowUserButtons;
end;

procedure TForm2.UpdatePasswordClick(Sender: TObject);
var
LEditedUser: TJSONObject;
LUpdatedAt:  TBackendEntityValue;
begin
   try
     if ListView1.Selected <> nil then
     begin
       LEditedUser :=TJSONObject.Create;
       LeditedUser.AddPair('password', editedPassword.Text);
        BackendUsers1.Users.UpdateUser(TListViewItem(ListView1.Selected).Detail,LEditedUser,LUpdatedAt);
       editedPassword.Text := '';
     end;
   finally
   LEditedUser.Free;
   end;
end;

end.
