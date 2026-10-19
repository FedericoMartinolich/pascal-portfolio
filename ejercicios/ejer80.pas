program ejer;
uses crt;

var
   n,i:integer;
   suma,a:real;

Begin
   clrscr;
   n:=100;
   for i:=1 to n do
   begin
      suma:=1/i;
      a:=a+suma;
   end;
   writeln('rta->',a:1:2);
   readkey;
End.
