Program lab4;
uses crt;
type matrix = array [1..4,1..5 ] of integer;
var Y:matrix;
i,j,min:integer;
begin 
  for i := 1 to 4 do
     begin
      for j := 1 to 5 do
        read (Y[i,j]);
    clrscr;
    end;
       min := 100;
     for i := 1 to 4 do
           begin
              for j := 1 to 5 do
                if abs(Y[i,j]) < abs(min) then
                    min := abs(Y[i,j]);
     end;
write('Y=[');
   for i := 1 to 4 do
    begin
      if min = abs(Y[i,j]) then;
          write(Y[i,min]:4);
    end;
     writeln(']');
     writeln('Минимальный по модулю элемент=',min);
 end.
