program ejer15;
uses crt;

var
   a:real;
   b:real;
   c:real;

begin
    clrscr;
    writeln ('Introduzca 3 valores a continuacion');
    readln(a);
    readln(b);
    readln(c);
    if (a>b) and (a>c) then
        begin
           writeln ('El mayor de ellos es el numero ',a:1:2);
        end
    else
        begin
           if (b>a) and (b>c) then
              begin
                 writeln ('El mayor de ellos es el numero ',b:1:2);
              end
           else
              begin
                 writeln ('El mayor de ellos es el numero ',c:1:2);
              end;
           end;
    readln;
end.
