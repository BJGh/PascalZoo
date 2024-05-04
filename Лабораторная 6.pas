Program lab6;
uses crt;
type list = record
  number:byte;
  fio:string[30];
  day:byte;
  month:byte;
  year:integer;
  age:integer;
  end;
  m=array [1..10] of list;
  n=array [1..10] of list;
var j:integer;
  i:byte;
  A:n;
  B:m;
 begin
   for i:= 1 to 5 do 
     writeln('╔══════════════════════════════╦═════════════════════════════╗');
    writeln('║                              ║     Дата рождения           ║');
    writeln('║         ФИО спортсмена       ╠                             ╣');
    writeln('╠══╦═════════════════════════════════════════════════════════╣');
   for i:= 1 to 10 do
    with B[i] do
       begin
         gotoxy(1,8+i);
         read(number);
         gotoxy(4,8+i);             
         write('║');
         readln;
         gotoxy(6,8+i);
         read(fio);
         gotoxy(32,8+i);
         readln;
         write('║');
         gotoxy(33,8+i);
         read(day);
         gotoxy(35,8+i);
         readln;
         write('.');
         read(month);
         gotoxy(38,8+i);
         readln;
         write('.');
         read(year);
         readln;
         gotoxy(62,8+i);
         write('║');
         B[i].age:= (B[i].age + (2017 - b[i].year));
         A[i].age :=  (B[i].age +B[i].age) div 10;
           end;
           clrscr;
           write('Нажимайте клавишу ВВОД, чтобы выводить данные');
      for i:= 1 to 5 do 
     writeln('╔══════════════════════════════╦═════════════════════════════╗');
    writeln('║                              ║     Возраст           ║');
    writeln('║         ФИО спортсмена       ╠                             ╣');
    writeln('╠══╦═════════════════════════════════════════════════════════╣');
   for i:= 1 to 10 do
    with B[i] do
       begin
         gotoxy(1,8+i);
         write(number);
         gotoxy(4,8+i);             
         write('║');
         readln;
         gotoxy(6,8+i);
         write(fio);
         gotoxy(32,8+i);
         readln;
         write('║');
         gotoxy(33,8+i);
         write(B[i].age,' лет');
         readln;
         gotoxy(62,8+i);
         write('║');
         end;
         writeln('Средний возраст:',A.age);
          write('╚══╩═════════════════════════════════════════════════════════╝');
       end.