{

Zadanie 3.9. Kopiowanie wybranych wartości do drugiej tablicy.
Napisz program, który wypełnia tablicę losowymi liczbami całkowitymi mniejszymi niż 100,
a następnie kopiuje do drugiej tablicy wszystkie liczby z pierwszej tablicy, które są większe
niż 50.
Szczegóły:
1. Inicjalizacja pierwszej tablicy: Zadeklaruj pierwszą tablicę (np. tablica1) i wypełnij ją losowymi
liczbami całkowitymi mniejszymi niż 100. Rozmiar tej tablicy może być ustalony na sztywno (np.
10 elementów).
2. Generowanie liczb losowych: Użyj funkcji generującej liczby losowe do wypełnienia tablica1.
5/9
3. Deklaracja drugiej tablicy: Zadeklaruj drugą tablicę (np. tablica2), która będzie przechowywać
liczby z pierwszej tablicy spełniające warunek (większe niż 50). Możesz ustawić jej maksymalny
rozmiar równy rozmiarowi tablica1.
4. Kopiowanie wartości: Przejrzyj tablica1 i dla każdego elementu, który jest większy niż 50, skopiuj
ten element do tablica2.
5. Wypisywanie wyników: Wypisz zawartość obu tablic, aby pokazać wyniki działania progra
}


program Hello;

const
  max = 100;
  min = 50;
  tabSize = 10;

var
  tabOne: array[0..tabSize-1] of Integer;
  tabTwo: array of Integer;
  randomNum, i, numOfEl: Integer;

begin
  for i := 0 to tabSize-1 do
  begin
    randomNum := Random(max);
    tabOne[i] := randomNum;
  end;

  SetLength(tabTwo, tabSize);

  numOfEl := 0; 
  for i := 0 to tabSize-1 do
  begin
    if tabOne[i] > min then
    begin
      tabTwo[numOfEl] := tabOne[i];
      Inc(numOfEl);
    end;
  end;

  writeln('Contents of tabTwo (values greater than ', min, '):');
  for i := 0 to numOfEl-1 do
    writeln(tabTwo[i]);
end.
