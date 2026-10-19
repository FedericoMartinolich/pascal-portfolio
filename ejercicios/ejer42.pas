program ejer42;
uses crt;

var
   n:integer;
   i:integer;
   fact:integer;

Begin
   clrscr;
   write('Teclea el numero a factorizar ');
   readln(n);
   fact:=1;

   for i:=1 to n do
      begin
         fact:= fact*i;
      end;
   write(fact);
   readkey;
End.