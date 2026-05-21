unit uSQLEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
    Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys,
  FireDAC.Comp.Client, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.Samples.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope;

type
  TSQLEditForm = class(TForm)
    panExecute: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    spnInternal: TSpinEdit;
    spiSessions: TSpinEdit;
    cmbConnections: TComboBox;
    memSQL: TMemo;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    butSave: TButton;
    butDiscard: TButton;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure butDiscardClick(Sender: TObject);
    procedure butSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bAppend: boolean;
  end;

var
  SQLEditForm: TSQLEditForm;

implementation

{$R *.dfm}

uses uMainDM;

procedure TSQLEditForm.butDiscardClick(Sender: TObject);
begin
  MainDM.tableSQL.Cancel;
  MainDM.tableSQL.CancelUpdates;
end;

procedure TSQLEditForm.butSaveClick(Sender: TObject);
begin
  MainDM.tableSQL.Post;
  MainDM.tableSQL.ApplyUpdates(-1);
end;

procedure TSQLEditForm.FormCreate(Sender: TObject);
begin
  FDManager.GetConnectionNames(cmbConnections.Items);
end;

procedure TSQLEditForm.FormShow(Sender: TObject);
begin
  if bAppend then
    MainDM.tableSQL.Append
  else
    MainDM.tableSQL.Edit;
end;

end.

