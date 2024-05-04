Program timer;
uses crt;
var n,s,i: integer;
begin
s := 0;
i := 0;
n := 0;
for s := 1 to 59 do begin
  delay(250);
  gotoxy(20,10);
  write(s);
 end;
end.




