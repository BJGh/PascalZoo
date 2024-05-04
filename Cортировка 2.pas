Program Pr6;
uses crt;
type vector = array [1..10] of real;
var A: vector;
i, n, k:integer;
R:real;

begin
read (n);
clrscr;
for i := 1 to n do
read (A[i]);

for k := 1 to n - k do   
  for i := 1 to n - k do
    if A[i] < A[i + 1] then begin
  
  R := A[i];
  A[i] := A[i+1];
  A[i+1] := R;
  end;
 for k := 1 to n do
  writeln (A[k]);
  end.