program ejer62;
uses crt;

var
   n,cn,u:integer;
   d,ng,prom:real;

Begin
   clrscr;
   cn:=(-1);
   d:=(-1);
   repeat
   begin
      write('Numero-> ');
      readln(n);

      if (n=0)then
      else
         begin
            u:=n;
         end;

      ng:=n+ng;
      cn:=cn+1;

      if (n mod 6=0) then
         begin
            d:=d+1;
         end;
   end;
   until(n=0);

   prom:=(ng/cn);
   writeln('Numero divisibles por 6 -> ',d:1:0);
   writeln('Numero promedio-> ',prom:1:2);
   writeln('Ultimo numero-> ',u);
   readkey;
End.
