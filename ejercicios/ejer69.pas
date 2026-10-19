program ejer;
uses crt;

var
   USUARIO:char;
   p,n,i,s,N1:integer;

Begin
   clrscr;
   write('USUARIO-> ');readln(USUARIO);

   p:=1;

   if (USUARIO='A') then
   begin
      repeat
      readln(n);
      s:=s+n;
      until (n=0);
      writeln('USUARIO A:');
      writeln('La suma es-> ',s);
   end;


   if (USUARIO='B') then
   begin
      repeat
      readln(n);
      if (n=0) then
        begin
        end
      else
        begin
        p:=p*n
        end
      until (n=0);
      writeln('USUARIO B:');
      writeln('El producto es-> ',p);
   end;

   if (USUARIO='C') then
   begin
      writeln('¨cuantos numeros desea ingresar?'); readln(N1);
      for i:=1 to N1 do
      begin
      readln(n);
      if (i mod 2=0) then
      begin
      s:=s+n;
      end
      else
      begin
      p:=p*n;
      end;
      end;
      writeln('USUARIO C:');
      writeln('suma pares->', s);
      writeln('producto impares->', p);
   end;

   readkey;
End.
