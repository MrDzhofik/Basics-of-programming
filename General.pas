unit General;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Name: TLabel;
    AddButton: TButton;
    DeleteButton: TButton;
    OtherButton: TButton;
    ExitButton: TButton;
    procedure AddButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure OtherButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


type Product = record
  name: string[15];
  provider: string[20];
  quantity: integer;
  price: integer;
end;

var
  MainForm: TMainForm;
  fil: file of Product;
  rec: Product;

implementation

{$R *.dfm}
uses Adding, Deleting, Other;

procedure TMainForm.AddButtonClick(Sender: TObject);
var size:integer;
begin
   AssignFile(fil,'Market.dat');
   {$I-} Reset(fil); {$I+}
   if ioresult=0 then
      begin size := FileSize(fil);
        seek(fil, size);
      end
   else
     rewrite(fil);
   AddForm.Show;
   AddForm.NameEdit.setfocus;
end;

procedure TMainForm.DeleteButtonClick(Sender: TObject);
begin
    AssignFile(fil,'Market.dat');
    {$I-} Reset(fil); {$I+}
    if IOResult=0 then
      begin
        DeleteForm.show;
        DeleteForm.NameEdit.setfocus;
      end
    else
      MessageDlg('��� ���������', mtError, [mbOk], 0);
end;

procedure TMainForm.OtherButtonClick(Sender: TObject);
begin
   AssignFile(fil,'Market.dat');
   {$I-} Reset(fil); {$I+}
   if IOResult=0 then
     OtherForm.Show()
   else
     writeln('File not found');
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
   Close;
end;

end.
