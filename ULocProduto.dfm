object FLocProduto: TFLocProduto
  Left = 201
  Top = 117
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Busca Avan'#231'ada de Produtos'
  ClientHeight = 391
  ClientWidth = 617
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 391
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label29: TLabel
      Left = 39
      Top = 27
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object RadioGroup1: TRadioGroup
      Left = 357
      Top = 16
      Width = 255
      Height = 31
      Caption = 'Op'#231#245'es de Busca'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Nome')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object Edit2: TEdit
      Left = 89
      Top = 23
      Width = 261
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 50
      Width = 607
      Height = 284
      DataSource = DSBuscaBanco
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBuscarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODPRODUTO'
          Title.Caption = 'C'#243'digo'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPRODUTO'
          Title.Caption = 'Nome'
          Width = 200
          Visible = True
        end>
    end
    object BitCancelar: TBitBtn
      Left = 524
      Top = 362
      Width = 80
      Height = 25
      Hint = 'Cancelar Usu'#225'rio'
      Caption = 'Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitCancelarClick
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
    object BitBuscar: TBitBtn
      Left = 430
      Top = 362
      Width = 80
      Height = 25
      Hint = 'Gravar Usu'#225'rio'
      Caption = 'Buscar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBuscarClick
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777700000777700000770B00077770B000770F00088770F
        00077000000000000007700F00000B000007700F00000F000007700F00000000
        000777000008700000777770F077770B07777770F077770F0777777000777700
        077777777777777777777777777777777777}
    end
  end
  object QryBuscaProduto: TIBQuery
    Database = Dados.Database
    Transaction = FProdutos.TransactionProd
    SQL.Strings = (
      'select P.CodProduto, P.nome as NomeProduto from Produtos P '
      'where P.CodProduto > 0')
    Left = 112
    Top = 112
    object QryBuscaProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'PRODUTOS.CODPRODUTO'
      Required = True
    end
    object QryBuscaProdutoNOMEPRODUTO: TIBStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'PRODUTOS.NOME'
      Size = 100
    end
  end
  object DSBuscaBanco: TDataSource
    DataSet = QryBuscaProduto
    Left = 112
    Top = 144
  end
end
