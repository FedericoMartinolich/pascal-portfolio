program ejer49;
uses crt;

var
   i,n,res:longint;

Begin
   clrscr;
   res:=1;
   for i:=1 to 30 do
      begin
         readln(n);
         res:=n*res;
         write(res);
      end;
   readkey;
End.
