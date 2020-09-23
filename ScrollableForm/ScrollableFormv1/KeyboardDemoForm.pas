unit KeyboardDemoForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  uBaseScrollableForm, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Edit,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TKeyboardFormDemo = class(TBaseScrollableForm)
    Button2: TButton;
    Edit1: TEdit;
    ClearEditButton1: TClearEditButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    LabelTitle: TLabel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KeyboardFormDemo: TKeyboardFormDemo;

implementation

{$R *.fmx}

end.
