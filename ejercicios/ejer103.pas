program ejer;
uses crt;

var
   i:integer;
   vec:array[1..5] of integer;
   cero:integer;

Begin
   clrscr;
   for i:=1 to 5 do
   begin
      readln(vec[i]);
   end;

   for i:=1 to 5 do
   begin
      if (vec[i]=0) then
      cero:=cero+1;
   end;

   writeln('Ceros: 'cero);

   readkey;
End.
