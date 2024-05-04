Program matrix1;
uses crt;
type matrix=array [1..5,1..5] of integer;
var A:matrix;
n,m,i,j:integer;
begin
write('Установите размерность массива. Для этого укажите кол-во строк и столбцов');
readln(n,m);
clrscr;
  for i := 1 to n do
    begin
      for j := 1 to m do
      read (a[i,j]);
      
      readln;
      clrscr;
    end;
    write ('Введите элементы массива');
    clrscr;
    for i := 1 to n do
    begin
      for j := 1 to m do
      write(A[i,j]:4);
      
      writeln;
      
    end;
end.
    