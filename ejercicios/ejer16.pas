program ejer16;
uses crt;

var
    c:real;
    i:real;
    n:real;
    total:real;
    c1:real;
    i1:real;
    n1:real;

Begin
    clrscr;
    write('Introduce cantidad de respuestas correctas ');
    readln(c);
    write('Introduce cantidad de respuestas incorrectas ');
    readln(i);
    write('Introduce cantidad de respuestas nulas ');
    readln(n);
    c1:=c*4;
    i1:=i*(-1);
    n1:=n*0;
    total:=c1+i1+n1;
    writeln('El total es ',total:1:0);
    readln;
End.
