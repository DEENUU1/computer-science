program DayOfWeek;

var
  A: Integer;

begin
  Write('Podaj cyfre (1-7): ');
  ReadLn(A);

  case A of
    1: WriteLn('Poniedziałek');
    2: WriteLn('Wtorek');
    3: WriteLn('Środa');
    4: WriteLn('Czwartek');
    5: WriteLn('Piątek');
    6: WriteLn('Sobota');
    7: WriteLn('Niedziela');
  else
    WriteLn('Błędny numer dnia tygodnia');
  end;


end.