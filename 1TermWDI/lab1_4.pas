program Brutton;

var
    netto: Real;
    vat: Integer;
    vatResult, brutto: Real;

begin
  Write('Podaj cenę netto: ');
  ReadLn(netto);
  Write('Podaj stawkę vat (w procentach np. 50): ');
  ReadLn(vat);

  vatResult := (vat / 100) * netto;
  Write('Vat wynosi: ');
  WriteLn(vatResult:0:2);

  Write('Cena brutto to: ');
  WriteLn((netto + vatResult):0:2);


end.