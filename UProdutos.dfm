object FProdutos: TFProdutos
  Left = 191
  Top = 152
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 326
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
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
    Top = 289
    Width = 593
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnNovo: TBitBtn
      Left = 68
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Inserir Produto'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtnNovoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object BitBtnAlterar: TBitBtn
      Left = 162
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Alterar Produto'
      Caption = 'A&lterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtnAlterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object BitBtnExcluir: TBitBtn
      Left = 256
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Excluir Produto'
      Caption = 'E&xcluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BitBtnGravar: TBitBtn
      Left = 350
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Gravar Produto'
      Caption = 'Gra&var'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtnGravarClick
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
    object BitBtnSair: TBitBtn
      Left = 444
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Cancelar Produto'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtnSairClick
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
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 593
    Height = 235
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 95
      Top = 18
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 100
      Top = 39
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome'
    end
    object Label1: TLabel
      Left = 80
      Top = 130
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 62
      Top = 190
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estoque Atual'
    end
    object Label5: TLabel
      Left = 257
      Top = 190
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estoque M'#237'nimo'
    end
    object Label6: TLabel
      Left = 14
      Top = 212
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor de Compra/Venda'
    end
    object Label7: TLabel
      Left = 31
      Top = 60
      Width = 97
      Height = 13
      Caption = 'Tipo de Class. Fiscal'
    end
    object SpeedButton1: TSpeedButton
      Left = 433
      Top = 57
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 60
      Top = 107
      Width = 68
      Height = 13
      Caption = 'Data Cadastro'
    end
    object Label11: TLabel
      Left = 238
      Top = 107
      Width = 130
      Height = 13
      Caption = 'Data '#218'ltima Compra/Venda'
    end
    object Label12: TLabel
      Left = 457
      Top = 190
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estoque Alerta'
    end
    object Label13: TLabel
      Left = 88
      Top = 83
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unidade'
    end
    object SpeedButton2: TSpeedButton
      Left = 433
      Top = 80
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton2Click
    end
    object DBEdit1: TDBEdit
      Left = 132
      Top = 14
      Width = 46
      Height = 21
      DataField = 'CODPRODUTO'
      DataSource = DSProdutos
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 132
      Top = 36
      Width = 430
      Height = 21
      DataField = 'NOME'
      DataSource = DSProdutos
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 132
      Top = 126
      Width = 430
      Height = 60
      DataField = 'DESCRICAO'
      DataSource = DSProdutos
      ScrollBars = ssVertical
      TabOrder = 9
    end
    object DBEdit2: TDBEdit
      Left = 132
      Top = 187
      Width = 75
      Height = 21
      DataField = 'ESTOQUEATUAL'
      DataSource = DSProdutos
      TabOrder = 10
    end
    object DBEdit4: TDBEdit
      Left = 338
      Top = 187
      Width = 75
      Height = 21
      DataField = 'ESTOQUEMININO'
      DataSource = DSProdutos
      TabOrder = 11
    end
    object DBEdit5: TDBEdit
      Left = 132
      Top = 209
      Width = 121
      Height = 21
      DataField = 'VLR'
      DataSource = DSProdutos
      TabOrder = 13
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 191
      Top = 2
      Width = 371
      Height = 33
      Caption = 'Tipo de Produto'
      Columns = 3
      DataField = 'TIPOPRODUTO'
      DataSource = DSProdutos
      Items.Strings = (
        'Mat'#233'ria-Prima'
        'Produto'
        'Material de Consumo')
      TabOrder = 1
      Values.Strings = (
        'M'
        'P'
        'C')
    end
    object DBEdit6: TDBEdit
      Left = 132
      Top = 58
      Width = 46
      Height = 21
      DataField = 'CODTIPOCLASSFISCAL'
      DataSource = DSProdutos
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 180
      Top = 58
      Width = 251
      Height = 21
      DataField = 'CODTIPOCLASSFISCAL'
      DataSource = DSProdutos
      KeyField = 'CODTIPOCLASSFISCAL'
      ListField = 'LETRA;SEQUENCIA'
      ListSource = Dados.DSTiposClassLK
      TabOrder = 4
      OnEnter = DBLookupComboBox1Enter
    end
    object DBEdit7: TDBEdit
      Left = 132
      Top = 104
      Width = 85
      Height = 21
      DataField = 'DATACADASTRO'
      DataSource = DSProdutos
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 370
      Top = 104
      Width = 85
      Height = 21
      DataField = 'DATAULTCOMPRAVENDA'
      DataSource = DSProdutos
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 530
      Top = 187
      Width = 32
      Height = 21
      DataField = 'ESTOQUEALERTA'
      DataSource = DSProdutos
      TabOrder = 12
    end
    object DBEdit10: TDBEdit
      Left = 132
      Top = 81
      Width = 46
      Height = 21
      DataField = 'CODUNIDADE'
      DataSource = DSProdutos
      TabOrder = 5
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 180
      Top = 81
      Width = 251
      Height = 21
      DataField = 'CODUNIDADE'
      DataSource = DSProdutos
      KeyField = 'CODUNIDADES'
      ListField = 'NOME'
      ListSource = Dados.DSUnidadesLK
      TabOrder = 6
      OnEnter = DBLookupComboBox2Enter
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label9: TLabel
      Left = 419
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object Label10: TLabel
      Left = 430
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Ordem'
    end
    object DBNavigator1: TDBNavigator
      Left = 14
      Top = 12
      Width = 240
      Height = 31
      DataSource = DSProdutos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object RadioButton1: TRadioButton
      Left = 525
      Top = 8
      Width = 57
      Height = 17
      Caption = 'Produto'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton2Click
    end
    object RadioButton2: TRadioButton
      Left = 466
      Top = 8
      Width = 55
      Height = 17
      Caption = 'C'#243'digo'
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object Edit1: TEdit
      Left = 465
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
  end
  object MainMenu1: TMainMenu
    Left = 288
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object TipodeClassificaoFiscal1: TMenuItem
        Caption = 'Tipo de Classifica'#231#227'o Fiscal'
      end
      object Unidades1: TMenuItem
        Caption = 'Unidades'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = BitBtnSairClick
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
    end
  end
  object DSProdutos: TDataSource
    DataSet = TbProdutos
    OnStateChange = DSProdutosStateChange
    OnDataChange = DSProdutosDataChange
    Left = 320
    Top = 8
  end
  object TbProdutos: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionProd
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  CODPRODUTO = :OLD_CODPRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      
        '  (CODPRODUTO, CODTIPOCLASSFISCAL, CODUNIDADE, DATACADASTRO, DAT' +
        'AULTCOMPRAVENDA, '
      
        '   TIPOPRODUTO, NOME, DESCRICAO, ESTOQUEATUAL, ESTOQUEALERTA, ES' +
        'TOQUEMININO, '
      '   VLR)'
      'values'
      
        '  (:CODPRODUTO, :CODTIPOCLASSFISCAL, :CODUNIDADE, :DATACADASTRO,' +
        ' :DATAULTCOMPRAVENDA, '
      
        '   :TIPOPRODUTO, :NOME, :DESCRICAO, :ESTOQUEATUAL, :ESTOQUEALERT' +
        'A, :ESTOQUEMININO, '
      '   :VLR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODPRODUTO,'
      '  CODTIPOCLASSFISCAL,'
      '  CODUNIDADE,'
      '  DATACADASTRO,'
      '  DATAULTCOMPRAVENDA,'
      '  TIPOPRODUTO,'
      '  NOME,'
      '  DESCRICAO,'
      '  ESTOQUEATUAL,'
      '  ESTOQUEALERTA,'
      '  ESTOQUEMININO,'
      '  VLR'
      'from PRODUTOS '
      'where'
      '  CODPRODUTO = :CODPRODUTO')
    SelectSQL.Strings = (
      'select * from PRODUTOS')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  CODPRODUTO = :CODPRODUTO,'
      '  CODTIPOCLASSFISCAL = :CODTIPOCLASSFISCAL,'
      '  CODUNIDADE = :CODUNIDADE,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DATAULTCOMPRAVENDA = :DATAULTCOMPRAVENDA,'
      '  TIPOPRODUTO = :TIPOPRODUTO,'
      '  NOME = :NOME,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESTOQUEATUAL = :ESTOQUEATUAL,'
      '  ESTOQUEALERTA = :ESTOQUEALERTA,'
      '  ESTOQUEMININO = :ESTOQUEMININO,'
      '  VLR = :VLR'
      'where'
      '  CODPRODUTO = :OLD_CODPRODUTO')
    GeneratorField.Field = 'CODPRODUTO'
    GeneratorField.Generator = 'GEN_PRODUTOS_ID'
    Left = 352
    Top = 8
    object TbProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'PRODUTOS.CODPRODUTO'
      Required = True
    end
    object TbProdutosCODTIPOCLASSFISCAL: TIntegerField
      FieldName = 'CODTIPOCLASSFISCAL'
      Origin = 'PRODUTOS.CODTIPOCLASSFISCAL'
      Required = True
    end
    object TbProdutosCODUNIDADE: TIntegerField
      FieldName = 'CODUNIDADE'
      Origin = 'PRODUTOS.CODUNIDADE'
      Required = True
    end
    object TbProdutosDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'PRODUTOS.DATACADASTRO'
      EditMask = '99/99/9999;1;_'
    end
    object TbProdutosDATAULTCOMPRAVENDA: TDateField
      FieldName = 'DATAULTCOMPRAVENDA'
      Origin = 'PRODUTOS.DATAULTCOMPRAVENDA'
      EditMask = '99/99/9999;1;_'
    end
    object TbProdutosTIPOPRODUTO: TIBStringField
      FieldName = 'TIPOPRODUTO'
      Origin = 'PRODUTOS.TIPOPRODUTO'
      Size = 1
    end
    object TbProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Size = 100
    end
    object TbProdutosDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTOS.DESCRICAO'
      BlobType = ftMemo
      Size = 8
    end
    object TbProdutosESTOQUEATUAL: TIBBCDField
      FieldName = 'ESTOQUEATUAL'
      Origin = 'PRODUTOS.ESTOQUEATUAL'
      Precision = 18
      Size = 2
    end
    object TbProdutosESTOQUEALERTA: TSmallintField
      FieldName = 'ESTOQUEALERTA'
      Origin = 'PRODUTOS.ESTOQUEALERTA'
      DisplayFormat = '##%'
    end
    object TbProdutosESTOQUEMININO: TIBBCDField
      FieldName = 'ESTOQUEMININO'
      Origin = 'PRODUTOS.ESTOQUEMININO'
      Precision = 18
      Size = 2
    end
    object TbProdutosVLR: TIBBCDField
      FieldName = 'VLR'
      Origin = 'PRODUTOS.VLR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object TransactionProd: TIBTransaction
    DefaultDatabase = Dados.Database
    Left = 344
    Top = 40
  end
end
