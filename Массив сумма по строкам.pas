uses crt;
    type Matrix=array[1..10,1..10] of integer;
 var   x:Matrix;
    i,j,n,m: integer;
 sum:integer;
begin 
write('���������� ����������� �������. ��� ����� ������� ���-�� ����� � ��������');
// � ���� ��������� ���� �������������� �� �������.
readln(n,m);
clrscr;
  for i := 1 to n do
    begin
      for j := 1 to m do
      read (x[i,j]);
      
      readln;
      clrscr;
    end;
    
    write ('������� �������� �������');
    clrscr;
    
    for i := 1 to n do
    begin
      for j := 1 to m do
      write(x[i,j]:4);
      
      writeln;
      
    end;
  for i:=1 to n do 
  begin
sum:=0; 
  for j:=1 to m do
  sum:=sum+x[i,j];
writeln('����� ',i,'-� ������ ',sum); 
end;
        end.