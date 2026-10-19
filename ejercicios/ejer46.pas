program ejer;
uses crt;

var
   n,i,c,a:longint;

Begin
   clrscr;
      write('Introducir numero binario ');readln(n);
      c:=0;

      for i:=1 to 64 do
         begin
            a:=n mod 10;
            n:=trunc(n);
            if (a>1) or (a<0) then
               begin
                  write('Se encontro un numero numero invalido ');
               end
            else
               begin
                  c:=a+c;
               end;
         end;

      if (c mod 2=0) then
         begin
            write('La cantidad de 1 es par (o nula)');
         end
      else
         begin
            write('La cantidad de 1 es impar');
         end;
   readkey;
End.
