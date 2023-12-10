{
Napisz program, którym zadasz pytanie i będziesz wczytywał odpowiedź dopóki użytkownik nie poda poprawnej odpowiedzi.
}


program QandA;

var
    correct, user: char;

begin
    correct := 'n';
    writeln('Czy HTML to język programowania?');
    writeln('Podaj odpowiedź n/y: ');

    repeat
        read(user);
    until (correct = user);

    if correct = user then
        writeln('Poprawna odpowiedź');
end.
