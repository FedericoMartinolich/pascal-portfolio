program ejerFedericoJMartinolich;
uses crt;

var
   precio,i,cant,cf:integer;
   color:string;
   total,totalfin,totalfincolor,totalfinsincolor:real;


Begin
   clrscr;
   write('Cantidad de usuarios-> ');readln(cant);

   for i:=1 to cant do
   begin

   write('Precio-> ');readln(precio);
   write('Cantidad fotocopias-> ');readln(cf);
   write('Color-> ');readln(color);
   color:=upcase(color);

   total:=(precio*cf);
   if (cf>100) and (200<=cf) then
   total:=total-(total*(12/100));

   if (cf>200) and (300<=cf) then
   total:=total-(total*(15/100));

   if (cf>300) then
   total:=total-(total*(18/100));

   if (color='SI') then
   begin
   total:=total+(total*(20/100));
   totalfincolor:=total+totalfincolor;
   end
   else
   begin
   totalfinsincolor:=totalfinsincolor+total;
   end;

   totalfin:=total+totalfin;

   writeln('Precio-> ',precio);writeln('Cantidad de fotocopias-> ',cf);writeln('Color-> ',color);writeln('Total-> ',total:1:2);
   end;
   writeln('Precio total entre los usuarios-> ',totalfin:1:2);
   writeln('Precio total a color entre los usuarios-> ',totalfincolor:1:2);
   writeln('Precio total sin color entre los usuarios-> ',totalfinsincolor:1:2);
   readkey;

End.
