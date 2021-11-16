unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls,
  uRFD8500;

type
  TMainForm = class(TForm)
    ToolBar1: TToolBar;
    butCnn: TButton;
    butStart: TButton;
    procedure butCnnClick(Sender: TObject);
    procedure butStartClick(Sender: TObject);
  private
    { Private declarations }
    RFID: TRFD8500;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

procedure TMainForm.butCnnClick(Sender: TObject);
begin
  if not Assigned(RFID) then
    RFID := TRFD8500.Create;

  RFID.DeviceName := 'HQ_UHF_READER';
  RFID.TX_POWER := 0;
  RFID.SESSION := 0;
  RFID.POPULATION := 5;
  RFID.TARGET := 0;

  RFID.OpenInterface;
end;

procedure TMainForm.butStartClick(Sender: TObject);
begin
  RFID.DeviceConfigure;
  RFID.InventoryStart;
end;

end.
