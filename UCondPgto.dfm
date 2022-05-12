object FCondPgto: TFCondPgto
  Left = 192
  Top = 108
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Condi'#231#245'es de Pagamento'
  ClientHeight = 276
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
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 239
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
      Hint = 'Inserir Condi'#231#227'o de Pagamento'
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
      Hint = 'Alterar Condi'#231#227'o de Pagamento'
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
      Left = 197
      Top = 6
      Width = 88
      Height = 25
      Hint = 'Excluir Condi'#231#227'o de Pagamento'
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
      Hint = 'Gravar Condi'#231#227'o de Pagamento '
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
      Hint = 'Cancelar Condi'#231#227'o de Pagamento'
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
    Height = 185
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 96
      Top = 8
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo'
    end
    object Label4: TLabel
      Left = 93
      Top = 53
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo 1'
    end
    object Label3: TLabel
      Left = 81
      Top = 32
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
    end
    object Label1: TLabel
      Left = 93
      Top = 75
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo 2'
    end
    object Label5: TLabel
      Left = 93
      Top = 96
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo 3'
    end
    object Label6: TLabel
      Left = 93
      Top = 118
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo 4'
    end
    object Label7: TLabel
      Left = 93
      Top = 140
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo 5'
    end
    object Label8: TLabel
      Left = 93
      Top = 162
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo 6'
    end
    object DBEdit1: TDBEdit
      Left = 132
      Top = 5
      Width = 46
      Height = 21
      DataField = 'CODCONDPGTO'
      DataSource = DSCondPgto
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 132
      Top = 50
      Width = 47
      Height = 21
      DataField = 'PRAZO1'
      DataSource = DSCondPgto
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 132
      Top = 28
      Width = 268
      Height = 21
      DataField = 'NOME'
      DataSource = DSCondPgto
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 132
      Top = 72
      Width = 47
      Height = 21
      DataField = 'PRAZO2'
      DataSource = DSCondPgto
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 132
      Top = 93
      Width = 47
      Height = 21
      DataField = 'PRAZO3'
      DataSource = DSCondPgto
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 132
      Top = 115
      Width = 47
      Height = 21
      DataField = 'PRAZO4'
      DataSource = DSCondPgto
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 132
      Top = 137
      Width = 47
      Height = 21
      DataField = 'PRAZO5'
      DataSource = DSCondPgto
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 132
      Top = 159
      Width = 47
      Height = 21
      DataField = 'PRAZO6'
      DataSource = DSCondPgto
      TabOrder = 7
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
      DataSource = DSCondPgto
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
        OnClick = BitBtnSairClick
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object CondiesdePagamento1: TMenuItem
        Caption = 'Condi'#231#245'es de Pagamento'
        OnClick = CondiesdePagamento1Click
      end
    end
  end
  object DSCondPgto: TDataSource
    DataSet = TbCondPgto
    OnStateChange = DSCondPgtoStateChange
    Left = 312
    Top = 8
  end
  object TbCondPgto: TIBDataSet
    Database = Dados.Database
    Transaction = Dados.Transaction
    DeleteSQL.Strings = (
      'delete from CONDPGTO'
      'where'
      '  CODCONDPGTO = :OLD_CODCONDPGTO')
    InsertSQL.Strings = (
      'insert into CONDPGTO'
      '  (CODCONDPGTO, NOME, PRAZO1, PRAZO2, PRAZO3, PRAZO4, PRAZO5, '
      'PRAZO6)'
      'values'
      
        '  (:CODCONDPGTO, :NOME, :PRAZO1, :PRAZO2, :PRAZO3, :PRAZO4, :PRA' +
        'ZO5, '
      ':PRAZO6)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCONDPGTO,'
      '  NOME,'
      '  PRAZO1,'
      '  PRAZO2,'
      '  PRAZO3,'
      '  PRAZO4,'
      '  PRAZO5,'
      '  PRAZO6'
      'from CONDPGTO '
      'where'
      '  CODCONDPGTO = :CODCONDPGTO')
    SelectSQL.Strings = (
      'select * from CONDPGTO')
    ModifySQL.Strings = (
      'update CONDPGTO'
      'set'
      '  CODCONDPGTO = :CODCONDPGTO,'
      '  NOME = :NOME,'
      '  PRAZO1 = :PRAZO1,'
      '  PRAZO2 = :PRAZO2,'
      '  PRAZO3 = :PRAZO3,'
      '  PRAZO4 = :PRAZO4,'
      '  PRAZO5 = :PRAZO5,'
      '  PRAZO6 = :PRAZO6'
      'where'
      '  CODCONDPGTO = :OLD_CODCONDPGTO')
    GeneratorField.Field = 'CODCONDPGTO'
    GeneratorField.Generator = 'GEN_CONDPGTO_ID'
    Left = 344
    Top = 8
    object TbCondPgtoCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
      Origin = 'CONDPGTO.CODCONDPGTO'
      Required = True
    end
    object TbCondPgtoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CONDPGTO.NOME'
      Size = 35
    end
    object TbCondPgtoPRAZO1: TSmallintField
      FieldName = 'PRAZO1'
      Origin = 'CONDPGTO.PRAZO1'
    end
    object TbCondPgtoPRAZO2: TSmallintField
      FieldName = 'PRAZO2'
      Origin = 'CONDPGTO.PRAZO2'
    end
    object TbCondPgtoPRAZO3: TSmallintField
      FieldName = 'PRAZO3'
      Origin = 'CONDPGTO.PRAZO3'
    end
    object TbCondPgtoPRAZO4: TSmallintField
      FieldName = 'PRAZO4'
      Origin = 'CONDPGTO.PRAZO4'
    end
    object TbCondPgtoPRAZO5: TSmallintField
      FieldName = 'PRAZO5'
      Origin = 'CONDPGTO.PRAZO5'
    end
    object TbCondPgtoPRAZO6: TSmallintField
      FieldName = 'PRAZO6'
      Origin = 'CONDPGTO.PRAZO6'
    end
  end
end
