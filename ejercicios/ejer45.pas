program ejer45;
uses crt;

var
   n:integer;

Begin
   clrscr;
   write('Escribir el radicando ');
   readln(n);
   while (n<0) do
   begin
      writeln('Intente de nuevo');
      readln(n);
   end;
   write('El resultado es ',sqrt(n):1:2);
   readkey;
End.
