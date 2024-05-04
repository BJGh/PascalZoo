uses crt;
var A: array [1..10] of integer;
n,i: integer;
begin
writeln ('¬ведите индекс массива от 1 до 10');
repeat
read(n);
clrscr;
 for i := 1 to n do
      begin
       write ('a[',i,']=');
       read (a[i]);
       end;
until (n <= 10) and (n < 1);
  end.