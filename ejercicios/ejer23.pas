program ejer23;
uses crt;

var
   vpd:real;
   vpdx3:real;
   descuento:real;

Begin
    clrscr;
    write ('Introducir el valor del producto ');
    readln (vpd);
    vpdx3:=vpd*3;
    descuento:=vpdx3-(vpdx3*(20/100));
    if vpdx3>4999 then
       begin
          write ('El total del producto llevando 3 unidades es de ',descuento:1:2);
       end
    else
       begin
          write ('El total del producto llevando 3 unidades es de ', vpdx3:1:2);
       end;
    readkey;
End.