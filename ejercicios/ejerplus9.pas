program ejer;
uses crt;

type clientes=record
nombre:string;
direc:integer;
sueldo:real;
edad:integer;
end;

vec=array[1..8]of clientes;
vec2=array[1..8]of string;

procedure cargar(var c:vec);
var i:integer;
begin

   for i:=1 to 8 do
   begin
      write('Nombre->');readln(c[i].nombre);
      write('Direccion->');readln(c[i].direc);
      write('Sueldo->');readln(c[i].sueldo);
      write('Edad->');readln(c[i].edad);
   end;

end;

procedure ordenar;
var i,j:integer;
k:string;
c:vec;
begin

   for i:=1 to 8-1 do
   begin
      for j:=(i+1) to 8 do
      begin
         if (c[i].nombre>c[j].nombre) then
         begin
            k:=c[i].nombre;
            c[i].nombre:=c[j].nombre;
            c[j].nombre:=k;
         end;
      end;
   end;

   for i:=1 to 8 do
   begin
      writeln(c[i].nombre);
   end;

end;

procedure sueldos(var s:vec2);
var i:integer;
c:vec;
begin

   for i:=1 to 8 do
   begin
      if (c[i].sueldo>=500) and (c[i].sueldo<=1000) then
      begin
         s[i]:=c[i].nombre;
      end;
   end;

end;

procedure edades(var e:integer);
var i:integer;
c:vec;
begin
   e:=0;
   for i:=1 to 8 do
   begin
      if (c[i].edad>=40) and (c[i].edad<=50) then
      begin
         e:=e+1;
      end;
   end;

end;

procedure edad_sueldo(var eys:integer);
var i:integer;
c:vec;
begin

   eys:=0;
   for i:=1 to 8 do
   begin
      if (c[i].edad>=20) and (c[i].edad<=30) and (c[i].sueldo>=200) and (c[i].sueldo<=500) then
      begin
         eys:=eys+1;
      end;
   end;

end;

procedure nombres_sueldos(var ns1,ns2,ns3:vec2);
var i:integer;
c:vec;
begin

   for i:=1 to 8 do
   begin
      if (c[i].sueldo>=0) and (c[i].sueldo<=500) then
      begin
         ns1[i]:=c[i].nombre;
      end;

      if (c[i].sueldo>=750) and (c[i].sueldo>=1000) then
      begin
         ns2[i]:=c[i].nombre;
      end;

      if (c[i].sueldo>1000) then
      begin
         ns3[i]:=c[i].nombre;
      end;
   end;

end;

procedure mostrar();
var i:integer;
begin

   writeln('Saldos entre 500 y 1000: ');
   for i:=1 to 8 do
   begin
      write(s,', ');
   end;
   writeln('Edades entre 40 y 50: ',e);
   writeln('Edades entre 20 y 30 y ganan entre 200 y 500',eys);
   writeln('Ganan entre 0 a 500: ');
   for i:=1 to 8 do
   begin
   if (ns1<>'') then
      write(ns1,', ');
   end;
   writeln('Ganan entre 750 a 1000: ');
   for i:=1 to 8 do
   begin
   if (ns2<>'') then
      write(ns2,', ');
   end;
   writeln('Ganan mas de 1000: ');
   for i:=1 to 8 do
   begin
   if (ns3<>'') then
      write(ns3,', ');
   end;
end;
//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

var c:vec;
ns1,ns2,ns3,s:vec2;
e,eys:integer;

Begin
   clrscr;
   cargar(c);
   ordenar;
   sueldos(s);
   edades(e);
   edad_sueldo(eys);
   nombres_sueldos(ns1,ns2,ns3);
   mostrar();
   readkey;
End.
