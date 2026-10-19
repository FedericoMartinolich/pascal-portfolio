program ejer;
uses crt;

var
   l:char;

Begin
   clrscr;
   Write('Escribie una vocal ');
   repeat
      begin
         readln(l);
      end;
   until (l='a') or (l='e') or (l='i') or (l='o') or (l='u');
   readkey;
End.
