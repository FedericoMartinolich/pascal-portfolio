program ejer;
uses crt;

var
   vec:array[1..5]of integer;
   i,cero,uno:integer;

Begin
   clrscr;


   for i:=1 to 5 do
   begin
      write('-> ');readln(vec[i]);
   end;

   for i:=1 to 5  do
   begin
      if vec[i]=0 then
      cero:=cero+1;

      if vec[i]=1 then
      uno:=uno+1;
   end;

   if (uno=cero) then
   begin
      writeln('Tiene los mismos 0 que 1');
   end
   else
   begin
      writeln('No tiene los mismos 0 que 1');
   end;

   readkey;
End.
