object FCPagar: TFCPagar
  Left = 192
  Top = 120
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Contas a Pagar'
  ClientHeight = 462
  ClientWidth = 604
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
    Top = 425
    Width = 604
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnAlterar: TBitBtn
      Left = 121
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Alterar Conta a Pagar'
      Caption = 'A&lterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Left = 215
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Excluir Conta a Pagar'
      Caption = 'E&xcluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
      Left = 309
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Gravar Conta a Pagar'
      Caption = 'Gra&var'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
      Left = 403
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Cancelar Conta a Pagar'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label9: TLabel
      Left = 353
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object Label10: TLabel
      Left = 363
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Ordem'
    end
    object SpeedButton3: TSpeedButton
      Left = 577
      Top = 26
      Width = 23
      Height = 22
      Hint = 'Busca Avan'#231'ada de Contas a Pagar'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777700000777700000770B00077770B000770F00088770F
        00077000000000000007700F00000B000007700F00000F000007700F00000000
        000777000008700000777770F077770B07777770F077770F0777777000777700
        077777777777777777777777777777777777}
      OnClick = SpeedButton3Click
    end
    object DBNavigator1: TDBNavigator
      Left = 14
      Top = 12
      Width = 240
      Height = 31
      DataSource = DSCP
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object RadioButton1: TRadioButton
      Left = 398
      Top = 8
      Width = 76
      Height = 17
      Caption = 'Fornecedor'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
    end
    object Edit1: TEdit
      Left = 399
      Top = 26
      Width = 174
      Height = 21
      TabOrder = 2
    end
    object RadioButton3: TRadioButton
      Left = 472
      Top = 8
      Width = 54
      Height = 17
      Caption = 'Nro NF'
      TabOrder = 3
    end
    object RadioButton2: TRadioButton
      Left = 525
      Top = 8
      Width = 75
      Height = 17
      Caption = 'Nro Compra'
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 604
    Height = 371
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 56
      Top = 71
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Cadastro'
    end
    object Label1: TLabel
      Left = 70
      Top = 93
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedor'
    end
    object SpeedButton1: TSpeedButton
      Left = 535
      Top = 89
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 93
      Top = 115
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco'
    end
    object SpeedButton2: TSpeedButton
      Left = 535
      Top = 111
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton2Click
    end
    object Label8: TLabel
      Left = 102
      Top = 137
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = 'Obs.'
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 251
      Width = 600
      Height = 118
      Align = alBottom
      Caption = 'Parcelas da Conta a Pagar'
      TabOrder = 8
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 596
        Height = 101
        Align = alClient
        DataSource = DSCPParcs
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColExit = DBGrid1ColExit
        Columns = <
          item
            Expanded = False
            FieldName = 'NROPARC'
            Title.Caption = 'N'#186' Parc.'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VCTOPARC'
            Title.Caption = 'Vcto. Parc.'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPARC'
            Title.Caption = 'Vlr. Parc.'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PGTOPARC'
            Title.Caption = 'Pgto. Parc.'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPAGO'
            Title.Caption = 'Vlr. Pago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SituacaoStr'
            Title.Caption = 'Situa'#231#227'o da Parcela'
            Width = 150
            Visible = True
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 168
      Width = 600
      Height = 83
      Align = alBottom
      Caption = 'Principais Dados da Nota Fiscal'
      TabOrder = 7
      object Label2: TLabel
        Left = 86
        Top = 18
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nro NF'
      end
      object Label6: TLabel
        Left = 92
        Top = 39
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'CFOP'
      end
      object SpeedButton5: TSpeedButton
        Left = 531
        Top = 35
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = SpeedButton5Click
      end
      object Label5: TLabel
        Left = 64
        Top = 60
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cond. Pgto.'
      end
      object SpeedButton4: TSpeedButton
        Left = 531
        Top = 57
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = SpeedButton4Click
      end
      object Label7: TLabel
        Left = 383
        Top = 18
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Compra'
      end
      object DBEdit1: TDBEdit
        Left = 124
        Top = 15
        Width = 46
        Height = 21
        DataField = 'NRONF'
        DataSource = DSNF
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 124
        Top = 36
        Width = 46
        Height = 21
        DataField = 'CODCFOP'
        DataSource = DSNF
        TabOrder = 2
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 172
        Top = 36
        Width = 357
        Height = 21
        DataField = 'CODCFOP'
        DataSource = DSNF
        KeyField = 'CODCFOP'
        ListField = 'NOME'
        ListSource = Dados.DSCFOPLK
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 124
        Top = 57
        Width = 46
        Height = 21
        DataField = 'CODCONDPGTO'
        DataSource = DSNF
        TabOrder = 4
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 172
        Top = 57
        Width = 357
        Height = 21
        DataField = 'CODCONDPGTO'
        DataSource = DSNF
        KeyField = 'CODCFOP'
        ListField = 'NOME'
        ListSource = Dados.DSCFOPLK
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 449
        Top = 15
        Width = 77
        Height = 21
        DataField = 'DATACOMPRA'
        DataSource = DSNF
        TabOrder = 1
      end
    end
    object DBEdit4: TDBEdit
      Left = 128
      Top = 68
      Width = 77
      Height = 21
      DataField = 'DATA'
      DataSource = DSCP
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 128
      Top = 90
      Width = 46
      Height = 21
      DataField = 'CODFORNGEN'
      DataSource = DSNF
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 176
      Top = 90
      Width = 357
      Height = 21
      DataField = 'CODFORNGEN'
      DataSource = DSNF
      KeyField = 'CODCADGEN'
      ListField = 'NOME'
      ListSource = Dados.DSFornecedoresLK
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 112
      Width = 46
      Height = 21
      DataField = 'CODBANCO'
      DataSource = DSCP
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 176
      Top = 112
      Width = 357
      Height = 21
      DataField = 'CODBANCO'
      DataSource = DSCP
      KeyField = 'CODBANCO'
      ListField = 'NOME'
      ListSource = Dados.DSBancosLK
      TabOrder = 5
    end
    object DBMemo1: TDBMemo
      Left = 128
      Top = 133
      Width = 405
      Height = 33
      DataField = 'OBS'
      DataSource = DSCP
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 16
      Top = 3
      Width = 590
      Height = 63
      Caption = 'Situa'#231#227'o da Conta a Pagar'
      Columns = 2
      Items.Strings = (
        'Algumas Abertas (Sem Atraso)'
        'Algumas Abertas (Uma ou Mais Pagas com Atraso)'
        'Todas Abertas'
        'Todas Pagas (Sem Atraso)'
        'Todas Pagas (Uma ou Mais Pagas com Atraso)'
        'Venda '#224' Vista')
      TabOrder = 0
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6')
    end
  end
  object MainMenu1: TMainMenu
    Left = 320
    Top = 16
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Bancos1: TMenuItem
        Caption = 'Bancos'
      end
      object CFOP1: TMenuItem
        Caption = 'CFOP'
      end
      object CondiesdePagamento1: TMenuItem
        Caption = 'Condi'#231#245'es de Pagamento'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object FichadoClente1: TMenuItem
        Caption = 'Fornecedores'
        Visible = False
        OnClick = FichadoClente1Click
      end
      object N1: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Clientes1: TMenuItem
        Caption = 'Contas a Pagar'
        OnClick = Clientes1Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 296
    Top = 16
    object BaixarContaaReceber1: TMenuItem
      Caption = 'Baixar Conta a Receber'
      OnClick = BaixarContaaReceber1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object CancelarContaaReceber1: TMenuItem
      Caption = 'Cancelar Conta a Receber'
      OnClick = BaixarContaaReceber1Click
    end
  end
  object TransactionCP: TIBTransaction
    DefaultDatabase = Dados.Database
    Left = 224
    Top = 56
  end
  object DSCPParcs: TDataSource
    DataSet = TbCPParcs
    Left = 232
    Top = 24
  end
  object DSCP: TDataSource
    DataSet = TbCP
    OnStateChange = DSCPStateChange
    OnDataChange = DSCPDataChange
    Left = 216
  end
  object QryNF: TIBQuery
    Database = Dados.Database
    Transaction = TransactionCP
    SQL.Strings = (
      
        'select C.codcfop, C.nrocompra, C.datacompra, C.codcondpgto, C.nr' +
        'onf,'
      'c.codforngen'
      'from Compras  C')
    Left = 272
    Top = 8
    object QryNFCODCFOP: TIntegerField
      FieldName = 'CODCFOP'
      Origin = '"COMPRAS"."CODCFOP"'
      Required = True
    end
    object QryNFNROCOMPRA: TIntegerField
      FieldName = 'NROCOMPRA'
      Origin = '"COMPRAS"."NROCOMPRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryNFDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = '"COMPRAS"."DATACOMPRA"'
    end
    object QryNFCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
      Origin = '"COMPRAS"."CODCONDPGTO"'
      Required = True
    end
    object QryNFNRONF: TLargeintField
      FieldName = 'NRONF'
      Origin = '"COMPRAS"."NRONF"'
    end
    object QryNFCODFORNGEN: TIntegerField
      FieldName = 'CODFORNGEN'
      Origin = '"COMPRAS"."CODFORNGEN"'
      Required = True
    end
  end
  object DSNF: TDataSource
    DataSet = QryNF
    Left = 272
    Top = 40
  end
  object TbCP: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionCP
    DeleteSQL.Strings = (
      'delete from CPAGAR'
      'where'
      '  NROCPAGAR = :OLD_NROCPAGAR')
    InsertSQL.Strings = (
      'insert into CPAGAR'
      '  (CODBANCO, CODCONDPGTO, DATA, NROCOMPRA, NROCPAGAR, OBS)'
      'values'
      '  (:CODBANCO, :CODCONDPGTO, :DATA, :NROCOMPRA, :NROCPAGAR, :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  NROCPAGAR,'
      '  NROCOMPRA,'
      '  CODBANCO,'
      '  CODCONDPGTO,'
      '  DATA,'
      '  OBS'
      'from CPAGAR '
      'where'
      '  NROCPAGAR = :NROCPAGAR')
    SelectSQL.Strings = (
      'Select * from CPAGAR')
    ModifySQL.Strings = (
      'update CPAGAR'
      'set'
      '  CODBANCO = :CODBANCO,'
      '  CODCONDPGTO = :CODCONDPGTO,'
      '  DATA = :DATA,'
      '  NROCOMPRA = :NROCOMPRA,'
      '  NROCPAGAR = :NROCPAGAR,'
      '  OBS = :OBS'
      'where'
      '  NROCPAGAR = :OLD_NROCPAGAR')
    GeneratorField.Field = 'NROCPAGAR'
    GeneratorField.Generator = 'GEN_CPAGAR_ID'
    Left = 184
    object TbCPNROCPAGAR: TIntegerField
      FieldName = 'NROCPAGAR'
      Origin = '"CPAGAR"."NROCPAGAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbCPNROCOMPRA: TIntegerField
      FieldName = 'NROCOMPRA'
      Origin = '"CPAGAR"."NROCOMPRA"'
      Required = True
    end
    object TbCPCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
      Origin = '"CPAGAR"."CODBANCO"'
      Required = True
    end
    object TbCPCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
      Origin = '"CPAGAR"."CODCONDPGTO"'
      Required = True
    end
    object TbCPDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CPAGAR"."DATA"'
    end
    object TbCPOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"CPAGAR"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object TbCPParcs: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionCP
    OnCalcFields = TbCPParcsCalcFields
    DeleteSQL.Strings = (
      'delete from CPAGARPARCS'
      'where'
      '  NROCPAGAR = :OLD_NROCPAGAR and'
      '  NROPARC = :OLD_NROPARC')
    InsertSQL.Strings = (
      'insert into CPAGARPARCS'
      
        '  (NROCPAGAR, NROPARC, PGTOPARC, SITUACAO, VCTOPARC, VLRPAGO, VL' +
        'RPARC)'
      'values'
      
        '  (:NROCPAGAR, :NROPARC, :PGTOPARC, :SITUACAO, :VCTOPARC, :VLRPA' +
        'GO, :VLRPARC)')
    RefreshSQL.Strings = (
      'Select '
      '  NROCPAGAR,'
      '  NROPARC,'
      '  VCTOPARC,'
      '  VLRPARC,'
      '  PGTOPARC,'
      '  VLRPAGO,'
      '  SITUACAO'
      'from CPAGARPARCS '
      'where'
      '  NROCPAGAR = :NROCPAGAR and'
      '  NROPARC = :NROPARC')
    SelectSQL.Strings = (
      'Select * from CPAGARPARCS'
      'Where NROCPAGAR = :NROCPAGAR')
    ModifySQL.Strings = (
      'update CPAGARPARCS'
      'set'
      '  NROCPAGAR = :NROCPAGAR,'
      '  NROPARC = :NROPARC,'
      '  PGTOPARC = :PGTOPARC,'
      '  SITUACAO = :SITUACAO,'
      '  VCTOPARC = :VCTOPARC,'
      '  VLRPAGO = :VLRPAGO,'
      '  VLRPARC = :VLRPARC'
      'where'
      '  NROCPAGAR = :OLD_NROCPAGAR and'
      '  NROPARC = :OLD_NROPARC')
    DataSource = DSCP
    Left = 208
    Top = 24
    object TbCPParcsNROCPAGAR: TIntegerField
      FieldName = 'NROCPAGAR'
      Origin = '"CPAGARPARCS"."NROCPAGAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbCPParcsNROPARC: TIntegerField
      FieldName = 'NROPARC'
      Origin = '"CPAGARPARCS"."NROPARC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbCPParcsVCTOPARC: TDateField
      FieldName = 'VCTOPARC'
      Origin = '"CPAGARPARCS"."VCTOPARC"'
    end
    object TbCPParcsVLRPARC: TIBBCDField
      FieldName = 'VLRPARC'
      Origin = '"CPAGARPARCS"."VLRPARC"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object TbCPParcsPGTOPARC: TDateField
      FieldName = 'PGTOPARC'
      Origin = '"CPAGARPARCS"."PGTOPARC"'
    end
    object TbCPParcsVLRPAGO: TIBBCDField
      FieldName = 'VLRPAGO'
      Origin = '"CPAGARPARCS"."VLRPAGO"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object TbCPParcsSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"CPAGARPARCS"."SITUACAO"'
      Size = 1
    end
    object TbCPParcsSituacaoStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoStr'
      Size = 25
      Calculated = True
    end
  end
end
