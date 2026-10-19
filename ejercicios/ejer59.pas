program ejer59;
uses crt;

var
   ciu,ciudad,rta,cmi:string;
   chab,hab1,hab,cci:longint;
   ingreso,ingreso1:real;

Begin
   clrscr;

   repeat

      write('Ciudad-> ');readln(ciu);
      write('Habitantes-> ');readln(hab);
      write('Ingresos promedio-> ');readln(ingreso);

      if (hab>50000) then
         begin
            chab:=chab+1;
         end;

      cci:=cci+1;

      if (hab1<hab) then
         begin
            hab1:=hab;
            ciudad:=ciu;
         end;

      if (ingreso1<ingreso) then
         begin
            ingreso1:=ingreso;
            cmi:=ciu;
         end;

      writeln('¨Desea ingresar otro grupo de datos? si/no');
      readln(rta);
      rta:=upcase(rta);

   until rta= ('NO');

   clrscr;
   writeln('Ciudad com mas habitantes-> ',ciudad);
   writeln('Ciudad com mayor ingreso promedio-> ',cmi);
   writeln('Cuantas superan los 50000-> ',chab);
   writeln('Total de ciudades ingresadas-> ',cci);

   readkey;
End.
