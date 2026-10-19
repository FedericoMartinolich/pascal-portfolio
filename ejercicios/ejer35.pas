program ejer;
uses crt;

var
   num:real;
   aux:real;

Begin
   clrscr;
   write('Introducir numero: ');
   readln(num);
   aux:=trunc(num);
   if aux=num then
      begin
         write('Es un numero entero');
      end
   else
      begin
         write('Es un numero fraccionario');
      end;
   readkey;
End.
