program ejer27;
uses crt;

var
   nom1:string;
   nom2:string;
   imp1:real;
   imp2:real;

Begin
   clrscr;
   write('Introducir nombre: ');
   readln(nom1);
   write('Introducir importe: $');
   readln(imp1);
   write('Introducir nombre: ');
   readln(nom2);
   write('Introducir importe: $');
   readln(imp2);
   if (imp1>imp2) then
      begin
         write('Nombre: ', nom1 ,' // Importe;: $',imp1:1:2);
      end
   else
      begin
         write('Nombre: ', nom2 ,' // Importe;: $',imp2:1:2);
      end;
   readkey;
End.
