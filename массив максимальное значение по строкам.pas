uses crt;
type matrix = array [1..10,1..10] of real;
var x:matrix;
i,j,n,m,k:integer;
max:real;
begin
write('���������� ����������� �������. ��� ����� ������� ���-�� ����� � ��������');
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
         
   for i := 1 to n do 
   begin
         k := 0;
         max:= x[1,j];
          for j := 2 to m do  begin
          if x[i,j] > max then
         
            max := x[i,j];
            k := i;
                 
     end;
     writeln ('Max',k,'-� ������',max);
     end;
        end.         