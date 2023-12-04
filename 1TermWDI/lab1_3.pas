program Rectangle;

var
  A, B: Integer;
  AResult, CResult: Integer;

function CountArea(a, b: Integer): Integer;
begin
  CountArea := a * b;
end;

function CountCircuit(a, b: Integer): Integer;
begin
  CountCircuit := (2 * a) + (2 * b);
end;

 
begin
  Write('Podaj długość a: ');
  ReadLn(A);

  Write('Podaj długość b: ');
  ReadLn(B);

  AResult := CountArea(A, B);
  Write('Area is: ');
  WriteLn(AResult);
  CResult := CountCircuit(A, B);
  Write('Circuit is: ');
  WriteLn(CResult);
end.