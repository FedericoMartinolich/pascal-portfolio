program ejer;
uses crt;

var
   precio:real;
   formadepago:integer;

Begin
   clrscr;
   write('Introducir precio: ');
   readln(precio);
   write('Introducir forma de pago (1= al contado // 2= en cuotas // 3=otro): ');
   readln(formadepago);

   case formadepago of
      1:
      begin
         write('El peso neto es de $',precio-(precio*(5/100)):1:2);
      end;
      2:
      begin
         write('El peso neto es de $',precio-(precio*(3/100)):1:2);
      end;
      3:
      begin
         write('El peso neto es de $',precio:1:2);
      end;
   else
      begin
         write('ERROR: Unicamente escribir: 1, 2 o 3')
      end;
      end;

   readkey;
End.
