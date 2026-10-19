program ejer;
uses crt;

var
   nro,nroc,i,nromax,nromin:integer;
   kmi,kmf,kmtotal:integer;
   cp,suma:integer;
   prom,mas,menos:real;

Begin
   clrscr;
   write('Nro de coches a introducir-> '); readln(nro);
   menos:=9999;
   mas:=0;
   for i:=1 to nro do
   begin
   writeln('Nø Coche->',i);
   write('Km inicial-> ');readln(kmi);
   write('Km final-> ');readln(kmf);
   write('Cantidad de pasajeros->');readln(cp);

   suma:=cp+suma;
   prom:=(suma/nro);

   kmtotal:=kmf-kmi;

   if (kmtotal<menos) then
   begin
      menos:=kmtotal;
      nromin:=i;
   end;

   if (kmtotal>mas) then
   begin
      mas:=kmtotal;
      nromax:=i;
   end;
   end;
   Writeln('Prom-> ',prom:1:2);
   Writeln('Menos de 10km-> ',nromin,' (',menos:1:2,')');
   Writeln('Mas km-> ',nromax,' (',mas:1:2,')');
   readkey;
End.
