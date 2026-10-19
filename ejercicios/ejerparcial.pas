program ejer;
uses crt;

var
   numcadete,numviaje,valorviaje,cant:integer;
   viajemin,i,viajem,viajet,viajen:integer;
   valortotal1,valortotal2,valortotal3,valortotal4,cadetemin:integer;
   numviajemin:integer;
   turno:string;

Begin
   clrscr;

   write('cantidad de usuarios-> ');readln(cant);

   viajemin:=9999;

   for i:=1 to cant do
   begin
      write('Numero de cadete->');readln(numcadete);
      write('Numero de viajes->');readln(numviaje);
      write('Valor del viaje->');readln(valorviaje);
      write('Turno->');readln(turno);
      turno:= upcase(turno);

      if (numviaje>2) then
      begin
        valorviaje:=valorviaje+500;
      end;

      if (turno='MANANA') then
      begin
         viajem:=viajem+1;
      end;

      if (turno='TARDE') then
      begin
         viajet:=viajet+1;
      end;

      if (turno='NOCHE') then
      begin
         viajen:=viajen+1;
      end;

      if (numcadete=1) then
      begin
         valortotal1:=valortotal1+valorviaje;
      end;

      if (numcadete=2) then
      begin
         valortotal2:=valortotal2+valorviaje;
      end;

      if (numcadete=3) then
      begin
         valortotal3:=valortotal3+valorviaje;
      end;

      if (numcadete=4) then
      begin
         valortotal4:=valortotal4+valorviaje;
      end;

      if (viajemin>valorviaje) then
      begin
         viajemin:=valorviaje;
         cadetemin:=numcadete;
         numviajemin:=numviaje;
      end;
   end;

   writeln('Cantidad total de viajes T.M.->',viajem);
   writeln('Cantidad total de viajes T.T.->',viajet);
   writeln('Cantidad total de viajes T.N.->',viajen);

   writeln('Valor total de cadete 1->',valortotal1);
   writeln('Valor total de cadete 2->',valortotal2);
   writeln('Valor total de cadete 3->',valortotal3);
   writeln('Valor total de cadete 4->',valortotal4);

   writeln('El viaje de menor costo lo realizo el cadete nro ',cadetemin,' con un total de ',viajemin);
   writeln('en el viaje numero ',numviajemin);

   readkey;
End.
