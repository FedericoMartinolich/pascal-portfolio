program ejer;
uses crt;

type
   mat=array[1..2,1..2]of integer;

var
   a,b,t:mat;
   i,f,c,v:integer;

Begin
   clrscr;
   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         readln(a[f,c]);
      end;
   end;
   writeln;
   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         readln(b[f,c]);
      end;
   end;

   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         t[f,c]:=a[c,f];
      end;
   end;

   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         if b[f,c]=t[f,c] then
         v:=v+1;
      end;
   end;

   if v=4 then
   writeln('B es la traspuesta de A')
   else
   writeln('B no es la traspuesta de A');
   readkey;
End.
