﻿program Notice;
uses crt;
type t=record
           number: byte;
           FIO: string[27];
           one: byte;
           two: byte;
           three: byte;
           four: byte;
           five: byte;
           absolutly:real;
           qualitatively:real;
       end;
     v=array[1..5] of string[11];
     w=array [1..10] of t;
var a:v;
    b:w;
    i:byte;
    f1:real;
    f2:real;
begin
    clrscr;
    a[1]:='Phisics';
    a[2]:='Chemestry';
    a[3]:='Biology';
    a[4]:='Math';
    a[5]:='Informatics';
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
         gotoxy(1,10+i);      
         write('║');
         gotoxy(2,10+i);
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
         b[i].absolutly:=((b[i].three+b[i].four+b[i].five)/5)*100;
         b[i].qualitatively:=((b[i].four+b[i].five)/5)*100;
         f1:=f1+b[i].absolutly;
         f2:=f2+b[i].qualitatively;
       end;
    writeln;   
    write('╚══╩═══════════════════════════╩═════╩═════╩═════╩═════╩═════╝');
    writeln;
    writeln;
    writeln('╔══════════════════════════════╦═════════════════════════════╗');
    writeln('║                              ║       Успеваемость %        ║');
    writeln('║         ФИО студента         ╠══════════════╦══════════════╣');
    writeln('║                              ║  Абсолютная  ║ Качественная ║');
    write('╠══╦═══════════════════════════╬══════════════╬══════════════╣');
    for i:=1 to 10 do
      with b[i] do
        begin
          gotoxy(1,27+i);      
          write('║');
          gotoxy(2,27+i);
          write(number);
          gotoxy(4,27+i);      
          write('║');
          gotoxy(5,27+i);
          write(FIO);
          gotoxy(32,27+i);      
          write('║');
          gotoxy(33,27+i);
          write(absolutly);
          gotoxy(47,27+i);      
          write('║');
          gotoxy(48,27+i);
          write(qualitatively);
          gotoxy(62,27+i);
          write('║');
        end;
    writeln;   
    write('╠══╩═══════════════════════════╬══════════════╬══════════════╣');
    writeln;
    write('║Итого по группе               ║              ║              ║');
    writeln;
    write('╚══════════════════════════════╩══════════════╩══════════════╝');
    gotoxy(33,39);
    write(f1:3:1);
    gotoxy(48,39);
    write(f2:3:1);
    readkey;
end.  