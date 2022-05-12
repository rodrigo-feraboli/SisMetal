object FTipoClassFiscal: TFTipoClassFiscal
  Left = 192
  Top = 108
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Tipo de Classifica'#231#245'es Fiscais'
  ClientHeight = 145
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 108
    Width = 480
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnNovo: TBitBtn
      Left = 12
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Inserir Tipo de Classifica'#231#227'o Fiscal'
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
      Left = 106
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Alterar Tipo de Classifica'#231#227'o Fiscal'
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
      Left = 200
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Excluir Tipo de Classifica'#231#227'o Fiscal'
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
      Left = 294
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Gravar Tipo de Classifica'#231#227'o Fiscal'
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
      Left = 388
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Cancelar Tipo de Classifica'#231#227'o Fiscal'
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
    Width = 480
    Height = 54
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 73
      Top = 8
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo'
    end
    object Label4: TLabel
      Left = 82
      Top = 31
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Letra'
    end
    object Label3: TLabel
      Left = 159
      Top = 31
      Width = 99
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sequ'#234'ncia Num'#233'rica'
    end
    object DBEdit1: TDBEdit
      Left = 110
      Top = 5
      Width = 46
      Height = 21
      DataField = 'CODTIPOCLASSFISCAL'
      DataSource = DSTipoClass
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 110
      Top = 28
      Width = 28
      Height = 21
      CharCase = ecUpperCase
      DataField = 'LETRA'
      DataSource = DSTipoClass
      TabOrder = 1
      OnEnter = DBEdit2Enter
    end
    object DBEdit3: TDBEdit
      Left = 262
      Top = 28
      Width = 204
      Height = 21
      DataField = 'SEQUENCIA'
      DataSource = DSTipoClass
      MaxLength = 8
      TabOrder = 2
      OnExit = DBEdit3Exit
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 14
      Top = 12
      Width = 240
      Height = 31
      DataSource = DSTipoClass
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
  end
  object MainMenu1: TMainMenu
    Left = 280
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object iposdeClassificaesFiscais1: TMenuItem
        Caption = 'Tipos de Classifica'#231#245'es Fiscais'
        OnClick = iposdeClassificaesFiscais1Click
      end
    end
  end
  object DSTipoClass: TDataSource
    DataSet = TbTipoClass
    OnStateChange = DSTipoClassStateChange
    Left = 336
    Top = 8
  end
  object TbTipoClass: TIBDataSet
    Database = Dados.Database
    Transaction = Dados.Transaction
    DeleteSQL.Strings = (
      'delete from TIPOCLASSFISCAL'
      'where'
      '  CODTIPOCLASSFISCAL = :OLD_CODTIPOCLASSFISCAL')
    InsertSQL.Strings = (
      'insert into TIPOCLASSFISCAL'
      '  (CODTIPOCLASSFISCAL, LETRA, SEQUENCIA)'
      'values'
      '  (:CODTIPOCLASSFISCAL, :LETRA, :SEQUENCIA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODTIPOCLASSFISCAL,'
      '  LETRA,'
      '  SEQUENCIA'
      'from TIPOCLASSFISCAL '
      'where'
      '  CODTIPOCLASSFISCAL = :CODTIPOCLASSFISCAL')
    SelectSQL.Strings = (
      'select * from TIPOCLASSFISCAL')
    ModifySQL.Strings = (
      'update TIPOCLASSFISCAL'
      'set'
      '  CODTIPOCLASSFISCAL = :CODTIPOCLASSFISCAL,'
      '  LETRA = :LETRA,'
      '  SEQUENCIA = :SEQUENCIA'
      'where'
      '  CODTIPOCLASSFISCAL = :OLD_CODTIPOCLASSFISCAL')
    GeneratorField.Field = 'CODTIPOCLASSFISCAL'
    GeneratorField.Generator = 'GEN_TIPOCLASSFISCAL_ID'
    Left = 376
    Top = 8
    object TbTipoClassCODTIPOCLASSFISCAL: TIntegerField
      FieldName = 'CODTIPOCLASSFISCAL'
      Origin = 'TIPOCLASSFISCAL.CODTIPOCLASSFISCAL'
      Required = True
    end
    object TbTipoClassLETRA: TIBStringField
      FieldName = 'LETRA'
      Origin = 'TIPOCLASSFISCAL.LETRA'
      Size = 1
    end
    object TbTipoClassSEQUENCIA: TIBStringField
      FieldName = 'SEQUENCIA'
      Origin = 'TIPOCLASSFISCAL.SEQUENCIA'
      EditMask = '99.999.999;1;_'
      Size = 15
    end
  end
end
