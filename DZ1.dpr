program DZ1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
//  y, a, delta, otn: real;
//  x, y, y1, y2, delta, otn: single;
//  x, y, w, ans: integer;
    a, b, h, S1, S2, e, x, exact, otn: real;
    n, i: integer;
begin
     a := pi()/4;
     b := pi()/3;
     writeln('������� ����� ��������:');
     readln(n);
     h := (b - a) / n;
     x := a;
     e := a + h;
     for i := 1 to n do
       begin
         S2 := h * (sin(a)/cos(a) * sin(a)/cos(a) + sin(e)/cos(e) * sin(e)/cos(e)) / 2;
         S1 := S1 + S2;
         a := a + h;
         e := e + h;
       end;

     writeln(S1:18:16);
     exact := abs(S1 - (sqrt(3) - pi()/12 - 1));
     otn := exact / (sqrt(3) - pi()/12 - 1);
     writeln('���������� �����������:', exact:20:16);
     writeln('������������� �����������:', otn:20:16);
     readln;
end.







//    writeln('Enter x, y, w:');
//    readln(x, y, w);
//    if (x > y) and (x > w) then
//        ans := x + y * y * w
//    else if  (y > x) and (y > w) then
//        ans := y + y * y * w
//    else
//        ans := w + y * y * w;
//
//    writeln(ans);
//    readln;
//




//    writeln('Enter x');
//    readln(x);
//
//    y1 := sin(x);
//    y2 := cos(x);
//
//    y := y1 * y1 + y2 * y2;
//    delta := abs(1 - y);
//    otn := delta / 1;
//
//    Writeln('sin x =', y1:20:16);
//    Writeln('cos x =', y2:20:16);
//    Writeln('sin^2 x + cos^2 x = ', y:20:16);
//    Writeln('���������� ����������� =', delta:20:16);
//    Writeln('������������� ����������� =', otn:20:16);
//    readln;

//   y2 := (exp(x) + exp(-x)) / 2;
//    y1 := (exp(x) - exp(-x)) / 2;

  //    a := 1;
  //    y := 1;
  //    WriteLn('�� �������������� y=',y:18:16);
  //    y := y / 6000;
  //    y := exp(y);                  {y = e^x}
  //    y := sqrt(y);                 {���������� ������}
  //    y := y / 14;
  //    y := 14 * y;
  //    Y := sqr(y);                  {Y = y2}
  //    y := ln(y);
  //    y := 6000 * y;
  //  WriteLn('����� �������������� y =', y:18:16);
//end.

