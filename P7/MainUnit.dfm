object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 856
  ClientWidth = 1924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 1924
    Height = 856
    ActivePage = PgCarrinho
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Vendas: TTabSheet
      Caption = 'Procurar Produtos'
      object LblNomeProduto: TLabel
        Left = 16
        Top = 99
        Width = 171
        Height = 25
        Caption = 'Nome do produto:'
      end
      object LblCodProduto: TLabel
        Left = 36
        Top = 158
        Width = 151
        Height = 25
        Caption = 'C'#243'digo Produto:'
      end
      object Label1: TLabel
        Left = 400
        Top = 158
        Width = 163
        Height = 25
        Caption = 'C'#243'digo Universal:'
      end
      object DBGrid1: TDBGrid
        Left = -4
        Top = 216
        Width = 1920
        Height = 602
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -21
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_produto'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_produto'
            Title.Caption = 'Nome'
            Width = 1014
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_universal'
            Title.Caption = 'C'#243'digo universal'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'veiculo'
            Title.Caption = 'Ve'#237'culo'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco'
            Title.Caption = 'Pre'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde_estoque'
            Title.Caption = 'Qtde estoque'
            Visible = True
          end>
      end
      object EdtNomeProd: TEdit
        Left = 193
        Top = 96
        Width = 992
        Height = 33
        TabOrder = 0
      end
      object EdtCodProduto: TEdit
        Left = 193
        Top = 155
        Width = 185
        Height = 33
        NumbersOnly = True
        TabOrder = 2
      end
      object BtnProcurar: TButton
        Left = 785
        Top = 155
        Width = 168
        Height = 33
        Caption = 'Procurar'
        TabOrder = 3
        OnClick = BtnProcurarClick
      end
      object EdtCodUniversal: TEdit
        Left = 569
        Top = 155
        Width = 192
        Height = 33
        NumbersOnly = True
        TabOrder = 4
      end
      object Btn: TButton
        Left = 985
        Top = 155
        Width = 168
        Height = 33
        Caption = 'Limpar pesquisa'
        TabOrder = 5
      end
    end
    object PgCarrinho: TTabSheet
      Caption = 'Carrinho'
      ImageIndex = 1
      object Label3: TLabel
        Left = 24
        Top = 16
        Width = 80
        Height = 25
        Caption = 'Carrinho'
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 60
        Width = 1910
        Height = 725
        DataSource = DataSourceCart
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -21
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_produto'
            Title.Caption = 'C'#243'digo '
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_produto'
            Title.Caption = 'Nome'
            Width = 675
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_universal'
            Title.Caption = 'C'#243'digo Universal'
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'veiculo'
            Title.Caption = 'Ve'#237'culo'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco'
            Title.Caption = 'Pre'#231'o'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Caption = 'Quantidade'
            Visible = True
          end>
      end
    end
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=PGNP.1;Password=2581379;Persist Security Info=True;User' +
      ' ID=postgres;Initial Catalog=Proj7;Data Source=localhost;Extende' +
      'd Properties="SSL=prefer;"'
    Mode = cmReadWrite
    Provider = 'PGNP.1'
    AfterConnect = FormCreate
    Left = 728
    Top = 32
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 608
    Top = 32
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM produtos ')
    Left = 668
    Top = 28
    object ADOQuerycod_produto: TIntegerField
      FieldName = 'cod_produto'
    end
    object ADOQuerynome_produto: TWideStringField
      FieldName = 'nome_produto'
      Size = 50
    end
    object ADOQuerycod_universal: TIntegerField
      FieldName = 'cod_universal'
    end
    object ADOQueryveiculo: TWideStringField
      FieldName = 'veiculo'
    end
    object ADOQuerydescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
    object ADOQuerypreco: TFMTBCDField
      FieldName = 'preco'
      Precision = 19
      Size = 7
    end
    object ADOQueryqtde_estoque: TSmallintField
      FieldName = 'qtde_estoque'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 668
    Top = 228
    object Adicionarcarrinho1: TMenuItem
      Caption = 'Adicionar ao carrinho'
      OnClick = Adicionarcarrinho1Click
    end
  end
  object ADOQueryCart: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    DataSource = DataSource
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM carrinho_grid')
    Left = 492
    Top = 292
    object ADOQueryCartcod_produto: TIntegerField
      FieldName = 'cod_produto'
    end
    object ADOQueryCartnome_produto: TWideStringField
      FieldName = 'nome_produto'
      Size = 50
    end
    object ADOQueryCartcod_universal: TIntegerField
      FieldName = 'cod_universal'
    end
    object ADOQueryCartveiculo: TWideStringField
      FieldName = 'veiculo'
    end
    object ADOQueryCartpreco: TFMTBCDField
      FieldName = 'preco'
      Precision = 19
      Size = 7
    end
    object ADOQueryCartquantidade: TIntegerField
      FieldName = 'quantidade'
    end
  end
  object DataSourceCart: TDataSource
    DataSet = ADOQueryCart
    Left = 404
    Top = 292
  end
end
