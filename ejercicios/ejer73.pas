program ejer;
uses crt;

var
   a,b,c,i:integer;

Begin
   clrscr;
   for i:=1 to 5 do
   begin
      writeln('Escriba 3 numeros a continuacion');readln(a);readln(b);readln(c);
      if (a<=b) and (a<=c) then
         begin
            if (b<=c) then
               begin
                  writeln(a,' ',b,' ',c);
               end
            else
               begin
                  writeln(a,' ',c,' ',b);
               end;
         end
      else
         begin
            if (b<=a) and (b<=c) then
               begin
                  if (a<=c) then
                     begin
                        writeln(b,' ',a,' ',c);
                     end
                  else
                     begin
                        writeln(b,' ',c,' ',a);
                     end;
               end
            else
               begin
                  if (a<=b) then
                     begin
                        writeln(c,' ',a,' ',b);
                     end
                  else
                     begin
                        writeln(c,' ',b,' ',a);
                     end;
               end;
         end;
   end;
   readkey;
End.