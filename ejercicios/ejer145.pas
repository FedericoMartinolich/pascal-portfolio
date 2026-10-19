program ejer;
uses crt;

type vec=array[1..3]of integer;

procedure cargar(var v:vec;p:integer);
var i,aux:integer;
begin

   readln(p);

   for i:=1 to 3 do
   begin
      aux:= p mod 10;
      v[i]:=aux;
      p:=p div 10;
   end;

end;

procedure calcular(var v:vec);
var i,cero,uno:integer;
begin

   cero:=0;
   uno:=0;

   for i:=1 to 3 do
   begin
      if v[i]=0 then
      cero:=cero+1;

      if v[i]=1 then
      uno:=uno+1;
   end;

   if (uno=cero) then
   writeln('Hay la misma cantidad de 0 que de 1');
   if (uno<cero) then
   writeln('Hay mas 0 que 1');
   if (uno>cero) then
   writeln('Hay mas 1 que 0');

end;

var v:vec; p:integer;

//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

Begin
   clrscr;
   cargar(v,p);
   calcular(v);
   readkey;
End.
