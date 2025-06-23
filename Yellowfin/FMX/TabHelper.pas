unit TabHelper;

interface

uses FMX.TabControl, Classes;

type
  TTabHelper = class helper for TTabItem
  public
    function Contains(aClass : TClass): Boolean;
    function FindComponentsByClass(aClass : TClass): TArray<TComponent>;
  end;


implementation

{ TTabHelper }

function TTabHelper.Contains(aClass: TClass): Boolean;
var
  I: Integer;
begin
  for I := 0 to Pred(Self.ComponentCount) do begin
    if Self.Components[I] is aClass then
      Exit(True);
  end;
  Result := False;
end;


function TTabHelper.FindComponentsByClass(aClass: TClass): TArray<TComponent>;
var
  I: Integer;
begin
  SetLength(Result,0);
  for I := 0 to Pred(Self.ComponentCount) do begin
    if Self.Components[I] is aClass then begin
      SetLength(Result, Length(Result)+1);
      Result[Pred(Length(Result))] := Self.Components[I];
    end;
  end;
end;


end.
