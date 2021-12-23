program DZ3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
type �ar = object
  private mark: string;
  private poe: integer;
  public procedure Init(m: string; p: integer);
  public procedure print;
  public function tax: integer;
end;
function �ar.tax: integer;
  begin
    result := poe * 12;
  end;
procedure �ar.Init;
  begin
    mark := m;
    poe := p;
  end;
procedure �ar.print;
  begin
    writeln('�����: ', mark);
    writeln('��������: ', poe)
  end;

var audi, bmw, mercedes, volga: �ar;

begin
  audi.Init('Audi TT', 210);
  writeln('������������ �����: ', audi.tax);
  audi.print;
  writeln;
  bmw.Init('BMW M3', 320);
  writeln('������������ �����: ', bmw.tax);
  bmw.print;
  writeln;
  mercedes.Init('Mercedes Mclaren', 500);
  writeln('������������ �����: ', mercedes.tax);
  mercedes.print;
  writeln;
  volga.Init('����� 2110', 210);
  writeln('������������ �����: ', volga.tax);
  volga.print;
  readln;
end.
