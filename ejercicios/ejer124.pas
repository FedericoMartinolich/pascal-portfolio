program ejer;
uses crt;

var
   vec,men,may,res,posmay,posmen:array[1..5]of integer;
   i,max,suma,kw,r:integer;
   prom:real;

Begin
   clrscr;
   for i:=1 to 5 do
   begin
      write('-> ');readln(vec[i]);
   end;

   for i:=1 to 5 do
   begin
      suma:=suma+vec[i];
   end;

   prom:=suma/5;

   for i:=1 to 5 do
   begin
      if (prom>vec[i]) then
      begin
         men[i]:=vec[i];
         posmen[i]:=i;
      end;

      if (prom<vec[i]) then
      begin
         may[i]:=vec[i];
         posmay[i]:=i;
      end;
   end;

   kw:=4861;

   for i:=1 to 5 do
   begin
      r:=may[i]*kw;
      res[i]:=r;
   end;

   writeln;
   writeln('El/los usuario(s) que consumieron por encima del promedio son: ');

   for i:=1 to 5 do
   begin
      if (posmay[i]>0) then
      write(posmay[i],' ');
   end;

   writeln;
   writeln('El/los usuario(s) que consumieron por debajo del promedio son: ');

   for i:=1 to 5 do
   begin
      if posmen[i]>0 then
      write(posmen[i],' ');
   end;

   writeln;
   writeln('El total de los usuarios que consumieron por encima del promedio : ');

   for i:=1 to 5 do
   begin
      if (res[i]>0)then
      write(res[i],' ');
   end;
   readkey;
End.
