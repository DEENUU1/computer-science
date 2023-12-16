{*
 Zliczanie znaków

Zadanie 1. Napisz program, który oblicza liczbę wystąpień znaku 'Z' w N-elementowej tablicy znakowej.

 

Szczegóły:

1.      Deklaracja i inicjalizacja tablicy znakowej: Zadeklaruj tablicę znaków (Char) o rozmiarze N. Tablicę można wypełnić statycznie w kodzie programu lub wczytać dane od użytkownika.

2.      Obliczanie liczby wystąpień: Przejrzyj tablicę, aby obliczyć, ile razy w tablicy pojawia się znak 'Z'.

3.      Wypisywanie wyniku: Na koniec program powinien wypisać liczbę wystąpień znaku 'Z' w tablicy.
*}

Program HelloWorld;

const 
    tabSize = 10;
    search = 'Z';
    
var
    arr: array of Char;
    c, i: Integer;

begin
    arr := ['a', 'b', 'c', 'd', 'z', 'z', 'z', 'y', 'a', 'a'];
    for i := 0 to tabSize do 
        if (lowercase(arr[i]) = lowercase(search)) then
            c:= c + 1;
            
    writeln(c);

end.
