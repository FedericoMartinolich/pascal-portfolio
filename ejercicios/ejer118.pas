program ejer;
uses crt;

var
   vec:array[1..5] of integer;
   i,j,aux:integer;

Begin
   clrscr;
   for i:=1 to 5 do
   begin
      write('-> ');readln(vec[i]);
   end;

   j:=5;
   for i:=1 to 5 do
   begin
      aux:=vec[i];
      vec[i]:=vec[j];
      vec[j]:=aux;
   end;

   for i:=1 to 5 do
   begin
      write(vec[i]);
   end;
   readkey;
End.
