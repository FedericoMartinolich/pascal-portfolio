program ejer30;
uses crt;

var
   precio:real;
   cuotas:integer;
   i1:real;
   i2:real;
   i3:real;

Begin
   clrscr;
   write('Introducir el importe total ');
   readln(precio);
   write('Introducir cantidad de cuotas ');
   readln(cuotas);

   i1:=precio*(2/100);
   i2:=precio*(3/100);
   i3:=precio*(4/100);

   if (cuotas>0) then
   begin
   case cuotas of
      1:
      begin
         write('Importe total: ', i1+precio);
      end;
      2:
      begin
         write('Importe total: ', i1+precio);
      end;
      3:
      begin
         write('Importe total: ', i1+precio);
      end;
      4:
      begin
         write('Importe total: ', i1+precio);
      end;
      5:
      begin
         write('Importe total: ', i1+precio);
      end;
      6:
      begin
         write('Importe total: ', i2+precio);
      end;
      7:
      begin
         write('Importe total: ', i2+precio);
      end;
      8:
      begin
         write('Importe total: ', i2+precio);
      end;
      9:
      begin
         write('Importe total: ', i2+precio);
      end;
   else
      begin
         write('Importe total: ', i3+precio);
      end;
   end;
   end
   else
   begin
    write('ERROR');
   end;
   readkey;
End.
