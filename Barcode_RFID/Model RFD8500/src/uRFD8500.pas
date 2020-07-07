unit uRFD8500;

interface

uses
  SysUtils, System.Classes, System.StrUtils, System.Types,
  uRFIDBase;

type
  TOperation = (FLAG_ALERT = 1000, FLAG_CONNECTION = 1000,
    FLAG_INVENTORY = 1001, FLAG_BATTERY = 1002, FLAG_SET = 1004,
    FLAG_READ = 1005, FLAG_GETBUFFER = 1006, FLAG_CLEARBUFFER = 1007,
    FLAG_MASK = 1008, FLAG_GEN2 = 1009, FLAG_POWER = 1010, FLAG_DUTY = 1011,
    FLAG_BEEP = 1012, FLAG_WRITE = 1013, FLAG_LOCK = 1014, FLAG_DISCO = 1015,
    FLAG_FINDER = 1016, FLAG_DEFAULT = 9999);

type
  TRFD8500 = class(TRFIDBase)
  private
    fOperation: TOperation;
    fInProgress: boolean;

    fTX_POWER: integer;
    fSESSION: integer;
    fTARGET: integer;
    fPOPULATION: Extended;
  public
    constructor Create;
    destructor Destroy; override;

    procedure OpenInterface;
    procedure CloseInterface;
    procedure DeviceConfigure;

    procedure InventoryStart;
    procedure InventoryStop;
    procedure InventoryClear;

    procedure ExecuteTagFinder(sTag2Locate: string);
    procedure StopTagFinder;

    procedure ProcessResult(const Data: string); override;

    property Operation: TOperation read fOperation write fOperation;
    property InProgress: boolean read fInProgress write fInProgress;

    property TX_POWER: integer read fTX_POWER write fTX_POWER;
    property SESSION: integer read fSESSION write fSESSION;
    property TARGET: integer read fTARGET write fTARGET;
    property POPULATION: Extended read fPOPULATION write fPOPULATION;
  end;

implementation

{ TRFIDReader }

constructor TRFD8500.Create;
begin
  inherited Create;
  fInProgress := False;
  fOperation := TOperation.FLAG_DEFAULT;
end;

destructor TRFD8500.Destroy;
begin
  inherited;
end;

procedure TRFD8500.OpenInterface;
begin
  if DoConnection then
  begin
    fOperation := TOperation.FLAG_CONNECTION;
    ExecuteSender('connect');
    Sleep(SleepTime);
  end;
end;

procedure TRFD8500.CloseInterface;
begin
  if IsConnected then
  begin
    fOperation := TOperation.FLAG_DISCO;
    ExecuteSender('disconnect');
    Sleep(SleepTime);
    Disconnect;
  end;
end;

procedure TRFD8500.DeviceConfigure;
var
  sCommand: string;
begin
  fOperation := TOperation.FLAG_SET;

  // qp .e 0 .i 0 .j 0 .y 100
  fOperation := TOperation.FLAG_SET;
  sCommand := 'qp' + ' .e 0' + ' .i ' + fSESSION.ToString + ' .j ' +
    fTARGET.ToString + ' .y ' + fPOPULATION.ToString;
  ExecuteSender(sCommand);

  // rc .ez .el .ec .er .ek .eh .es
  fOperation := TOperation.FLAG_SET;
  sCommand := 'rc .ez .el .ec .er .ek .eh .es';
  ExecuteSender(sCommand);

  // ac .p 270 .lx 0
  fOperation := TOperation.FLAG_POWER;
  sCommand := 'ac' + ' .p ' + fTX_POWER.ToString + ' .lx 0';
  ExecuteSender(sCommand);
end;

procedure TRFD8500.InventoryStart;
begin
  fOperation := TOperation.FLAG_INVENTORY;
  ExecuteSender('in');
  fInProgress := True;
end;

procedure TRFD8500.InventoryStop;
begin
  fOperation := TOperation.FLAG_DEFAULT;
  ExecuteSender('a');
  fInProgress := False;
end;

procedure TRFD8500.InventoryClear;
begin
  fOperation := TOperation.FLAG_CLEARBUFFER;
  ExecuteSender('tp');
end;

procedure TRFD8500.ExecuteTagFinder(sTag2Locate: string);
begin
  fOperation := TOperation.FLAG_FINDER;
  ExecuteSender('lt .ep ' + sTag2Locate);
end;

procedure TRFD8500.StopTagFinder;
begin
  fOperation := TOperation.FLAG_DEFAULT;
  ExecuteSender('a');
end;

procedure TRFD8500.ProcessResult(const Data: string);
begin
  case fOperation of
    TOperation.FLAG_INVENTORY:
     begin
       // your code here...
     end;
    TOperation.FLAG_FINDER:
     begin
       // your code here...
     end;
  end;
end;

end.
