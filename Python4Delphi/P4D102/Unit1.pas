unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, SynEdit,
  PythonEngine, Vcl.PythonGUIInputOutput, SynEditHighlighter,
  SynEditCodeFolding, SynHighlighterPython, SynEditPythonBehaviour;

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
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PythonModule1Events0Execute(Sender: TObject;
      PSelf, Args: PPyObject; var Result: PPyObject);
    procedure PythonModule1Events1Execute(Sender: TObject; PSelf,
      Args: PPyObject; var Result: PPyObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses System.Math, System.Threading;

{$R *.dfm}

function IsPrime(x: Integer): Boolean;
begin
  if (x <= 1) then
    Exit(False);

  var q := Floor(Sqrt(x));
  for var i := 2 to q do
    if (x mod i = 0) then
      Exit(False);
  Exit(True);
end;

function CountPrimes(MaxN: integer): integer;
begin
  var Count := 0;
  TParallel.&For(2, MaxN, procedure(i: integer)
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

procedure TForm1.PythonModule1Events0Execute(Sender: TObject;
  PSelf, Args: PPyObject; var Result: PPyObject);
Var
  N: Integer;
begin
  with GetPythonEngine do
    if PyArg_ParseTuple(Args, 'i:delphi_is_prime', @N) <> 0 then
    begin
      if IsPrime(N) then
        Result := PPyObject(Py_True)
      else
        Result := PPyObject(Py_False);
      Py_INCREF(Result);
    end
    else
      Result := nil
end;

procedure TForm1.PythonModule1Events1Execute(Sender: TObject; PSelf,
  Args: PPyObject; var Result: PPyObject);
Var
  N: Integer;
begin
   with GetPythonEngine do
     if PyArg_ParseTuple(Args, 'i:delphi_is_prime',@N) <> 0 then
     begin
       Result := PyLong_FromLong(CountPrimes(N));
       Py_INCREF(Result);
     end else
       Result := nil;
end;

end.
