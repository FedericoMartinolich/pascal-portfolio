program ejer;
uses crt;

type mat=array[1..3,1..3] of integer;
     vec=array[1..3] of real;
     vec2=array[1..9] of real;

procedure cargar(var a:mat);
var f,c:integer;
begin

   for f:=1 to 3 do
   begin
      for c:=1 to 3 do
      begin
         readln(a[f,c]);
      end;
      writeln;
   end;

end;

procedure calcular(a:mat; var prom,maxv,minv:vec; var menprom:vec2);
var f,c,i,max,min,sumanota:integer;
var sn2:real;
var sn:vec;
begin

   i:=1;
   for f:=1 to 3 do
   begin
      for c:=1 to 3 do
      begin
         sumanota:=sumanota+a[f,c];
         sn[i]:=sumanota;
         i:=i+1;
      end;
   end;

   for i:=1 to 3 do
   begin
      sn2:=(sn[i])/3;
      prom[i]:=sn2;
   end;

   min:=9999;

   for f:=1 to 3 do
   begin
   i:=1;
      for c:=1 to 3 do
      begin
         if (max<a[f,c]) then
         begin
            max:=a[f,c];
         end;
         if (min>a[f,c]) then
         begin
            min:=a[f,c];
         end;
         i:=i+1;
      end;
      maxv[i]:=max;
      minv[i]:=min;
   end;

   i:=1;
   for f:=1 to 3 do
   begin
      for c:=1 to 3 do
      begin
         if (a[f,c]<prom[i]) then
         begin
            menprom[i]:=a[f,c];
         end;
         i:=i+1;
      end;
   end;

   i:=1;
   for f:=1 to 3 do
   begin
      for c:=1 to 3 do
      begin
         if (menprom[i]<>0) then
         begin
            write(menprom[i],' ');
         end;
         i:=i+1;
      end;
   end;

end;

procedure mostrar(prom,maxv,minv:vec;menprom:vec2);
var i:integer;
begin
   for i:=1 to 3 do
   begin
      writeln('El promedio del alumno ',i,' es: ',prom[i]);
   end;

   for i:=1 to 3 do
   begin
      writeln('La nota mas alta del alumno ',i,' es: ',maxv[i],' y la menor es: ',minv[i]);
   end;

   write('Las calificaciones que no superan el promedio: ');
   for i:=1 to 3 do
   begin
      writeln(menprom[i]);
   end;
end;

var a:mat;
    maxv,minv,prom:vec;
    menprom:vec2;


//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

Begin
   clrscr;
   cargar(a);
   calcular(a,prom,maxv,minv,menprom);
   mostrar(prom,maxv,minv,menprom);
   readkey;
End.
