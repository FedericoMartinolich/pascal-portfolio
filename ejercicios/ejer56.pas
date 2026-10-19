program ejer56;
uses crt;

var
   nom,nommax:string;
   rubro:string;
   a:integer;
   cde1,cde,cdemax:integer;
   zona:string;
   rta:string;
   oeste,norte,este,sur:integer;
   cte:integer;

Begin
   clrscr;
   repeat
      write('Nombre-> ');
      readln(nom);
      write('Rubro-> ');
      readln(rubro);
      write('Cantidad de empleados-> ');
      readln(cde);
      write('Zona-> ');
      readln(zona);
      zona:= upcase(zona);
      rubro:= upcase(rubro);

      if (cde1<cde) then
         begin
            nommax:=nom;
            cde1:=cde;
         end;

      if rubro='ALIMENTICIO' then
         begin
            a:=a+1;
         end;

      if (zona='OESTE') then
         begin
            oeste:=oeste+1
         end;

      if (zona='ESTE') then
         begin
            este:=este+1
         end;

      if (zona='SUR') then
         begin
            sur:=sur+1
         end;

      if (zona='NORTE') then
         begin
            norte:=norte+1
         end;

      cte:=(cde+cde);

      if (zona='OESTE') or (zona='ESTE') or (zona='SUR') or (zona= 'NORTE') then
         begin
            write('');
         end
      else
         begin
            writeln ('Se ingreso una zona no identificada');
         end;

      writeln('¨Desea ingresar otro grupo de datos? si/no');
      readln(rta);
      rta:=upcase(rta);

   until rta= ('NO');

      writeln('Cliquea para continuar');
      readkey;
      clrscr;

   writeln('La empresa con mas empleados-> ',nommax);
   writeln('Cantidad total de empleados-> ',cte);
   writeln('Cantidad de rubro alimenticio-> ',a);
   writeln('Cantidad de empresas en el norte-> ',norte);
   writeln('Cantidad de empresas en el sur-> ',sur);
   writeln('Cantidad de empresas en el este-> ',este);
   writeln('Cantidad de empresas en el oeste-> ',oeste);

      readkey
End.
