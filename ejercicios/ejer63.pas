program ejer63;
uses crt;

var
   n,n1:integer;
   t:string;

Begin
   clrscr;
   repeat

      readln(n);
      if (n>n1) then
      n1:=n;
      if (n<0) then
      t:=('Hay numeros negativos');

   until(n=0);
   writeln('El numero mas grande fue el -> ',n1);
   writeln(t);
   readkey;
End.
