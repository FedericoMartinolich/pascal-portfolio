program ejer;
uses crt;

Type
   club=record
   nombre:string;
   socios:integer;
   sede:string;
end;
   vec=array[1..2]of club;

procedure cargar(var v1,v2:vec);
var i:integer;
begin

   writeln('registros:');

   for i:=1 to 2 do
   begin
      write('Nombre-> ');readln(v1[i].nombre);
      write('Socios-> ');readln(v1[i].socios);
      write('Sede-> ');readln(v1[i].sede);
   end;

   writeln('Identificar:');

   for i:=1 to 2 do
   begin
      write('Nombre-> ');readln(v2[i].nombre);
   end;

end;

procedure analisis(v1,v2:vec);
var i,j,jv,jf:integer;
b:boolean;
begin

   for i:=1 to 2 do
   begin
      for j:=1 to 2 do
      begin
         if (jv<>j) and (jf<>j) then
         begin
            if v1[i].nombre=v2[j].nombre then
            begin
               writeln('El club ',v2[j].nombre,' existe');
               jv:=j;
            end
            else
            begin
               writeln('El club ',v2[j].nombre,' no existe');
               jf:=j;
            end;
         end;
      end;
   end;

end;




var v1,v2:vec;


Begin
   clrscr;
   cargar(v1,v2);
   analisis(v1,v2);
   readkey;
End.
