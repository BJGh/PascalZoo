Program Max;
uses crt;
type vector = array [1..10] of integer;
var A : vector;
i, k, n: integer;
m:real;
begin
read (n);
clrscr;
  begin
    write ('¬ведите элементы массива');
      for i := 1 to n do  
         read (A[i]);
         for i := 1 to n do 
            //k := 1;
            m := A[1];
          for i := 2 to n do 
          if A[i] > m then
          begin
            m := A[i];
            k := i;
            end;
            
     writeln ('max=',m,'number=',k);
     end;
     end.