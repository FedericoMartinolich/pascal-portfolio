program ejer;
uses crt;

var
   dia:longint;
   mes:longint;
   ano:longint;
   dia1:longint;
   mes1:longint;
   ano1:longint;
   dia2:longint;
   mes2:longint;
   ano2:longint;
   f:longint;
   f1:longint;
   f2:longint;
   fecha:longint;
   fecha1:longint;
   fecha2:longint;

Begin
   clrscr;
   write('Introducir dia (Numero) ');
   readln(dia);
   write('Introducir mes (Numero) ');
   readln(mes);
   write('Introducir a¤o (Numero) ');
   readln(ano);

   case mes of
      1,3,5,7,8,10,12:
      begin
         if (dia>31) or (dia<1) then
            begin
               writeln('ERROR: Fecha invalida');
            end
         else
            begin
               writeln(dia,'/',mes,'/',ano);
            end;
      end;
      4,6,9,11:
      begin
         if (dia>30) or (dia<1) then
            begin
               writeln('ERROR: Fecha invalida');
            end
         else
            begin
               writeln(dia,'/',mes,'/',ano);
            end;
      end;
      2:
      begin
         if (ano mod 4=0) or (ano mod 100=0) then
         begin
            if (dia>29) or (dia<1) then
               begin
                  writeln('ERROR: Fecha invalida');
               end
            else
               begin
                  writeln(dia,'/',mes,'/',ano);
               end;
         end
         else
         begin
            if (dia>28) or (dia<1) then
               begin
                  writeln('ERROR: Fecha invalida');
               end
            else
               begin
                  writeln(dia,'/',mes,'/',ano);
               end;
         end;
      end;
   end; //FIN de "dia"

   write('Introducir dia (Numero) ');
   readln(dia1);
   write('Introducir mes (Numero) ');
   readln(mes1);
   write('Introducir a¤o (Numero) ');
   readln(ano1);

   case mes1 of
      1,3,5,7,8,10,12:
      begin
         if (dia1>31) or (dia1<1) then
            begin
               writeln('ERROR: Fecha invalida');
            end
         else
            begin
               writeln(dia1,'/',mes1,'/',ano1);
            end;
      end;
      4,6,9,11:
      begin
         if (dia1>30) or (dia1<1) then
            begin
               writeln('ERROR: Fecha invalida');
            end
         else
            begin
               writeln(dia1,'/',mes1,'/',ano1);
            end;
      end;
      2:
      begin
         if (ano1 mod 4=0) or (ano1 mod 100=0) then
         begin
            if (dia1>29) or (dia1<1) then
               begin
                  writeln('ERROR: Fecha invalida');
               end
            else
               begin
                  writeln(dia1,'/',mes1,'/',ano1);
               end;
         end
         else
         begin
            if (dia1>28) or (dia1<1) then
               begin
                  writeln('ERROR: Fecha invalida');
               end
            else
               begin
                  writeln(dia1,'/',mes1,'/',ano1);
               end;
         end;
      end;
   end; //FIN de "dia1"

   write('Introducir dia (Numero) ');
   readln(dia2);
   write('Introducir mes (Numero) ');
   readln(mes2);
   write('Introducir a¤o (Numero) ');
   readln(ano2);

   case mes2 of
      1,3,5,7,8,10,12:
      begin
         if (dia2>31) or (dia2<1) then
            begin
               writeln('ERROR: Fecha invalida');
            end
         else
            begin
               writeln(dia2,'/',mes2,'/',ano2);
            end;
      end;
      4,6,9,11:
      begin
         if (dia2>30) or (dia2<1) then
            begin
               writeln('ERROR: Fecha invalida');
            end
         else
            begin
               writeln(dia2,'/',mes2,'/',ano2);
            end;
      end;
      2:
      begin
         if (ano2 mod 4=0) or (ano2 mod 100=0) then
         begin
            if (dia2>29) or (dia2<1) then
               begin
                  writeln('ERROR: Fecha invalida');
               end
            else
               begin
                  writeln(dia2,'/',mes2,'/',ano2);
               end;
         end
         else
         begin
            if (dia2>28) or (dia2<1) then
               begin
                  writeln('ERROR: Fecha invalida');
               end
            else
               begin
                  writeln(dia2,'/',mes2,'/',ano2);
               end;
         end;
      end;
   end; //FIN "dia2"

   f:= dia+mes*100+ano*10000;
   f1:= dia1+mes1*100+ano1*10000;
   f2:= dia2+mes2*100+ano2*10000;

   if (f<=f1) and (f<=f2) then
      begin
         if (f1<=f2) then
            begin
               writeln(dia,'/',mes,'/',ano, '|',dia1,'/',mes1,'/',ano1, '|',dia2,'/',mes2,'/',ano2);
            end
         else
            begin
               writeln(dia,'/',mes,'/',ano, '|',dia2,'/',mes2,'/',ano2, '|',dia1,'/',mes1,'/',ano1);
            end;
         end
      else
         begin
            if (f1<f) and (f1<f2) then
               begin
                  if (f<f2) then
                     begin
                        writeln(dia1,'/',mes1,'/',ano1, '|',dia,'/',mes,'/',ano, '|',dia2,'/',mes2,'/',ano2);
                     end
                  else
                     begin
                        writeln(dia1,'/',mes1,'/',ano1, '|',dia2,'/',mes2,'/',ano2, '|',dia,'/',mes,'/',ano);
                     end;
               end;
         end;

      if (f2<f) and (f2<f1) then
         begin
            if (f<f1) then
               begin
                  writeln(dia2,'/',mes2,'/',ano2, '|',dia,'/',mes,'/',ano, '|',dia1,'/',mes1,'/',ano1);
               end
            else
               begin
                  writeln(dia2,'/',mes2,'/',ano2, '|',dia1,'/',mes1,'/',ano1, '|',dia,'/',mes,'/',ano);
               end;
         end;

   readkey;
End.
