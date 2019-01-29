Uses GraphABC;

var
  n, m, k, n1, n2, i: integer;

procedure Win();
begin
  SetFontColor(rgb(200, 34, 20));
  SetFontStyle(fsBoldItalicUnderline);
  if i = 1 then
  begin
    ClearWindow(argb(100, 200, 34, 20));
    TextOut(400, 100, 'Robot Wins!!!');
  end
  else
  begin
    ClearWindow(argb(100, 34, 200, 20));
    TextOut(400, 100, 'You Win!!!');
  end;
end;

procedure f(n: integer);
begin
  k := 0;
  if (n + m) = 0 then
    Win;
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
  SetPenColor(rgb(200, 34, 20));
  SetWindowSize(1000, 795);
  CenterWindow;
  SetWindowSize(1000, 778);
  SetBrushColor(rgb(34, 50, 255));
  Polygon((200, 700), (160, 775), (440, 775), (400, 700));
  Polygon((600, 700), (560, 775), (840, 775), (800, 700));
  Read(n, m);
  while (n > 7) or (m > 7) do
    Read(n, m);
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
    i := 0;
    if n < 0 then
      n := 0;
    if m < 0 then
      m := 0;
    SetBrushColor(rgb(34, 50, 255));
    Polygon((600, 700), (560, 775), (840, 775), (800, 700));
    Polygon((200, 700), (160, 775), (440, 775), (400, 700));
    s(m);
    f(n);
    if (n + m) > 0 then
    begin
      Sleep(random(300, 1200));
      i := 1;
      if n = m then
      begin
        if (n1 = 1) and (m > 0) then
          m := m - 1
        else
          n := n - 1;
      end
      else
      begin
        if n1 = 1 then
          m := n
        else
          n := m;
      end;
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
  end;
end.