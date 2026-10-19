program ejer;
uses crt;

type vec=array[1..3]of integer;

function suma (var v1,v2:vec):integer;
var i:integer;
begin
   suma:=0;
   for i:=1 to 3 do
   begin
      suma:=suma+v1[i]+v2[i];
   end;
end;

//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------
var i:integer;
    v1,v2,vr:vec;

Begin
   clrscr;
   for i:=1 to 3 do
   begin
      readln(v1[i]);
   end;
   for i:=1 to 3 do
   begin
      readln(v2[i]);
   end;
   write(suma(v1,v2));
   readkey;
End.
