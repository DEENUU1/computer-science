a)



{
Napisz program, który mając na wejściu dwie liczby naturalne n>m policzy sumę kolejnych liczb naturalnych od m do n.

a) Użyj pętli FOR

b) Użyj pętli WHILE

}


program Summ;

var
    sum, n, m: integer;

begin
    sum := 0;

    writeln('Podaj 2 liczby m oraz n gdzie n > m');
    write('n > ');
    readln(n);

    write('m > ');
    readln(m);

    if (n > m) then
        for m := m to n do
            sum := sum + m
    else
        writeln('n musi być większę od m');

    write('Suma = ');
    write(sum);

end.



b)



{
Napisz program, który mając na wejściu dwie liczby naturalne n>m policzy sumę kolejnych liczb naturalnych od m do n.

a) Użyj pętli FOR

b) Użyj pętli WHILE

}


program Summ;

var
    sum, n, m: integer;

begin
    sum := 0;

    writeln('Podaj 2 liczby m oraz n gdzie n > m');
    write('n > ');
    readln(n);

    write('m > ');
    readln(m);

    if (n > m) then
        while n >= m do
            begin
                sum := sum + m;
                m := m + 1;
            end
    else
        writeln('n musi być większę od m');

    write('Suma = ');
    write(sum);

end.
