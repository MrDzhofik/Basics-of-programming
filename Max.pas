unit Max;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMaxForm = class(TForm)
    ExitButton: TButton;
    MaxMemo: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaxForm: TMaxForm;

implementation
uses General;

var ans, temp: Product;
{$R *.dfm}


procedure TMaxForm.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  reset(fil);
  MaxMemo.ReadOnly := True;
  read(fil, ans);
  for i := 1 to FileSize(fil) - 1 do
    begin
      read(fil, temp);
      if (ans.quantity < temp.quantity) then
        ans := temp;
    end;
  MaxMemo.Clear;
  MaxMemo.Lines.Add('������ ����� �� ����:');
  MaxMemo.Lines.Add(ans.name);
  MaxMemo.Lines.Add('���������:');
  MaxMemo.Lines.Add(ans.provider);
  MaxMemo.Lines.Add('����������:');
  MaxMemo.Lines.Add(IntToStr(ans.quantity));
  MaxMemo.Lines.Add('����:');
  MaxMemo.Lines.Add(IntToStr(ans.price));
end;

procedure TMaxForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

end.
