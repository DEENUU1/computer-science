{
Napisz program, który wczyta 5 liczb, a następnie wyświetli ich średnią.
}


program Avg;

var
    tab: array[1..5] of integer;
    sum, l, i: integer;
    res: real;

begin
    sum := 0;

    writeln('Podaj 5 liczb:');
    for i := 1 to 5 do
    begin
        write('Liczba ', i, ': ');
        readln(tab[i]);
    end;


    for i := 1 to 5 do
        sum := sum + tab[i];

    res := sum / 5;

    write('Średnia wynosi: ');
    writeln(res:7:2);

end.