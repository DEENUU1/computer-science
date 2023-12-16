{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;

var
    charTab: array of char;
    search: Char;
    i, c: Integer;
    

begin
    
    charTab:= ['a', 'a', 'b', 'b', 'c', 'c', 'c', 'd'];
    search:= 'c';
    
    for i:= low(charTab) to high(charTab) do 
        if (charTab[i] = search) then 
            c:= c + 1;
    
    
    writeln(c);
    
    

end.

