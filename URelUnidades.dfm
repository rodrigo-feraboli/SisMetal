object FRelUnidades: TFRelUnidades
  Left = 163
  Top = 116
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Relat'#243'rios de Unidades'
  ClientHeight = 69
  ClientWidth = 336
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
  object RadioGroup1: TRadioGroup
    Left = 2
    Top = 1
    Width = 331
    Height = 30
    Caption = 'Ordem'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Cadastro'
      'Nome'
      'Abrevia'#231#227'o')
    TabOrder = 0
  end
  object BitVisualizar: TBitBtn
    Left = 23
    Top = 39
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
    Left = 123
    Top = 39
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
    Left = 224
    Top = 39
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
    Top = 72
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QryUnidades
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
      Height = 46
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
        121.708333333333
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 295
        Top = 2
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          780.520833333333
          5.29166666666667
          338.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Unidades'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 10
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
          26.4583333333333
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
        Left = 59
        Top = 28
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          156.104166666667
          74.0833333333333
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri'#231#227'o'
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
        Left = 630
        Top = 28
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1666.875
          74.0833333333333
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Abrevia'#231#227'o'
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
      Top = 101
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
      Top = 84
      Width = 718
      Height = 17
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
        44.9791666666667
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 10
        Top = 0
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          26.4583333333333
          0
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryUnidades
        DataField = 'CODUNIDADES'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 60
        Top = 0
        Width = 514
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          158.75
          0
          1359.95833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryUnidades
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 630
        Top = 0
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1666.875
          0
          193.145833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryUnidades
        DataField = 'ABREV'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object QryUnidades: TIBQuery
    Database = Dados.Database
    Transaction = Dados.Transaction
    SQL.Strings = (
      'select *  from UNIDADES')
    Left = 296
    Top = 16
    object QryUnidadesCODUNIDADES: TIntegerField
      FieldName = 'CODUNIDADES'
      Origin = 'UNIDADES.CODUNIDADES'
      Required = True
    end
    object QryUnidadesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'UNIDADES.NOME'
      Size = 35
    end
    object QryUnidadesABREV: TIBStringField
      FieldName = 'ABREV'
      Origin = 'UNIDADES.ABREV'
      Size = 5
    end
  end
end
