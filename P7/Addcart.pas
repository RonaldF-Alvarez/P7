unit Addcart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormAddCart = class(TForm)
    Label1: TLabel;
    LblQntd: TLabel;
    EditQtd: TEdit;
    BtnMenos: TButton;
    BtnMais: TButton;
    BtnApply: TButton;
    BtnCancel: TButton;
    procedure BtnMaisClick(Sender: TObject);
    procedure BtnMenosClick(Sender: TObject);
    procedure BtnApplyClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddCart: TFormAddCart;

implementation

{$R *.dfm}

uses MainUnit;

procedure TFormAddCart.BtnApplyClick(Sender: TObject);
var
  MainForm: TMain;
begin
  MainForm := Application.MainForm as TMain;
    begin
      MainForm.CartQtd := StrToInt(EditQtd.Text);
    end;
  MainForm.AddCarrinho(Sender);
Close;
end;

procedure TFormAddCart.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAddCart.BtnMaisClick(Sender: TObject);
var
Qtd : integer;
Valor: integer;

begin
Qtd := 1;
Valor := StrToInt(EditQtd.Text);
Valor := Valor + Qtd;
EditQtd.Text := IntToStr(Valor);
end;

procedure TFormAddCart.BtnMenosClick(Sender: TObject);
var
Qtd : integer;
Valor: integer;

begin
Qtd := 1;
Valor := StrToInt(EditQtd.Text);
Valor := Valor - Qtd;
EditQtd.Text := IntToStr(Valor);
end;

end.
