uses crt;
var A: array [1..10] of integer;
n,i: integer;
begin
writeln ('¬ведите элементы массива от 1 до 10');
read (n);
for i := 1 to n do
    readln (a[i]);
    clrscr;
writeln ('A=',A);
end.
    