program ejer;
uses crt;

var
   n1:longint;
   n2,i,a:shortint;
   prom:real;
   i2,t:integer;

Begin
   clrscr;
   write('-> ');readln(n1);write('-> ');readln(n2);

   repeat
   a:= n1 mod 10;
   n1:=n1 div 10;
   if (n2=a) then
   begin
      i:=i+1;
   end;
   i2:=i2+1;
   t:=a+t;
   until(n1=0);
   prom:=t/i2;

   writeln('El ultimo numero aparece ',i,' veces en el primero');
   writeln('El promedio es-> ',prom:1:2);

   readkey;
End.
