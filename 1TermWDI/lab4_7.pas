{*
 Zliczanie cyfr

Zadanie 4. Napisz program, który na wejściu przyjmuje liczbę n-cyfrową (przyjmując dla uproszczenia, że n = 4), a następnie umieszcza kolejne cyfry tej liczby w tablicy.

 

Szczegóły:

1.      Wczytywanie liczby: Program powinien wczytać od użytkownika liczbę czterocyfrową.

2.      Deklaracja tablicy: Zadeklaruj tablicę o rozmiarze 4, która będzie przechowywać cyfry liczby.

3.      Umieszczanie cyfr w tablicy: Program powinien oddzielić kolejne cyfry wczytanej liczby i umieścić je w tablicy, zaczynając od najmniej znaczącej cyfry (na przykład dla liczby 1234, tablica powinna zawierać [4, 3, 2, 1]).

4.      Wypisywanie wyniku: Na koniec program powinien wypisać zawartość tablicy, prezentując kolejne cyfry liczby.
*}
Program HelloWorld;
Uses sysutils;

const
  numSize = 4;

var
  i, userInput: Integer;
  userInputString: String;
  inputArr: array[1..numSize] of Char;  

begin
  write('Podaj liczbe 4 cyfrowa: ');
  readln(userInput);

  userInputString := IntToStr(userInput);

  if Length(userInputString) <> numSize then
  begin
    writeln('Błąd: Liczba musi mieć 4 cyfry.');
    Halt;
  end;

  for i := 1 to numSize do
  begin
    inputArr[i] := userInputString[numSize - i + 1];
  end;

  for i := 1 to numSize do
  begin
    writeln(inputArr[i]);
  end;

end.
