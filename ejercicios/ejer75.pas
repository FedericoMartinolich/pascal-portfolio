program ejer75;
uses crt;

var
   n,t:integer;
   d:integer;
   h:integer;
   m:integer;

Begin
   clrscr;
   write('Escribe minutos-> ');readln(m);

   repeat
   if (m>=60) then
   begin
   m:=(m-60);
   h:=h+1;
   end
   until (m<60);

   repeat
   if (h>=24) then
   begin
   h:=(h-24);
   d:=d+1;
   end
   until (h<24);

   writeln ('Serian ',d,' dias,',h,' horas y ',m,' minutos.');

   readkey;
End.
