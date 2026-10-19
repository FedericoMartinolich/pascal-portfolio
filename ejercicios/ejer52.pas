program ejer52;
uses crt;

var
   nom:string;
   nrop:integer;
   resmas:integer;

Begin
   clrscr;
   write('Introducir el nombre ');
   readln(nom);
   write('Introducir el numero de paginas ');
   readln(nrop);
   resmas:=nrop div 500;
   write('Se necesitan ',resmas,' resma(s) para ',nom);
   readkey;
End.
