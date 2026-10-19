program ejer39;
uses crt;

var
   n1:integer;
   n2:integer;
   sum:integer;

Begin
   clrscr;
   readkey;
   n1:=0;
   n2:=1;
   writeln(n1);
   writeln(n2);

      repeat
         sum:=n1+n2;
         writeln(sum);
         n1:=n2;
         n2:=sum;
      until (sum>3000);

   readkey;
End.
