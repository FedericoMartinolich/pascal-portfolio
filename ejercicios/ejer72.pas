program ejer;
uses crt;

var
   i,par,impar:integer;

Begin
   clrscr;
   readkey;
   for i:=1 to 100 do
   begin
      if (i mod 2=0)then
      begin
      writeln (i);
      par:=i+par;
      end
      else
      begin
      impar:=i+impar;
      end;
   end;
   writeln('Suma de los numeros impares-> ',impar);
   writeln('Suma de los numeros pares-> ',par);
   readkey;
End.
