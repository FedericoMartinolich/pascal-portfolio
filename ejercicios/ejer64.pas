program ejer;
uses crt;

var
   i,n,ma,me,pme,pma,w:longint;
   imp,par,itot,p:real;

Begin
   clrscr;
   write('Cuantos numeros desea ingresar-> ');
   readln(w);
   me:=99999999;
   for i:=1 to w do
      begin
         readln(n);
         if (me>n) then
         begin
         pme:=i;
         me:=n;
         end;
         if (ma<n) then
         begin
         pma:=i;
         ma:=n;
         end;
         if (n mod 2 = 0) then
         begin
         par:=1+par;
         end
         else
         begin
         imp:=1+imp;
         end;
      end;
      p:=imp+par;
      itot:=(imp/p)*100;
      writeln('Mayor-> ',ma);
      writeln('Menor-> ',me);
      writeln('Numero de veces de impares-> ',imp:1:0);
      writeln('Numero de veces de pares-> ',par:1:0);
      writeln('Porcentaje de numeros impares-> ',itot:1:2);

   readkey;
End.
