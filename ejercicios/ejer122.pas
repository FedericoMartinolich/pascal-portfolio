program ejer;
uses crt;

type
   mat=array[1..4,1..4] of integer;

var
   a:mat;
   b:mat;
   f,c,max1,max2,max3,max4:integer;
   pos1,pos2,pos3,pos4:integer;
   suma1,suma2,suma3,suma4:integer;

Begin
   clrscr;
   for f:=1 to 4 do
   begin
      for c:=1 to 4 do
      begin
         write('-> ');readln(a[f,c]);
      end;
   end;

   for f:=1 to 4 do
   begin
      for c:=1 to 4 do
      begin
         if (f=1) then
         begin
            suma1:=suma1+a[f,c];
         end;

         if (f=2) then
         begin
            suma2:=suma2+a[f,c];
         end;

         if (f=3) then
         begin
            suma3:=suma3+a[f,c];
         end;

         if (f=4) then
         begin
            suma4:=suma4+a[f,c];
         end;
      end;
   end;

   for f:=1 to 4 do
   begin
      for c:=1 to 4 do
      begin
         if (f=1) then
         begin
            if (a[f,c]>max1) then
            begin
               max1:=a[f,c];
               pos1:=c;
            end;
         end;
         if (f=2) then
         begin
            if (a[f,c]>max2) then
            begin
               max2:=a[f,c];
               pos2:=c;
            end;
         end;
         if (f=3) then
         begin
            if (a[f,c]>max3) then
            begin
               max3:=a[f,c];
               pos3:=c;
            end;
         end;
         if (f=4) then
         begin
            if (a[f,c]>max4) then
            begin
               max4:=a[f,c];
               pos4:=c;
            end;
         end;
      end;
   end;

   writeln('En el primer a¤o la asignatura con mas alumnos fue la materia ',pos1,' con ',max1,' y en total en el a¤o hubo ',suma1,' alumnos');
   writeln('En el segundo a¤o la asignatura con mas alumnos fue la materia ',pos2,' con ',max2,' y en total en el a¤o hubo ',suma2,' alumnos');
   writeln('En el tercer a¤o la asignatura con mas alumnos fue la materia ',pos3,' con ',max3,' y en total en el a¤o hubo ',suma3,' alumnos');
   writeln('En el cuarto a¤o la asignatura con mas alumnos fue la materia ',pos4,' con ',max4,' y en total en el a¤o hubo ',suma4,' alumnos');

   readkey;
End.
