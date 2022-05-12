object FBanco: TFBanco
  Left = 184
  Top = 152
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Bancos'
  ClientHeight = 260
  ClientWidth = 567
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
    Top = 223
    Width = 567
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnNovo: TBitBtn
      Left = 56
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Inserir Banco'
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
      Left = 150
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Alterar Banco'
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
      Left = 244
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Excluir Banco'
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
      Left = 338
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Gravar Banco'
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
      Left = 432
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Cancelar Banco'
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
    Width = 567
    Height = 169
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 95
      Top = 8
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 100
      Top = 53
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome'
    end
    object Fantasia: TLabel
      Left = 88
      Top = 76
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fantasia'
    end
    object Label7: TLabel
      Left = 82
      Top = 99
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o'
    end
    object Label1: TLabel
      Left = 95
      Top = 121
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object SpeedButton1: TSpeedButton
      Left = 443
      Top = 117
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 101
      Top = 142
      Width = 27
      Height = 13
      Caption = 'Bairro'
    end
    object Label4: TLabel
      Left = 345
      Top = 142
      Width = 24
      Height = 13
      Caption = 'Fone'
    end
    object Label5: TLabel
      Left = 57
      Top = 30
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Cadastro '
    end
    object Label31: TLabel
      Left = 507
      Top = 122
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object DBEdit1: TDBEdit
      Left = 132
      Top = 5
      Width = 46
      Height = 21
      DataField = 'CODBANCO'
      DataSource = DSBancos
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 132
      Top = 50
      Width = 430
      Height = 21
      DataField = 'NOME'
      DataSource = DSBancos
      TabOrder = 2
      OnExit = DBEdit3Exit
    end
    object DBEdit6: TDBEdit
      Left = 132
      Top = 73
      Width = 430
      Height = 21
      DataField = 'FANTASIA'
      DataSource = DSBancos
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 132
      Top = 96
      Width = 430
      Height = 21
      DataField = 'ENDERECO'
      DataSource = DSBancos
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 132
      Top = 117
      Width = 46
      Height = 21
      DataField = 'CODCIDADE'
      DataSource = DSBancos
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 180
      Top = 117
      Width = 261
      Height = 21
      DataField = 'CODCIDADE'
      DataSource = DSBancos
      KeyField = 'CODCIDADE'
      ListField = 'NOME'
      ListSource = Dados.DSCidadesLK
      TabOrder = 6
      OnEnter = DBLookupComboBox1Enter
    end
    object DBEdit9: TDBEdit
      Left = 132
      Top = 139
      Width = 191
      Height = 21
      DataField = 'BAIRRO'
      DataSource = DSBancos
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 372
      Top = 139
      Width = 191
      Height = 21
      DataField = 'FONE'
      DataSource = DSBancos
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 132
      Top = 27
      Width = 64
      Height = 21
      DataField = 'DATACADASTRO'
      DataSource = DSBancos
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 525
      Top = 118
      Width = 36
      Height = 21
      TabOrder = 7
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label9: TLabel
      Left = 369
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object Label10: TLabel
      Left = 378
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Ordem'
    end
    object SBBusca: TSpeedButton
      Left = 539
      Top = 26
      Width = 23
      Height = 22
      Hint = 'Busca Avan'#231'ada de Bancos'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777700000777700000770B00077770B000770F00088770F
        00077000000000000007700F00000B000007700F00000F000007700F00000000
        000777000008700000777770F077770B07777770F077770F0777777000777700
        077777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      OnClick = SBBuscaClick
    end
    object DBNavigator1: TDBNavigator
      Left = 14
      Top = 12
      Width = 240
      Height = 31
      DataSource = DSBancos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 467
      Top = 8
      Width = 48
      Height = 17
      Caption = 'Nome'
      TabOrder = 1
      OnClick = RadioButton1Click
    end
    object RadioButton1: TRadioButton
      Left = 413
      Top = 8
      Width = 55
      Height = 17
      Caption = 'C'#243'digo'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RadioButton1Click
    end
    object Edit1: TEdit
      Left = 415
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
  end
  object MainMenu1: TMainMenu
    Left = 248
    Top = 24
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Bancos1: TMenuItem
        Caption = 'Bancos'
        OnClick = Bancos1Click
      end
    end
  end
  object DSBancos: TDataSource
    DataSet = TbBancos
    OnStateChange = DSBancosStateChange
    OnDataChange = DSBancosDataChange
    Left = 288
    Top = 24
  end
  object TbBancos: TIBDataSet
    Database = Dados.Database
    Transaction = Dados.Transaction
    DeleteSQL.Strings = (
      'delete from BANCOS'
      'where'
      '  CODBANCO = :OLD_CODBANCO')
    InsertSQL.Strings = (
      'insert into BANCOS'
      '  (CODBANCO, DATACADASTRO, NOME, FANTASIA, ENDERECO, CODCIDADE, '
      'BAIRRO, '
      '   FONE)'
      'values'
      '  (:CODBANCO, :DATACADASTRO, :NOME, :FANTASIA, :ENDERECO, '
      ':CODCIDADE, :BAIRRO, '
      '   :FONE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODBANCO,'
      '  DATACADASTRO,'
      '  NOME,'
      '  FANTASIA,'
      '  ENDERECO,'
      '  CODCIDADE,'
      '  BAIRRO,'
      '  FONE'
      'from BANCOS '
      'where'
      '  CODBANCO = :CODBANCO')
    SelectSQL.Strings = (
      'select * from BANCOS')
    ModifySQL.Strings = (
      'update BANCOS'
      'set'
      '  CODBANCO = :CODBANCO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  NOME = :NOME,'
      '  FANTASIA = :FANTASIA,'
      '  ENDERECO = :ENDERECO,'
      '  CODCIDADE = :CODCIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  FONE = :FONE'
      'where'
      '  CODBANCO = :OLD_CODBANCO')
    GeneratorField.Field = 'CODBANCO'
    GeneratorField.Generator = 'GEN_BANCOS_ID'
    Left = 320
    Top = 24
    object TbBancosCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
      Origin = 'BANCOS.CODBANCO'
      Required = True
    end
    object TbBancosDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'BANCOS.DATACADASTRO'
    end
    object TbBancosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'BANCOS.NOME'
      Size = 75
    end
    object TbBancosFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'BANCOS.FANTASIA'
      Size = 75
    end
    object TbBancosENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'BANCOS.ENDERECO'
      Size = 100
    end
    object TbBancosCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'BANCOS.CODCIDADE'
      Required = True
    end
    object TbBancosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'BANCOS.BAIRRO'
      Size = 75
    end
    object TbBancosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'BANCOS.FONE'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
  end
end
