program ejer;
uses crt;

var
   mat:array[1..3,1..4]of integer;
   i,f,c,menor,hora,menorf:integer;
   suma,sumac1,sumac2,sumac3,sumac4:integer;
   promc1,promc2,promc3,promc4:real;
   prof,menorc:string;

Begin
   clrscr;
   for f:=1 to 3 do
   begin
      for c:=1 to 4 do
      begin
         write('-> ');readln(mat[f,c]);
      end;
   end;

   menor:=9999;

   for f:=1 to 3 do
   begin
      for c:=1 to 4 do
      begin

         if (c=1) then
            hora:=0;
         if (c=2) then
            hora:=8;
         if (c=3) then
            hora:=16;
         if (c=4) then
            hora:=20;
         if (f=1) then
            prof:='superficie';
         if (f=2) then
            prof:='medio';
         if (f=3) then
            prof:='fondo';

         if (menor>mat[f,c]) then
         begin
            menor:=mat[f,c];
            menorf:=hora;
            menorc:=prof;
         end;

         if (c=1) then
            sumac1:=suma+mat[f,c];
         if (c=2) then
            sumac2:=suma+mat[f,c];
         if (c=3) then
            sumac3:=suma+mat[f,c];
         if (c=4) then
            sumac4:=suma+mat[f,c];
      end;
   end;

   promc1:=sumac1/3;
   promc2:=sumac2/3;
   promc3:=sumac3/3;
   promc4:=sumac4/3;



   writeln('La menor medicion fue a las ',menorf,' en la profundidad ',menorc);
   writeln('Prom 1',promc1:1:2);
   writeln('Prom 2',promc2:1:2);
   writeln('Prom 3',promc3:1:2);
   writeln('Prom 4',promc4:1:2);



   readkey;
End.
