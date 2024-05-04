Program lab_3;
uses crt;
type vector = array [1..5] of integer;
var A:vector;
k,m,t,x,n,i,z:integer;
begin
write('Введите диапазон массива');
read(n);
write('Введите элементы массива');
for i := 1 to n do
  read(A[i]);
  for k := 1 to n - 1 do // упорядочил массив по убыванию прямым выбором.
    begin
      m:=k;
      x := A[k];
        for t := k + 1 to n do
          if A[t] > x then
            begin
              m := t;
              x := A[m];
            end;
            A[m] := A[k];
            A[k] := x;
          end; //
          z := 0;
            for i := 1 to n do
              begin
              if (A[i] = -2) or (A[i] = -3) or (A[i] = -4) or (A[i] = -5) then
              z := z + 1;
              end;             
        writeln('A=',A);
        writeln('Кол-во элементов из интервала [-5;-2] = ',z);
       end.