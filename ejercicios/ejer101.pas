program ejer;
uses crt;

var
   i:integer;
   vec:array[1..5] of integer;
   suma:integer;

Begin
   clrscr;
   suma:=0;
   writeln('Ingrese valores a vector');

   for i:=1 to 5 do
   begin
      readln(vec[i]);
   end;

   for i:=1 to 5 do
   begin
      suma:=suma+vec[i];
   end;

   writeln('La suma es: ',suma);
   readkey;
End.
