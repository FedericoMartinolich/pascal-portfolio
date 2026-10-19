program ejer;
uses crt;

Type reg=record
nombre,apellido,ciudad:string;
fecha:integer;
categoria:string;
end;

vec=array[1..6]of reg;
vec1=array[1..6]of string;


procedure cargar(var r:vec);
begin

   {for i:=1 to 3 do
   begin
      readln(c[i]);
   end;}

   r[1].nombre:='carla';
   r[1].apellido:='gomez';
   r[1].ciudad:='capital';
   r[1].fecha:=1968;
   r[1].categoria:='profesor';

   r[2].nombre:='benjamin';
   r[2].apellido:='nu¤ez';
   r[2].ciudad:='rosario';
   r[2].fecha:=1971;
   r[2].categoria:='profesor';

   r[3].nombre:='pedro';
   r[3].apellido:='mendez';
   r[3].ciudad:='gchu';
   r[3].fecha:=2004;
   r[3].categoria:='estudiante';

   r[4].nombre:='agustina';
   r[4].apellido:='rodriguez';
   r[4].ciudad:='parana';
   r[4].fecha:=2003;
   r[4].categoria:='estudiante';

   r[5].nombre:='ignacio';
   r[5].apellido:='doello';
   r[5].ciudad:='gchu';
   r[5].fecha:=2006;
   r[5].categoria:='estudiante';

   r[6].nombre:='tatiana';
   r[6].apellido:='bernigaud';
   r[6].ciudad:='larroque';
   r[6].fecha:=2007;
   r[6].categoria:='estudiante';

end;

procedure calcular(var r:vec);
var i,edad:integer;
total,capital,rosario,gchu,parana,larroque:real;
nomc,nomr,nomg,nomp,noml:string;
begin

   writeln('menores de 18');
   for i:=1 to 6 do
   begin
      edad:=2022-r[i].fecha;

      if (edad<18) then
      begin
         writeln ('Edad-> ',edad);
         writeln ('Nombre-> ',r[i].nombre);
      end;
   end;

//---------------------------------------------
   writeln();
   capital:=0;
   larroque:=0;
   parana:=0;
   gchu:=0;
   rosario:=0;

   for i:=1 to 6 do
   begin
      if (r[i].ciudad='capital') and (r[i].categoria='estudiante') then
      begin
         capital:=capital+1;
         nomc:=r[i].nombre;
      end;

      if (r[i].ciudad='rosario') then
      begin
         rosario:=rosario+1;
         nomr:=r[i].nombre;
      end;

      if (r[i].ciudad='gchu') then
      begin
         gchu:=gchu+1;
         nomg:=r[i].nombre;
      end;

      if (r[i].ciudad='parana') then
      begin
         parana:=parana+1;
         nomp:=r[i].nombre;
      end;

      if (r[i].ciudad='larroque') then
      begin
         larroque:=larroque+1;
         noml:=r[i].nombre;
      end;
   end;

   total:=100;
   larroque:=(larroque/6)*total;
   parana:=(parana/6)*total;
   gchu:=(gchu/6)*total;
   rosario:=(rosario/6)*total;
   capital:=(capital/6)*total;

   if (larroque<> 0) then
   begin
      writeln(noml,',',larroque:1:2);
   end;

   if (rosario<> 0) then
   begin
      writeln(nomr,',',rosario:1:2);
   end;

   if (capital<> 0) then
   begin
      writeln(nomc,',',capital:1:2);
   end;

   if (parana<> 0) then
   begin
      writeln(nomp,',',parana:1:2);
   end;

   if (gchu<> 0) then
   begin
      writeln(nomg,',',gchu:1:2);
   end;
end;

procedure ordenar(r:vec);
var i,j:integer;
aux,aux1,aux2:string;
begin
   writeln();

   for i:=1 to (6-1) do
   begin

         for j:=(i+1) to 6 do
         begin
            if (r[i].nombre>r[j].nombre) then
            begin
               aux:=r[i].nombre;
               r[i].nombre:=r[j].nombre;
               r[j].nombre:=aux;
               aux1:=r[i].categoria;
               r[i].categoria:=r[j].categoria;
               r[j].categoria:=aux1;
               aux2:=r[i].ciudad;
               r[i].ciudad:=r[j].ciudad;
               r[j].ciudad:=aux2;
            end;
         end;

   end;

   for i:=1 to 6 do
   begin
   if ((r[i].ciudad='capital') or (r[i].ciudad='parana') or (r[i].ciudad='rosario')) then
      begin
         if (r[i].categoria='profesor') then
         begin
            writeln(r[i].nombre);
         end;
      end;
   end;

end;

//---------------------Cuerpo--de--programa------------------------

var r:vec;

Begin
   clrscr;
   cargar(r);
   calcular(r);
   ordenar(r);
   readkey;
End.
