program ejer54;
uses crt;

var
   i,n:integer;
   a:real;
   op:string;

Begin
   clrscr;
   repeat
      begin
      readln(n);
      i:=0;

      repeat
         begin
            a:=(n mod 10);
            n:=(n div 10);
            n:=trunc(n);
            if (a=0) then
               begin
                  i:=i+1
               end;
         end;
         until (n=0);
      write(i);
      writeln('¨Desea continuar?');
      readln(op);
      op:=upcase(op);
      end;
      until (op='NO');
End.
