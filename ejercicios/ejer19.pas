program ejer19;
uses crt;

var
    nom1:string;
    nom2:string;

Begin
    clrscr;
    Writeln('Ingresar el primer alumno ');
    readln(nom1);
    writeln('Ingresar el segundo nombre ');
    readln(nom2);
    if (nom1<nom2) then
       begin
          write (nom1, ' ' ,nom2);
       end
    else
       begin
          write (nom2, ' ' ,nom1);
       end;
    readkey;
End.
