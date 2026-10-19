program ejer;
uses crt;

var
   vec:array [1..6] of integer;
   i,j,k,aux:integer;

Begin
   clrscr;

   for i:=1 to 6 do
   begin
   write('-> ');readln(vec[i]);
   end;

   write('Posicion k-> ');readln(k);

   for i:=1 to (k-1) do
   begin
      for j:=(i+1) to k do
      begin
         if (vec[i]>vec[j]) then
         begin
            aux:=vec[i];
            vec[i]:=vec[j];
            vec[j]:=aux;
         end;
      end;
   end;

   for i:=k+1 to (6-1) do
   begin
      for j:=(i+1) to 6 do
      begin
         if (vec[i]<vec[j]) then
         begin
            aux:=vec[i];
            vec[i]:=vec[j];
            vec[j]:=aux;
         end;
      end;
   end;

   for i:=1 to 6 do
   begin
      writeln(vec[i]);
   end;

   readkey;
End.
