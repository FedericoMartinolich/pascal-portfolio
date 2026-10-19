program ejer;
uses crt;

var
   i,numero:integer;
   r:real;

Begin
   clrscr;
   readln(numero);
   for i:=1 to numero do
   begin
   r:=2/i;
   end;
   writeln('Cantidad de terminos=',i);
   readkey;
End.
