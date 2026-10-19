program ejer;
uses crt;

var
   nom,nommax,sanegnom:string;
   nc,i,imax:integer;
   sa,sch,scc,mma,tscc,tsch,samax,saneg:real;

Begin
   clrscr;
   write('Nro de clientes-> ');readln(nc);
   for i:=1 to nc do
   begin
      writeln('nro de cliente-> ',i);write('Nom-> ');readln(nom);write('Sueldo actual-> ');readln(sa);write('Sueldo caja de ahorro-> ');readln(sch);write('Sueldo en cuenta corriente->');readln(scc);write('Monto maximo actualizado->');readln(mma);
//      writeln(i,' ',nom,' ',sa,' ',sch,' ',scc,' ',mma);
      if (sa>=samax) then
      begin
         nommax:=nom;
         samax:=sa;
         imax:=i;
      end;
      tscc:=tscc+scc;
      tsch:=tsch+sch;

      if (sa<0) then
      begin
      saneg:=sa;
      sanegnom:=nom;
      end;
   end;
   clrscr;
   writeln('El mayor saldo actual:');
   writeln('Nro-> ',imax);
   writeln('Nom-> ',nommax);
   writeln('Saldo-> ',samax:1:2);
   writeln('total de saldo en cuenta corriente-> ',tscc:1:2);
   writeln('total de caja de ahorro-> ',tsch:1:2);
   writeln('Saldo negativo-> ',sanegnom,': ',saneg:1:2);
   readkey;
End.
