unit Frames.Users;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.Edit, FMX.Effects;

type
  TFrameUsers = class(TFrame)
    tcUsers: TTabControl;
    tabValidateUser: TTabItem;
    tabUpdatePassword: TTabItem;
    btnValidateUser: TButton;
    Layout1: TLayout;
    edtUserID: TEdit;
    edtUserPassword: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    igeValidUser: TInnerGlowEffect;
    Layout2: TLayout;
    edtUpdatePasswordUserID: TEdit;
    edtUpdatePasswordNewPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnUpdatePassword: TButton;
    igeUpdatePassword: TInnerGlowEffect;
    procedure UpdateValidateUser(Sender: TObject);
    procedure btnUpdatePasswordClick(Sender: TObject);
    procedure UpdateChangePassword(Sender: TObject);
    procedure btnValidateUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses YF.SOAP.UserMethods;


procedure TFrameUsers.btnUpdatePasswordClick(Sender: TObject);
begin
  if TYFUserMethods.UpdatePassword(edtUpdatePasswordUserID.Text, edtUpdatePasswordNewPassword.Text) then
    igeUpdatePassword.GlowColor := TAlphaColorRec.Green
  else
    igeUpdatePassword.GlowColor := TAlphaColorRec.Red;

  igeUpdatePassword.Enabled := True;
end;

procedure TFrameUsers.btnValidateUserClick(Sender: TObject);
begin
  if TYFUserMethods.ValidatePassword(edtUserID.Text, edtUserPassword.Text) then
    igeValidUser.GlowColor := TAlphaColorRec.Green
  else
    igeValidUser.GlowColor := TAlphaColorRec.Red;

  igeValidUser.Enabled := True;
end;

procedure TFrameUsers.UpdateChangePassword(Sender: TObject);
begin
  igeUpdatePassword.Enabled := False;
end;

procedure TFrameUsers.UpdateValidateUser(Sender: TObject);
begin
  igeValidUser.Enabled := False;
end;

end.
