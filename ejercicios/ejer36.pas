program ejer36;
uses crt;

var
   df:integer;
   sueldo:real;

Begin
   clrscr;
   write('Ingrese sueldo: ');
   readln(sueldo);
   write('Ingrese cantidad de dias faltados: ');
   readln(df);

   if (sueldo>38000) then
      begin
         case df of
            0:
            begin
               write('El sueldo neto es ',sueldo+(sueldo*(10/100)):1:2);
            end;
            1,2:
            begin
               write('El sueldo neto es ',sueldo+(sueldo*(5/100)):1:2);
            end;
         end;
      end
   else
      begin
               write('El sueldo neto es ',sueldo:1:2);
      end;

   readkey;
End.
