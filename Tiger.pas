Uses GraphABC;

var
  n, m, year: integer;

procedure Tiger;
begin
  SetBrushColor(rgb(255, 100, 0));
  SetPenColor(rgb(255, 140, 0));
  Circle(500, 580, 20);
  Circle(500, 573, 16);
  SetPenWidth(5);
  Line(480, 580, 480, 600);
  Line(520, 580, 520, 600);
  SetPenColor(clBlack);
  Line(492, 565, 493, 568);
  Line(508, 565, 507, 568);
  SetBrushColor(clBlack);
  SetPenWidth(1);
  Circle(500, 577, 6);
  Line(500, 577, 486, 567);
  Line(500, 577, 483, 577);
  Line(500, 577, 486, 587);
  Line(500, 577, 514, 567);
  Line(500, 577, 517, 577);
  Line(500, 577, 514, 587);
end;

procedure Ground;
begin
  SetPenWidth(3);
  SetPenColor(clBlack);
  Line(0, 600, 1200, 600);
end;

procedure Tree;
begin
  SetPenWidth(16);
  SetPenColor(clBrown);
  Line(80, 600, 80, 400);
  SetPenWidth(5);
  SetPenColor(clBlack);
  SetBrushColor(clWhite);
  Circle(80, 400, 80);
end;

procedure a(vk: integer);
var k1 : integer;
begin
  ClearWindow;
  Tree;
  Ground;
  if vk = VK_Right then
    n := n + 1;
  if vk = VK_Left then
    n := n - 1;
  if n = 5 then
  begin
    n := 1;
    year := year + 1;
  end;
  if n = 0 then
  begin
    n := 4;
    year := year - 1;
  end;
  if n = 1 then
  begin
    FloodFill(80, 400, clWhite);
    FloodFill(400, 700, clWhite);
  end;
  if n = 2 then
  begin
    FloodFill(80, 400, clLime);
    FloodFill(400, 700, clGreen);
  end;
  if n = 3 then
  begin
    FloodFill(80, 400, clLime);
    FloodFill(400, 700, clLime);
    for k1 := 1 to random(5, 20) do
    begin
      m := random(0, 3);
      if m = 0 then
        SetBrushColor(clRed);
      if m = 1 then
        SetBrushColor(clYellow);
      if m = 2 then
        SetBrushColor(clOlive);
      if m = 3 then
        SetBrushColor(rgb(193, 3, 3));
      FillCircle(random(40, 120), random(360, 440), random(2, 5));
      if m > 1 then
        SetBrushColor(clMaroon)
      else
        SetBrushColor(clOlive);
      FillCircle(random(0, 180), 600, random(2,5));
    end;
  end;
  if n = 4 then
  begin
    FloodFill(80, 400, clRed);
    FloodFill(400, 700, clYellow);
  end;
  SetBrushColor(clWhite);
  TextOut(2, 2, 'year is ' + year);
  Tiger;
  RedRaw;
end;

begin
  LockDrawing;
  SetPenRoundCap(true);
  SetWindowSize(1200, 900);
  CenterWindow;
  OnKeyDown := a;
  
end.