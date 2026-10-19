program ejer;
uses crt;

var
   nom:string;
   dni:longint;
   i:integer;
   //direccioncomienzo
   d_calle:string;
   d_piso:integer;
   d_num:integer;
   d_dpto:char;
   //direccionfin

Begin
   clrscr;
   write('Introducir nombre: ');
   readln(nom);
   if (nom=('')) then
   begin
   end
   else
   begin
   repeat
      begin
         write('Introducir DNI: ');
         readln(dni);
         writeln('Introducir direccion');
         write('Calle-> ');
         readln(d_calle);
         write('Numero-> ');
         readln(d_num);;
         write('Piso-> ');
         readln(d_piso);
         write('Dpto-> ');
         readln(d_dpto);
         writeln('');

         if (d_calle[1]= 'c') or (d_calle[1]= 'C') then
            begin
               writeln('Nombre: ',nom);
               writeln('DNI: ',dni);
               writeln('Direccion');
               writeln('Calle: ',d_calle);
               writeln('Numero de calle: ',d_num);
               writeln('Piso: ',d_piso);
               writeln('Departamento: ',d_dpto);
               writeln('');
            end;

         write('Introducir nombre: ');
         readln(nom);
      end;
   until nom=('');
   end;
End.
