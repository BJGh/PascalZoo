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
  write('�������');
  for i := 1 to n do 
    readln(tab.fio);
     
    writeln('������� ��� ��������');
    for i := 1 to n do 
    begin
     readln(tab.god);
     clrscr;
     end;
    writeln('������� �����');
    for i:=1 to n do
      begin
     readln(tab.adress);
     clrscr;
     end;
     writeln('������� ���');
     for i := 1 to n do 
      begin
     readln(tab.pol);
     clrscr;
     end;
     for i:= 1 to n do 
      begin
     writeln('������� ����');
     readln(tab.rost);
     clrscr;
     end;
     write ('���':4,'��� ��������':4,'�����':4,'���':4,'����':4);
    
     writeln(tab.fio);
     writeln(tab.god);
     writeln(tab.adress);
     writeln(tab.rost);
     writeln(tab.pol);
     end.