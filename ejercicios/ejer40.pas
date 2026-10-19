program ejer;
uses crt;

var
   calif:integer;

Begin
   clrscr;
   write('Introduce la calificacion(0-10): ');
   readln(calif);

   case calif of
      0,1,2,3:
      begin
         write('Insuficiente ');
      end;
      4,5:
      begin
         write('Suficiente ');
      end;
      6,7:
      begin
         write('Bien ');
      end;
      8,9:
      begin
         write('Muy bien ');
      end;
      10:
      begin
         write('Sobresaliente ');
      end;
   else
      begin
         write('ERROR: revise el numero ingresado');
      end;
   end;

   readkey;
End.
