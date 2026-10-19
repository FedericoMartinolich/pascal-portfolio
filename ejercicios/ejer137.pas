program ejer;
uses crt;

type vec=array[1..3]of integer;

procedure cargar(var v1:vec; var pos,valor:integer);
var i:integer;
begin

   for i:=1 to 3 do
   begin
      readln(v1[i]);
   end;

   writeln('posicion-> ');
   readln(pos);
   writeln('valor-> ');
   readln(valor);

end;

procedure calcular(var v2:vec; v1:vec; pos,valor:integer);
var i:integer;
begin

   for i:=1 to 3 do
   begin
      v2[i]:=v1[i];
      if (i=pos) then
         v2[i]:=valor;
   end;

end;

procedure mostrar(v2:vec);
var i:integer;
begin

   for i:=1 to 3 do
   begin
      write(v2[i],' ');
   end;

end;

//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

var v1,v2:vec;
    pos,valor:integer;

Begin
   clrscr;
   cargar(v1,pos,valor);
   calcular(v2,v1,pos,valor);
   mostrar(v2);
   readkey;
End.
