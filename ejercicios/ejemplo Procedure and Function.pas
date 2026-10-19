program ejer;
uses crt;

   procedure carga(var v1,v2:integer);
   begin
      writeln('ingrese v1');
      readln(v1);
      writeln('ingrese v2');
      readln(v2);
   end;

   {procedure calcular (v1,v2:integer);
   begin
      if (v1>v2) then
      begin
         writeln('mayor v1',v1);
      end
      else
      begin
         writeln('mayor v2',v2);
      end;
   end;}

   function calcularsuma(v1,v2:integer):integer;
   begin
      calcularsuma:=v1+v2;
   end;

   var
   v1,v2:integer;

Begin
   clrscr;
   carga(v1,v2);
   {calcular(v1,v2);}
   writeln(calcularsuma(v1,v2));
   readkey;
End.
