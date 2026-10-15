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
    chkUseSSH: TCheckBox;
    procedure butOpenDBClick(Sender: TObject);
    procedure butOpenTunnelClick(Sender: TObject);
    procedure butCloseTunnelClick(Sender: TObject);
    procedure butCloseDBClick(Sender: TObject);
    procedure PostgresqlviasshConnectionBeforeConnect(Sender: TObject);
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

const
  SSH_HOST = '192.168.184.132';
  SSH_PORT = 22;
  SSH_USERNAME = 'oracle';
  SSH_PASSWORD = 'oracle';

  DB_HOST = '192.168.184.132';
  DB_PORT = 5432;
  DB_NAME = 'dvdrental';
  DB_USERNAME = 'postgres';
  DB_PASSWORD = '123';

  SSH_DB_HOST = '127.0.0.1';
  SSH_DB_PORT = 63333;

procedure TMainForm.PostgresqlviasshConnectionBeforeConnect(Sender: TObject);
begin
  PostgresqlviasshConnection.Params.Clear;
  PostgresqlviasshConnection.Params.Values['DriverID'] := 'PG';

  if chkUseSSH.Checked then
    begin
      PostgresqlviasshConnection.Params.Values['Server'] := SSH_DB_HOST;
      PostgresqlviasshConnection.Params.Values['Port'] := SSH_DB_PORT.ToString;
    end
  else
    begin
      PostgresqlviasshConnection.Params.Values['Server'] := DB_HOST;
      PostgresqlviasshConnection.Params.Values['Port'] := DB_PORT.ToString;
    end;

  PostgresqlviasshConnection.Params.Values['Database'] := DB_NAME;
  PostgresqlviasshConnection.Params.Values['User_Name'] := DB_USERNAME;
  PostgresqlviasshConnection.Params.Values['Password'] := DB_PASSWORD;
end;

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
begin
  Session := CreateSession(SSH_HOST, SSH_PORT);
  Session.Connect;

  if not Session.UserAuthPass(SSH_USERNAME, SSH_PASSWORD) then
    begin
      ShowMessage('Authorization Failure');
      Exit;
    end;

  SshTunnel := CreateSshTunnel(Session);
  Thread := TThread.CreateAnonymousThread(
    procedure
    begin
      SshTunnel.ForwardLocalPort(SSH_DB_PORT, DB_HOST, DB_PORT);
    end);
  Thread.FreeOnTerminate := False;
  Thread.Start;
end;

procedure TMainForm.butCloseTunnelClick(Sender: TObject);
begin
  if Assigned(Thread) then
    begin
      Thread.Terminate;

      if Assigned(SshTunnel) then
        SshTunnel.Cancel;

      Thread.WaitFor;
      FreeAndNil(Thread);
    end;
end;

end.
