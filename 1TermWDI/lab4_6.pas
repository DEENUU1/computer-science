{*
 Liczby podzielne przez 5

Zadanie 3. Napisz program, który oblicza liczbę elementów w N-elementowej tablicy liczbowej, które są podzielne przez 5.

 

Szczegóły:

1.      Deklaracja i inicjalizacja tablicy liczbowej: Zadeklaruj tablicę liczb (np. typu Integer), o rozmiarze N. Tablicę można wypełnić statycznie w kodzie programu lub wczytać dane od użytkownika.

2.      Zliczanie elementów podzielnych przez 5: Przejrzyj tablicę i zlicz, ile jej elementów jest podzielnych przez 5.

3.      Wypisywanie wyniku: Na koniec program powinien wypisać liczbę elementów tablicy, które są podzielne przez 5.
*}

Program HelloWorld;

const 
    tabSize = 10;

var
    arr: array[0..tabSize] of Integer = (1, 2, 3, 4, 4, 4, 5, 5, 6, 7, 8);
    min, max, i, c: Integer;

begin
    c := 0;

    for i := 0 to tabSize do 
        if (arr[i] mod 5 =0) then 
            c:= c + 1;
            
    writeln(c);

end.
