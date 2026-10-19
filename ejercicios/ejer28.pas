program ejer28;
uses crt;

var
   a:integer;
   b:integer;
   c:integer;

Begin
   clrscr;
   write('Introducir primer valor: ');
   readln(a);
   write('Introducir segundo valor: ');
   readln(b);
   write('Introducir tercer valor: ');
   readln(c);

  if (a>b) and (a>c) then
      begin
         if (b>c) then
            begin
               write(a, '/', b, '/', c);
            end
         else
            begin
               write(a, '/', c, '/', b);
            end;
         end
      else
         begin
            if (b>a) and (b>c) then
               begin
                  if (a>c) then
                     begin
                        write(b, '/', a, '/', c);
                     end
                  else
                     begin
                        write(b, '/', c, '/', a);
                     end;
               end;
         end;

      if (c>a) and (c>b) then
         begin
            if (a>b) then
               begin
                  write(c, '/', a, '/', b);
               end
            else
               begin
                  write(c, '/', b, '/', a);
               end;
         end;
   readkey;
End.
