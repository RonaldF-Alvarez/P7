object FormAddCart: TFormAddCart
  Left = 0
  Top = 0
  Caption = 'Adicionar ao carrinho'
  ClientHeight = 240
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 401
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'Item'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblQntd: TLabel
    Left = 58
    Top = 70
    Width = 104
    Height = 23
    Caption = 'Quantidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EditQtd: TEdit
    Left = 168
    Top = 114
    Width = 113
    Height = 42
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
    Text = '1'
  end
  object BtnMenos: TButton
    Left = 90
    Top = 114
    Width = 53
    Height = 42
    Caption = '-'
    TabOrder = 1
    OnClick = BtnMenosClick
  end
  object BtnMais: TButton
    Left = 306
    Top = 114
    Width = 53
    Height = 42
    Caption = '+'
    TabOrder = 2
    OnClick = BtnMaisClick
  end
  object BtnApply: TButton
    Left = 272
    Top = 178
    Width = 153
    Height = 42
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = BtnApplyClick
  end
  object BtnCancel: TButton
    Left = 24
    Top = 178
    Width = 153
    Height = 42
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BtnCancelClick
  end
end
