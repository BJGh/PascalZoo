Program max_of_three;
 var  a, b, c, max: integer;
 
begin
    write ('������� ��� �����: ');
    readln (a,b,c);
 
    if a >= b then
        max := a
    else
        max := b;
    if c  > max then
        max := c;
     if (a  =  b)  and (b=c) and (a=c) then
     writeln('��� ��������� ����� �����')
     else
     
    writeln ('������������ �� ���: ', max);
 
readln
end.
