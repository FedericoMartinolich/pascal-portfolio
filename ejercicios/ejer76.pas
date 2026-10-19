program ejer;
uses crt;

var
   j,n,i,num:integer;
   r:real;

Begin
   clrscr;
   write('J-> ');readln(j);
   write('cuantos nros desea ingresar ');readln(n);
   for i:=1 to n do
   begin
      write('num->');readln(num);

      if (num mod j=0) then
         begin
         r:=num/j;
         writeln(r:1:0);
         end
         else
         begin
         writeln('No es divisible');
         end;
   end;
   readkey;
End.
