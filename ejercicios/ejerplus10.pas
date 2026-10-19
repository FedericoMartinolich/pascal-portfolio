program ejer;
uses crt;

Type cuadros=record
id:integer;
precio:integer;
end;

vec=array[1..3]of cuadros;

procedure cargar(var c:vec);
var i:integer;
begin

   {for i:=1 to 3 do
   begin
      readln(c[i]);
   end;}

   c[1].id:=111;
   c[1].precio:=100;
   c[2].id:=112;
   c[2].precio:=500;
   c[3].id:=113;
   c[3].precio:=750;

end;

procedure calcular(var c:vec);
var i,min,max,aux,cant,idmax,idmin:integer;
begin

   min:=9999;
   max:=0;

   for i:=1 to 3 do
   begin
      if (min>c[i].precio) then
      begin
         min:=c[i].precio;
         idmin:=c[i].id;
      end;
   end;

   for i:=1 to 3 do
   begin
      if (max<c[i].precio) then
      begin
         max:=c[i].precio;
         idmax:=c[i].id;
      end;
   end;

   aux:=1000;
   cant:=0;
   for i:=1 to 3 do
   begin
      if (aux>c[i].precio) then
      begin
         aux:=aux-c[i].precio;
         cant:=cant+1;
      end;

   end;

   writeln('Min->',min);
   writeln('Max->',max);
   writeln('Con 1000 podes comprar->',cant);

end;

//---------------------Cuerpo--de--programa------------------------

var c:vec;

Begin
   clrscr;
   cargar(c);
   calcular(c);
   readkey;
End.
