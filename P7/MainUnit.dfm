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
      object LblCodUniversal: TLabel
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
      object BtnLimparPesquisa: TButton
        Left = 985
        Top = 155
        Width = 168
        Height = 33
        Caption = 'Limpar pesquisa'
        TabOrder = 5
        OnClick = BtnLimparPesquisaClick
      end
    end
    object PgCarrinho: TTabSheet
      Caption = 'Carrinho'
      ImageIndex = 1
      object Label2: TLabel
        Left = 1698
        Top = 136
        Width = 46
        Height = 25
        Caption = 'Total'
      end
      object LblTitle: TLabel
        Left = 24
        Top = 16
        Width = 101
        Height = 33
        Caption = 'Carrinho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = -4
        Top = 125
        Width = 1397
        Height = 690
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
            Width = 715
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_universal'
            Title.Caption = 'C'#243'digo Universal'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'veiculo'
            Title.Caption = 'Ve'#237'culo'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco'
            Title.Caption = 'Pre'#231'o'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Caption = 'Quantidade'
            Width = 124
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 1432
        Top = 458
        Width = 178
        Height = 41
        Caption = 'Finalizar compra'
        TabOrder = 1
      end
      object BtnLimparCarrinho: TButton
        Left = 1432
        Top = 300
        Width = 178
        Height = 41
        Caption = 'Limpar carrinho'
        Enabled = False
        TabOrder = 2
        OnClick = BtnLimparCarrinhoClick
      end
      object BtnRemoverItem: TButton
        Left = 1432
        Top = 207
        Width = 178
        Height = 41
        Caption = 'Remover item'
        Enabled = False
        TabOrder = 3
        OnClick = BtnRemoverItemClick
      end
      object RemoveCheck: TCheckBox
        Left = 1464
        Top = 254
        Width = 113
        Height = 17
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = RemoveCheckClick
      end
      object BtnOrcamento: TButton
        Left = 1432
        Top = 395
        Width = 178
        Height = 41
        Caption = 'Or'#231'amento'
        TabOrder = 5
        OnClick = BtnOrcamentoClick
      end
      object ClearCheck: TCheckBox
        Left = 1464
        Top = 347
        Width = 113
        Height = 17
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = ClearCheckClick
      end
    end
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=PGNP.1;Password=2581379;Persist Security Info=True;User' +
      ' ID=postgres;Initial Catalog=Proj7;Data Source=localhost;Extende' +
      'd Properties="SSL=prefer;";Location="";Mode=ReadWrite;Use Proced' +
      'ure for Prepare=1;Auto Translate=True;Packet Size=4096;Applicati' +
      'on Name="";Workstation ID="";Use Encryption for Data=False;Tag w' +
      'ith column collation when possible=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'PGNP.1'
    AfterConnect = FormCreate
    Left = 736
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 648
    Top = 40
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM produtos ')
    Left = 692
    Top = 36
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
    Left = 380
    Top = 308
    object Adicionarcarrinho: TMenuItem
      Caption = 'Adicionar ao carrinho'
      OnClick = AdicionarcarrinhoClick
    end
  end
  object ADOQueryCart: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    DataSource = DataSource
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM carrinho_grid')
    Left = 780
    Top = 28
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
    Left = 828
    Top = 36
  end
end
