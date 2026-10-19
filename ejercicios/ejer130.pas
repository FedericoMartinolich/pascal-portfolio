program ejer;
uses crt;

var
   mat:array[1..2,1..2] of real;
   pos,neg:array[1..4] of real;
   i,f,c,cero,conpos,conneg:integer;

Begin
   clrscr;
   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         readln(mat[f,c]);
      end;
   end;

   i:=1;
   for f:=1 to 2 do
   begin
      for c:=1 to 2 do
      begin
         if (mat[f,c]>0) then
         begin
            pos[i]:=mat[f,c];//Como pasar una matriz a vector??
         end;
         if (mat[f,c]<0) then
         begin
            neg[i]:=mat[f,c];
         end;
         if (mat[f,c]=0) then
         begin
            cero:=cero+1;
         end;
         i:=i+1;
      end;
   end;

   for i:=1 to 4 do
   begin
      if (pos[i]=0) then
      else
      begin
         conpos:=conpos+1;
      end;
   end;

   for i:=1 to 4 do
   begin
      if (neg[i]=0) then
      else
      begin
         conneg:=conneg+1;
      end;
   end;

   write('Valores positivos:');writeln(conpos);

   write('Valores negativos:');writeln(conneg);

   writeln('Valores cero (0):',cero);

   readkey;
End.
