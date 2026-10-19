program ejer43;
uses crt;

var
   pro,i:longint;

Begin
   clrscr;
   readln;
   pro:=1;

   for i:=1 to 20 do
      begin
      pro:=i*pro;
      writeln(pro);
      end;

   readln;
End.