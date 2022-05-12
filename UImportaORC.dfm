object FImportaOrc: TFImportaOrc
  Left = 188
  Top = 111
  BorderStyle = bsSingle
  Caption = 'Importa'#231#227'o de Or'#231'amentos para Vendas'
  ClientHeight = 284
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
  object DBGrid1: TDBGrid
    Left = 1
    Top = 119
    Width = 498
    Height = 160
    DataSource = DSImporta
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODORCAMENTO'
        Title.Caption = 'Cod Or'#231'.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAORCAMENTO'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Cliente'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTATO'
        Title.Caption = 'Contato'
        Width = 164
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 499
    Height = 117
    TabOrder = 1
    object Label1: TLabel
      Left = 56
      Top = 14
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton4: TSpeedButton
      Left = 457
      Top = 9
      Width = 23
      Height = 22
      Hint = 'Cadastro de CFOP'
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 93
      Top = 10
      Width = 361
      Height = 21
      KeyField = 'CODCADGEN'
      ListField = 'NOME'
      ListSource = Dados.DSClientesLK
      TabOrder = 0
      OnEnter = DBLookupComboBox1Enter
      OnKeyDown = DBLookupComboBox1KeyDown
    end
    object GroupBox2: TGroupBox
      Left = 37
      Top = 34
      Width = 425
      Height = 48
      Caption = 'Datas do Or'#231'amento'
      TabOrder = 1
      object CBIni: TCheckBox
        Left = 8
        Top = 21
        Width = 51
        Height = 17
        Caption = 'Inicial'
        TabOrder = 0
      end
      object DTPIni: TDateTimePicker
        Left = 64
        Top = 19
        Width = 87
        Height = 21
        CalAlignment = dtaLeft
        Date = 38611.5682446759
        Time = 38611.5682446759
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
      end
      object CBFin: TCheckBox
        Left = 280
        Top = 21
        Width = 44
        Height = 17
        Caption = 'Final'
        TabOrder = 2
      end
      object DTPFin: TDateTimePicker
        Left = 328
        Top = 19
        Width = 87
        Height = 21
        CalAlignment = dtaLeft
        Date = 38611.5682446759
        Time = 38611.5682446759
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 3
      end
    end
    object BitVisualizar: TBitBtn
      Left = 37
      Top = 86
      Width = 128
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 2
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
    object BitCancelar: TBitBtn
      Left = 180
      Top = 86
      Width = 129
      Height = 25
      Caption = 'Cancelar'
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
    object BitImportar: TBitBtn
      Left = 326
      Top = 86
      Width = 127
      Height = 25
      Caption = 'Importar'
      TabOrder = 4
      OnClick = BitImportarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 289
    Top = 188
    Width = 501
    Height = 279
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    Visible = False
    object Label2: TLabel
      Left = 57
      Top = 61
      Width = 72
      Height = 13
      Caption = 'Transportadora'
    end
    object Label3: TLabel
      Left = 101
      Top = 12
      Width = 28
      Height = 13
      Caption = 'CFOP'
    end
    object Label4: TLabel
      Left = 7
      Top = 37
      Width = 122
      Height = 13
      Caption = 'Condi'#231#245'es de Pagamento'
    end
    object SpeedButton1: TSpeedButton
      Left = 418
      Top = 57
      Width = 23
      Height = 22
      Hint = 'Cadastro de Transportadoras'
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 418
      Top = 9
      Width = 23
      Height = 22
      Hint = 'Cadastro de CFOP'
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 418
      Top = 33
      Width = 23
      Height = 22
      Hint = 'Cadastro de Condi'#231#245'es de Pagamento'
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 133
      Top = 57
      Width = 282
      Height = 21
      KeyField = 'CODCADGEN'
      ListField = 'NOME'
      ListSource = Dados.DSTransportadorasLK
      TabOrder = 2
      OnEnter = DBLookupComboBox1Enter
      OnKeyDown = DBLookupComboBox1KeyDown
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 133
      Top = 10
      Width = 282
      Height = 21
      KeyField = 'CODCFOP'
      ListField = 'NOME'
      ListSource = Dados.DSCFOPLK
      TabOrder = 0
      OnEnter = DBLookupComboBox1Enter
      OnKeyDown = DBLookupComboBox1KeyDown
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 133
      Top = 34
      Width = 282
      Height = 21
      KeyField = 'CODCONDPGTO'
      ListField = 'NOME'
      ListSource = Dados.DSCondPgtoLK
      TabOrder = 1
      OnEnter = DBLookupComboBox1Enter
      OnKeyDown = DBLookupComboBox1KeyDown
    end
    object BitCont: TBitBtn
      Left = 255
      Top = 88
      Width = 137
      Height = 25
      Caption = 'Continuar Importa'#231#227'o'
      TabOrder = 3
      OnClick = BitContClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
    object BtCanc: TBitBtn
      Left = 109
      Top = 88
      Width = 139
      Height = 25
      Caption = 'Cancelar Importa'#231#227'o'
      TabOrder = 4
      OnClick = BtCancClick
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
  object QryImporta: TIBQuery
    Database = Dados.Database
    Transaction = FVendas.TransactionVen
    SQL.Strings = (
      
        'select o.codorcamento, o.dataorcamento, CG.CodCadGen, CG.nome, o' +
        '.contato from Orcamentos O'
      'inner join CadGen CG on cg.codcadgen = o.codcligen')
    Left = 248
    Top = 16
    object QryImportaCODORCAMENTO: TIntegerField
      FieldName = 'CODORCAMENTO'
      Origin = '"ORCAMENTOS"."CODORCAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryImportaDATAORCAMENTO: TDateField
      FieldName = 'DATAORCAMENTO'
      Origin = '"ORCAMENTOS"."DATAORCAMENTO"'
    end
    object QryImportaCODCADGEN: TIntegerField
      FieldName = 'CODCADGEN'
      Origin = '"CADGEN"."CODCADGEN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryImportaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CADGEN"."NOME"'
      Size = 75
    end
    object QryImportaCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"ORCAMENTOS"."CONTATO"'
      Size = 50
    end
  end
  object DSImporta: TDataSource
    DataSet = QryImporta
    Left = 288
    Top = 16
  end
  object QryItensOrc: TIBQuery
    Database = Dados.Database
    Transaction = FVendas.TransactionVen
    SQL.Strings = (
      
        'select io.nroitem, io.codproduto, io.quant, io.vlrunit from iten' +
        'sorcamentos io'
      'where io.codorcamento = '#39'14'#39)
    Left = 264
    Top = 48
    object QryItensOrcNROITEM: TIntegerField
      FieldName = 'NROITEM'
      Origin = '"ITENSORCAMENTOS"."NROITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryItensOrcCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = '"ITENSORCAMENTOS"."CODPRODUTO"'
      Required = True
    end
    object QryItensOrcQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = '"ITENSORCAMENTOS"."QUANT"'
      Precision = 18
      Size = 2
    end
    object QryItensOrcVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = '"ITENSORCAMENTOS"."VLRUNIT"'
      Precision = 18
      Size = 2
    end
  end
end
