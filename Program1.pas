Program pr1;
uses crt;
var x,y:real;
begin
  writeln('Пожалуйста,введите x');
  readln (x);
if x<0 then
  y := sin (x);
 if x > 1 then
  y := 0
  else 
  y := cos(x);
  writeln(y);
  
  end.
    