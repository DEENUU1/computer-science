{

Napisz program, który wczytuje N liczb (gdzie N jest mniejsze lub równe 5) do tablicy A, a
następnie kopiuje do tablicy B te elementy z tablicy A, które są podzielne przez 3.
Szczegóły:
1. Wczytywanie liczb do tablicy A: Program powinien najpierw poprosić użytkownika o podanie
liczby N (liczba elementów tablicy, nie większa niż 5). Następnie program powinien wczytać N
liczb całkowitych od użytkownika i zapisać je w tablicy A.
2. Deklaracja tablicy B: Zadeklaruj tablicę B, która będzie przechowywać liczby z tablicy A
podzielne przez 3. Maksymalny rozmiar tablicy B powinien być równy N.
3. Kopiowanie liczb podzielnych przez 3: Program powinien przejrzeć tablicę A i skopiować do
tablicy B te elementy, które są podzielne przez 3.
4. Wypisywanie wyników: Program powinien wypisać zawartość tablicy B, pokazując liczby
podzielne przez 3, wybrane z tablicy A
}


program Hello;

var
    tabOne: array of Integer;
    tabTwo: array of Integer;
    userInput, i, numOfEl: Integer;

begin
    
    write('Podaj liczbę która jest większa bądź równa 5: ');
    read(numOfEl);
    
    if numOfEl < 5 then 
    begin
        writeln('Podana liczba jest błędna');
        Halt; 
    end;
    
    SetLength(tabOne, numOfEl); 

    for i := 0 to numOfEl - 1 do
    begin
        write('Podaj element do tablicy: ');
        read(userInput);
        tabOne[i] := userInput;
    end;

    SetLength(tabTwo, numOfEl);

    for i := 0 to numOfEl - 1 do
    begin
        if tabOne[i] mod 3 = 0 then
            tabTwo[i] := tabOne[i];
    end;

    writeln('Liczby podzielne przez 3: ');
    for i := 0 to numOfEl - 1 do
    begin
        if tabTwo[i] mod 3 = 0 then
            writeln(tabTwo[i]);
    end;

end.

