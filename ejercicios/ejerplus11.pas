program ejer;
uses crt;

Type clientes=record
nombre:string;
codpostal:integer;
localidad:string;
prov:string;
direc:string;
end;

vec=array[1..4]of clientes;

procedure cargar(var c:vec);
var i:integer;
begin

   {for i:=1 to 3 do
   begin
      readln(c[i]);
   end;}

   c[1].nombre:='Juan';
   c[1].codpostal:=2820;
   c[1].localidad:='Gchu';
   c[1].prov:='Entre Rios';
   c[1].direc:='Bor 700';
   c[2].nombre:='Pablo';
   c[2].codpostal:=2820;
   c[2].localidad:='Gchu';
   c[2].prov:='Entre Rios';
   c[2].direc:='Caseros 400';
   c[3].nombre:='Rodrigo';
   c[3].codpostal:=2821;
   c[3].localidad:='Parana';
   c[3].prov:='Entre Rios';
   c[3].direc:='Italia 100';
   c[4].nombre:='Jose';
   c[4].codpostal:=2124;
   c[4].localidad:='Capital';
   c[4].prov:='Bs As';
   c[4].direc:='Zaragoza 20';

end;

procedure calcular(var c:vec);
var i,j,aux2:integer;
p,aux,aux3,aux4,aux5:string;
begin

   write('Localidad-> ');readln(p);

   aux:='';
   aux2:=0;
   aux3:='';
   aux4:='';
   aux5:='';
   for i:=1 to 4-1 do
   begin
      for j:=i+1 to 4 do
      begin
         if (c[i].direc>c[j].direc) then
         begin
            aux:=c[i].nombre;
            c[i].nombre:=c[j].nombre;
            c[j].nombre:=aux;

            aux2:=c[i].codpostal;
            c[i].codpostal:=c[j].codpostal;
            c[j].codpostal:=aux2;

            aux3:=c[i].localidad;
            c[i].localidad:=c[j].localidad;
            c[j].localidad:=aux3;

            aux4:=c[i].prov;
            c[i].prov:=c[j].prov;
            c[j].prov:=aux4;

            aux5:=c[i].direc;
            c[i].direc:=c[j].direc;
            c[j].direc:=aux5;
         end;

      end;
   end;

   for i:=1 to 4 do
   begin

      if (p=c[i].prov) then
      begin
         writeln(c[i].nombre);
         writeln(c[i].localidad);
         writeln(c[i].direc);
         writeln;
      end;
   end;

end;

//---------------------Cuerpo--de--programa------------------------

var c:vec;

Begin
   clrscr;
   cargar(c);
   calcular(c);
   readkey;
End.
