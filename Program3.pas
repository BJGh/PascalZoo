    for i := 1 to 10 do
    begin
   j := B[i].age;
   end;
    writeln;   
    write('╚══╩═════════════════════════════════════════════════════════╝');
    writeln;
    writeln('╔══════════════════════════════╦═════════════════════════════╗');
    writeln('║                              ║    Возраст            ║');
    writeln('║         ФИО спортсмена         ╠                             ╣');
    writeln('╠══╦═════════════════════════════════════════════════════════╣');    
      for i:= 1 to 10 do
      with B[i] do
       begin
          gotoxy(1,27+i);      
          write('║');
          gotoxy(2,27+i);
          write(number);
          gotoxy(4,27+i);      
          write('║');
          gotoxy(5,27+i);
          write(fio);
          gotoxy(32,27+i);      
          write('║');
          gotoxy(33,27+i);
          write(B[q].age);
          gotoxy(47,27+i);      
          write('║');
          gotoxy(48,27+i);
          write(B[q].age);
          gotoxy(62,27+i);
          write('║');
    end;
    for i := 1 to 10 do
    begin
   j := B[i].age;
   end;
     write('║');
     gotoxy(4,37);
     write(' Средний возраст');
     gotoxy(33,37);
     write(j);
     gotoxy(1,39);
      write('╚══╩═════════════════════════════════════════════════════════╝');
end.  