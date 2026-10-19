program ejer21;
uses crt;

var
    cvs:real;
    pds:real;
    stotal:real;
    salarioinicial:real;
    bonusporventa:real;

Begin
    clrscr;
    salarioinicial:=60000;
    bonusporventa:=1500;
    write('Introducir cantidad de ventas realizadas ');
    readln(cvs);
    write('Introducir el valor total de las ventas realizadas ');
    readln(pds);
    stotal:=salarioinicial+(bonusporventa*cvs)+(pds*(10/100));
    writeln('El salario total es de ', stotal:1:2);
    readkey;
End.
