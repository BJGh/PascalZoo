uses crt;
var
  x, y, a, b: real;

begin
  writeln('����������,������� ������� �������������� a,b');
  readln(a, b);
  clrscr;
  writeln('���������� ������� ���������� x,y');
  readln(x, y);
  clrscr;
  if (x > 0) and (x <= b) and (y > 0) and (y <= a) then
    writeln('����� ����� � ��������������')
  else
    writeln('����� �� ����� � ��������������');
end.