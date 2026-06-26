object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'DirectShow Webcam Capture'
  ClientHeight = 625
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 120
  TextHeight = 20
  object Splitter1: TSplitter
    Left = 500
    Top = 64
    Width = 6
    Height = 539
    MinSize = 280
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 624
    object DeviceLabel: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 8
      Width = 45
      Height = 48
      Margins.Left = 12
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      Caption = '&Device'
      FocusControl = DeviceComboBox
      Layout = tlCenter
      ExplicitHeight = 20
    end
    object DeviceComboBox: TComboBox
      AlignWithMargins = True
      Left = 65
      Top = 18
      Width = 280
      Height = 28
      Margins.Left = 0
      Margins.Top = 18
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      Style = csDropDownList
      TabOrder = 0
    end
    object RefreshDevicesButton: TButton
      AlignWithMargins = True
      Left = 353
      Top = 8
      Width = 112
      Height = 48
      Margins.Left = 0
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      Caption = '&Refresh'
      TabOrder = 1
      OnClick = RefreshDevicesButtonClick
    end
    object StartButton: TButton
      AlignWithMargins = True
      Left = 473
      Top = 8
      Width = 96
      Height = 48
      Margins.Left = 0
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      Caption = '&Start'
      Default = True
      TabOrder = 2
      OnClick = StartButtonClick
    end
    object StopButton: TButton
      AlignWithMargins = True
      Left = 577
      Top = 8
      Width = 96
      Height = 48
      Margins.Left = 0
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      Caption = 'S&top'
      Enabled = False
      TabOrder = 3
      OnClick = StopButtonClick
    end
    object CaptureButton: TButton
      AlignWithMargins = True
      Left = 681
      Top = 8
      Width = 104
      Height = 48
      Margins.Left = 0
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      Caption = '&Capture'
      Enabled = False
      TabOrder = 4
      OnClick = CaptureButtonClick
    end
    object SaveButton: TButton
      AlignWithMargins = True
      Left = 793
      Top = 8
      Width = 96
      Height = 48
      Margins.Left = 0
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      Caption = '&Save'
      Enabled = False
      TabOrder = 5
      OnClick = SaveButtonClick
    end
  end
  object LeftPanel: TPanel
    Left = 0
    Top = 64
    Width = 500
    Height = 539
    Align = alLeft
    BevelOuter = bvNone
    Constraints.MinWidth = 280
    Padding.Left = 12
    Padding.Top = 8
    Padding.Right = 8
    Padding.Bottom = 8
    TabOrder = 1
    object PreviewTitleLabel: TLabel
      Left = 12
      Top = 8
      Width = 87
      Height = 20
      Align = alTop
      Caption = 'Live Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PreviewPanel: TPanel
      Left = 12
      Top = 28
      Width = 480
      Height = 503
      Align = alClient
      BevelOuter = bvLowered
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object EmptyPreviewLabel: TLabel
        Left = 1
        Top = 1
        Width = 217
        Height = 20
        Align = alClient
        Alignment = taCenter
        Caption = 'Select a device and start preview'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
    end
  end
  object RightPanel: TPanel
    Left = 506
    Top = 64
    Width = 494
    Height = 539
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 8
    Padding.Top = 8
    Padding.Right = 12
    Padding.Bottom = 8
    TabOrder = 2
    object CaptureTitleLabel: TLabel
      Left = 8
      Top = 8
      Width = 112
      Height = 20
      Align = alTop
      Caption = 'Captured Frame'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CapturedImage: TImage
      Left = 8
      Top = 28
      Width = 474
      Height = 503
      Align = alClient
      Center = True
      Proportional = True
      Stretch = True
      ExplicitTop = 32
      ExplicitHeight = 499
    end
    object EmptyCaptureLabel: TLabel
      Left = 8
      Top = 28
      Width = 227
      Height = 20
      Align = alClient
      Alignment = taCenter
      Caption = 'Capture a frame to preview it here'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object MainStatusBar: TStatusBar
    Left = 0
    Top = 603
    Width = 1000
    Height = 22
    Panels = <
      item
        Width = 320
      end
      item
        Width = 220
      end
      item
        Width = 180
      end
      item
        Width = 50
      end>
  end
  object SaveDialog1: TSaveDialog
    Left = 736
    Top = 286
  end
end
