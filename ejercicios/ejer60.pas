program ejer60;
uses crt;

var
   n,n1:real;
   i,a:integer;

Begin
   clrscr;
   write('a-> ');
   readln(n);//correccion
   write('n-> ');
   readln(a);//correccion: confucion en la variable a leer
   n1:=1;

   if (a>0) or (a>0) then
      begin

         for i:=1 to a do
            begin
               n1:=n*n1;
            end;

      write('La N_esima portencia de a-> ',n1:1:0);

      end
   else
      begin
         if (a=0) then
            begin
               n1:=1;
               write('La N_esima portencia de a-> ',n1:1:0);
            end
         else
            begin
               write('ERROR');
            end;
      end;
   readkey;
End.
