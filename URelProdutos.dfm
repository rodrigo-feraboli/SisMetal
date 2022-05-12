object FRelProduto: TFRelProduto
  Left = 197
  Top = 147
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Relat'#243'rios de Produtos'
  ClientHeight = 253
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 47
    Width = 383
    Height = 42
    Caption = 'Tipo de Classifica'#231#227'o Fiscal '
    TabOrder = 5
    object Edit1: TEdit
      Left = 8
      Top = 15
      Width = 42
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 52
      Top = 15
      Width = 326
      Height = 21
      KeyField = 'CODTIPOCLASSFISCAL'
      ListField = 'LETRA;SEQUENCIA'
      ListSource = Dados.DSTiposClassLK
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
      OnCloseUp = DBLookupComboBox1Click
      OnEnter = DBLookupComboBox1Click
      OnExit = DBLookupComboBox1Click
      OnKeyDown = DBLookupComboBox1KeyDown
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 2
    Top = 1
    Width = 384
    Height = 44
    Caption = 'Ordem'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Produto'
      'Data da '#218'tima Compra/Venda'
      'Estoque Atual')
    TabOrder = 0
  end
  object BitVisualizar: TBitBtn
    Left = 51
    Top = 226
    Width = 85
    Height = 25
    Caption = '&Visualizar'
    TabOrder = 1
    OnClick = BitVisualizarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      033333777777777773333330777777703333333773F333773333333330888033
      33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
      FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
      8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
      8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
      8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
      8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
      FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
    NumGlyphs = 2
  end
  object BitImprimir: TBitBtn
    Left = 151
    Top = 226
    Width = 85
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 2
    OnClick = BitVisualizarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitCancelar: TBitBtn
    Left = 252
    Top = 226
    Width = 85
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
    OnClick = BitVisualizarClick
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
  object QuickRep1: TQuickRep
    Left = 8
    Top = 256
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QryProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        169.333333333333
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 296
        Top = 2
        Width = 126
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          783.166666666667
          5.29166666666667
          333.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Produtos'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 3
        Top = 28
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          74.0833333333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 53
        Top = 28
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          140.229166666667
          74.0833333333333
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 506
        Top = 44
        Width = 174
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1338.79166666667
          116.416666666667
          460.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data '#218'ltima Compra/Venda'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 425
        Top = 28
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1124.47916666667
          74.0833333333333
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Unidade'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 43
        Top = 45
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          113.770833333333
          119.0625
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Estoque Atual'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 154
      Width = 718
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.2083333333333
        1899.70833333333)
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 610
        Top = 3
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          7.9375
          248.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P'#225'gina: '
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 10
        Top = 3
        Width = 207
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          26.4583333333333
          7.9375
          547.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Text = 'Data/Hora do Relat'#243'rio: '
        Transparent = False
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 120
      Width = 718
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.9583333333333
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 5
        Top = 0
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          0
          97.8958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryProdutos
        DataField = 'CODPRODUTO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 48
        Top = 0
        Width = 368
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          127
          0
          973.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryProdutos
        DataField = 'NOMEPRODUTO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 573
        Top = 16
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1516.0625
          42.3333333333333
          283.104166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryProdutos
        DataField = 'DATAULTCOMPRAVENDA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 421
        Top = 0
        Width = 295
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1113.89583333333
          0
          780.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryProdutos
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 45
        Top = 16
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          119.0625
          42.3333333333333
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryProdutos
        DataField = 'ESTOQUEATUAL'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 43
        Top = -1
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          113.770833333333
          -2.64583333333333
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 102
      Width = 718
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625
        1899.70833333333)
      Expression = 'QryProdutos.LETRANUM'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel6: TQRLabel
        Left = 32
        Top = 0
        Width = 177
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          84.6666666666667
          0
          468.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo de Classifica'#231#227'o Fiscal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 218
        Top = 0
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          576.791666666667
          0
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QryProdutos
        DataField = 'LETRANUM'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 90
    Width = 383
    Height = 42
    Caption = 'Unidade '
    TabOrder = 6
    object Edit2: TEdit
      Left = 8
      Top = 15
      Width = 42
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 52
      Top = 15
      Width = 326
      Height = 21
      KeyField = 'CODUNIDADES'
      ListField = 'NOME'
      ListSource = Dados.DSUnidadesLK
      TabOrder = 1
      OnClick = DBLookupComboBox2Exit
      OnCloseUp = DBLookupComboBox2Exit
      OnEnter = DBLookupComboBox2Exit
      OnExit = DBLookupComboBox2Exit
      OnKeyDown = DBLookupComboBox2KeyDown
    end
  end
  object GroupBox3: TGroupBox
    Left = 2
    Top = 134
    Width = 383
    Height = 43
    Caption = 'Estoque Atual '
    TabOrder = 7
    object Label1: TLabel
      Left = 29
      Top = 18
      Width = 35
      Height = 13
      Caption = 'M'#237'nimo'
    end
    object Label2: TLabel
      Left = 251
      Top = 18
      Width = 36
      Height = 13
      Caption = 'M'#225'ximo'
    end
    object Edit3: TEdit
      Left = 69
      Top = 15
      Width = 57
      Height = 21
      TabOrder = 0
      OnExit = Edit3Exit
    end
    object Edit4: TEdit
      Left = 293
      Top = 15
      Width = 57
      Height = 21
      TabOrder = 1
      OnExit = Edit3Exit
    end
  end
  object GroupBox4: TGroupBox
    Left = 2
    Top = 178
    Width = 383
    Height = 43
    Caption = 'Data da '#218'ltima Compra/Venda '
    TabOrder = 8
    object DateTimePicker1: TDateTimePicker
      Left = 68
      Top = 16
      Width = 85
      Height = 21
      CalAlignment = dtaLeft
      Date = 38600.6323292593
      Time = 38600.6323292593
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 293
      Top = 16
      Width = 85
      Height = 21
      CalAlignment = dtaLeft
      Date = 38600.6323292593
      Time = 38600.6323292593
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 19
      Width = 50
      Height = 17
      Caption = 'Inicial'
      TabOrder = 2
    end
    object CheckBox2: TCheckBox
      Left = 245
      Top = 19
      Width = 44
      Height = 17
      Caption = 'Final'
      TabOrder = 3
    end
  end
  object QryProdutos: TIBQuery
    Database = Dados.Database
    Transaction = FProdutos.TransactionProd
    SQL.Strings = (
      
        'select p.codproduto, P.nome as NomeProduto, CL.letra ||'#39' - '#39'|| C' +
        'L.sequencia as LetraNum, U.nome, P.tipoproduto, P.EstoqueAtual, ' +
        'P.DATAULTCOMPRAVENDA'
      'from produtos P'
      
        'inner join tipoclassfiscal CL on CL.codtipoclassfiscal = P.codti' +
        'poclassfiscal'
      
        'inner join unidades U on U.codunidades = P.codunidade where P.co' +
        'dproduto > 0'
      'order by P.Nome')
    Left = 304
    Top = 16
    object QryProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = '"PRODUTOS"."CODPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProdutosNOMEPRODUTO: TIBStringField
      FieldName = 'NOMEPRODUTO'
      Origin = '"PRODUTOS"."NOME"'
      Size = 100
    end
    object QryProdutosLETRANUM: TIBStringField
      FieldName = 'LETRANUM'
      ProviderFlags = []
      Size = 19
    end
    object QryProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"UNIDADES"."NOME"'
      Size = 35
    end
    object QryProdutosTIPOPRODUTO: TIBStringField
      FieldName = 'TIPOPRODUTO'
      Origin = '"PRODUTOS"."TIPOPRODUTO"'
      Size = 1
    end
    object QryProdutosESTOQUEATUAL: TIBBCDField
      FieldName = 'ESTOQUEATUAL'
      Origin = '"PRODUTOS"."ESTOQUEATUAL"'
      Precision = 18
      Size = 2
    end
    object QryProdutosDATAULTCOMPRAVENDA: TDateField
      FieldName = 'DATAULTCOMPRAVENDA'
      Origin = '"PRODUTOS"."DATAULTCOMPRAVENDA"'
    end
  end
end
