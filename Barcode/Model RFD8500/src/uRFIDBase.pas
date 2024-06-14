unit uRFIDBase;

interface

uses
  SysUtils, System.Classes, System.StrUtils, System.Threading,
  System.Bluetooth, System.Types;

const
  CRLF: string = #13#10;
  SleepTime: integer = 100;

type
  TRFIDBase = class(TObject)
  private
    fTaskReader: ITask;
    fClientUUID: TGUID;
    fDeviceName: string;
    fBTDevice: TBluetoothDevice;
    fBTSocket: TBluetoothSocket;
  protected
    function FindBTDevice(const DeviceName: string): TBluetoothDevice;

    procedure ExecuteSender(const Command: string);
    procedure ExecuteReader;
    function StopReader: boolean;

    function DoConnection: boolean;
    procedure Disconnect;
    function IsConnected: boolean;
  public
    constructor Create;
    destructor Destroy; override;

    procedure ProcessResult(const Data: string); virtual; abstract;

    property DeviceName: string read fDeviceName write fDeviceName;
  end;

implementation

{ TRFIDBase }

constructor TRFIDBase.Create;
begin
  inherited Create;
  fBTDevice := nil;
  fBTSocket := nil;
  fTaskReader := nil;
  fClientUUID := StringToGuid('{2AD8A392-0E49-E52C-A6D2-60834C012263}');
end;

destructor TRFIDBase.Destroy;
begin
  if Assigned(fBTSocket) then
  begin
    if fBTSocket.Connected then
      fBTSocket.Close;
    FreeAndNil(fBTSocket);
  end;
end;

function TRFIDBase.FindBTDevice(const DeviceName: string): TBluetoothDevice;
var
  i: integer;
  BTDeviceList: TBluetoothDeviceList;
begin
  BTDeviceList := TBluetoothManager.Current.CurrentAdapter.PairedDevices;
  for i := 0 to BTDeviceList.Count - 1 do
    if (BTDeviceList.Items[i].DeviceName.Substring(0, 7)
      .ToUpper = DeviceName.Substring(0, 7).ToUpper) or
      (BTDeviceList.Items[i].DeviceName.ToUpper.Contains(DeviceName.ToUpper))
    then
      Exit(BTDeviceList.Items[i]);
  Result := nil;
end;

procedure TRFIDBase.ExecuteReader;
var
  aData: TBytes;
  sData: string;
begin
  if fTaskReader <> nil then
    Exit;

  fTaskReader := TTask.Create(
    procedure()
    begin
      while True do
      begin
        if fTaskReader.Status = TTaskStatus.Canceled then
          Exit;
        if IsConnected then
          try
            aData := fBTSocket.ReceiveData(SleepTime);
            if Length(aData) > 0 then
            begin
              sData := Trim(TEncoding.ASCII.GetString(aData));
              if not sData.IsEmpty then
                ProcessResult(sData);
            end;
            Sleep(SleepTime);
          except
            on E: Exception do
              raise Exception.Create('ExecuteReader: ' + E.Message);
          end;
      end;
    end);

  fTaskReader.Start;
end;

procedure TRFIDBase.ExecuteSender(const Command: string);
begin
  try
    if IsConnected then
    begin
      fBTSocket.SendData(TEncoding.ASCII.GetBytes(Command.ToLower + CRLF));
      Sleep(SleepTime);
      ExecuteReader;
    end;
  except
    on E: Exception do
      raise Exception.Create('ExecuteSender: ' + E.Message);
  end;
end;

function TRFIDBase.StopReader: boolean;
begin
  if fTaskReader <> nil then
  begin
    fTaskReader.Cancel;
    while fTaskReader.Status <> TTaskStatus.Canceled do
      Sleep(SleepTime);
    Result := fTaskReader.Status = TTaskStatus.Canceled;
  end
  else
    Result := True;
end;

function TRFIDBase.DoConnection: boolean;
begin
  fBTDevice := FindBTDevice(fDeviceName);
  if fBTDevice = nil then
  begin
    Exit(False);
  end;

  if not IsConnected then
  begin
    fBTSocket := fBTDevice.CreateClientSocket(fClientUUID, False);
    fBTSocket.Connect;
    if fBTSocket = nil then
    begin
      Exit(False);
    end;
  end;

  Result := True;
end;

procedure TRFIDBase.Disconnect;
begin
  if Assigned(fBTSocket) then
    if fBTSocket.Connected then
      fBTSocket.Close;
end;

function TRFIDBase.IsConnected: boolean;
begin
  if fBTSocket <> nil then
    Result := fBTSocket.Connected
  else
    Result := False;
end;

end.
