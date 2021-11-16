unit MainFMXUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Layouts,
  FMX.Memo, FMX.Media, System.Sensors, FMX.StdCtrls;

type
  TForm3 = class(TForm)
    Button2: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    NumberOfSensors : integer;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses System.TypInfo;

procedure TForm3.Button2Click(Sender: TObject);
var
  i : integer;
begin
  // get list of found sensors - if any
  TSensorManager.Current.Active := true;
  NumberofSensors := TSensorManager.Current.Count;
  Label1.Text := 'Sensors: '+IntToStr(NumberOfSensors);
  Memo1.Lines.Clear;
  if NumberOfSensors = 0 then
    Memo1.Lines.Add('No Sensors Found')
  else
    for i := 0 to NumberOfSensors-1 do begin
      Memo1.Lines.Add(
        IntToStr(i)
        + ': '
        + TSensorManager.Current.Sensors[i].Name
        + '", Category: '
        + GetEnumName(System.TypeInfo(TSensorCategory),
              Ord(TSensorManager.Current.Sensors[i].Category))
      );
    end;
end;

end.
