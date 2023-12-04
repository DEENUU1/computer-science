program Fever;

var
    userInput: Real;

begin
  Write('Podaj temperaturę swojego ciała: ');
  ReadLn(userInput);

  if (userInput >= 36.6) and (userInput <= 37) then
    WriteLn('OK')
  else if (userInput >= 37.1) and (userInput <= 38) then
    WriteLn('Stan podgorączkowy')
  else if (userInput >= 38.1) and (userInput <= 41) then
    WriteLn('Gorączka')
  else
    WriteLn('Skonsultuj się z lekarzem');
end.