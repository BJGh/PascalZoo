Program cos_sin_sqrt;
var a, b, c: real;
y :real;
begin
writeln ('Введите три числа,затем программа вычислит значения cos,sin,корень из числа');
readln (a,b,c);
if cos (a) < 1 then 
writeln ('Значение cos =', a);
if sin (b) < 0 then 
writeln ('Значение sin=',b);
if sqrt (c) >=1 then
writeln ('Значение корня из числа =',c);
end.