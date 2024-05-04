program menu;

uses crt;
type
  matrix = array[1..20, 1..20] of integer;
  zap = record
    sk, sb: byte;
    m: matrix;
  end;

var
  ved: array[1..10] of zap;
  i, n, k,   k1: byte;
  t: array[1..10] of byte;
//---------------------------------------------------
procedure input(str, stl: byte; var a: matrix);
var
  i, j: byte;
begin
  
  for i := 1 to str do 
    for j := 1 to stl do
    begin
      write('a[', i,',', j, ']='); 
      read(a[i, j]);
    end;
  writeln;
end;
//---------------------------------------------------
procedure output(str, stl: byte; var a: matrix);
var
  i, j: byte;
begin
readkey;
  for i := 1 to str do
  begin
    for j := 1 to stl do 
      write(a[i, j], ' ');
    writeln;
  end;
end;
//---------------------------------------------------
procedure trans(var str, stl: byte; var a: matrix);
var
  i, j, o: byte;
  a1: matrix;
begin
  for i := 1 to str do
    for j := 1 to stl do
      a1[i, j] := a[j, i];
  o := str;
  str := stl;
  stl := o;
  for i := 1 to stl do
    for j := 1 to str do
      a[i, j] := a1[i, j];
end;
//--------------------------------------------------
function plus(var str, stl: byte; var a, a1, a2: matrix): matrix;
var
  i, j: byte;
begin
  for i := 1 to str do
    for j := 1 to stl do
      a2[i, j] := a[i, j] + a1[i, j];
  plus := a2;      
end;
//--------------------------------------------------
function umnoj(var str, hh, stl: byte; var a, a1, a2: matrix): matrix;
var
  i, j, z: byte;
begin
  for i := 1 to str do
    for j := 1 to stl do
    begin
      for z := 1 to hh do
         a2[i, j]  :=  a2[i, j]  + (a[i, z] * a1[z, j]);
    end;
  umnoj := a2;
end;
//--------------------------------------------------


begin
  clrscr;
  k := 1;
  repeat
    writeln('Меню управления матрицами');
    writeln('1 - Ввод матрицы');
    writeln('2 - Вывод матрицы');
    writeln('3 - Транспонирование матрицы');
    writeln('4 - Сложение матриц');
    writeln('5 - Умножение матриц');
    writeln('Выберите пункт, если хотите выйти нажмите 6');
    read(n);
    CLRSCR;
    case n of
      1:
        begin
          writeln('Какую матрицу хотите ввести? (номер матрицы)');
          read(k);
          with ved[k] do 
          begin
            writeln('Введите размерность матрицы');read(sk);read(sb);
            
            input(sk, sb, m);
            t[k] := k;
          end;
          clrscr;
        end;
      2:
        begin
          writeln('Какую матрицу хотитие вывести? (номер матрицы )');
          read(k);
          with ved[k] do 
          begin
            output(sk, sb, m);readkey;
          end;
          clrscr;
        end;
      3: 
        begin
          writeln('Какую матрицу хотите транспонировать? (номер матрицы) ');
          read(k);
          with ved[k] do 
          begin
            trans(sk, sb, m);
            output(sk, sb, m);
            readkey;
          end;
          clrscr;
        end;
      4: 
        begin
          write('Введите номер первой матрицы: ');
          repeat
            read(k);
          until (k > 0) and (k < 11);
          write('Введите номер второй матрицы: ');
          repeat
            read(k1);
          until (k1 > 0) and (k1 < 11);
          if (t[k] <> 0) and (t[k1] <> 0) then
          begin
            if (ved[k].sb = ved[k1].sb) and (ved[k].sk = ved[k1].sk) then
            begin
              i := 0;
              repeat
                i := i + 1;
              until ved[i].sk = 0;
              t[i] := i;
              writeln('Матрица занесена в ячейку ', i);
              ved[i].m := plus(ved[k].sk, ved[k1].sb, ved[k].m, ved[k1].m, ved[i].m);
              ved[i].sk := ved[k].sk;
              ved[i].sb := ved[k].sb;
              writeln('Сложение прошло успешно');
            end
            else
              writeln('Разный размер матриц');
          end
          else
            writeln('Сложение не было произведено, так как отсутствует слагаемое'); 
          readln;
          readkey;
          clrscr;
        end;
    5: 
     begin
          write('Введите номер первой матрицы: ');
          repeat
            read(k);
          until (k > 0) and (k < 11);
          write('Введите номер второй матрицы: ');
          repeat
            read(k1);
          until (k1 > 0) and (k1 < 11);
           i := 0;
              repeat
                i := i + 1;
              until ved[i].sk = 0;
              t[i] := i;
          if ved[k].sb = ved[k1].sk then
           begin
           ved[i].sk := ved[k].sk;
           ved[i].sb:=ved[k].sb;
           ved[i].m:=umnoj(ved[k].sk, ved[k].sb, ved[k1].sb, ved[k].m, ved[k1].m, ved[i].m);
           writeln('Умножение произведено успешно, матрица занесена в ячейку ',i);
           output(ved[i].sk,ved[i].sb,ved[i].m);
           readkey;
           end
           else 
           writeln('Разный размер матриц');
           readkey;
           clrscr;
      end;
    end;
  until n = 6;
end.
