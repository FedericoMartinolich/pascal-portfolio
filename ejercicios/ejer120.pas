program ejer;
uses crt;

type
   mat=array[1..2,1..2] of integer;

var
   a:mat;
   b:mat;
   c:mat;
   i,j:integer;

Begin
   clrscr;
   for i:=1 to 2 do
   begin
      for j:=1 to 2 do
      begin
         write('1->');readln(a[i,j]);
      end;
   end;

   for i:=1 to 2 do
   begin
      for j:=1 to 2 do
      begin
         write('2->');readln(b[i,j]);
      end;
   end;

   for i:=1 to 2 do
   begin
      for j:=1 to 2 do
      begin
         c[i,j]:=(a[i,j]+b[i,j]);
      end;
   end;

   for i:=1 to 2 do
   begin
      for j:=1 to 2 do
      begin
         writeln(c[i,j]);
      end;
   end;
   readkey;
End.
