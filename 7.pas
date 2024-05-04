Program Pr6;
uses crt;
type vector = array [1..10] of real;
var A: vector;
i, n:integer;
R:real;
begin
read (n);
clrscr;

for i := 1 to n do begin
  read (A[i]);
  end;
  
if (A[i] < A[i+1]) then begin
for i := 1 to n - 1 do
  begin
  R := A[1];
  A[1] := A[i+1];
  A[i+1] := R;
  end;
  end;
  writeln (R);
  
  end.