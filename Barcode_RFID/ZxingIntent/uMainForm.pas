unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.Messaging, System.Permissions,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, System.Actions, FMX.ActnList,
  FMX.Edit, FMX.Media, FMX.Platform, FMX.Layouts, System.Tether.Manager,
  FMX.StdActns, FMX.MediaLibrary.Actions, FMX.Barcode.DROID;

type
  TMainForm = class(TForm)
    ToolBar1: TToolBar;
    imgCamera: TImage;
    butStart: TButton;
    StyleBook1: TStyleBook;
    LayoutBottom: TLayout;
    lblScanStatus: TLabel;
    edtResult: TEdit;
    butShare: TButton;
    ActionList1: TActionList;
    ShowShareSheetAction1: TShowShareSheetAction;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure butStartClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtResultChange(Sender: TObject);
    procedure ShowShareSheetAction1BeforeExecute(Sender: TObject);
  private
    { Private declarations }
    fInProgress: Boolean;
    fFMXBarcode: TFMXBarcode;
    procedure OnFMXBarcodeResult(Sender: TObject; ABarcode: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

uses System.Threading, FMX.VirtualKeyboard;

procedure TMainForm.butStartClick(Sender: TObject);
begin
  fInProgress := True;
  if Assigned(fFMXBarcode) then
    fFMXBarcode.Free;

  fFMXBarcode := TFMXBarcode.Create(Application);
  fFMXBarcode.OnGetResult := OnFMXBarcodeResult;
  fFMXBarcode.Show(False);

  lblScanStatus.Text := '';
  edtResult.Text := '';
end;

procedure TMainForm.edtResultChange(Sender: TObject);
begin
  ShowShareSheetAction1.Enabled := not edtResult.Text.IsEmpty;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := not fInProgress;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  fInProgress := False;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  fFMXBarcode.Free;
end;

procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
  FService: IFMXVirtualKeyboardService;
begin
  if Key = vkHardwareBack then
  begin
    TPlatformServices.Current.SupportsPlatformService
      (IFMXVirtualKeyboardService, IInterface(FService));
    if (FService <> nil) and (TVirtualKeyboardState.Visible
      in FService.VirtualKeyBoardState) then
    begin
      // Back button pressed, keyboard visible, so do nothing...
    end
    else
    begin
      if fInProgress then
      begin
        Key := 0;
        fInProgress := False;
      end;
    end;
  end;
end;

procedure TMainForm.OnFMXBarcodeResult(Sender: TObject; ABarcode: string);
begin
  edtResult.Text := ABarcode;
  if (ABarcode <> '') and fInProgress then
    fInProgress := False;
end;

procedure TMainForm.ShowShareSheetAction1BeforeExecute(Sender: TObject);
begin
  ShowShareSheetAction1.TextMessage := edtResult.Text;
end;

end.
