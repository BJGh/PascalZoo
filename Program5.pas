var X : array [1..10] of integer;
n,i: integer;
k,s: real;
begin
  readln (n);
  i := 1;
while (i <= n) do 
   begin
    i := i + 1;
    end;
    k := 0;
    s := 0;
    i := 1;
    if (x[i] > 0) then 
    k := k +1
    else
    s := s + x[i];
    while (i <= n) do 
    writeln (k,s);
    end.