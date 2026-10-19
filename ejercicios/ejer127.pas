program ejer;
uses crt;

var
   mat:array[1..6,1..6]of integer;
   i,f,c,l:integer;

Begin
   clrscr;
   for f:=1 to 6 do
   begin
      for c:=1 to 6 do
      begin
         read(mat[f,c]);
      end;
   end;

   writeln('matriz traspuesta: ');
   writeln;

   for f:=1 to 6 do
   begin
      for c:=1 to 6 do
      begin
         write;
         write(mat[c,f]);
      end;
      writeln;
   end;

   for f:=1 to 6 do
   begin
      for c:=1 to 6 do
      begin
         if (f=c) then
         begin
            if mat[c,f]=1 then
            begin
               l:=l+1;
            end;
         end;
      end;
   end;

   if (l=6) then
   writeln('Es matriz identidad');

   readkey;
End.
