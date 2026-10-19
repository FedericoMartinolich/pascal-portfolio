program ejer;
uses crt;

var
   n:integer;
   r:string;
Begin
   clrscr;
   repeat
   readln(n);
   if (n>0) then
   begin
   if (n=2) or (n=3) or (n=5) or (n=7) then
   writeln('Es primo');
   if (n mod 2=0) or (n mod 3=0) or (n mod 5=0) or (n mod 7=0) then
   else
   begin
   r:= ('Es primo');
   writeln (r)
   end;
   end
   else
   writeln('Introdujo un numero negativo');
   until (n=0);
   readkey;
End.
