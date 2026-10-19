program ejer;
uses crt;

var
   vec:array[1..4] of integer;
   i,j,v1,v2,pos1,pos2:integer;

Begin
   clrscr;
   for i:=1 to 4 do
   begin
      writeln('Valores del vactor: ');readln(vec[i]);
   end;
      writeln('Vec:');
   for i:=1 to 4 do
   begin
      writeln(vec[i]);
   end;

   write('pos1->');readln(pos1);
   write('v1->');readln(v1);
   write('pos2->');readln(pos2);
   write('v2->');readln(v2);

   for j:=1 to 4 do
   begin
      if (pos1=1) then
      vec[1]:=v1;
      if (pos1=2) then
      vec[2]:=v1;
      if (pos1=3) then
      vec[3]:=v1;
      if (pos1=4) then
      vec[4]:=v1;

      if (pos2=1) then
      vec[1]:=v2;
      if (pos2=2) then
      vec[2]:=v2;
      if (pos2=3) then
      vec[3]:=v2;
      if (pos2=4) then
      vec[4]:=v2;
   end;

   writeln('Vec modificado:');

   for j:=1 to 4 do
   begin
      writeln(vec[j]);
   end;

   readkey;
End.
