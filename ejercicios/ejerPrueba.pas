program ejer;
uses crt;

var
   a,b,c:real;

begin
   clrscr;
   write('Ingrese A: ');readln(a);
   write('Ingrese B: ');readln(b);
   write('Ingrese C: ');readln(c);

   if (a>b) and (a>c) then
   begin
      writeln('A es el mayor de los nros');
   end
   else
   begin
      if (b>c) then
      begin
         writeln('B es el mayor de los nros');
      end
      else
      begin
         writeln('C es el mayor de los nros');
      end;
   end;
   writeln('presione cualquier tecla para finalizar');readkey;
end.
