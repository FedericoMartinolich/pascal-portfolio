program ejer;
uses crt;

var
   vec:array[1..4] of integer;
   i,par,imp:integer;

Begin
   clrscr;
   for i:=1 to 4 do
   begin
      write('Introduzca valores del vector-> ');readln(vec[i]);
   end;

   for i:=1 to 4 do
   begin
      if (vec[i] mod 2=0) then
         begin
          par:=par+vec[i];
         end
      else
         begin
          imp:=imp+vec[i];
         end;
   end;

   writeln('Par-> ',par);
   writeln('Impar-> ',imp);
   readkey;
End.
