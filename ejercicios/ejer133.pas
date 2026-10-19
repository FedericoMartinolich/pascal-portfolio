program ejer;
uses crt;

type mat=array[1..5,1..5]of integer;

procedure cargar(var a:mat);
var f,c:integer;
begin

   for f:=1 to 5 do
   begin
      for c:=1 to 5 do
      begin
         read(a[f,c]);
      end;
      writeln;
   end;

end;

procedure traspuesta_y_calcular(var t,r:mat;a:mat);
var f,c:integer;
begin

   for f:=1 to 5 do
   begin
      for c:=1 to 5 do
      begin
         t[f,c]:=a[c,f];
      end;
   end;

   for f:=1 to 5 do
   begin
      for c:=1 to 5 do
      begin
         r[f,c]:=(t[f,c]*a[f,c]);
      end;
   end;

end;

procedure mostrar(r,t:mat);
var f,c:integer;
begin

   writeln('Traspuesta: ');
   for f:=1 to 5 do
   begin
      for c:=1 to 5 do
      begin
         write(t[f,c],' ');
      end;
      writeln;
   end;

   writeln('Producto :');
   for f:=1 to 5 do
   begin
      for c:=1 to 5 do
      begin
         write(r[f,c],' ');
      end;
      writeln;
   end;

end;

var t,r,a:mat;

//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

Begin
   clrscr;
   cargar(a);
   traspuesta_y_calcular(r,t,a);
   mostrar(t,r);
   readkey;
End.
