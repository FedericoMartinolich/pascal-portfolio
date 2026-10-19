program ejer;
uses crt;

var
   num,a:integer;
   par:real;

Begin
   clrscr;
   readln(num);
   repeat
   begin
      a:=(num mod 10);
      num:=(num div 10);

      if (a mod 2=0) then
      begin
         if (a=0) then
         begin
         end
         else
         begin
           par:=par+1;
         end;
      end;

      if a=0 then
         begin
         end
      else
         begin
            writeln(a);
         end;
   end;
   until (a=0);
   write ('Tiene ',par:1:0,' numero pares');
   readkey;
End.
