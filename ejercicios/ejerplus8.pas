program ejer;
uses crt;

type vec=array[1..4]of integer;

procedure cargar(var v:vec);
var i:integer;
begin

   for i:=1 to 4 do
   begin
      readln(v[i]);
   end;

end;

procedure calcular(var r:vec; v:vec);
var i,j,h:integer;
begin

   for i:=1 to 4 do
   begin
      j:=i-1;
      if j=0 then
      else
      r[i]:=v[i]-v[j];
   end;
   r[1]:=v[1];

end;

procedure mostrar(r:vec);
var i:integer;
begin

   for i:=1 to 4 do
   begin
      write(r[i],' ');
   end;

end;

var v,r:vec;

//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

Begin
   clrscr;
   cargar(v);
   calcular(r,v);
   mostrar(r);
   readkey;
End.
