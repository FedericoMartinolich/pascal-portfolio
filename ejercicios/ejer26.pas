program ejer26;
uses crt;

var
   a:integer;

Begin
   clrscr;
   write ('introduce valor: ');
   readln(a);
   case a of
      1:
      begin
      writeln('Lunes');
      end;
      2:
      begin
      writeln('Martes');
      end;
      3:
      begin
      writeln('Miercoles');
      end;
      4:
      begin
      writeln('Jueves');
      end;
      5:
      begin
      writeln('Viernes');
      end;
      6:
      begin
      writeln('Sabado');
      end;
      7:
      begin
      writeln('Domingo');
      end;
   else
      begin
      writeln('Estado invalido');
      end;
   end;
   readkey;
End.