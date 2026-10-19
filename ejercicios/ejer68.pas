program ejer;
uses crt;

var
   n1,n2,i,r:integer;

Begin
   clrscr;
   writeln ('introduzca 2 numeros');
   readln(n1);
   readln(n2);
   for i:=1 to n2 do
   begin
      r:=n1+r;
   end;
   write('El resultado es-> ',r);
   readkey;
End.
