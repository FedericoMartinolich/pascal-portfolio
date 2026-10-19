program ejer17;
uses crt;

var
   x:real;
   y:real;

begin
   clrscr;
   write ('Introducir valor de x ');
   readln (x);
   write ('Introducir valor de y ');
   readln (y);
   if (x<4) and (y<4) then
   begin
      write ('Pertenece');
   end
   else
   begin
      write ('No pertenece');
   end;
   readln;
end.
