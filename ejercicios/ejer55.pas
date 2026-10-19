program ejer;
uses crt;

var
   i:integer;
   c:real;
   n:real;

Begin
   clrscr;
   readkey;
   c:=0;
   n:=0;
   for i:=1 to 100 do
      begin
      c:=i*i;
      n:=c+n;
      end;
      writeln(n:1:0);
   readkey;
End.
