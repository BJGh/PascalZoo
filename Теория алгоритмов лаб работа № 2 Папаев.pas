Program lab_2;
uses crt;
type vector = array [1..5]of integer;
type vector1 = array [1..5] of integer;
type vector2 = array [1..5] of integer;
var A :vector;
B: vector1;
C:vector2;

n,m,i,j,x,y,v,w,t:integer;
left,right,middle:integer;
levo,pravo,sered:integer;
begin
  write('Ввести диапазон первого массива');
  read(n);
  write('Введите элементы первого массива');
  for i := 1 to n do
  read(A[i]);
  for i := 2 to n do  //по убыванию 1 массив.
      if A[i-1] < A[i] then
      begin
        x := A[i];
         left := 1;
         right := i - 1; 
      repeat
        middle := (left + right) div 2;
         if (A[middle] > x)then
          left := middle + 1
        else right := middle - 1;
          until left > right;
            for j :=(i - 1)downto left do
            A[j+1] := A[j];
            A[left] := x;
            end;
            write('A=',A);
            
            
        write('Введите диапазон второго массива');
          read(m);
          writeln('Введите элементы второго массива');
         for v := 1 to m do
          read(B[v]);
       for v := 2 to m do 
        if B[v-1] > B[v] then
          begin
           y := B[v];
           levo := 1;
           pravo := v - 1;
          repeat
           sered := (levo + pravo) div 2;
           if (B[sered] < y) then
             levo := sered +1
            else pravo := sered - 1;
              until levo > pravo;
                 for w := (v - 1) downto levo do
                 B[w+1] := B[w];
                 B[levo] := y;
                 end;
                 writeln('B=',B);
           
            for i := 1 to n do 
             t := i;
              for v := 1 to m do
               t := v;
             for t := 1 to 5 do
           C[t]:= A[t] + B[t];
              
               write('Конечный результат массив C=',C);
 
          end.
            
  