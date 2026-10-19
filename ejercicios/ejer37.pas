program ejer37;
uses crt;

var
   diurno:real;
   nocturno:real;
   nom:string;
   ht:integer;
   dia:integer;
   turno:integer;
   adicional:real;

Begin
   clrscr;
   write('Introducir nombre: ');
   readln(nom);
   write('Introducir horas trabajadas: ');
   readln(ht);
   write('Introducir dia(Lunes=1/Martes=2/Miecoles=3/Jueves=4/Viernes=5/Sabado=6/Domingo=7): ');
   readln(dia);
   write('Introducir turno: ');
   readln(turno);

   diurno:=550.00;
   nocturno:=350.00;
   adicional:=200.00;

   if (turno>=10) then
      begin
         if (dia=7) then
            begin
               write('El salario es $',(nocturno*ht+adicional):1:2);
            end
         else
            begin
               write('El salario es $',(nocturno*ht):1:2);
            end;
      end
   else
      begin
         if (dia=7) then
            begin
               write('El salario es $',(diurno*ht+adicional):1:2);
            end
         else
            begin
               write('El salario es $',(diurno*ht):1:2);
            end;
      end;

   readkey;
End.
