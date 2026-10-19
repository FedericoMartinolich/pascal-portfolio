program ejer;
uses crt;

type mat=array [1..3,1..3] of integer;
     vec=array [1..3] of integer;

var
sf,sc:vec;
sumafila,sumacolumna,f,c,i:integer;
a:mat;

procedure carga (var a:mat);
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

procedure calcular_sumas(var sumafila,sumacolumna:integer; var sf,sc:vec; a:mat);
var f,c,i:integer;
begin
   i:=1;
   for f:=1 to 3 do
   begin

      sumafila:=0;
      for c:=1 to 3 do
      begin
         sumafila:=sumafila+a[f,c];
      end;

      sf[i]:=sumafila;
      i:=i+1;
   end;

   i:=1;
   for c:=1 to 3 do
   begin

      sumacolumna:=0;
      for f:=1 to 3 do
      begin
         sumacolumna:=sumacolumna+a[f,c];
      end;

      sc[i]:=sumacolumna;
      i:=i+1;
   end;
end;

procedure mostrar (sf,sc:vec);
var f:integer;
begin
   for f:=1 to 3 do
   begin
      write(sf[f],' ');
   end;
      writeln;
   for f:=1 to 3 do
   begin
      write(sc[f],' ');
   end;
end;

//-------------------------------Cuerpo--de--programa------------------------------------------------------------------

Begin
   clrscr;
   carga(a);
   calcular_sumas(sumafila,sumacolumna,sf,sc,a);
   mostrar(sf,sc);
   readkey;
End.
