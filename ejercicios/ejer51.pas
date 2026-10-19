program ejer51;
uses crt;

var
   n,i:integer;
   pos:integer;
   neg:integer;
   nulo:integer;
Begin
   clrscr;
   for i:=1 to 100 do
      begin
         write('Introduzca un numero ');
         readln(n);
         if (n>0) then
               begin
                  pos:=pos+1;
               end
            else
               begin
                  if (n=0) then
                     begin
                        nulo:=nulo+1;
                     end
                  else
                     begin
                        neg:=neg+1;
                     end;
               end;

      end;
   clrscr;
   writeln('Hay',pos,' numeros positivos');
   writeln('Hay',neg,'numeros negativos');
   writeln('Hay ',nulo,' numeros nulos');
   readkey;
End.
