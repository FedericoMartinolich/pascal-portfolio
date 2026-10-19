program ejer;
uses crt;

var
   n,r:integer;

Begin
   clrscr;
   repeat
   write('->');
   readln(n);
   r:=n+r;
   until(n=88);
   writeln(r);
   readkey;
End.

