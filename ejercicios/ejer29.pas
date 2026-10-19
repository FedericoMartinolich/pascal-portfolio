program ejer29;
uses crt;

var
   num:integer;

Begin
   clrscr;
   write('Escribir un valor: ');
   readln(num);

   if (num mod 2=0) then
      begin
         write(num,' es un numero par');
      end
   else
      begin
         write(num,' es un numero impar');
      end;
   readkey;
End.
