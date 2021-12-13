program Laboratory9;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
type ptoy = ^toy;
     toy = record
       name: string[15];
       price: single;
       next: ptoy;
     end;
var first, q, tp, pbox: ptoy;
    len, k, i, j, tprice, temp: single;
    tname, box: string[15];
    key: boolean;
begin
   // 1) ���� ������� � �� ��� � ������
   first := nil;
   q := nil;
   writeln('Enter a toy name. End - "end" ');
   readln(tname);
   while tname <> 'end' do
     begin
       writeln('Enter toy price');
       readln(tprice);
       new(first);
       first^.name := tname;
       first^.price := tprice;
       q := first;
       len := len + 1;
       writeln('Enter a toy name. End - "end" ');
       readln(tname);
       while tname <> 'end' do
         begin
           writeln('Enter toy price');
           readln(tprice);
           new(q^.next);
           q := q^.next;
           q^.name := tname;
           q^.price := tprice;
           len := len + 1;
           writeln('Enter a toy name. End - "end" ');
           readln(tname);
         end;
       q^.next := nil;
     end;
   // 2) ���������� �������
     k := 1;
     q := first;
     tp := first^.next;
     while (k <> 0) and (q <> nil) do
       begin
         k := 0;
         tp := q^.next;
         while tp <> nil do
           begin
             if q^.price > tp^.price then
               begin
                 temp := tp^.price;
                 box := tp^.name;
                 tp^.price := q^.price;
                 tp^.name := q^.name;
                 q^.name := box;
                 q^.price := temp;
                 k := k + 1;
               end;
             tp := tp^.next;
           end;
         q := q^.next;
       end;
   // 3) ���������� ��������
   writeln('Enter a new toy name');
   readln(tname);
   writeln('Enter a new toy price');
   readln(tprice);
   q := first;
   tp := nil;
   key := False;
   while q^.next <> nil do
     begin
       if (tprice <= q^.price) and not key then
         begin
           new(tp);
           pbox := q^.next;
           q^.next := tp;
           tp^.next := pbox;
           tp^.name := tname;
           tp^.price := tprice;
           key := True;
         end;
       q := q^.next;
     end;
   if not key then
     begin
       new(tp);
       q^.next := tp;
       tp^.name := tname;
       tp^.price := tprice;
       tp^.next := nil;
     end;

   // 4) ����� ������
   q := first;
   while q <> nil do
     begin
       writeln('Toy name: ', q^.name, ', Toy price: ', q^.price:3:0, '$');
       q := q^.next;
     end;

   // 5) ������� ������
   q := first;
   while q <> nil do
     begin
       dispose(q);
       q := q^.next;
     end;
   readln;
end.
