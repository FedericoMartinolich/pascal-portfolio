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
var i,aux:integer;
begin

   {for i:=1 to 8 do
   begin
      {write('Nombre->');readln(c[i].nombre);
      write('Direccion->');readln(c[i].direc);
      write('Sueldo->');readln(c[i].sueldo);
      write('Edad->');readln(c[i].edad);}
   end;}

   c[1].nombre:='Maria';
   c[2].nombre:='Juan';
   c[3].nombre:='Jesus';
   c[4].nombre:='Dario';
   c[5].nombre:='Fernando';
   c[6].nombre:='Matias';
   c[7].nombre:='Facundo';
   c[8].nombre:='Federico';

   c[1].direc:=114;
   c[2].direc:=935;
   c[3].direc:=26;
   c[4].direc:=173;
   c[5].direc:=129;
   c[6].direc:=923;
   c[7].direc:=133;
   c[8].direc:=454;

   c[1].sueldo:=100;
   c[2].sueldo:=125;
   c[3].sueldo:=175;
   c[4].sueldo:=225;
   c[5].sueldo:=250;
   c[6].sueldo:=1290;
   c[7].sueldo:=345;
   c[8].sueldo:=540;

   c[1].edad:=15;
   c[2].edad:=20;
   c[3].edad:=25;
   c[4].edad:=30;
   c[5].edad:=35;
   c[6].edad:=40;
   c[7].edad:=45;
   c[8].edad:=50;

end;

procedure ordenar (c:vec);
var i,j:integer;
k:string;
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

procedure sueldos(c:Vec; var s:vec2);
var i:integer;
begin

   for i:=1 to 8 do
   begin
      if (c[i].sueldo>=500) and (c[i].sueldo<=1000) then
      begin
         s[i]:=c[i].nombre;
      end;
   end;

end;

procedure edades(c:vec; var e:integer);
var i:integer;
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

procedure edad_sueldo(c:vec; var eys:integer);
var i:integer;
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

procedure nombres_sueldos(c:vec; var ns1,ns2,ns3:vec2);
var i:integer;
begin

   for i:=1 to 8 do
   begin
      if (c[i].sueldo>=0) and (c[i].sueldo<=500) then
      begin
         //ns1[i]:=c[i].nombre;
         writeln(c[i].sueldo,' entre 0 y 500');
      end;

      if (c[i].sueldo>=750) and (c[i].sueldo>=1000) then
      begin
         //ns2[i]:=c[i].nombre;
         writeln(c[i].sueldo,' entre 750 y 1000');
      end;

      if (c[i].sueldo>1000) then
      begin
         //ns3[i]:=c[i].nombre;
         writeln(c[i].sueldo,' gana mas de 1000');
      end;
   end;

end;

procedure mostrar(var e,eys:integer; var ns1,ns2,ns3,s:vec2);
var i:integer;
begin

   writeln('Saldos entre 500 y 1000: ');
   for i:=1 to 8 do
   begin
      writeln(s[i]);
   end;
   writeln('Edades entre 40 y 50: ',e);
   writeln('Edades entre 20 y 30 y ganan entre 200 y 500: ',eys);
   {writeln('Ganan entre 0 a 500: ');
   for i:=1 to 8 do
   begin
      writeln(ns1[i]);
   end;
   writeln('Ganan entre 750 a 1000: ');
   for i:=1 to 8 do
   begin
      writeln(ns2[i]);
   end;
   writeln('Ganan mas de 1000: ');
   for i:=1 to 8 do
   begin
      writeln(ns3[i]);
   end;}
end;
//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

var c:vec;
ns1,ns2,ns3,s:vec2;
e,eys:integer;

Begin
   clrscr;
   cargar(c);
   ordenar(c);
   sueldos(c,s);
   edades(c,e);
   edad_sueldo(c,eys);
   //nombres_sueldos(ns1,ns2,ns3);
   mostrar(e,eys,ns1,ns2,ns3,s);
   readkey;

   End.
