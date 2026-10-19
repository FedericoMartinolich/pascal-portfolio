program ejer25;
uses crt;

var
   a:integer;

Begin
   clrscr;
   Write ('Escribe un nro del 1 al 4: ');
   readln(a);
   case a of
         1:
      begin
         writeln('Casado');
      end;
         2:
      begin
         writeln('Soltero');
      end;
         3:
      begin
         writeln('Viudo');
      end;
         4:
      begin
         writeln('Separado');
      end;
   else
      begin
         write('ERROR');
      end;
   end;
   readkey;
End.
