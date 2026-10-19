program ejer;
uses crt;

type
   mat=array[1..2,1..2] of integer;

var
   a,b:mat;
   f,c:integer;

Begin
   clrscr;
   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         write('-> ');readln(a[f,c]);
      end;
   end;

   b:=a;

   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         b[f,c]:=b[f,c]*c;
      end;
   end;

   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         write(b[f,c]);
      end;
   end;

   readkey;
End.
