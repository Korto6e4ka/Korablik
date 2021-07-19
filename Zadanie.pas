unit Zadanie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  more:tbitmap;
  Korablik:tbitmap;
  x:integer;
  shx:integer;
implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
close;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=not Timer1.Enabled;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 shx:=5;

 more:=tbitmap.Create;                               // Активация переменных
 Korablik:=tbitmap.Create;                           //

 more.LoadFromFile('more.bmp');                      // Загружаем в переменную 'more' файл 'more.bmp'

 Korablik.LoadFromFile('Korablik.bmp');              // Загружаем в переменную 'Korablik' файл 'Korablik.bmp'
 Korablik.Transparent:=true;                         // Прозрачность вокруг контура корабля

 Image1.Canvas.Draw (0,0,more);                      //
 Image1.Canvas.Draw(x,350,Korablik);                 // Координаты на которых будет распологаться кораблик
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
x:=x+shx;                                            // Текущая координата + шаг
if x>700 then shx:=shx*-1;                           // Ограничение справа
if x<-20 then shx:=shx*-1;                           // Ограничение слева
Image1.Canvas.Draw(0,0,more);                        // Возобнавления фона
Image1.Canvas.Draw(x,350,Korablik);                  // Движение корабля
end;

end.
