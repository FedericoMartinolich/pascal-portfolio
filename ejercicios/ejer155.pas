program ejer;
uses crt;



procedure cargar(var cad:string);
begin

   readln(cad);

end;

procedure voltear(cad:string);
var i:integer;
begin

   for i:=length(cad) downto 1 do
   begin
      write(cad[i]);
   end;

end;

//-----------------------------------------------Cuerpo--de--programa--------------------------------------------------------------------------------------------

var cad:string;

Begin
   clrscr;
   cargar(cad);
   voltear(cad);
   readkey;
End.
