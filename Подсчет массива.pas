  Program PR5;
  type vector = array [1..10] of real;
  var A :vector;
  i, n , k : integer;
  s : real;
  begin
  writeln( '������ ��������� ������������� ��� �������� ������������� ��������� ������� � ������ �������������. ��� ������ ������� �������� �� 1 �� 10');
    read (n);
  if (n<=10) and (n<>0) then
  begin
    write ('������� �������� �������');
      for i := 1 to n do   
         read (A[i]);
              for i := 1 to n do
                   write (A[i]);
    s := 0;
    k := 0;
    for i := 1 to n do 
      if (a [i] <0) then s := s + a[i]
      else
      if (a[i] > 0) then k := k +1;
       write('s',s,'k=',k)
       end
      else write ('������������ ����, �� �������� ������� �������!');
      
      end.