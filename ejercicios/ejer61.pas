program ejer61;
uses crt;

var
   n,i:integer;
   a:real;
   l1,l2,l3,l4:string;

Begin
   clrscr;
   readln(n);
   if (n<5000) and (n>0) then
      begin
         for i:=1 to 4 do
         begin
         a:=(n mod 10);
         n:=(n div 10);
         n:=trunc(n);

         if (i=1) then
         begin

         if (a=1) then
            begin
            l1:='I'
            end;

         if (a=2) then
            begin
            l1:='II'
            end;

         if (a=3) then
            begin
            l1:='III'
            end;

         if (a=4) then
            begin
            l1:='IV'
            end;

         if (a=5) then
            begin
            l1:='V'
            end;

         if (a=6) then
            begin
            l1:='VI'
            end;

         if (a=7) then
            begin
            l1:='VII'
            end;

         if (a=8) then
            begin
            l1:='VIII'
            end;

         if (a=9) then
            begin
            l1:='IX'
            end;
         end;

         if (i=2)then
         begin
         if (a=1) then
            begin
            l2:='X'
            end;

         if (a=2) then
            begin
            l2:='XX'
            end;

         if (a=3) then
            begin
            l2:='XXX'
            end;

         if (a=4) then
            begin
            l2:='XL'
            end;

         if (a=5) then
            begin
            l2:='L'
            end;

         if (a=6) then
            begin
            l2:='LX'
            end;

         if (a=7) then
            begin
            l2:='LXX'
            end;

         if (a=8) then
            begin
            l2:='LXXX'
            end;

         if (a=9) then
            begin
            l2:='XC'
            end;
         end;

         if (i=3)then
         begin
         if (a=1) then
            begin
            l3:='C'
            end;

         if (a=2) then
            begin
            l3:='CC'
            end;

         if (a=3) then
            begin
            l3:='CCC'
            end;

         if (a=4) then
            begin
            l3:='CD'
            end;

         if (a=5) then
            begin
            l3:='D'
            end;

         if (a=6) then
            begin
            l3:='DC'
            end;

         if (a=7) then
            begin
            l3:='DCC'
            end;

         if (a=8) then
            begin
            l3:='DCCC'
            end;

         if (a=9) then
            begin
            l3:='CM'
            end;
         end;

         if (i=4)then
         begin
         if (a=1) then
            begin
            l4:='M'
            end;

         if (a=2) then
            begin
            l4:='MM'
            end;

         if (a=3) then
            begin
            l4:='MMM'
            end;

         if (a=4) then
            begin
            l4:='-IV-'
            end;

         if (a=5) then
            begin
            l4:='D'
            end;

         if (a=6) then
            begin
            l4:='DC'
            end;

         if (a=7) then
            begin
            l4:='DCC'
            end;

         if (a=8) then
            begin
            l4:='DCCC'
            end;

         if (a=9) then
            begin
            l4:='CM'
            end;
         end;

      end;
      write(l4,l3,l2,l1);
      end
   else
      begin
         write('Introdujo un numero mayor o igual a 5000');
      end;

   readkey;
End.
