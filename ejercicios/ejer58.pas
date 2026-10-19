program ejer;
uses crt;

var
   nom:string;
   n1,n2,n3,n4,n5,n6:real;
   op:string;
   prom,promg,grupo:real;
   cda:integer;
   a:real;
Begin
   clrscr;
      a:=(-1);
   repeat
      a:=1+a;
      write('Nombre-> ');
      readln(nom);
      nom:=upcase(nom);
      if nom='FIN'then
      begin
      write('');
      end
      else
      begin
      write('Calificacion 1-> ');
      readln(n1);
      write('Calificacion 2-> ');
      readln(n2);
      write('Calificacion 3-> ');
      readln(n3);
      write('Calificacion 4-> ');
      readln(n4);
      write('Calificacion 5-> ');
      readln(n5);
      write('Calificacion 6-> ');
      readln(n6);
      prom:=(n1+n2+n3+n4+n5+n6)/6;
      promg:=(prom+promg);
      end;


      writeln('Promedio de ',nom,'=',prom:1:0);

      if nom='FIN' then
         begin
         end
         else
         begin
         cda:=cda+1
         end;

   until (nom='FIN');

   grupo:=(promg/a);
   clrscr;
   writeln('Cantidad de alumnos-> ',cda);
   writeln('Promedio del grupo-> ',grupo:1:0);

   readkey;
End.
