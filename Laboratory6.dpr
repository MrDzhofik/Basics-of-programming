program Laboratory6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  str, fin, res: shortstring;
  i, j: integer;
  flag: boolean;
begin
  writeln('������� �����');
  readln(str);
  i := 1;
  for i := 1 to length(str) do
    fin := fin + UpCase(str[i]);
  i := 1;
  while i <= length(fin) do
  begin
    flag := False;
    for j := i to i + 5 do  // ���������� �� ����� �������
    begin
      if (fin[j] = 'A') or (fin[j] = 'E') or (fin[j] = 'B') then
        flag := True;
    end;
    if flag then
      begin
      for j := i to i + 6 do res := res + str[j];    //  ��������� ����� ������� � ������
      end;

    i := i + 7;  // ��������� � ���������� �����
  end;

  writeln(res);


  readln;
end.
