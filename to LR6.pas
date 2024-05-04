program Notice;
uses crt;
type t=record
           number: byte;
           FIO: string[27];
           one: byte;
           two: byte;
           three: byte;
           four: byte;
           five: byte;
       end;
     v=array[1..5] of string[9];
     w=array [1..10] of t;
var a:v;
    b:w;
    i:byte;
begin
    clrscr;
    a[1]:='Phisics';
    a[2]:='Chemestry';
    a[3]:='Biology';
    a[4]:='Math';
    a[5]:='ICT';
    for i:=1 to 5 do
       writeln(i:1,'. ',a[i]);
    writeln('╔══════════════════════════════╦═════════════════════════════╗');
    writeln('║                              ║     Оценка по предмету      ║');
    writeln('║         ФИО студента         ╠═════╦═════╦═════╦═════╦═════╣');
    writeln('║                              ║  1  ║  2  ║  3  ║  4  ║  5  ║');
    writeln('╠══╦═══════════════════════════╬═════╬═════╬═════╬═════╬═════╣');
    for i:=1 to 10 do
    with b[i] do
       begin
         gotoxy(0,10+i);      
         write('║');
         gotoxy(1,10+i);
         read(number);
         gotoxy(4,10+i);             
         write('║');
         readln;
         gotoxy(6,10+i);
         read(FIO);
         gotoxy(32,10+i);
         write('║');
         gotoxy(33,10+i);
         read(one);
         gotoxy(38,10+i);
         write('║');
         gotoxy(39,10+i);
         read(two);
         gotoxy(44,10+i);
         write('║');
         gotoxy(45,10+i);
         read(three);
         gotoxy(50,10+i);
         write('║');
         gotoxy(51,10+i);
         read(four);
         gotoxy(56,10+i);
         write('║');
         gotoxy(57,10+i);
         read(five);
         gotoxy(62,10+i);
         write('║');
       end;
    readkey;
end.  