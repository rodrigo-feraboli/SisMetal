object FRelGeraOrc: TFRelGeraOrc
  Left = 213
  Top = 147
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Or'#231'amentos'
  ClientHeight = 44
  ClientWidth = 342
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 88
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QryAux
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
      Height = 86
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
        227.541666666667
        1899.70833333333)
      BandType = rbPageHeader
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 240
      Width = 718
      Height = 59
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        156.104166666667
        1899.70833333333)
      BandType = rbDetail
      object QRMemo1: TQRMemo
        Left = 64
        Top = 4
        Width = 625
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333
          169.333333333333
          10.5833333333333
          1653.64583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 350
      Width = 718
      Height = 85
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
        224.895833333333
        1899.70833333333)
      BandType = rbPageFooter
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 124
      Width = 718
      Height = 116
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = TitleBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        306.916666666667
        1899.70833333333)
      BandType = rbTitle
      object QRLabel3: TQRLabel
        Left = 64
        Top = 18
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          169.333333333333
          47.625
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Prezados senhores'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 208
        Top = 33
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          550.333333333333
          87.3125
          568.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '- Nesta, or'#231'amento de equipamentos'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 14
        Top = 0
        Width = 475
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          0
          1256.77083333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #192':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 493
        Top = 0
        Width = 220
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          0
          582.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A/C: '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRMemo2: TQRMemo
        Left = 64
        Top = 64
        Width = 625
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666667
          169.333333333333
          169.333333333333
          1653.64583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object ChildBand1: TQRChildBand
      Left = 38
      Top = 299
      Width = 718
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = ChildBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.1458333333333
        1899.70833333333)
      ParentBand = DetailBand1
      object QRLabel5: TQRLabel
        Left = 284
        Top = 3
        Width = 150
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          751.416666666667
          7.9375
          396.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Valor: R$ 00.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 324
      Width = 718
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = DetailBand1
      Size.Values = (
        68.7916666666667
        1899.70833333333)
      BandType = rbSummary
      object QRLabel6: TQRLabel
        Left = 309
        Top = 5
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          817.5625
          13.2291666666667
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Atenciosamente,'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object Panel1: TPanel
    Left = -24
    Top = 0
    Width = 365
    Height = 45
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object BitVisualizar: TBitBtn
      Left = 39
      Top = 9
      Width = 85
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 0
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
      Left = 139
      Top = 9
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
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
      Left = 240
      Top = 9
      Width = 85
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
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
  object QryAux: TIBQuery
    Database = Dados.Database
    Transaction = FOrcamento.TransactionOrc
    OnCalcFields = QryAuxCalcFields
    DataSource = Dados.DSBancosFanLK
    SQL.Strings = (
      
        'select IC.descricao, ic.vlrunit, ic.quant from itensorcamentos I' +
        'C')
    Left = 280
    Top = 31
    object QryAuxDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      Origin = '"ITENSORCAMENTOS"."DESCRICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryAuxVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = '"ITENSORCAMENTOS"."VLRUNIT"'
      Precision = 18
      Size = 2
    end
    object QryAuxQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = '"ITENSORCAMENTOS"."QUANT"'
      Precision = 18
      Size = 2
    end
    object QryAuxDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'Desc'
      Size = 300
      Calculated = True
    end
  end
end
