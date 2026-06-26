unit DirectShowWebcamCapture;

{
  DirectShowWebcamCapture

  Lightweight VCL helper for previewing the Windows webcam,
  grabbing the current RGB24 frame, and saving it as BMP or JPEG.

  The implementation uses the DirectShow capture graph APIs exposed by
  Winapi.DirectShow9. It is intended for desktop Windows VCL applications.
}

interface

uses
  Winapi.Windows,
  Winapi.ActiveX,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Winapi.DirectShow9;

type
  /// <summary>
  ///   Raised when COM or DirectShow cannot complete one of the capture steps.
  /// </summary>
  EWebcamCapture = class(Exception);

  /// <summary>
  ///   Manages a DirectShow webcam preview graph and captures still images from
  ///   the live stream.
  /// </summary>
  /// <remarks>
  ///   By default the class selects the first device in the DirectShow video
  ///   input device category. Call GetDeviceNames to show the available devices
  ///   and SelectDevice to choose a zero-based device index before StartPreview.
  ///   Create one instance per preview surface. The instance owns all COM graph
  ///   interfaces and releases them in Destroy.
  /// </remarks>
  TWebcamCapture = class
  private
    FGraph: IGraphBuilder;
    FCaptureGraph: ICaptureGraphBuilder2;
    FMediaControl: IMediaControl;
    FVideoWindow: IVideoWindow;
    FCaptureFilter: IBaseFilter;
    FGrabberFilter: IBaseFilter;
    FGrabber: ISampleGrabber;
    FComInitialized: Boolean;
    FFrameWidth: Integer;
    FFrameHeight: Integer;
    FDeviceIndex: Integer;
    procedure CheckHR(const AStep: string; HR: HRESULT);
    procedure ClearGraph;
    procedure CreateGraph(APreviewWindow: HWND);
    function CreateVideoDevice(ADeviceIndex: Integer): IBaseFilter;
    function GetBitmapFromGrabber: TBitmap;
  public
    /// <summary>
    ///   Initializes COM for the calling thread when needed.
    /// </summary>
    constructor Create;

    /// <summary>
    ///   Stops preview, releases the DirectShow graph, and uninitializes COM if
    ///   this instance initialized it.
    /// </summary>
    destructor Destroy; override;

    /// <summary>
    ///   Fills a string list with the friendly names of the available DirectShow
    ///   video capture devices.
    /// </summary>
    /// <param name="ADeviceNames">
    ///   Destination list. Existing items are cleared before the current devices
    ///   are added.
    /// </param>
    /// <exception cref="EArgumentNilException">
    ///   Raised when ADeviceNames is nil.
    /// </exception>
    /// <exception cref="EWebcamCapture">
    ///   Raised if DirectShow cannot create the system device enumerator.
    /// </exception>
    procedure GetDeviceNames(ADeviceNames: TStrings);

    /// <summary>
    ///   Selects which device index StartPreview will open.
    /// </summary>
    /// <remarks>
    ///   The index is zero-based and must match the order returned by
    ///   GetDeviceNames. Changing it while preview is running only changes the
    ///   stored selection; the active graph continues using its current device
    ///   until StartPreview rebuilds it.
    /// </remarks>
    /// <exception cref="EArgumentOutOfRangeException">
    ///   Raised when ADeviceIndex is negative.
    /// </exception>
    procedure SelectDevice(ADeviceIndex: Integer);

    /// <summary>
    ///   Builds and runs the DirectShow preview graph in the supplied window.
    /// </summary>
    /// <param name="APreviewWindow">
    ///   Handle of the VCL control that will host the DirectShow video window.
    ///   A TPanel.Handle or similar child-window control is appropriate.
    /// </param>
    /// <exception cref="EWebcamCapture">
    ///   Raised if no webcam is found or if a DirectShow graph step fails.
    /// </exception>
    procedure StartPreview(APreviewWindow: HWND);

    /// <summary>
    ///   Stops the running graph and detaches the DirectShow video window from
    ///   its VCL host. It is safe to call when preview is not running.
    /// </summary>
    procedure StopPreview;

    /// <summary>
    ///   Resizes the DirectShow video child window inside the host surface.
    /// </summary>
    /// <remarks>
    ///   The method preserves the stream aspect ratio and centers the preview,
    ///   so the image is letterboxed or pillarboxed instead of stretched.
    /// </remarks>
    procedure ResizePreview(AWidth, AHeight: Integer);

    /// <summary>
    ///   Copies the latest buffered video frame into an existing bitmap.
    /// </summary>
    /// <param name="ABitmap">
    ///   Destination bitmap. The method replaces its contents with a 24-bit frame.
    /// </param>
    /// <exception cref="EWebcamCapture">
    ///   Raised if preview is not running or no frame is available yet.
    /// </exception>
    procedure CaptureBitmap(ABitmap: TBitmap);

    /// <summary>
    ///   Captures the latest frame and saves it to disk.
    /// </summary>
    /// <remarks>
    ///   Files ending in .jpg or .jpeg are saved as JPEG with quality 90. Other
    ///   extensions are saved through TBitmap.SaveToFile, normally producing BMP.
    ///   Missing directories in AFileName are created automatically.
    /// </remarks>
    /// <exception cref="EArgumentException">
    ///   Raised when AFileName is empty.
    /// </exception>
    /// <exception cref="EWebcamCapture">
    ///   Raised if preview is not running or no frame is available yet.
    /// </exception>
    procedure CaptureToFile(const AFileName: string);

    /// <summary>Width, in pixels, of the connected video stream.</summary>
    property FrameWidth: Integer read FFrameWidth;

    /// <summary>Height, in pixels, of the connected video stream.</summary>
    property FrameHeight: Integer read FFrameHeight;

    /// <summary>Zero-based index of the selected DirectShow video input device.</summary>
    property DeviceIndex: Integer read FDeviceIndex;
  end;

implementation

uses
  System.Types,
  System.IOUtils,
  System.Variants,
  Vcl.Imaging.jpeg;

const
  IID_IPropertyBag: TGUID = '{55272A00-42CB-11CE-8135-00AA004BB851}';

type
  IPropertyBag = interface(IUnknown)
    ['{55272A00-42CB-11CE-8135-00AA004BB851}']
    function Read(pszPropName: POleStr; var pVar: OleVariant; pErrorLog: IErrorLog): HRESULT; stdcall;
    function Write(pszPropName: POleStr; var pVar: OleVariant): HRESULT; stdcall;
  end;

// Releases heap allocations inside an AM_MEDIA_TYPE returned by DirectShow.
procedure FreeMediaType(var AMT: AM_MEDIA_TYPE);
begin
  if AMT.cbFormat <> 0 then begin
    CoTaskMemFree(AMT.pbFormat);
    AMT.cbFormat := 0;
    AMT.pbFormat := nil;
  end;

  if AMT.pUnk <> nil then
    AMT.pUnk := nil;
end;

// Returns the VIDEOINFOHEADER only for classic FORMAT_VideoInfo streams.
function VideoInfoHeaderFromMediaType(const AMT: AM_MEDIA_TYPE): PVideoInfoHeader;
begin
  Result := nil;
  if IsEqualGUID(AMT.formattype, FORMAT_VideoInfo) and (AMT.pbFormat <> nil) then
    Result := PVideoInfoHeader(AMT.pbFormat);
end;

constructor TWebcamCapture.Create;
var
  HR: HRESULT;
begin
  inherited Create;
  FDeviceIndex := 0;
  HR := CoInitializeEx(nil, COINIT_APARTMENTTHREADED);
  FComInitialized := Succeeded(HR);
  if not FComInitialized and (HR <> RPC_E_CHANGED_MODE) then
    CheckHR('Initialize COM', HR);
end;

destructor TWebcamCapture.Destroy;
begin
  StopPreview;
  ClearGraph;
  if FComInitialized then
    CoUninitialize;
  inherited;
end;

// Converts HRESULT failures into contextual Delphi exceptions.
procedure TWebcamCapture.CheckHR(const AStep: string; HR: HRESULT);
begin
  if Failed(HR) then
    raise EWebcamCapture.CreateFmt('%s failed. HRESULT: %.8x', [AStep, Cardinal(HR)]);
end;

procedure TWebcamCapture.ClearGraph;
begin
  FVideoWindow := nil;
  FMediaControl := nil;
  FGrabber := nil;
  FGrabberFilter := nil;
  FCaptureFilter := nil;
  FCaptureGraph := nil;
  FGraph := nil;
  FFrameWidth := 0;
  FFrameHeight := 0;
end;

function ReadDeviceName(const AMoniker: IMoniker; AIndex: Integer): string;
var
  PropertyBag: IPropertyBag;
  Value: OleVariant;
begin
  Result := Format('Video device %d', [AIndex + 1]);
  if AMoniker.BindToStorage(nil, nil, IID_IPropertyBag, PropertyBag) <> S_OK then
    Exit;

  VarClear(Value);
  if Succeeded(PropertyBag.Read('FriendlyName', Value, nil)) then
    Result := VarToStr(Value);
end;

procedure TWebcamCapture.GetDeviceNames(ADeviceNames: TStrings);
var
  DevEnum: ICreateDevEnum;
  EnumMoniker: IEnumMoniker;
  Moniker: IMoniker;
  Fetched: Cardinal;
  DeviceIndex: Integer;
  HR: HRESULT;
begin
  if ADeviceNames = nil then
    raise EArgumentNilException.Create('ADeviceNames');

  ADeviceNames.BeginUpdate;
  try
    ADeviceNames.Clear;
    CheckHR(
        'Create device enumerator',
        CoCreateInstance(CLSID_SystemDeviceEnum, nil, CLSCTX_INPROC_SERVER, IID_ICreateDevEnum, DevEnum)
    );

    HR := DevEnum.CreateClassEnumerator(CLSID_VideoInputDeviceCategory, EnumMoniker, 0);
    if HR <> S_OK then
      Exit;

    DeviceIndex := 0;
    while EnumMoniker.Next(1, Moniker, @Fetched) = S_OK do begin
      ADeviceNames.Add(ReadDeviceName(Moniker, DeviceIndex));
      Inc(DeviceIndex);
      Moniker := nil;
    end;
  finally
    ADeviceNames.EndUpdate;
  end;
end;

procedure TWebcamCapture.SelectDevice(ADeviceIndex: Integer);
begin
  if ADeviceIndex < 0 then
    raise EArgumentOutOfRangeException.Create('ADeviceIndex');

  FDeviceIndex := ADeviceIndex;
end;

// Finds the selected registered DirectShow video input device and binds it as a filter.
function TWebcamCapture.CreateVideoDevice(ADeviceIndex: Integer): IBaseFilter;
var
  DevEnum: ICreateDevEnum;
  EnumMoniker: IEnumMoniker;
  Moniker: IMoniker;
  Fetched: Cardinal;
  CurrentIndex: Integer;
  HR: HRESULT;
begin
  Result := nil;
  CheckHR(
      'Create device enumerator',
      CoCreateInstance(CLSID_SystemDeviceEnum, nil, CLSCTX_INPROC_SERVER, IID_ICreateDevEnum, DevEnum)
  );

  HR := DevEnum.CreateClassEnumerator(CLSID_VideoInputDeviceCategory, EnumMoniker, 0);
  if HR <> S_OK then
    raise EWebcamCapture.Create('No video capture device was found.');

  CurrentIndex := 0;
  while EnumMoniker.Next(1, Moniker, @Fetched) = S_OK do begin
    if CurrentIndex = ADeviceIndex then begin
      CheckHR('Bind video capture device', Moniker.BindToObject(nil, nil, IID_IBaseFilter, Result));
      Exit;
    end;

    Inc(CurrentIndex);
    Moniker := nil;
  end;

  raise EWebcamCapture.CreateFmt('Video capture device index %d was not found.', [ADeviceIndex]);
end;

// Builds the DirectShow capture graph and inserts a Sample Grabber before the
// preview renderer. The Sample Grabber is configured for RGB24 so GetCurrentBuffer
// can be copied directly into a VCL 24-bit bitmap.
procedure TWebcamCapture.CreateGraph(APreviewWindow: HWND);
var
  MediaType: AM_MEDIA_TYPE;
  Grabber: ISampleGrabber;
  VideoInfo: PVIDEOINFOHEADER;
begin
  FillChar(MediaType, SizeOf(MediaType), 0);

  CheckHR(
      'Create filter graph',
      CoCreateInstance(CLSID_FilterGraph, nil, CLSCTX_INPROC_SERVER, IID_IGraphBuilder, FGraph)
  );
  CheckHR(
      'Create capture graph builder',
      CoCreateInstance(CLSID_CaptureGraphBuilder2, nil, CLSCTX_INPROC_SERVER, IID_ICaptureGraphBuilder2, FCaptureGraph)
  );
  CheckHR('Attach capture graph builder', FCaptureGraph.SetFiltergraph(FGraph));

  FCaptureFilter := CreateVideoDevice(FDeviceIndex);
  CheckHR('Add webcam filter', FGraph.AddFilter(FCaptureFilter, 'Webcam Capture'));

  CheckHR(
      'Create Sample Grabber',
      CoCreateInstance(CLSID_SampleGrabber, nil, CLSCTX_INPROC_SERVER, IID_IBaseFilter, FGrabberFilter)
  );
  CheckHR('Query Sample Grabber', FGrabberFilter.QueryInterface(IID_ISampleGrabber, Grabber));
  FGrabber := Grabber;

  MediaType.majortype := MEDIATYPE_Video;
  MediaType.subtype := MEDIASUBTYPE_RGB24;
  MediaType.formattype := FORMAT_VideoInfo;
  CheckHR('Configure Sample Grabber media type', Grabber.SetMediaType(MediaType));
  CheckHR('Buffer Sample Grabber frames', Grabber.SetBufferSamples(True));
  CheckHR('Disable Sample Grabber one-shot mode', Grabber.SetOneShot(False));
  CheckHR('Add Sample Grabber filter', FGraph.AddFilter(FGrabberFilter, 'Frame Grabber'));

  CheckHR(
      'Render capture stream',
      FCaptureGraph.RenderStream(@PIN_CATEGORY_PREVIEW, @MEDIATYPE_Video, FCaptureFilter, FGrabberFilter, nil)
  );

  FMediaControl := FGraph as IMediaControl;
  FVideoWindow := FGraph as IVideoWindow;
  CheckHR('Set preview owner', FVideoWindow.put_Owner(APreviewWindow));
  CheckHR('Set preview style', FVideoWindow.put_WindowStyle(WS_CHILD or WS_CLIPSIBLINGS));
  CheckHR('Show preview', FVideoWindow.put_Visible(True));

  CheckHR('Get connected media type', Grabber.GetConnectedMediaType(MediaType));
  try
    VideoInfo := VideoInfoHeaderFromMediaType(MediaType);
    if VideoInfo <> nil then begin
      FFrameWidth := VideoInfo.bmiHeader.biWidth;
      FFrameHeight := Abs(VideoInfo.bmiHeader.biHeight);
    end;
  finally
    FreeMediaType(MediaType);
  end;
end;

procedure TWebcamCapture.StartPreview(APreviewWindow: HWND);
begin
  StopPreview;
  ClearGraph;
  try
    CreateGraph(APreviewWindow);
    CheckHR('Run capture graph', FMediaControl.Run);
  except
    StopPreview;
    ClearGraph;
    raise;
  end;
end;

procedure TWebcamCapture.StopPreview;
begin
  if FMediaControl <> nil then
    FMediaControl.Stop;

  if FVideoWindow <> nil then begin
    FVideoWindow.put_Visible(False);
    FVideoWindow.put_Owner(0);
  end;
end;

procedure TWebcamCapture.ResizePreview(AWidth, AHeight: Integer);
var
  TargetWidth: Integer;
  TargetHeight: Integer;
  TargetLeft: Integer;
  TargetTop: Integer;
  StreamAspect: Double;
  SurfaceAspect: Double;
begin
  if FVideoWindow = nil then
    Exit;

  if (AWidth <= 0) or (AHeight <= 0) then
    Exit;

  TargetWidth := AWidth;
  TargetHeight := AHeight;
  TargetLeft := 0;
  TargetTop := 0;

  // Keep the native stream ratio within the available host rectangle.
  if (FFrameWidth > 0) and (FFrameHeight > 0) then begin
    StreamAspect := FFrameWidth / FFrameHeight;
    SurfaceAspect := AWidth / AHeight;

    if SurfaceAspect > StreamAspect then begin
      TargetWidth := Round(AHeight * StreamAspect);
      TargetLeft := (AWidth - TargetWidth) div 2;
    end
    else if SurfaceAspect < StreamAspect then begin
      TargetHeight := Round(AWidth / StreamAspect);
      TargetTop := (AHeight - TargetHeight) div 2;
    end;
  end;

  CheckHR('Resize preview', FVideoWindow.SetWindowPosition(TargetLeft, TargetTop, TargetWidth, TargetHeight));
end;

function TWebcamCapture.GetBitmapFromGrabber: TBitmap;
var
  BufferSize: Longint;
  Buffer: TBytes;
  MediaType: AM_MEDIA_TYPE;
  VideoInfo: PVideoInfoHeader;
  RowBytes: Integer;
  Y: Integer;
  Src: PByte;
  Dst: PByte;
begin
  if FGrabber = nil then
    raise EWebcamCapture.Create('Preview is not running.');

  BufferSize := 0;
  CheckHR('Query frame buffer size', FGrabber.GetCurrentBuffer(BufferSize, nil));
  if BufferSize <= 0 then
    raise EWebcamCapture.Create('No video frame is available yet.');

  SetLength(Buffer, BufferSize);
  CheckHR('Read frame buffer', FGrabber.GetCurrentBuffer(BufferSize, PLongint(@Buffer[0])));

  FillChar(MediaType, SizeOf(MediaType), 0);
  CheckHR('Read frame media type', FGrabber.GetConnectedMediaType(MediaType));
  try
    VideoInfo := VideoInfoHeaderFromMediaType(MediaType);
    if VideoInfo = nil then
      raise EWebcamCapture.Create('The webcam did not provide a VideoInfo RGB24 frame.');

    Result := TBitmap.Create;
    try
      Result.PixelFormat := pf24bit;
      Result.SetSize(VideoInfo.bmiHeader.biWidth, Abs(VideoInfo.bmiHeader.biHeight));
      RowBytes := ((Result.Width * 24 + 31) div 32) * 4;

      // RGB24 samples are bottom-up DIB rows; VCL scanlines are addressed top-down here.
      for Y := 0 to Result.Height - 1 do begin
        Src := @Buffer[(Result.Height - 1 - Y) * RowBytes];
        Dst := Result.ScanLine[Y];
        Move(Src^, Dst^, Result.Width * 3);
      end;
    except
      Result.Free;
      raise;
    end;
  finally
    FreeMediaType(MediaType);
  end;
end;

procedure TWebcamCapture.CaptureBitmap(ABitmap: TBitmap);
var
  Captured: TBitmap;
begin
  if ABitmap = nil then
    raise EArgumentNilException.Create('ABitmap');

  Captured := GetBitmapFromGrabber;
  try
    ABitmap.Assign(Captured);
  finally
    Captured.Free;
  end;
end;

procedure TWebcamCapture.CaptureToFile(const AFileName: string);
var
  Bitmap: TBitmap;
  Jpeg: TJPEGImage;
  Directory: string;
begin
  if AFileName.Trim.IsEmpty then
    raise EArgumentException.Create('A file name is required.');

  Directory := TPath.GetDirectoryName(AFileName);
  if not Directory.IsEmpty then
    TDirectory.CreateDirectory(Directory);

  Bitmap := GetBitmapFromGrabber;
  try
    if SameText(TPath.GetExtension(AFileName), '.jpg') or SameText(TPath.GetExtension(AFileName), '.jpeg') then begin
      Jpeg := TJPEGImage.Create;
      try
        Jpeg.Assign(Bitmap);
        Jpeg.CompressionQuality := 90;
        Jpeg.SaveToFile(AFileName);
      finally
        Jpeg.Free;
      end;
    end
    else
      Bitmap.SaveToFile(AFileName);
  finally
    Bitmap.Free;
  end;
end;

end.
