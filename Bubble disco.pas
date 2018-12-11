Uses GraphABC;

var
  r, g, b, x1, y1, x, y, r1, k, n: integer;

procedure Bubble;
begin
  r := random(0, 255);
  g := random(0, 255);
  b := random(0, 255);
  r1 := random(8, 40);
  x := random(r1, x1 - r1);
  y := random(r1, y1 - r1);
  SetBrushColor(RGB(r, g, b));
  Circle(x, y, r1);
end;

begin
  SetWindowTitle('Bubble Disco');
  read(x1, y1, n);
  SetWindowSize(x1, y1);
  for k := 1 to n do
  begin
    Bubble;
  end;
end.