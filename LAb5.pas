Program lab_5;
uses crt;
var s,s1: string;
i: integer;
  begin
  Window (0,0,100,100);
textbackground (WHITE);
textcolor(BLACK);
clrscr;
   write('Введите строку');
    readln(s);
  s1:=s[1];
        for i:=2 to length(s) do
          if (s[i]<>' ') or (s1[length(s1)]<>' ') then 
          s1:=s1+s[i];
        write('Полученная строка=',s1);
        end.