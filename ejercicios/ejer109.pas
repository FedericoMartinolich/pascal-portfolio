program ejer;
uses crt;

var
   vec:array [1..3] of integer;
   i,pos,menor,vec1:integer;

Begin
   clrscr;
   for i:=1 to 3 do
   begin
      write('-> ');readln(vec[i]);
      vec1:=vec[1];
   end;

   menor:=9999;

   for i:=1 to 3 do
   begin
      if (vec[i]<menor) then
      begin
         menor:= vec[i];
         pos:=i;
      end;
   end;

   vec[pos]:=vec1;
   vec[1]:=menor;


   writeln(vec[1],vec[2],vec[3]);

   readkey;
End.
