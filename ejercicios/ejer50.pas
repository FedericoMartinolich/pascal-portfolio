program ejer50;
uses crt;

var
   i,n:integer;
   a,c:real;
Begin
   clrscr;
   write('Introduce un valor: ');
   readln(n);
   c:=0;
   a:=0;
   for i:=1 to n do
      begin
         a:=(a+2);
         c:=(a+c);
         writeln(c:1:0);
      end;
   readkey;
End.
