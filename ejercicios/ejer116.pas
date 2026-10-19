program ejer;
uses crt;

var
   vec,cev:array [1..10] of integer;
   i,n,c,aux,j:longint;

Begin
   clrscr;

   Write('Numero de 10 -> ');readln(n);

   for i:=1 to 10 do
   begin
      cev[i]:=n mod 10;
      n:=n div 10;
   end;

   vec:=cev;

   c:=10;
   for i:=1 to 5 do
   begin
      aux:=vec[c];
      vec[c]:=vec[i];
      vec[i]:=aux;
      c:=(c-1);
   end;

   for i:=1 to 10 do
   begin
      write(vec[i]);
   end;

   writeln('');

   for i:=1 to 10 do
   begin
      Write(cev[i]);
   end;

   writeln('');

   for i:=1 to 10 do
   begin
      if (vec[i]=cev[i]) then
      else
         writeln('Se encontro un error en la posicion ',i,': el numero no es capicua');
   end;

   readkey;
End.
