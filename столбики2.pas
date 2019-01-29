﻿Uses GraphABC;
var
  n, m, k: integer;
procedure f(n: integer);
begin
  while (k < n) do
  begin
    k := k + 1;
    DrawRectangle(200, 700, 400, 700 - k * 100);
  end;
  Redraw;
end;
procedure s(m: integer);
begin
  while (k < m) do
  begin
    k := k + 1;
    DrawRectangle(600, 700, 800, 700 - k * 100);
  end;
  Redraw;
end;
begin
  LockDrawing;
  SetBrushColor(rgb(60, 200, 130));
  Rectangle(200, 700, 400, 0);
  Rectangle(600, 700, 800, 0);
  SetPenColor();
  SetWindowSize(1000, 700);
  k := 0;
  n := 7;  
  m := 7;  
  f(n);  
  k := 0;  
  s(m);  
end.