program DZ3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
begin
end.
//type Citizen = object         // Part 2
//    private FIO: string[25];
//    private birthday_year: integer;
//    public procedure Init(f: string; year:integer);
//    public procedure Print;
//    public function age: integer;
//end;
//procedure Citizen.Init;
//  begin
//    FIO := f;
//    birthday_year := year;
//  end;
//procedure Citizen.Print;
//    begin
//      writeln('���: ', FIO);
//      writeln('��� ��������: ', birthday_year);
//    end;
//function Citizen.age: integer;
//  begin
//    Result := 2021 - birthday_year;
//  end;
//type Recruit = object(Citizen)
//  private status: boolean;
//  public procedure Init(f: string; year: integer);
//  public procedure Print;
//  public procedure Category;
//  public function summonning: boolean;
//end;
//procedure Recruit.Init;
//  begin
//    inherited Init(f, year);
//  end;
//procedure Recruit.Print;
//  begin
//    inherited Print;
//    writeln('�����: ', status);
//  end;
//procedure Recruit.Category;
//  begin
//  if (age >= 18) and (age <= 27) then
//    status := True
//  else
//    status := False;
//  end;
//
//function Recruit.summonning: boolean;
//  begin
//    if status then
//      Result := True
//    else
//      Result := False;
//  end;
//var first, second, third: Recruit;
//begin
//   first.Init('������ ������� ����������', 2000);
//   first.Category;
//   first.Print;
//   writeln('�������: ', first.age);
//   writeln('�������� � ���� ����: ', first.summonning);
//   writeln;
//
//   second.Init('������� ���� ���������', 1994);
//   second.Category;
//   second.Print;
//   writeln('�������: ', second.age);
//   writeln('�������� � ���� ����: ', second.summonning);
//   writeln;
//
//   third.Init('������� ������ ��������', 1974);
//   third.Category;
//   third.Print;
//   writeln('�������: ', third.age);
//   writeln('�������� � ���� ����: ', third.summonning);
//   readln;
//end.

//type �ar = object  // Part 1
//  private mark: string;
//  private poe: integer;
//  public procedure Init(m: string; p: integer);
//  public procedure print;
//  public function tax: integer;
//end;
//function �ar.tax: integer;
//  begin
//    result := poe * 12;
//  end;
//procedure �ar.Init;
//  begin
//    mark := m;
//    poe := p;
//  end;
//procedure �ar.print;
//  begin
//    writeln('�����: ', mark);
//    writeln('��������: ', poe)
//  end;
//
//var audi, bmw, mercedes, volga: �ar;
//
//begin
//  audi.Init('Audi TT', 210);
//  writeln('������������ �����: ', audi.tax);
//  audi.print;
//  writeln;
//  bmw.Init('BMW M3', 320);
//  writeln('������������ �����: ', bmw.tax);
//  bmw.print;
//  writeln;
//  mercedes.Init('Mercedes Mclaren', 500);
//  writeln('������������ �����: ', mercedes.tax);
//  mercedes.print;
//  writeln;
//  volga.Init('����� 2110', 210);
//  writeln('������������ �����: ', volga.tax);
//  volga.print;
//  readln;
//end.
