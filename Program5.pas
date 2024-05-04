var s,x,i:integer;
begin 
read := n;
  s:=0;
  i := 1;
  repeat i >= 1 do
  readln(x);
  s:=s+x;
  i:=i+1;
  until (i<=n)
  s:= s div i;
  writeln('s');
end.