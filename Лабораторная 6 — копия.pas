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
     writeln('╔══════════════════════════════╦═════════════════════════════╗');
    writeln('║                              ║     Дата рождения           ║');
    writeln('║         ФИО спортсмена       ╠                             ╣');
    writeln('╠══╦═════════════════════════════════════════════════════════╣');
   for i:= 1 to 5 do
    with B[i] do
       begin
        gotoxy(0,5+i);      
         write('║');;
         gotoxy(0,5+i);
         read(number);
         gotoxy(4,4+i);             
         write('║');
         readln;
         gotoxy(6,4+i);
         read(fio);
         gotoxy(32,4+i);
         readln;
         write('║');
         gotoxy(33,4+i);
         read(day);
         gotoxy(35,4+i);
         readln;
         write('.');
         read(month);
         gotoxy(38,4+i);
         readln;
         write('.');
         read(year);
         readln;
         gotoxy(62,4+i);
         write('║');
         B[i].age:= (B[i].age + (2017 - b[i].year));
         A[i].age :=  (B[i].age +B[i].age) div 10;
           end;
           clrscr;
           writeln('Нажимайте клавишу ВВОД, чтобы выводить данные');
     writeln('╔══════════════════════════════╦═════════════════════════════╗');
    writeln('║                              ║     Возраст           ║');
    writeln('║         ФИО спортсмена       ╠                             ╣');
    writeln('╠══╦═════════════════════════════════════════════════════════╣');
   for i:= 1 to 5 do
    with B[i] do
       begin
       gotoxy(0,5+i);      
         write('║');;
         gotoxy(1,5+i);
         writeln(number);
         gotoxy(4,5+i);             
         write('║');
         readln;
         gotoxy(6,5+i);
         writeln(fio);
         gotoxy(32,5+i);
         readln;
         write('║');
         gotoxy(33,5+i);
         writeln(B[i].age,'лет');
         readln;
         gotoxy(62,5+i);
         write('║');
         end;
     
  
       end.