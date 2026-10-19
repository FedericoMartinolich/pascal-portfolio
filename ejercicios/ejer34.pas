program ejer;
uses crt;

var
   dia:integer;
   mes:integer;
   ano:integer;

Begin
   clrscr;
   write('Introducir dia (Numero)');
   readln(dia);
   write('Introducir mes (Numero)');
   readln(mes);
   write('Introducir a¤o (Numero)');
   readln(ano);

   case dia of
      1,3,5,7,8,10,12:
      begin
         if (dia>31) or (dia<1) then
            begin
               write('ERROR: Fecha invalida');
            end
         else
            begin
               write(dia,'/',mes,'/',ano);
            end;
      end;
      4,6,9,11:
      begin
         if (dia>30) or (dia<1) then
            begin
               write('ERROR: Fecha invalida');
            end
         else
            begin
               write(dia,'/',mes,'/',ano);
            end;
      end;
      2:
      begin
         if (ano mod 4=0) or (ano mod 100=0) then
         begin
            if (dia>29) or (dia<1) then
               begin
                  write('ERROR: Fecha invalida');
               end
            else
               begin
                  write(dia,'/',mes,'/',ano);
               end;
         end
         else
         begin
            if (dia>28) or (dia<1) then
               begin
                  write('ERROR: Fecha invalida');
               end
            else
               begin
                  write(dia,'/',mes,'/',ano);
               end;
         end;
      end;
   end;
   readkey;
End.
