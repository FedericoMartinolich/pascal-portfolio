program ejer;
uses crt;

var
   dia,ano:integer;
   mes,mesn:string;

Begin
   clrscr;
   write('Introducir dia-> ');readln(dia);
   write('Introducir mes-> ');readln(mes);
   write('Introducir ano-> ');readln(ano);
   mes:=upcase(mes);

   if (mes='ENERO') then
   begin
   mesn:='01';
   end;
   if (mes='FEBRERO')then
   begin
   mesn:='02';
   end;
   if (mes='MARZO')then
   begin
   mesn:='03';
   end;
   if (mes='ABRIL')then
   begin
   mesn:='04';
   end;
   if (mes='MAYO')then
   begin
   mesn:='05';
   end;
   if (mes='JUNIO')then
   begin
   mesn:='06';
   end;
   if (mes='JULIO')then
   begin
   mesn:='07';
   end;
   if (mes='AGOSTO')then
   begin
   mesn:='08';
   end;
   if (mes='SEPTIEMBRE')then
   begin
   mesn:='09';
   end;
   if (mes='OCTUBRE')then
   begin
   mesn:='10';
   end;
   if (mes='NOVIEMBRE')then
   begin
   mesn:='11';
   end;
   if (mes='DICIEMBRE')then
   begin
   mesn:='12';
   end;

   writeln('fecha-> ',ano,mesn,dia);

   readkey;
End.
