program Stash;

Uses GraphABC;

var
  r, g, b, v, y, d, h, xl, xr, x, k: integer;

procedure LOL(vk
: integer);
var
  k, p: integer;
begin
  if vk = vk_Space then
  begin
    SetBrushColor(clWhite);
    if d <= 0 then
      SetBrushColor(clRed);
    xl := max(xl, x);
    xr := min(xr, x + d);
    d := xr - xl;
    Rectangle(xl, y, 0, y - h);
    Rectangle(xr, y, 600, y - h);
    x := 0;
    y := y - h;
    r := random(10, 245);
    g := random(10, 245);
    b := random(10, 245);
    SetBrushColor(rgb(r, g, b));
    if d <= 0 then
      SetBrushColor(clRed);
  end;
  if vk = vk_p then
  begin
    if p = 0 then
    begin
      p := 1;
      v := 0;
    end;
  end;
  if vk = vk_p then
  begin
    if p = 1 then
    begin
      p := 0;
      v := 10;
    end;
  end;
end;

begin
  LockDrawing;
  v := 10;
  h := 20;
  y := 600;
  d := 90;
  xl := 210;
  xr := 390;
  SetWindowSize(600, 600);
  SetBrushColor(clMaroon);
  SetPenColor(clWhite);
  FillRectangle(xl, y, xr, y - h);
  OnKeyDown := LOL;
  x := 0;
  y := y - h;
  d := 180;
  while (d > 0) and (y > h) do
  begin
    SetBrushColor(clWhite);
    Rectangle(x, y, x + d, y - h);
    x := x + v;
    SetBrushColor(rgb(r, g, b));
    FillRectangle(x, y, x + d, y - h);
    RedRaw;
    Sleep(8);
  end;
  while d <= 0 do
  begin
    d := 0;
    xr := 0;
    xl := 0; 
    ClearWindow(clRed);
    RedRaw
  end;
  while (y < (h - 1)) and (d > 0) do
  begin
    d := 0;
    xr := 0;
    xl := 0; 
    ClearWindow(clLime);
    RedRaw;
  end;
end.







































