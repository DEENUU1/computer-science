program EvenOdd;

var
  A: Integer;

begin
  Write('Podaj cyfre: ');
  ReadLn(A);

  if (A mod 2) = 0 then
  begin
    WriteLn('Parzysta');
  end
  else
  begin
    WriteLn('Nieparzysta');
  end;

end.