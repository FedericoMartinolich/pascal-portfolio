program ejer;
uses crt;

var
   vec:array[1..5] of integer;
   i:integer;
   n:integer;

Begin
   clrscr;

   for i:=1 to 5 do
   begin
      readln(vec[i]);
   end;

   for i:=1 to 5 do
   begin
      if (vec[i]>0) then
      begin
      writeln(vec[i]);
      end;
   end;

   readkey;
End.
