program ejer;
uses crt;

var
   meses:array[1..3] of integer;
   temperaturas:array[1..3] of integer;
   i,a,t,j,menor,menores:integer;
   prom:real;

Begin
   clrscr;

   for i:=1 to 3 do
   begin
      menor:=9999;
      write('Mes: ');readln(meses[i]);

      for a:=1 to 3 do
      begin

         write('Temperatura: ');readln(temperaturas[a]);

         if (temperaturas[a]<menor) then
         menor:=temperaturas[a];

         t:=temperaturas[a]+t;

      end;

      prom:=t/3;

      for j:=1 to 3 do
      begin

         if (temperaturas[j]<prom) then
            begin
             writeln('Temperaturas menores al prom-> ',temperaturas[j]);
            end;
      end;

      writeln('Prom-> ',prom:1:2);
      writeln('Temperatura mas baja-> ',menor);

      t:=0;
      prom:=0;

   end;
   readkey;
End.
