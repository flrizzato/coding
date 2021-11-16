unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, SynEdit,
  PythonEngine, Vcl.PythonGUIInputOutput, SynEditHighlighter,
  SynEditCodeFolding, SynHighlighterPython, SynEditPythonBehaviour, WrapDelphi;

type
  TForm1 = class(TForm)
    SynEdit1: TSynEdit;
    Memo1: TMemo;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    SynEditPythonBehaviour1: TSynEditPythonBehaviour;
    SynPythonSyn1: TSynPythonSyn;
    PythonEngine1: TPythonEngine;
    PythonGUIInputOutput1: TPythonGUIInputOutput;
    PythonModule1: TPythonModule;
    PyDelphiWrapper1: TPyDelphiWrapper;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses System.Math, System.Threading, System.Rtti;

{$R *.dfm}

type
  TDelphiFunctions = record
    class function count_primes(MaxN: integer): integer; static;
  end;

var
  DelphiFunctions: TDelphiFunctions;

function IsPrime(x: integer): Boolean;
begin
  if (x <= 1) then
    Exit(False);

  var
  q := Floor(Sqrt(x));
  for var i := 2 to q do
    if (x mod i = 0) then
      Exit(False);
  Exit(True);
end;

class function TDelphiFunctions.count_primes(MaxN: integer): integer;
begin
  var
  Count := 0;
  TParallel.&For(2, MaxN,
    procedure(i: integer)
    begin
      if IsPrime(i) then
        AtomicIncrement(Count);
    end);
  Result := Count;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  GetPythonEngine.ExecString(UTF8Encode(SynEdit1.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  var
  Py := PyDelphiWrapper1.WrapRecord(@DelphiFunctions,
    TRttiContext.Create.GetType(TypeInfo(TDelphiFunctions))
    as TRttiStructuredType);
  PythonModule1.SetVar('delphi_functions', Py);
  PythonEngine1.Py_DecRef(Py);
end;

end.
