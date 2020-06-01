unit uMainDM;

interface

uses
  SysUtils, Classes, DB, WideStrings, FireDAC.Phys.IB, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, 
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, 
  FireDAC.Comp.Client, FireDAC.DBX.Migrate, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBLiteDef;

type
  TMainDM = class(TDataModule)
    SQLConnection: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLConnectionBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainDM: TMainDM;

implementation

uses
  Forms, uMainForm;

{$R *.dfm}

procedure TMainDM.DataModuleCreate(Sender: TObject);
begin
  if not SQLConnection.Connected then
    SQLConnection.Open;
  TMainForm(Application.MainForm).DBConnection := SQLConnection;
end;

procedure TMainDM.SQLConnectionBeforeConnect(Sender: TObject);
begin
  SQLConnection.Params.Values['Database'] :=
    IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'MEETINGORGANIZER.IB';
end;

end.
