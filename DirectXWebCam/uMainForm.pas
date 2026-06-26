unit uMainForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.UITypes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  DirectShowWebcamCapture;

type
  TMainForm = class(TForm)
    TopPanel: TPanel;
    DeviceLabel: TLabel;
    DeviceComboBox: TComboBox;
    RefreshDevicesButton: TButton;
    StartButton: TButton;
    StopButton: TButton;
    CaptureButton: TButton;
    SaveButton: TButton;
    LeftPanel: TPanel;
    PreviewTitleLabel: TLabel;
    PreviewPanel: TPanel;
    EmptyPreviewLabel: TLabel;
    Splitter1: TSplitter;
    RightPanel: TPanel;
    CaptureTitleLabel: TLabel;
    CapturedImage: TImage;
    EmptyCaptureLabel: TLabel;
    MainStatusBar: TStatusBar;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure RefreshDevicesButtonClick(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
    procedure StopButtonClick(Sender: TObject);
    procedure CaptureButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
  private
    FCapture: TWebcamCapture;
    FPreviewRunning: Boolean;
    FFrameCaptured: Boolean;
    FLastSaveDir: string;
    procedure LoadDevices;
    procedure UpdateUiState;
    procedure UpdatePreviewSize;
    procedure SetStatus(const AText: string);
    procedure SetErrorStatus(const AText: string);
    procedure SaveCapturedFrame;
  public
  { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  Vcl.Imaging.jpeg;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  FCapture := TWebcamCapture.Create;
  FPreviewRunning := False;
  FFrameCaptured := False;
  FLastSaveDir := '';

  SaveDialog1.Filter := 'JPEG image (*.jpg)|*.jpg|Bitmap image (*.bmp)|*.bmp';
  SaveDialog1.DefaultExt := 'jpg';
  SaveDialog1.FileName := 'webcam-capture.jpg';

  LoadDevices;
  SetStatus('Ready');
  UpdateUiState;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FCapture.Free;
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  UpdatePreviewSize;
end;

procedure TMainForm.RefreshDevicesButtonClick(Sender: TObject);
begin
  LoadDevices;
  UpdateUiState;
end;

procedure TMainForm.StartButtonClick(Sender: TObject);
begin
  try
    if DeviceComboBox.ItemIndex < 0 then begin
      SetStatus('Select a video device first');
      Exit;
    end;

    FCapture.SelectDevice(DeviceComboBox.ItemIndex);
    FCapture.StartPreview(PreviewPanel.Handle);
    FPreviewRunning := True;
    UpdatePreviewSize;
    SetStatus(Format('Preview running (%dx%d)', [FCapture.FrameWidth, FCapture.FrameHeight]));
  except
    on E: Exception do begin
      FPreviewRunning := False;
      SetErrorStatus(E.Message);
    end;
  end;

  UpdateUiState;
end;

procedure TMainForm.StopButtonClick(Sender: TObject);
begin
  FCapture.StopPreview;
  FPreviewRunning := False;
  SetStatus('Preview stopped');
  UpdateUiState;
end;

procedure TMainForm.CaptureButtonClick(Sender: TObject);
begin
  try
    FCapture.CaptureBitmap(CapturedImage.Picture.Bitmap);
    FFrameCaptured := not CapturedImage.Picture.Bitmap.Empty;

    if FFrameCaptured then
      SetStatus('Captured frame')
    else
      SetStatus('No frame captured yet');
  except
    on E: Exception do begin
      FFrameCaptured := False;
      SetErrorStatus(E.Message);
    end;
  end;

  UpdateUiState;
end;

procedure TMainForm.SaveButtonClick(Sender: TObject);
begin
  SaveCapturedFrame;
end;

procedure TMainForm.LoadDevices;
var
  LPreviousDevice: string;
  LPreviousIndex: Integer;
begin
  LPreviousDevice := DeviceComboBox.Text;

  DeviceComboBox.Items.BeginUpdate;
  try
    DeviceComboBox.Items.Clear;
    FCapture.GetDeviceNames(DeviceComboBox.Items);
  finally
    DeviceComboBox.Items.EndUpdate;
  end;

  if DeviceComboBox.Items.Count > 0 then begin
    LPreviousIndex := DeviceComboBox.Items.IndexOf(LPreviousDevice);
    if LPreviousIndex >= 0 then
      DeviceComboBox.ItemIndex := LPreviousIndex
    else
      DeviceComboBox.ItemIndex := 0;

    SetStatus(Format('%d video device(s) found', [DeviceComboBox.Items.Count]));
  end
  else begin
    DeviceComboBox.ItemIndex := -1;
    SetStatus('No video capture device found');
  end;
end;

procedure TMainForm.SaveCapturedFrame;
var
  LJpeg: TJPEGImage;
begin
  if (not FFrameCaptured) or CapturedImage.Picture.Bitmap.Empty then begin
    SetStatus('No captured frame to save');
    Exit;
  end;

  SaveDialog1.FileName := 'webcam-capture.jpg';
  if FLastSaveDir <> '' then
    SaveDialog1.InitialDir := FLastSaveDir;

  if SaveDialog1.Execute then begin
    try
      if SameText(ExtractFileExt(SaveDialog1.FileName), '.jpg')
          or SameText(ExtractFileExt(SaveDialog1.FileName), '.jpeg') then
      begin
        LJpeg := TJPEGImage.Create;
        try
          LJpeg.Assign(CapturedImage.Picture.Bitmap);
          LJpeg.CompressionQuality := 90;
          LJpeg.SaveToFile(SaveDialog1.FileName);
        finally
          LJpeg.Free;
        end;
      end
      else
        CapturedImage.Picture.Bitmap.SaveToFile(SaveDialog1.FileName);

      FLastSaveDir := ExtractFilePath(SaveDialog1.FileName);
      SetStatus('Saved: ' + SaveDialog1.FileName);
    except
      on E: Exception do
        SetErrorStatus(E.Message);
    end;
  end
  else
    SetStatus('Save canceled');
end;

procedure TMainForm.UpdateUiState;
var
  LHasDevice: Boolean;
begin
  LHasDevice := DeviceComboBox.Items.Count > 0;

  DeviceComboBox.Enabled := LHasDevice and not FPreviewRunning;
  RefreshDevicesButton.Enabled := not FPreviewRunning;
  StartButton.Enabled := LHasDevice and not FPreviewRunning;
  StopButton.Enabled := FPreviewRunning;
  CaptureButton.Enabled := FPreviewRunning;
  SaveButton.Enabled := FFrameCaptured;
  EmptyPreviewLabel.Visible := not FPreviewRunning;
  EmptyCaptureLabel.Visible := not FFrameCaptured;

  if LHasDevice then
    MainStatusBar.Panels[0].Text := Format('Device: %s', [DeviceComboBox.Text])
  else
    MainStatusBar.Panels[0].Text := 'Device: none';

  if FPreviewRunning then
    MainStatusBar.Panels[1].Text := Format('Preview: running %dx%d', [FCapture.FrameWidth, FCapture.FrameHeight])
  else
    MainStatusBar.Panels[1].Text := 'Preview: stopped';

  if FFrameCaptured then
    MainStatusBar.Panels[2].Text := 'Capture: ready to save'
  else
    MainStatusBar.Panels[2].Text := 'Capture: none';
end;

procedure TMainForm.UpdatePreviewSize;
begin
  if FCapture <> nil then
    FCapture.ResizePreview(PreviewPanel.ClientWidth, PreviewPanel.ClientHeight);
end;

procedure TMainForm.SetErrorStatus(const AText: string);
begin
  SetStatus('Error: ' + AText);
  MessageDlg(AText, mtError, [mbOK], 0);
end;

procedure TMainForm.SetStatus(const AText: string);
begin
  MainStatusBar.Panels[3].Text := AText;
end;

end.
