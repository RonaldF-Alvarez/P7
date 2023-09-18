unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Menus,
  Datasnap.DBClient, Datasnap.Provider;

type
  TMain = class(TForm)
    PageControl: TPageControl;
    Vendas: TTabSheet;
    PgCarrinho: TTabSheet;
    LblNomeProduto: TLabel;
    EdtNomeProd: TEdit;
    DBGrid1: TDBGrid;
    LblCodProduto: TLabel;
    EdtCodProduto: TEdit;
    BtnProcurar: TButton;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    ADOConnection: TADOConnection;
    DataSource: TDataSource;
    ADOQuery: TADOQuery;
    EdtCodUniversal: TEdit;
    PopupMenu1: TPopupMenu;
    Adicionarcarrinho1: TMenuItem;
    ADOQuerycod_produto: TIntegerField;
    ADOQuerynome_produto: TWideStringField;
    ADOQuerycod_universal: TIntegerField;
    ADOQueryveiculo: TWideStringField;
    ADOQuerydescricao: TWideMemoField;
    ADOQuerypreco: TFMTBCDField;
    ADOQueryqtde_estoque: TSmallintField;
    ADOQueryCart: TADOQuery;
    DataSourceCart: TDataSource;
    ADOQueryCartcod_produto: TIntegerField;
    ADOQueryCartnome_produto: TWideStringField;
    ADOQueryCartcod_universal: TIntegerField;
    ADOQueryCartveiculo: TWideStringField;
    ADOQueryCartpreco: TFMTBCDField;
    ADOQueryCartquantidade: TIntegerField;
    Btn: TButton;
    procedure CarregarProdutos;
    procedure FormCreate(Sender: TObject);
    procedure BtnProcurarClick(Sender: TObject);
    procedure Adicionarcarrinho1Click(Sender: TObject);
    procedure CarrinhoGrid;
    procedure BtnOrcamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.FormCreate(Sender: TObject);
begin
  CarregarProdutos;
  CarrinhoGrid;
end;

procedure Tmain.CarrinhoGrid;
begin
 ADOQueryCart.Close;
 ADOQueryCart.SQL.Text := 'SELECT * FROM carrinho_grid';
 ADOQueryCart.Open;
end;


procedure TMain.Adicionarcarrinho1Click(Sender: TObject);
var
  SelectedRow: Integer;
  ProdutoID: Integer;
  Quantidade: Integer;
  SQLInsert: string;

begin
  PageControl.ActivePageIndex := 1;
  ProdutoID := DbGrid1.DataSource.DataSet.FieldByName('cod_produto').AsInteger;
  Quantidade := 1;

  SQLInsert := 'INSERT INTO carrinho (cod_produto, quantidade) ' + 'VALUES (' + IntToStr(ProdutoID) + ', ' + IntToStr(Quantidade) + ')';
  ADOQuery.SQL.Text := SQLInsert;
  ADOQuery.ExecSQL;
  CarregarProdutos;
  CarrinhoGrid;
  end;


procedure TMain.BtnProcurarClick(Sender: TObject);
begin
  if (EdtNomeProd.text='') and (EdtCodProduto.text = '') and (EdtCodUniversal.text = '') then
    raise Exception.Create('Por favor, informe os dados!');

  if not (EdtNomeProd.text = '') then
    begin
      ADOQuery.Close;
      ADOQuery.SQL.Clear;
      ADOQuery.SQL.Text := 'SELECT * FROM produtos WHERE nome_produto::TEXT LIKE :nome_produto';
ADOQuery.Parameters.ParamByName('nome_produto').Value := '%' + EdtNomeProd.Text + '%';
      ADOQuery.Open;
    end;
  if not (EdtCodProduto.text= '') then
    begin
      ADOQuery.Close;
      ADOQuery.SQL.Clear;
      ADOQuery.SQL.Text := 'SELECT * FROM produtos WHERE CAST(cod_produto AS TEXT) LIKE :cod_produto';
      ADOQuery.Parameters.ParamByName('cod_produto').Value := '%' + EdtCodProduto.Text + '%';

      ADOQuery.Open;
    end;

  if not (EdtCodUniversal.Text = '') then
    begin
      ADOQuery.Close;
      ADOQuery.SQL.Clear;
      ADOQuery.SQL.Text := 'SELECT * FROM produtos WHERE CAST(cod_universal AS TEXT) LIKE :cod_universal';
      ADOQuery.Parameters.ParamByName('cod_universal').Value := '%' + EdtCodUniversal.Text + '%';
      ADOQuery.Open;
    end;
end;


procedure TMain.BtnOrcamentoClick(Sender: TObject);
begin
//

end;

procedure TMain.CarregarProdutos;
begin
  ADOQuery.close;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.text := 'SELECT * FROM produtos';
  ADOQuery.Open;
end;

end.