//---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

unit uFormFour;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Memo, FMX.Edit, FMX.Layouts, FMX.ListBox,
  FMX.Objects, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo.Types;

type
  TForm4 = class(TForm)
    LayoutDetail: TLayout;
    Edit1: TEdit;
    ClearEditButton1: TClearEditButton;
    Button2: TButton;
    Memo1: TMemo;
    LabelTitle: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

end.
