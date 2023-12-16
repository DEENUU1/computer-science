{*
 Liczba elementów spełniających warunek

Zadanie 2. Napisz program, który oblicza liczbę elementów N-elementowej tablicy liczbowej, które należą do przedziału od a do b (włącznie).

 

Szczegóły:

1.      Deklaracja i inicjalizacja tablicy liczbowej: Zadeklaruj tablicę liczb (np. typu Integer), o rozmiarze N. Tablicę można wypełnić statycznie w kodzie programu lub wczytać dane od użytkownika.

2.      Wczytywanie przedziału <a, b>: Poproś użytkownika o podanie dolnej granicy a i górnej granicy b przedziału.

3.      Zliczanie elementów należących do przedziału: Przejrzyj tablicę i zlicz, ile jej elementów mieści się w przedziale <a, b>.

4.      Wypisywanie wyniku: Na koniec program powinien wypisać liczbę elementów tablicy, które należą do podanego przedziału.
*}

Program HelloWorld;

const 
    tabSize = 10;

var
    arr: array[0..tabSize] of Integer = (1, 2, 3, 4, 4, 4, 5, 5, 6, 7, 8);
    min, max, i, c: Integer;

begin
    c := 0;
    write('Podaj dolną granicę: ');
    readln(min);
    
    write('Podaj górna granicę: ');
    readln(max);
    
    for i := 0 to tabSize do 
        if (arr[i] >= min) and (arr[i] <= max) then 
            c:= c + 1;
            
    writeln(c);

end.
