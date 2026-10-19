program ejer38;
uses crt;

var
   precio:real;
   stock:integer;

Begin
   clrscr;
   write('Introducir precio ');
   readln(precio);
   write('Introducir stock ');
   readln(stock);
   if (precio>9500) and (stock>50) then
      begin
         write('Para colocar en oferta: ',precio-(precio*5/100):1:2);
      end
   else
      begin
         write('El precio es de $',precio:1:2,' y el stock es de ',stock,' ya que no reunia los requisitos para aplicar el descuento');
      end;
   readkey;
End.
