program ejer;
uses crt;

var
   nom:array[1..3]of string;
   nota:array[1..3]of integer;
   i,j,a:integer;
   aux:string;

Begin
   clrscr;
   for i:=1 to 3 do
   begin
      write('Nom-> ');readln(nom[i]);
      write('Nota-> ');readln(nota[i]);
   end;

   for i:=1 to (3-1) do
   begin
      for j:=(i+1) to 3 do
      begin
         if (nom[i]>nom[j]) then
         begin
            aux:=nom[i];
            nom[i]:=nom[j];
            nom[j]:=aux;
         end;
      end;
   end;

   for i:=1 to (3-1) do
   begin
      for j:=(i+1) to 3 do
      begin
         if (nota[i]>nota[j]) then
         begin
            a:=nota[i];
            nota[i]:=nota[j];
            nota[j]:=a;
         end;
      end;
   end;
   writeln('Nombres: ');
   for i:=1 to 3 do
   begin
      writeln(nom[i]);
   end;
   writeln('Notas: ');
   for i:=1 to 3 do
   begin
      writeln(nota[i]);
   end;

   readkey;
End.
