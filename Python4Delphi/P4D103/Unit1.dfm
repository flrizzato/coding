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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SynEdit1: TSynEdit
    Left = 0
    Top = 0
    Width = 759
    Height = 241
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
    Lines.Strings = (
      'from timeit import Timer'
      'import math'
      ''
      'def is_prime(n):'
      '    """ totally naive implementation """'
      '    if n <= 1:'
      '        return False'
      ''
      '    q = math.floor(math.sqrt(n))'
      '    for i in range(2, q + 1):'
      '        if (n % i == 0):'
      '            return False'
      '    return True'
      ''
      ''
      'def count_primes(max_n):'
      '    res = 0'
      '    for i in range(2, max_n + 1):'
      '        if is_prime(i):'
      '            res += 1'
      '    return res'
      ''
      'def test():'
      '    max_n = 1000000'
      
        '    print(f'#39'Number of primes between 0 and {max_n} = {count_prim' +
        'es(max_n)}'#39')'
      ''
      'def main():'
      '    print(f'#39'Elapsed time: {Timer(stmt=test).timeit(1)} secs'#39')'
      ''
      'if __name__ == '#39'__main__'#39':'
      '    main()'
      ''
      '')
    FontSmoothing = fsmNone
  end
  object Memo1: TMemo
    Left = 0
    Top = 241
    Width = 759
    Height = 190
    Align = alClient
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 431
    Width = 759
    Height = 41
    Align = alBottom
    TabOrder = 2
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
  object PythonModule1: TPythonModule
    Engine = PythonEngine1
    ModuleName = 'module_delphi'
    Errors = <>
    Left = 648
    Top = 152
  end
  object PyDelphiWrapper1: TPyDelphiWrapper
    Engine = PythonEngine1
    Left = 512
    Top = 152
  end
end
