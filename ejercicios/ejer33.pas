program ejer;
uses crt;

var
   sph:real;
   ht:integer;
   stotal:real;

Begin
   clrscr;
   write('Introducir salario por hora ');
   readln(sph);
   write('Introducir horas trabajadas ');
   readln(ht);
   stotal:=ht*sph;
   if ht>35 then
     begin
        write('El salario total es de $',stotal+(stotal*(40/100)):1:2);
     end
   else
     begin
        write('El salario total es de $',stotal:1:2);
     end;
   readkey;
End.
