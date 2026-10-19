program ejer;
uses crt;

var
   ctt,ctm,ctn,edad,i,sumam,sumat,suman,im,it:integer;
   inn,adulm,adult,aduln,mayorm,mayort,mayorn:integer;
   nom,nommayorm,nommayort,nommayorn:string;
   promm,promt,promn:real;

Begin
   clrscr;

   write('Cantidad de alumnos T.M.-> ');readln(ctm);
   for i:=1 to ctm do
   begin
      write('Nombre->');readln(nom);
      write('Edad->');readln(edad);
      sumam:=edad+sumam;
      im:=im+1;
      adulm:=adulm+1;
      if (edad>18) then
      adulm:=adulm+1;
      if (edad>mayorm) then
      nommayorm:=nom;
      mayorm:=edad;
   end;

   write('Cantidad de alumnos T.T.-> ');readln(ctt);
   for i:=1 to ctt do
   begin
      write('Nombre->');readln(nom);
      write('Edad->');readln(edad);
      sumat:=edad+sumat;
      it:=it+1;
      adult:=adult+1;

      if (edad>18) then
      begin
         adult:=adult+1;
      end;

      if (edad>mayort) then
        begin
           nommayort:=nom;
           mayort:=edad;
        end;
   end;

   write('Cantidad de alumnos T.N.-> ');readln(ctn);
   for i:=1 to ctn do
   begin
      write('Nombre->');readln(nom);
      write('Edad->');readln(edad);
      suman:=edad+suman;
      inn:=inn+1;

      if (edad>18) then
      begin
         aduln:=aduln+1;
      end;

      if (edad>mayorn) then
      begin
         nommayorn:=nom;
         mayorn:=edad;
      end;
   end;

   promm:=sumam/im;
   promt:=sumat/it;
   promn:=suman/inn;

   if (promm<promt) and (promm<promn) then
      writeln('El turno con menor promedio de edad es el T.M. con ',promm:1:2);

   if (promt<promm) and (promt<promn) then
      writeln('El turno con menor promedio de edad es el T.T. con ',promt:1:2);

   if (promn<promm) and (promn<promt) then
      writeln('El turno con menor promedio de edad es el T.N. con ',promn:1:2);

   if (adulm>adult) and (adulm>aduln) then
      writeln('El turno con mayor cantidad de alumnos con +18 es el T.M. con ',adulm);

   if (adult>adulm) and (adult>aduln) then
      writeln('El turno con mayor cantidad de alumnos con +18 es el T.T. con ',adult);

   if (aduln>adulm) and (aduln>adult) then
      writeln('El turno con mayor cantidad de alumnos con +18 es el T.N. con ',aduln);

   if (mayorm>mayort) and (mayorm>mayorn) then
      writeln('El alumno con mas edad es ',nommayorm,' con ',mayorm);

   if (mayort>mayorm) and (mayort>mayorn) then
      writeln('El alumno con mas edad es ',nommayort,' con ',mayort);

   if (mayorn>mayort) and (mayorn>mayorm) then
      writeln('El alumno con mas edad es ',nommayorn,' con ',mayorn);

   readkey;
End.
