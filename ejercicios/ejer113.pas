program ejer;
uses crt;

var
   vec:array[1..3]of longint;
   i,n,c,suma:longint;
   prom,max:real;
   fam,fammax:string;

Begin
   clrscr;

   max:=0;
   writeln('Cuantas familias desea ingresar?');
   readln(n);

   repeat
   c:=c+1;
   suma:=0;

   for i:=1 to 3 do
   begin
      vec[i]:=0;
   end;

   write('Familia:');readln(fam);

   for i:=1 to 3 do
   begin
      write('-> ');readln(vec[i]);
      suma:=vec[i]+suma;
   end;

   prom:=suma/3;

   if (prom>max) then
   begin
      max:=prom;
      fammax:=fam;
   end;

   writeln('Promedio de la familia ',fam,': ',prom:1:2);

   until (c=n);

   writeln('El mayor promedio es ',max:1:2,' de la familia ',fammax);

   readkey;
End.
