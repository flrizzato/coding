unit Frames.Settings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Effects, FMX.Controls.Presentation, FMX.ListBox, FMX.Edit,
  Data.Bind.Components, Data.Bind.ObjectScope, Data.Bind.GenData,
  Fmx.Bind.GenData, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Actions, FMX.ActnList,
  Fmx.Bind.Navigator;

type
  TFrameSettings = class(TFrame)
    ToolBar2: TToolBar;
    Label1: TLabel;
    btnTest: TButton;
    InnerGlowEffectTest: TInnerGlowEffect;
    VertScrollBox1: TVertScrollBox;
    ListBox1: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    edtUserID: TEdit;
    Label2: TLabel;
    edtLoginPassword: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtPersonUserID: TEdit;
    edtUserPassword: TEdit;
    Label5: TLabel;
    ListBoxGroupHeader3: TListBoxGroupHeader;
    ListBoxItem5: TListBoxItem;
    Label6: TLabel;
    edtOrgID: TEdit;
    ToolBar1: TToolBar;
    Button1: TButton;
    pbsDefaults: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    ActionList1: TActionList;
    LiveBindingsBindNavigatePost1: TFMXBindNavigatePost;
    ListBoxItem7: TListBoxItem;
    Label7: TLabel;
    edtBaseURL: TEdit;
    LinkControlToField6: TLinkControlToField;
    procedure btnTestClick(Sender: TObject);
    procedure DisableTestResult(Sender: TObject);
    procedure pbsDefaultsCreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); reintroduce;
  end;

implementation

uses
  YF.SOAP.UserMethods, YF.SOAP.Defaults;

{$R *.fmx}

procedure TFrameSettings.btnTestClick(Sender: TObject);
begin
  if pbsDefaults.Editing then
    pbsDefaults.Post;

  if TYFUserMethods.TestDefaultCredentials then
    InnerGlowEffectTest.GlowColor := TAlphaColorRec.Green
  else
    InnerGlowEffectTest.GlowColor := TAlphaColorRec.Red;

  InnerGlowEffectTest.Enabled := True;
end;

constructor TFrameSettings.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TFrameSettings.DisableTestResult(Sender: TObject);
begin
  InnerGlowEffectTest.Enabled := False;
end;

procedure TFrameSettings.pbsDefaultsCreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  ABindSourceAdapter := TObjectBindSourceAdapter<TYFDefaults>.Create(Self,YFDefaults,False);
end;

end.
