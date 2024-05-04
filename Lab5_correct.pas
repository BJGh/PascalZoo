Program lab_5;
uses crt;
var s: string;
i:byte;
begin
readln(s);
  for i:= length(s) downto 2  do begin
  if (s[i-1] = ' ') then
delete(s,i,1);
 end;
 writeln(s);
 end.
   
   
  
      