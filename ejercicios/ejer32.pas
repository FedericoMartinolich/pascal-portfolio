program ejer;
uses crt;

var
   a:integer;
   b:integer;
   c:integer;
   r:integer;

Begin
   clrscr;
   write('Introducir el dividendo: ');
   readln(a);
   write('Introducir el divisor: ');
   readln(b);

   if a>=b then
      begin
      c:=(a div b);
      r:=(a mod b);
      write('El cociente es ',c,' y el resto es ',r)
      end
   else
      begin
      write('ERROR');
      end;

   readkey;
End.
