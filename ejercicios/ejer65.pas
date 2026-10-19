program ejer;
uses crt;

var
   w,i,n,me,pme:longint;


Begin
   clrscr;
   write('Cantidad de numeros a ingresar-> '); readln(w);
   me:=99999999;
   for i:=1 to w do
      begin
         readln(n);
         if (me>n) then
         begin
         me:=n;
         pme:=i;
         end;
      end;
   writeln('El menor es -> ',me);
   writeln('Su posicion es -> ',pme);
   readkey;
End.
