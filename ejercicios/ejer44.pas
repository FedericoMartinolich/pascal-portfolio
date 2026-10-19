program ejer;
uses crt;

var
   n,i,c:integer;

Begin
   clrscr;
   write('Introducir numero: ');readln(n);
   c:=0;
   if (n>0) then
      begin
      for i:=1 to n do
         begin
            c:=i+c;
            writeln(c);
         end;
      end
   else
      begin
      write ('Introdujo un numero negativo');
      end;
   readkey;
End.
