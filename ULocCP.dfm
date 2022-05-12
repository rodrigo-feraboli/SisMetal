object FLocCP: TFLocCP
  Left = 185
  Top = 164
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Localiza'#231#227'o de Contas a Pagar'
  ClientHeight = 336
  ClientWidth = 608
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 336
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 98
      Width = 601
      Height = 203
      DataSource = DSBuscaCP
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data CP.'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFORNEC'
          Title.Caption = 'Nome'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEBANCO'
          Title.Caption = 'Banco'
          Width = 243
          Visible = True
        end>
    end
    object BitCancelar: TBitBtn
      Left = 516
      Top = 306
      Width = 80
      Height = 25
      Hint = 'Cancelar Busca'
      Caption = 'Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
      Left = 422
      Top = 306
      Width = 80
      Height = 25
      Hint = 'Buscar Ordem de Compra Selecionado'
      Caption = 'Buscar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 137
      Top = 6
      Width = 263
      Height = 21
      KeyField = 'CODCADGEN'
      ListField = 'NOME'
      ListSource = Dados.DSFornecedoresLK
      TabOrder = 1
      OnEnter = DBLookupComboBox1Enter
      OnKeyDown = DBLookupComboBox1KeyDown
    end
    object CheckBox1: TCheckBox
      Left = 33
      Top = 8
      Width = 94
      Height = 17
      Caption = 'Fornecedor'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 33
      Top = 30
      Width = 94
      Height = 17
      Caption = 'Banco'
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 55
      Width = 326
      Height = 40
      Caption = 'Data do Lan'#231'amento da Conta a Pagar'
      TabOrder = 3
      object CheckBox5: TCheckBox
        Left = 8
        Top = 16
        Width = 49
        Height = 17
        Caption = 'Inicial'
        TabOrder = 0
      end
      object DTPIni: TDateTimePicker
        Left = 56
        Top = 13
        Width = 87
        Height = 21
        CalAlignment = dtaLeft
        Date = 38606.580457419
        Time = 38606.580457419
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
      end
      object CheckBox6: TCheckBox
        Left = 161
        Top = 15
        Width = 43
        Height = 17
        Caption = 'Final'
        TabOrder = 2
      end
      object DTPFin: TDateTimePicker
        Left = 207
        Top = 13
        Width = 87
        Height = 21
        CalAlignment = dtaLeft
        Date = 38606.580457419
        Time = 38606.580457419
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 3
      end
    end
    object BitBtn1: TBitBtn
      Left = 422
      Top = 64
      Width = 139
      Height = 25
      Hint = 'Iniciar Pesquisa pelo Filtro'
      Caption = 'Iniciar Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 137
      Top = 29
      Width = 263
      Height = 21
      KeyField = 'CODBANCO'
      ListField = 'NOME'
      ListSource = Dados.DSBancosLK
      TabOrder = 8
      OnEnter = DBLookupComboBox2Enter
      OnKeyDown = DBLookupComboBox1KeyDown
    end
  end
  object QryBuscaCP: TIBQuery
    Database = Dados.Database
    Transaction = FCPagar.TransactionCP
    SQL.Strings = (
      
        'SELECT CP.nrocpagar, cP.data, cp.nrocompra, f.nome as NomeFornec' +
        ', '
      'b.nome as NomeBanco FROM cpagar CP '
      'INNER JOIN compras C on cp.nrocompra = c.nrocompra '
      'inner join fornecedores f on c.codfornec = f.codfornec '
      'inner join bancos b on b.codbanco = cp.codbanco'
      'where CP.nrocpagar is not null')
    Left = 144
    Top = 144
    object QryBuscaCPNROCPAGAR: TIntegerField
      FieldName = 'NROCPAGAR'
      Origin = '"CPAGAR"."NROCPAGAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBuscaCPDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CPAGAR"."DATA"'
    end
    object QryBuscaCPNROCOMPRA: TIntegerField
      FieldName = 'NROCOMPRA'
      Origin = '"CPAGAR"."NROCOMPRA"'
      Required = True
    end
    object QryBuscaCPNOMEFORNEC: TIBStringField
      FieldName = 'NOMEFORNEC'
      Origin = '"FORNECEDORES"."NOME"'
      Size = 75
    end
    object QryBuscaCPNOMEBANCO: TIBStringField
      FieldName = 'NOMEBANCO'
      Origin = '"BANCOS"."NOME"'
      Size = 75
    end
  end
  object DSBuscaCP: TDataSource
    DataSet = QryBuscaCP
    Left = 136
    Top = 176
  end
end
