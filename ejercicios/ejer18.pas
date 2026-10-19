program ejer18;
uses crt;

var
   a:integer;
   b:integer;
   c:integer;

begin
   clrscr;
   write('Introducir primer valor ');
   readln(a);
   write('Introducir primer valor ');
   readln(b);
   c:= a*b;
   if a>0 then
   begin
      if b>0 then
         begin
            write('El resultado es ', c);
         end
      else
         begin
            write('ERROR');
         end;
      end
   else
      begin
         write('ERROR');
      end;
   readkey;
end.