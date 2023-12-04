program Quiz;

var
  userInput: string;

begin
  Write('Czy HTML to język programowania? (y/n): ');
  ReadLn(userInput);

  if (userInput <> 'y') and (userInput <> 'n') then
  begin
    WriteLn('Błędna odpowiedź, odpowiedz: y lub n');
  end
  else if userInput = 'n' then
  begin
    WriteLn('Brawo! Poprawna odpowiedź');
  end
  else
  begin
    WriteLn('Niestety... Twoja odpowiedź jest błędna');
  end;
end.