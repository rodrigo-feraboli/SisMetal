object FItensOrcamento: TFItensOrcamento
  Left = 202
  Top = 151
  AutoScroll = False
  Caption = 'Cadastro de Itens do Or'#231'amento'
  ClientHeight = 215
  ClientWidth = 502
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
    Width = 502
    Height = 183
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 51
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 33
      Top = 119
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade'
    end
    object Label3: TLabel
      Left = 25
      Top = 139
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Unit'#225'rio'
    end
    object Label4: TLabel
      Left = 37
      Top = 160
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Total'
    end
    object Label5: TLabel
      Left = 51
      Top = 30
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object SpeedButton1: TSpeedButton
      Left = 473
      Top = 27
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label6: TLabel
      Left = 48
      Top = 8
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nro Item'
    end
    object DBMemo1: TDBMemo
      Left = 92
      Top = 48
      Width = 405
      Height = 66
      DataField = 'DESCRICAO'
      DataSource = FOrcamento.DSItensOrcamento
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 108
      Top = 115
      Width = 56
      Height = 21
      DataField = 'QUANT'
      DataSource = FOrcamento.DSItensOrcamento
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 92
      Top = 136
      Width = 72
      Height = 21
      DataField = 'VLRUNIT'
      DataSource = FOrcamento.DSItensOrcamento
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 92
      Top = 157
      Width = 72
      Height = 21
      DataField = 'VLRTOTAL'
      DataSource = FOrcamento.DSItensOrcamento
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 92
      Top = 27
      Width = 46
      Height = 21
      DataField = 'CODPRODUTO'
      DataSource = FOrcamento.DSItensOrcamento
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 138
      Top = 27
      Width = 335
      Height = 21
      DataField = 'CODPRODUTO'
      DataSource = FOrcamento.DSItensOrcamento
      KeyField = 'CODPRODUTO'
      ListField = 'NOME'
      ListSource = Dados.DSProdutosLK
      TabOrder = 2
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
    end
    object DBCheckBox1: TDBCheckBox
      Left = 355
      Top = 161
      Width = 140
      Height = 17
      Caption = 'Incluir Item no Or'#231'amento'
      DataField = 'INCLUIRORC'
      DataSource = FOrcamento.DSItensOrcamento
      TabOrder = 7
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit5: TDBEdit
      Left = 92
      Top = 5
      Width = 46
      Height = 21
      DataField = 'NROITEM'
      DataSource = FOrcamento.DSItensOrcamento
      ReadOnly = True
      TabOrder = 0
    end
  end
  object BitOK: TBitBtn
    Left = 326
    Top = 187
    Width = 80
    Height = 25
    Hint = 'Gravar Item do Or'#231'amento'
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
  object BitCanc: TBitBtn
    Left = 409
    Top = 187
    Width = 80
    Height = 25
    Hint = 'Cancelar Item do Or'#231'amento'
    Caption = '&Cancelar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitCancClick
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
