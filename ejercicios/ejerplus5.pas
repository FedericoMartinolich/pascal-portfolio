program ejer;
uses crt;

var
   buscar,suma,ftt,bdni,dni,mdt,mdtf,fttf,txhtf,txht,i,bi,edad,bedad,cant,fdc,bfdc:integer;
   sexo,bsexo,rta,nom,bnom:string;
   prom:real;

Begin
   clrscr;
   writeln('¨Cuantos legajos desea ingresar?');readln(cant);
   write('Buscar-> ');readln(buscar);

   rta:='ERROR';

   for i:=1 to cant do
   begin

   writeln('Legajo -> ',i);
   write('DNI-> ');readln(dni);
   write('Nombre y apellido-> ');readln(nom);
   write('Edad-> ');readln(edad);
   write('Sexo(F=Femenino // M=Masculino)->  ');readln(sexo);
   sexo:=upcase(sexo);
   write('Forma de contratacion(1=FullTime/2=MedioDia/3=TrabajoPorHora)-> ');readln(fdc);

   if (dni=buscar) then
   begin
   bi:=i;
   bdni:=dni;
   bnom:=nom;
   bedad:=edad;
   bsexo:=sexo;
   bfdc:=fdc;
   rta:=' ';
   end;

   suma:=edad+suma;

   case fdc of
   1:
   begin
   if (sexo='F') then
   fttf:=fttf+1;
   ftt:=ftt+1;
   end;
   2:
   begin
   if (sexo='F') then
   mdtf:=mdtf+1;
   mdt:=mdt+1;
   end;
   3:
   begin
   txht:=txht+1;
   if (sexo='F') then
   txhtf:=txhtf+1;
   end;
   end;

   end;

   prom:= (suma/cant);

   writeln('Promedio de edad-> ',prom:1:2);
   writeln('Full Time-> ',ftt);
   writeln('Medio dia-> ',mdt);
   writeln('Trabajo por hora-> ',txht);
   if (txhtf>mdtf) and (txhtf>fttf) then
   writeln('Forma de contratacion con mayor numero de mujeres-> ',txhtf);
   if (txhtf<mdtf) and (mdtf>fttf) then
   writeln('Forma de contratacion con mayor numero de mujeres-> ',mdtf);
   if (fttf>mdtf) and (txhtf<fttf) then
   writeln('Forma de contratacion con mayor numero de mujeres-> ',fttf);

   writeln('Datos del DNI buscado: ');
   writeln('Legajo->',rta,bi);
   writeln('Nom->',rta,bnom);
   writeln('Edad->',rta,bedad);
   writeln('Sexo->',rta,bsexo);
   writeln('Forma de contratacion->',rta,bfdc);

   readkey;
End.
