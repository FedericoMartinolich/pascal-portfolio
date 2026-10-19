program ejer;
uses crt;

var
   n,min,max,suma,sumapos,i:integer;
   prom:real;

Begin
   clrscr;
   min:=9999;
   repeat

   write('n-> ');readln(n);

   if (max<n) then
   max:=n;

   if (min>n) then
   min:=n;

   if(n>0) then
   sumapos:=sumapos+n;

   suma:=suma+n;
   i:=i+1;

   until(n=0);

   writeln('Max->',max);
   writeln('Min->',min);
   writeln('Suma->',suma);
   writeln('Positivos suma->',sumapos);
   prom:=suma/(i-1);
   writeln('Prom->',prom:1:2);

   readkey;
End.
