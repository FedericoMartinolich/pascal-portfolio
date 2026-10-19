program ejer;
uses crt;

type vec=array[1..3]of integer;

procedure cargar(var v1,v2,v3:vec);
var i:integer;
begin

   for i:=1 to 3 do
   begin
      readln(v1[i]);
   end;
   writeln;
   for i:=1 to 3 do
   begin
      readln(v2[i]);
   end;
   writeln;
   for i:=1 to 3 do
   begin
      readln(v3[i]);
   end;
   writeln;
end;

procedure mostrar(v1,v2,v3:vec);
var i:integer;
begin

   for i:=1 to 3 do
   begin
      write(v3[i]);
   end;

   for i:=1 to 3 do
   begin
      write(v2[i]);
   end;

   for i:=1 to 3 do
   begin
      write(v1[i]);
   end;

end;

//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

var v1,v2,v3:vec;

Begin
   clrscr;
   cargar(v1,v2,v3);
   mostrar(v1,v2,v3);
   readkey;
End.
