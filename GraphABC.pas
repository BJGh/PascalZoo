uses Graph;

begin 
  for var x:=0 to Window.Width-1 do
  for var y:=0 to Window.Height-1 do
SetPixel (x,y, RGB(y*y-x*y*3,y-3*y,x-y));
  end.

  
