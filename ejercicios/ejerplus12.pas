program ejer;
uses crt;

Type empleado=record
nombre:string;
edad:integer;
s1,s2,s3:real;
end;

vec:array[1..3]of empleados;
sum:array[1..3]of integer;

procedure cargar(var e:vec);
var
begin

   {for i:=1 to 3 do
   begin
      readln(e[i]);
   end;}

   nombre[1]:='Eduardo';
   edad[1]:=22;
   s1[1]:10000;
   s2[1]:12000;
   s3[1]:15000;

   nombre[2]:='Pablo';
   edad[2]:=40;
   s1[2]:18000;
   s2[2]:25000;
   s3[2]:25000;

   nombre[3]:='Eduardo';
   edad[3]:=62;
   s1[3]:10000;
   s2[3]:10500;
   s3[3]:12000;

end;

procedure calcular(var e:vec);
var i,sumas:integer;
suma:sum;
begin

   sumas:=0;
   for i:=1 to 3 do
   begin
      sumas:=sumas+e[i].s1+e[i].s2+e[i].s3;
      suma[i]:=e[i].s1+e[i].s2+e[i].s3;
   end;

   i:=1;
   fila:=1;
   for f:=1 to 3 do
   begin
      for:=1 to 3 do
      begin

         if (f=1) then
            suma[f,c]:=e[i].s1;

         if (f=2) then
            suma[f,c]:=e[i].s2;

         if (f=3) then
            suma[f,c]:=e[i].s3;


         i:=i+1;
      end;
      i:=1;
      fila:=fila+1;
   end;

end;

//---------------------Cuerpo--de--programa------------------------

var

Begin
   clrscr;
   cargar();
   calcular();
   readkey;
End.
