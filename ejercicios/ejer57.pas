program ejer;
uses crt;

var
   edad:integer;
   i:integer;
   c1,c2,c3,c4:integer;

Begin
   clrscr;
   c1:=0;
   c2:=0;
   c3:=0;
   c4:=0;

   for i:=1 to 30 do
      begin
         write('Edad-> ');
         readln(edad);
         if not (edad<5) then
            begin
               if (edad<=7) and (edad>=5) then
                  begin
                     c1:=(c1+1);
                  end
               else
                  begin
                     if (edad<=10) and (edad>=8) then
                        begin
                           c2:=(c2+1);
                        end
                     else
                        begin
                           if (edad<=13) and (edad>=11) then
                              begin
                                 c3:=(c3+1);
                              end
                           else
                              begin
                                 c4:=(c4+1);
                              end;
                        end;
                  end;
            end
         else
            begin
               writeln('Edad no valida');
            end;
   end;

   clrscr;
   writeln('------------------------------------');
   writeln('Entre 5 y 7 a¤os... | ',c1,' ni¤os');
   writeln('------------------------------------');
   writeln('Entre 5 y 7 a¤os... | ',c2,' ni¤os');
   writeln('------------------------------------');
   writeln('Entre 5 y 7 a¤os... | ',c3,' ni¤os');
   writeln('------------------------------------');
   writeln('Mayores a 14 a¤os...| ',c4,' ni¤os');
   writeln('------------------------------------');

   readkey;
End.
