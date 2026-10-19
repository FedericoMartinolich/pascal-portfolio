program ejer;
uses crt;

type mat=array[1..3,1..3] of integer;
type vec=array[1..9] of integer;

procedure cargar(var a:mat);
var f,c:integer;
begin
   for f:=1 to 3 do
   begin
      for c:=1 to 3 do
      begin
         readln(a[f,c]);
      end;
   end;
end;

procedure pasar_y_ordenar(a:mat; var v:vec);
var f,c,i,j,aux:integer;
begin
   i:=1;
   for f:=1 to 3 do
   begin
      for c:=1 to 3 do
      begin
         v[i]:=a[f,c];
         i:=i+1;
      end;
   end;

   for i:=1 to 9-1 do
   begin
      for j:=i+1 to 9 do
      begin
         if v[i]>v[j] then
         begin
            aux:=v[i];
            v[i]:=v[j];
            v[j]:=aux;
         end;
      end;
   end;
end;

procedure mostrar(v:vec);
var i:integer;
begin
   for i:=1 to 9 do
   begin
      write(v[i],' ');
   end;
end;

var
a:mat;
v:vec;
//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

Begin
   clrscr;
   cargar(a);
   pasar_y_ordenar(a,v);
   mostrar(v);
   readkey;
End.
