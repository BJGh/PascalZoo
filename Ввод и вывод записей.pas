Program zapisi;
uses crt;
type zap = record
  fio:string[30];
  god:integer;
  adress:string[30];
  pol:char;
  rost:real;
  end;
 var tab:zap;
 n,i:integer;
 begin
 read(n);
  write('Фамилия');
  for i := 1 to n do 
    readln(tab.fio);
     
    writeln('Введите год рождения');
    for i := 1 to n do 
    begin
     readln(tab.god);
     clrscr;
     end;
    writeln('Введите адрес');
    for i:=1 to n do
      begin
     readln(tab.adress);
     clrscr;
     end;
     writeln('Введите пол');
     for i := 1 to n do 
      begin
     readln(tab.pol);
     clrscr;
     end;
     for i:= 1 to n do 
      begin
     writeln('Введите рост');
     readln(tab.rost);
     clrscr;
     end;
     write ('ФИО':4,'Год рождения':4,'Адрес':4,'Пол':4,'Рост':4);
    
     writeln(tab.fio);
     writeln(tab.god);
     writeln(tab.adress);
     writeln(tab.rost);
     writeln(tab.pol);
     end.