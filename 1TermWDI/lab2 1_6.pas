
program Hello;

var
    c : Char;
    i, h, j : integer;

begin
    writeln('Podaj znak: ');
    readln(c);

    h := 20;

    for i := 1 to h do
    begin
        for j := 1 to i do
        begin
            write(c);
        end;
        writeln;
    end;
    writeln;
end.

