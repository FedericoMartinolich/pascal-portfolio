program ejer;
uses crt;

Type clientes=record


end;

vec=array[1..5]of clientes;

procedure cargar(var c:vec);
begin

   {for i:=1 to 3 do
   begin
      readln(c[i]);
   end;}

   c[1].nro:=1;
   c[1].fecha:=2020;
   c[1].categoria:='jubilado';
   c[1].valor:=20000;

   c[2].nro:=2;
   c[2].fecha:=2022;
   c[2].categoria:='menor   ';
   c[2].valor:=10000;

   c[3].nro:=3;
   c[3].fecha:=2012;
   c[3].categoria:='jubilado';
   c[3].valor:=  300;

   c[4].nro:=4;
   c[4].fecha:=2015;
   c[4].categoria:='mayor   ';
   c[4].valor:=5000;

   c[5].nro:=5;
   c[5].fecha:=2020;
   c[5].categoria:='jubilado';
   c[5].valor:=0 ;

end;

procedure calcular();
var
begin



end;

//---------------------Cuerpo--de--programa------------------------

var c:vec;

Begin
   clrscr;
   cargar(c);
   calcular(c);
   readkey;
End.
