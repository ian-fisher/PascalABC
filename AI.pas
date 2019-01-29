Uses GraphABC;

var
  n, m, k, n1, n2: integer;

procedure Win(i: integer);
begin
  ClearWindow(argb(100, 200, 34, 20));
  SetFontColor(rgb(200, 34, 20));
  SetFontStyle(fsBoldItalicUnderline);
  TextOut(400, 100, 'Robot Wins!!!');
end;

procedure f(n: integer);
begin
  k := 0;
  if (n + m) = 0 then
    Win(1);
  while (k < n) do
  begin
    k := k + 1;
    SetBrushColor(rgb(60, 200, 130));
    Rectangle(200, 700 - (k - 1) * 100, 400, 700 - k * 100);
  end;
  Redraw;
end;

procedure s(m: integer);
begin
  k := 0;
  while (k < m) do
  begin
    k := k + 1;
    SetBrushColor(rgb(60, 200, 130));
    Rectangle(600, 700 - (k - 1) * 100, 800, 700 - k * 100);
  end;
  Redraw;
end;

begin
  LockDrawing;
  SetBrushColor(rgb(60, 200, 130));
  Rectangle(200, 700, 400, 0);
  Rectangle(600, 700, 800, 0);
  SetPenColor(rgb(200, 34, 20));
  SetWindowSize(1000, 795);
  CenterWindow;
  SetWindowSize(1000, 778);
  SetBrushColor(rgb(34, 50, 255));
  Polygon((200, 700), (160, 775), (440, 775), (400, 700));
  Polygon((600, 700), (560, 775), (840, 775), (800, 700));
  n := 7;
  m := 7;
  f(n);
  s(m);
  Sleep(10);
  while ((n + m) > 0) do
  begin
    Read(n1, n2);
    while ((n1 < 1) or (n1 > 2)) or (n2 < 0) do
    begin
      Read(n1, n2);
    end;
    if n1 = 1 then
      n := n - n2
    else
      m := m - n2;
    ClearWindow;
    if n < 0 then
      n := 0;
    if m < 0 then
      m := 0;
    SetBrushColor(rgb(34, 50, 255));
    Polygon((600, 700), (560, 775), (840, 775), (800, 700));
    Polygon((200, 700), (160, 775), (440, 775), (400, 700));
    s(m);
    f(n);
    Sleep(random(300, 1200));
    if n1 = 1 then
      m := n
    else
      n := m;
    ClearWindow;
    if n < 0 then
      n := 0;
    if m < 0 then
      m := 0;
    SetBrushColor(rgb(34, 50, 255));
    Polygon((600, 700), (560, 775), (840, 775), (800, 700));
    Polygon((200, 700), (160, 775), (440, 775), (400, 700));
    s(m);
    f(n);
  end;
  Win(1);
end.
