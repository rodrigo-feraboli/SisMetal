object FItensOrdemCompra: TFItensOrdemCompra
  Left = 262
  Top = 190
  AutoScroll = False
  Caption = 'Cadastro de Itens da Ordem de Compra'
  ClientHeight = 124
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 96
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 55
      Top = 6
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object Label2: TLabel
      Left = 37
      Top = 29
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade'
    end
    object Label3: TLabel
      Left = 28
      Top = 52
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Unit'#225'rio'
    end
    object SpeedButton1: TSpeedButton
      Left = 374
      Top = 4
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 39
      Top = 74
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Total'
    end
    object DBEdit1: TDBEdit
      Left = 106
      Top = 27
      Width = 46
      Height = 21
      DataField = 'QUANT'
      DataSource = FOrdemCompra.DSItensOC
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 93
      Top = 49
      Width = 59
      Height = 21
      DataField = 'VLRUNIT'
      DataSource = FOrdemCompra.DSItensOC
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 107
      Top = 5
      Width = 46
      Height = 21
      DataField = 'CODPRODUTO'
      DataSource = FOrdemCompra.DSItensOC
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 155
      Top = 5
      Width = 218
      Height = 21
      DataField = 'CODPRODUTO'
      DataSource = FOrdemCompra.DSItensOC
      KeyField = 'CODPRODUTO'
      ListField = 'NOME'
      ListSource = Dados.DSProdutosLK
      TabOrder = 1
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
    end
    object DBEdit4: TDBEdit
      Left = 93
      Top = 71
      Width = 59
      Height = 21
      DataField = 'VlrTot'
      DataSource = FOrdemCompra.DSItensOC
      ReadOnly = True
      TabOrder = 4
    end
  end
  object BitOK: TBitBtn
    Left = 213
    Top = 98
    Width = 80
    Height = 25
    Hint = 'Gravar Usu'#225'rio'
    Caption = '&OK'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitOKClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object BitCancel: TBitBtn
    Left = 296
    Top = 98
    Width = 80
    Height = 25
    Hint = 'Cancelar Usu'#225'rio'
    Caption = '&Cancelar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitOKClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333333333333333FFF33FF333FFF339993370733
      999333777FF37FF377733339993000399933333777F777F77733333399970799
      93333333777F7377733333333999399933333333377737773333333333990993
      3333333333737F73333333333331013333333333333777FF3333333333910193
      333333333337773FF3333333399000993333333337377737FF33333399900099
      93333333773777377FF333399930003999333337773777F777FF339993370733
      9993337773337333777333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
end
