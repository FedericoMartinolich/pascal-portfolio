program ejer01;
uses crt;

type
partido=record
   numpartido:integer;
   clublocal:string;
   clubvisitante:string;
   goleslocal:integer;
   golesvisitante:integer;
end;
vec=array[1..3] of partido;

procedure cargar(var p:vec);
var i:integer;
begin

   for i:=1 to 3 do
   begin
      write('Id partido-> ');readln(p[i].numpartido);
      write('Club local-> ');readln(p[i].clublocal);
      write('Club visitante-> ');readln(p[i].clubvisitante);
      write('Goles del local-> ');readln(p[i].goleslocal);
      write('Goles del visitante-> ');readln(p[i].golesvisitante);
   end;

end;

procedure resultados (p:vec; var winl,winv,wine:integer);
var i,c:integer;
begin

   for i:=1 to 3 do
   begin

      if (p[i].goleslocal>p[i].golesvisitante) then
      begin
         winl:=winl+1;
      end;

      if (p[i].goleslocal<p[i].golesvisitante) then
      begin
         winv:=winv+1;
      end;

      if (p[i].goleslocal=p[i].golesvisitante) then
      begin
         wine:=wine+1;
      end;

   end;

end;

procedure diferencia (var p:vec; var maxdif,num,goll,golv:integer; var local,vis:string);
var i,diferencias:integer;
begin

   maxdif:=0;
   golv:=0;
   goll:=0;
   num:=0;
   diferencias:=0;

   for i:=1 to 3 do
   begin
      diferencias:=p[i].goleslocal-p[i].golesvisitante;

      if (diferencias<0) then
         diferencias:=diferencias*(-1);

      if (maxdif<diferencias) then
      begin
         maxdif:=diferencias;
         num:=p[i].numpartido;
         local:=p[i].clublocal;
         vis:=p[i].clubvisitante;
         goll:=p[i].goleslocal;
         golv:=p[i].golesvisitante;
      end;
   end;

end;

procedure buscar (var club:string);
begin

   write('Buscar club-> ');
   readln(club);

end;


procedure mostrar(p:vec; var winl,winv,wine:integer; var maxdif,num,goll,golv:integer; var club,local,vis:string);
var i:integer;
begin

   writeln('Partidos que gano el local: ',winl);
   writeln('Partidos que gano el visitante: ',winv);
   writeln('Partidos que terminaron en empate: ',wine);
   writeln('Mayor diferencia de goles: ',maxdif);
   writeln('Partido-> ',num);
   writeln('Club local-> ',local,' goles: ',goll);
   writeln('Club visitante-> ',vis,' goles: ',golv);

   for i:=1 to 3 do
   begin
      if (club=p[i].clublocal) then
      begin
         writeln('Partido-> ',p[i].numpartido);
         writeln('Goles-> ',p[i].goleslocal);
      end
      else
      begin
         if (club=p[i].clubvisitante) then
         begin
            writeln('Partido-> ',p[i].numpartido);
            writeln('Goles-> ',p[i].golesvisitante);
         end;
      end;

   end;

end;

//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

var
p:vec;
winl,winv,wine:integer;
maxdif,num,goll,golv:integer;
local,vis,club:string;

Begin
   clrscr;
   cargar(p);
   resultados(p,winl,winv,wine);
   diferencia(p,maxdif,num,goll,golv,local,vis);
   buscar(club);
   mostrar(p,winl,winv,wine,maxdif,num,goll,golv,club,local,vis);
   readkey;
End.
