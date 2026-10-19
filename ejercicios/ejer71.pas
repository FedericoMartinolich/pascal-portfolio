program ejer;
uses crt;

var
   n:integer;
   a,par:integer;

Begin
   clrscr;
   write('Introduzca numero-> ');
   readln(n);
   repeat
      a:=(n mod 10);
      n:=(n div 10);
      if (a=0)then
      else
      if (a mod 2=0) then
      par:=par+1;

   until (n=0);
   writeln ('Cantidad de numeros par-> ',par);
   readkey;
End.
