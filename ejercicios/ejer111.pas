program ejer;
uses crt;

var
   vec:array [1..5] of integer;
   i,max,min,posmax,posmin:integer;

Begin
   clrscr;
   for i:=1 to 5 do
   begin
      write('-> ');readln(vec[i]);
   end;

   max:=0;
   min:=9999;

   for i:=1 to 5 do
   begin
      if (vec[i]>max) then
      begin
         posmax:=i;
         max:=vec[i];
      end;

      if (vec[i]<min) then
      begin
         posmin:=i;
         min:=vec[i];
      end;
   end;

   for i:=1 to 5 do
   begin
      vec[posmin]:=max;
      vec[posmax]:=min;
   end;

   for i:=1 to 5 do
   begin
      writeln(vec[i]);
   end;

   readkey;
End.
