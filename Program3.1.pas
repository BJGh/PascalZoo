Program variant_12;
uses crt;
var x,a:real;
k:integer;
begin
   writeln('������� �������� x ������ 0.9 ,1.1 ��� 1.3');
   readln(x);
if (x=0.9) or (x=1.1) or (x=1.3) then
  begin
    for k := 1 to 10 do
      a := exp(ln(x)+k)/exp(k-1);
      writeln(a:1:3);
  end
else 
   write ('������� �������� �������� x');
end.