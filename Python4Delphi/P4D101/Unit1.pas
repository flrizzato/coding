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
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  GetPythonEngine.ExecString(UTF8Encode(SynEdit1.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

end.
