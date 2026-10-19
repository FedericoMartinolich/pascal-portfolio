program ejer;
uses crt;

type mat=array [1..5,1..5] of integer;

var
   a:mat;
   f,c,suma:integer;


Begin
   clrscr;
   for f:=1 to 5 do
   begin
      for c:=1 to 5 do
      begin
         readln(a[f,c]);
      end;
   end;

   for f:=1 to 5 do
   begin
      for c:=1 to 5 do
      begin
         if (f=c) then
         begin
            suma:=suma+a[f,c];
         end;
      end;
   end;

   writeln('La suma de la diagonal 1pal es de ',suma);

   readkey;
End.
