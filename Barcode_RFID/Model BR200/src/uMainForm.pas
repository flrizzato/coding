unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Bluetooth,
  System.Bluetooth.Components, FMX.Layouts, FMX.ListBox, FMX.Edit,
  FMX.ScrollBox, FMX.Memo, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TFormMain = class(TForm)
    ButtonDiscover: TButton;
    Bluetooth: TBluetooth;
    ListBoxDevices: TListBox;
    ListBoxServices: TListBox;
    ButtonConnect: TButton;
    Edit: TEdit;
    Panel: TPanel;
    ButtonSend: TButton;
    Timer: TTimer;
    ListViewReceive: TListView;
    procedure ButtonDiscoverClick(Sender: TObject);
    procedure BluetoothDiscoveryEnd(const Sender: TObject;
      const ADeviceList: TBluetoothDeviceList);
    procedure ButtonConnectClick(Sender: TObject);
    procedure ButtonSendClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ListBoxDevicesChange(Sender: TObject);
  private
    { Private declarations }
    DeviceList: TBluetoothDeviceList;
    Device: TBluetoothDevice;
    SerialPort: TBluetoothService;
    Socket: TBluetoothSocket;
    Connected: Boolean;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

procedure TFormMain.ButtonDiscoverClick(Sender: TObject);
begin
  SerialPort.Name := '';
  Device := nil;
  DeviceList := nil;
  ButtonConnect.Enabled := False;
  ListBoxDevices.Clear;
  ListBoxServices.Clear;

  Bluetooth.DiscoverDevices(10000);
end;

procedure TFormMain.BluetoothDiscoveryEnd(const Sender: TObject;
  const ADeviceList: TBluetoothDeviceList);
var
  I: Integer;
begin
  ListBoxDevices.Clear;
  for I := 0 to ADeviceList.Count - 1 do
    ListBoxDevices.Items.Add(ADeviceList.Items[I].DeviceName);
  DeviceList := ADeviceList;
end;

procedure TFormMain.ListBoxDevicesChange(Sender: TObject);
var
  DeviceIndex: Integer;
  LastServices: TBluetoothServiceList;
  I: Integer;
begin
  SerialPort.Name := '';
  ListBoxServices.Clear;
  ButtonConnect.Enabled := False;
  DeviceIndex := ListBoxDevices.ItemIndex;
  if DeviceIndex = -1 then
    Exit;

  // Selected device
  Device := nil;
  if DeviceList <> nil then
    if (DeviceIndex >= 0) and (DeviceIndex < DeviceList.Count) then
      Device := DeviceList.Items[DeviceIndex];
  if Device = nil then
    Exit;

  Application.ProcessMessages;

  // Checking if paired
  if not Device.IsPaired then
    if not Bluetooth.Pair(Device) or not Device.IsPaired then
    begin
      ListBoxDevices.ItemIndex := -1;
      raise Exception.Create('Device ''' + Device.DeviceName +
        ''' not paired!');
    end;

  // Find the SPP service
  LastServices := Device.LastServiceList;
  ListBoxServices.Clear;
  for I := 0 to LastServices.Count - 1 do
  begin
    ListBoxServices.Items.Add(LastServices[I].Name);
    if LastServices[I].Name = 'SerialPort' then
      SerialPort := LastServices[I];
  end;
  if SerialPort.Name = '' then
    raise Exception.Create('SPP service not found!');

  ButtonConnect.Enabled := True;
end;

procedure TFormMain.ButtonConnectClick(Sender: TObject);
begin
  if Connected then
  begin
    Connected := False;
    try
      Socket.Close;
    except
    end;
    Socket := nil;
  end
  else
  begin
    Socket := Device.CreateClientSocket(SerialPort.UUID, True);
    Socket.Connect;
    Connected := Socket.Connected;
  end;

  if Connected then
  begin
    ButtonConnect.Text := 'Disconnect';
    ButtonDiscover.Enabled := False;
    ListBoxDevices.Enabled := False;
    Edit.Enabled := True;
    ButtonSend.Enabled := True;
    Timer.Enabled := True;
  end
  else
  begin
    ButtonConnect.Text := 'Connect';
    ButtonDiscover.Enabled := True;
    ListBoxDevices.Enabled := True;
    Edit.Enabled := False;
    ButtonSend.Enabled := False;
    Timer.Enabled := False;
  end;
end;

procedure TFormMain.ButtonSendClick(Sender: TObject);
begin
  Socket.SendData(TEncoding.ANSI.GetBytes(Edit.Text));
end;

procedure TFormMain.TimerTimer(Sender: TObject);
var
  Data: TBytes;
  ItemList: TListViewItem;
begin
  Data := Socket.ReceiveData(0);
  if Data <> nil then
  begin
    ItemList := ListViewReceive.Items.Add;
    ItemList.Text := TEncoding.ANSI.GetString(Data);
  end;
end;

end.
