program ejer;
uses crt;

var
   mat,mats,mati:array[1..2,1..2]of integer;
   i,f,c,s,t:integer;

Begin
   clrscr;
   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         readln(mat[f,c]);
      end;
   end;

   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         if (f>=c) then
         mati[f,c]:=mat[f,c];
         if (f<=c) then
         mats[f,c]:=mat[f,c];
      end;
   end;

   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         if mats[f,c]=mat[f,c] then
         s:=s+1;
         if mati[f,c]=mat[f,c] then
         i:=i+1;
      end;
   end;

         if (s=4) then
         writeln('Es matriz triangular superior ')
         else
         if (i=4) then
         writeln('Es matriz triangular inferior ')
         else
         writeln('No es matriz triangular');
   readkey;
End.
