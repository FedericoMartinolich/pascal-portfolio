program ejer;
uses crt;

type
   mat=array[1..2,1..2]of integer;

var
   a:mat;
   cero,i,j:integer;

Begin
   clrscr;

   for i:=1 to 2 do
   begin
      for j:=1 to 2 do
      begin
         write('-> ');readln(a[i,j])
      end;
   end;

   for i:=1 to 2 do
   begin
      for j:=1 to 2 do
      begin
         if a[i,j]=0 then
         cero:=cero+1
      end;
   end;
   writeln('Hay ',cero,' cero(s)');
   readkey;
End.
