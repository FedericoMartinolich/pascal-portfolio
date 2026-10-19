program ejer;
uses crt;

var
   vec:array[1..8] of integer;
   i,posp,posu:integer;

Begin
   clrscr;
   for i:=1 to 8 do
   begin
      write('->');readln(vec[i]);
   end;

   for i:=1 to 8 do
   begin
      if vec[i]=0 then
      begin
         posu:=i;
      end;
   end;

   posp:=9999;

   for i:=1  to posu do
   begin
      if vec[i]=0 then
      begin
         if (i<posp) then
            posp:=i;
      end;
   end;

   writeln('Pos primer-> ',posp);
   writeln('Pos ultimo-> ',posu);

   readkey;
End.
