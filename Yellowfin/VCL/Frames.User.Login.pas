unit Frames.User.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Data.Bind.GenData, Vcl.Bind.GenData,
  Data.Bind.Components, Data.Bind.ObjectScope, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Samples.Bind.Editors, Vcl.Samples.Spin;

type
  TOnLoginEvent = procedure(Sender : TComponent; ASuccess : Boolean) of Object;

  TframeUserLogin = class(TFrame)
    pcUserLogin: TPageControl;
    tabLogin: TTabSheet;
    tabSettings: TTabSheet;
    gbLogin: TGroupBox;
    edtPassword: TLabeledEdit;
    btnLogIn: TButton;
    pbsDefaults: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkControlToField2: TLinkControlToField;
    gbSystemDetails: TGroupBox;
    edtLoginID: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    seSiteID: TSpinEdit;
    LinkControlToField5: TLinkControlToField;
    LabeledEdit3: TLabeledEdit;
    LinkControlToField6: TLinkControlToField;
    lblSiteID: TLabel;
    edtUserName: TLabeledEdit;
    LinkControlToField7: TLinkControlToField;
    procedure FrameResize(Sender: TObject);
    procedure pbsDefaultsCreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
    procedure btnLogInClick(Sender: TObject);
  private
    FOnLogin: TOnLoginEvent;
    { Private declarations }
  public
    { Public declarations }
    procedure Initialize(AOnLogin: TOnLoginEvent);
    property OnLogin : TOnLoginEvent read FOnLogin write FOnLogin;
  end;

implementation

{$R *.dfm}

uses YF.SOAP.Defaults, YF.SOAP.UserMethods;

procedure TframeUserLogin.btnLogInClick(Sender: TObject);
begin
  Assert(Assigned(FOnLogin),'No Logon Event Assigned');

  if pbsDefaults.Editing then
    pbsDefaults.Post;

  // Try to Validate Login Details - Notify of Login event
  FOnLogin(Self, TYFUserMethods.ValidatePassword(edtUserName.Text, edtPassword.Text));
end;

procedure TframeUserLogin.FrameResize(Sender: TObject);
begin
  // Center the login
  gbLogin.Left  := (gbLogin.Parent.ClientWidth - gbLogin.Width) div 2;
  gbLogin.Top   := (gbLogin.Parent.ClientHeight - gbLogin.Height) div 2;

  gbSystemDetails.Left  := (gbSystemDetails.Parent.ClientWidth - gbSystemDetails.Width) div 2;
  gbSystemDetails.Top   := (gbSystemDetails.Parent.ClientHeight - gbSystemDetails.Height) div 2;

end;

procedure TframeUserLogin.Initialize(AOnLogin: TOnLoginEvent);
begin
  OnLogin := AOnLogin;
  pcUserLogin.ActivePage := tabLogin;
  FrameResize(Self);
end;

procedure TframeUserLogin.pbsDefaultsCreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  // Using LiveBindings to connect the Global Object to the UI
  ABindSourceAdapter := TObjectBindSourceAdapter<TYFDefaults>.Create(Self,YFDefaults,False);
end;

end.
