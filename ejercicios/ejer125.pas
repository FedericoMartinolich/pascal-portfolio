program ejer;
uses crt;

var
   mat:array[1..3,1..3] of integer;
   i,f,c:integer;
   vec:array[1..3] of integer;

Begin
   clrscr;
   for i:=1 to 3 do
   begin
      write('-> ');readln(vec[i]);
   end;

   i:=1;
   for f:=1 to 3 do
   begin
      for c:=1 to 3 do
      begin
         if (f=c) then
         begin
            mat[f,c]:=vec[i];
            i:=i+1;
         end;
      end;
   end;

   for f:=1 to 3 do
   begin
      for c:=1 to 3 do
      begin
         write(mat[f,c]);
      end;
   end;

   readkey;
End.
