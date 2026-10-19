program ejer;
uses crt;

var
   vec:array [1..3] of integer;
   i,pos,menor:integer;

Begin
   clrscr;
   for i:=1 to 3 do
   begin
      write('-> ');readln(vec[i]);
   end;

   menor:=9999;

   for i:=1 to 3 do
   begin
      if (vec[i]<menor) then
      begin
         menor:= vec[i];
         pos:=i;
      end;
   end;

   writeln('El menor es ',menor,' y su posicion es la nro ',pos);

   readkey;
End.
