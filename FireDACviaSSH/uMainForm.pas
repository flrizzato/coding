unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Vcl.Grids, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  SshTunnel, Ssh2Client, FireDAC.Comp.UI, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    PostgresqlviasshConnection: TFDConnection;
    FDQuery1: TFDQuery;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    butOpenDB: TButton;
    butOpenTunnel: TButton;
    butCloseTunnel: TButton;
    butCloseDB: TButton;
    Panel1: TPanel;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure butOpenDBClick(Sender: TObject);
    procedure butOpenTunnelClick(Sender: TObject);
    procedure butCloseTunnelClick(Sender: TObject);
    procedure butCloseDBClick(Sender: TObject);
  private
    { Private declarations }
    Session: ISshSession;
    SshTunnel: ISshTunnel;
    Thread: TThread;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.butOpenDBClick(Sender: TObject);
begin
  PostgresqlviasshConnection.Open;
  FDQuery1.Open;
end;

procedure TMainForm.butCloseDBClick(Sender: TObject);
begin
  FDQuery1.Close;
  PostgresqlviasshConnection.Close;
end;

procedure TMainForm.butOpenTunnelClick(Sender: TObject);
Var
  Host: string;
  UserName: string;
  Password: string;
begin
  Host := '192.168.56.106';
  UserName := 'oracle';
  Password := 'oracle';

  Session := CreateSession(Host, 22);
  Session.Connect;

  if not Session.UserAuthPass(UserName, Password) then
  begin
    ShowMessage('Authorization Failure');
    Exit;
  end;

  SshTunnel := CreateSshTunnel(Session);
  Thread := TThread.CreateAnonymousThread(
    procedure
    begin
      SshTunnel.ForwardLocalPort(63333, '192.168.56.106', 5432);
    end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
end;

procedure TMainForm.butCloseTunnelClick(Sender: TObject);
begin
  Thread.Terminate;
  SshTunnel.Cancel;
  if not Thread.Finished then
  begin
    Thread.WaitFor;
    Thread.Free;
  end;
end;

end.
