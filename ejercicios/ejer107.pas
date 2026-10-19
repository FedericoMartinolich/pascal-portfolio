program ejer;
uses crt;

var
   vec:array[1..4] of integer;
   i,j,aux:integer;

Begin
   clrscr;

   for i:=1 to 4 do
   begin
      writeln('Vec->');readln(vec[i]);
   end;

   for i:=1 to (4-1) do
   begin
       for j:=(i+1) to 4 do
       begin
          if (vec[i]>vec[j]) then
          begin
             aux:=vec[i];
             vec[i]:=vec[j];
             vec[j]:=aux;
          end;
       end;
   end;

   writeln('Orden: ',vec[1],' ',vec[2],' ',vec[3],' ',vec[4]);

   readkey;
End.
