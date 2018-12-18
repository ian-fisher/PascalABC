uses GraphABC;

procedure MouseDown(x,y,mb: integer);
begin
  MoveTo(x,y);
end;

procedure MouseMove(x,y,mb : integer);
begin
  if mb=1 then LineTo(x,y);
end;

procedure MouseUp(x, y, mb : integer);
begin
  SetPenColor(clRandom);
end;

begin
  OnMouseMove := MouseMove;
  OnMouseDown := MouseDown;
  OnMouseUp := MouseUp;
end.

