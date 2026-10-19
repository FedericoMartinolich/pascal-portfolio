program ejer;
uses crt;

var
   op,a,b:integer;
   r,rt:real;
Begin
   clrscr;
   repeat
      write('OP-> ');readln(op);
      if (op=0)then
      else
      begin
      write('A-> ');readln(a);write('B-> ');readln(b);
      case op of
      1:
      begin
        r:=a+b;
      end;
      2:
      begin
        r:=a-b;
      end;
      3:
      begin
        r:=a*b;
      end;
      4:
      begin
        r:=a/b;
      end;
      end;
      end;

      rt:=r+rt;

   until (op=0);

      writeln(rt:1:2);
   readkey;
End.
