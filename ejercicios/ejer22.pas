program ejer22;
uses crt;

var
   cdcd:real;
   cdcds:real;
   pesoengb:real;
   pegb:real;
   pemb:real;

Begin
    clrscr;
    cdcd:=700;
    write('Introducir cantidad de peso a almacenar en GB ');
    readln(pegb);
    pemb:=pegb*1024;
    cdcds:=pemb/cdcd;
    write('Necesita disponer de ',cdcds:1:2,' CDs');
    readkey;
End.