program UzupelnianieTablicy;

const
  RozmiarTablicy = 100;

var
  Tablica: array[1..RozmiarTablicy] of Integer;
  i: Integer;

begin
  Randomize;

  for i := 1 to RozmiarTablicy do
    Tablica[i] := Random(100); 

  
  writeln('Zawartosc tablicy:');
  for i := 1 to RozmiarTablicy do
    writeln('Element ', i, ': ', Tablica[i]);

  readln;
end.
