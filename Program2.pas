Program cos_sin_sqrt;
var a, b, c: real;
y :real;
begin
writeln ('������� ��� �����,����� ��������� �������� �������� cos,sin,������ �� �����');
readln (a,b,c);
if cos (a) < 1 then 
writeln ('�������� cos =', a);
if sin (b) < 0 then 
writeln ('�������� sin=',b);
if sqrt (c) >=1 then
writeln ('�������� ����� �� ����� =',c);
end.