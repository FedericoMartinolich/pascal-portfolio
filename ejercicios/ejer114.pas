program ejer;
uses crt;

var
   vec:array[1..3]of integer;
   i,c,res,pos:integer;

Begin
   clrscr;

   repeat
   c:=c+1;

      write('-> ');readln(vec[c]);


   until (c=3) or (vec[c]=0);

   res:=1;

   for i:=1 to 3 do
   begin
      if (vec[i]=0) then
      begin
         pos:=i;
         if (i=1) then
         res:=0;pos:=1;
      end
      else
      begin
         res:=vec[i]*res;
      end;
   end;



   Writeln('El producto es ',res,' y el 0 aparece en la posicion ',pos);

   readkey;
End.
