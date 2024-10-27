unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EditR1: TEdit;
    EditR2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    LabeSuma: TLabel;
    RadioGr: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure RadioButPosledClick(Sender: TObject);
    procedure RadioButtonParalelClick(Sender: TObject);
    procedure RadioGrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
r1,r2: real;
r: real;
begin
  try
    r1 := StrToFloat(EditR1.Text);
    r2 := StrToFloat(EditR2.Text);
  except
    on E: EConvertError do
    begin
      ShowMessage('Введите правильные значения сопротивления.');
      Exit;
    end;
  end;

 //Проверяем, что хотя бы одно из сопротивлений имеет значение, отличное от нуля
 If (r1 = 0)  and (r2 = 0) then
 begin
   ShowMessage('Надо задать велечину хотябы одного сопротивления');
   exit;
 end;

  //Расчет значений в зависимости от выбранного режима
  if RadioGr.ItemIndex = 0 then //Выбран Переключатель последовательно
    r := r1+r2;
  If RadioGr.ItemIndex = 1 then //Выбран Переключатель последовательно
  //Выбран Переключатель паралельно
    r := (r1*r2)/(r1+r2);

   LabeSuma.Caption := 'Сопротивление цепи: ';
   if r < 1000 then
   begin
      LabeSuma.Caption := LabeSuma.Caption + FloatToStrF(r,ffFixed,3,2) + ' Ω (Ом)';
   end
   else
   begin
      r := r/1000;
      LabeSuma.Caption := LabeSuma.Caption + FloatToStrF(r / 1000,ffFixed,3,2) + ' kΩ (КОм)';
   end;
end;

procedure TForm1.RadioButPosledClick(Sender: TObject);
begin
  LabeSuma.Caption := '';
end;

procedure TForm1.RadioButtonParalelClick(Sender: TObject);
begin
  LabeSuma.Caption := '';
end;

procedure TForm1.RadioGrClick(Sender: TObject);
begin
  If  RadioGr.ItemIndex = 0 then
    LabeSuma.Caption := '';
  If  RadioGr.ItemIndex = 1 then
    LabeSuma.Caption := '';
end;

end.
