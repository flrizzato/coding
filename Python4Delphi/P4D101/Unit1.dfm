object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 472
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SynEdit1: TSynEdit
    Left = 0
    Top = 0
    Width = 759
    Height = 209
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 0
    CodeFolding.GutterShapeSize = 11
    CodeFolding.CollapsedLineColor = clGrayText
    CodeFolding.FolderBarLinesColor = clGrayText
    CodeFolding.IndentGuidesColor = clGray
    CodeFolding.IndentGuides = True
    CodeFolding.ShowCollapsedLine = False
    CodeFolding.ShowHintMark = True
    UseCodeFolding = False
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Highlighter = SynPythonSyn1
    FontSmoothing = fsmNone
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 743
  end
  object Memo1: TMemo
    Left = 0
    Top = 209
    Width = 759
    Height = 222
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 128
    ExplicitTop = 215
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object Panel1: TPanel
    Left = 0
    Top = 431
    Width = 759
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 40
    ExplicitTop = 392
    ExplicitWidth = 185
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'RUN'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 16
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'CLEAR'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 97
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object SynEditPythonBehaviour1: TSynEditPythonBehaviour
    Editor = SynEdit1
    Left = 648
    Top = 96
  end
  object SynPythonSyn1: TSynPythonSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 648
    Top = 48
  end
  object PythonEngine1: TPythonEngine
    IO = PythonGUIInputOutput1
    Left = 512
    Top = 40
  end
  object PythonGUIInputOutput1: TPythonGUIInputOutput
    UnicodeIO = True
    RawOutput = False
    Output = Memo1
    Left = 512
    Top = 96
  end
end
