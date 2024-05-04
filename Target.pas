uses crt;
var
  x, y, a, b: real;

begin
  writeln('Ïîæàëóéñòà,ââåäèòå ñòîğîíû ïğÿìîóãîëüíèêà a,b');
  readln(a, b);
  clrscr;
  writeln('Ïîæàëóéñòà ââåäèòå êîîğäèíàòû x,y');
  readln(x, y);
  clrscr;
  if (x > 0) and (x <= b) and (y > 0) and (y <= a) then
    writeln('Òî÷êà ëåæèò â ïğÿìîóãîëüíèêå')
  else
    writeln('Òî÷êà íå ëåæèò â ïğÿìîóãîëüíèêå');
end.