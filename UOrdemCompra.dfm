object FOrdemCompra: TFOrdemCompra
  Left = 224
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Ordens de Compra'
  ClientHeight = 372
  ClientWidth = 579
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
    Top = 335
    Width = 579
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object BitBtnNovo: TBitBtn
      Left = 61
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Inserir Ordens de Compra'
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
      Left = 155
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Alterar Ordem de Compra'
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
      Left = 250
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Excluir Ordem de Compra'
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
      Left = 345
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Gravar Ordens de Compra'
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
      Left = 440
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Cancelar Ordem de Compra'
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
    Width = 579
    Height = 281
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 11
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nro Ordem de Compra'
    end
    object Label1: TLabel
      Left = 75
      Top = 32
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedor'
    end
    object SpeedButton1: TSpeedButton
      Left = 525
      Top = 29
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object Label6: TLabel
      Left = 344
      Top = 12
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Ordem Compra'
    end
    object Label11: TLabel
      Left = 92
      Top = 55
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contato'
    end
    object Label29: TLabel
      Left = 47
      Top = 77
      Width = 82
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo de Entrega'
    end
    object Label30: TLabel
      Left = 110
      Top = 98
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'Obs'
    end
    object DBEdit1: TDBEdit
      Left = 133
      Top = 8
      Width = 46
      Height = 21
      DataField = 'CODORDEMCOMPRA'
      DataSource = DSOC
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 133
      Top = 29
      Width = 46
      Height = 21
      DataField = 'CODFORNGEN'
      DataSource = DSOC
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 181
      Top = 29
      Width = 342
      Height = 21
      DataField = 'CODFORNGEN'
      DataSource = DSOC
      KeyField = 'CODCADGEN'
      ListField = 'NOME'
      ListSource = Dados.DSFornecedoresLK
      TabOrder = 3
      OnEnter = DBLookupComboBox1Enter
      OnKeyDown = DBLookupComboBox1KeyDown
      OnKeyPress = DBLookupComboBox1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 445
      Top = 8
      Width = 75
      Height = 21
      DataField = 'DATAORDEMCOMPRA'
      DataSource = DSOC
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 133
      Top = 51
      Width = 389
      Height = 21
      DataField = 'CONTATO'
      DataSource = DSOC
      TabOrder = 4
    end
    object DBEdit27: TDBEdit
      Left = 133
      Top = 73
      Width = 389
      Height = 21
      DataField = 'PRAZOENTREGA'
      DataSource = DSOC
      TabOrder = 5
    end
    object DBMemo2: TDBMemo
      Left = 133
      Top = 95
      Width = 389
      Height = 52
      DataField = 'OBS'
      DataSource = DSOC
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 147
      Width = 575
      Height = 132
      Align = alBottom
      TabOrder = 7
      object BitOCNew: TBitBtn
        Left = 7
        Top = 13
        Width = 80
        Height = 25
        Hint = 'Inserir Produto'
        Caption = 'Novo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitOCNewClick
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
      object BitOCEdit: TBitBtn
        Left = 93
        Top = 13
        Width = 80
        Height = 25
        Hint = 'Alterar Produto'
        Caption = 'Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitOCEditClick
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
      object BitOCDel: TBitBtn
        Left = 179
        Top = 13
        Width = 80
        Height = 25
        Hint = 'Excluir Produto'
        Caption = 'Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitOCDelClick
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
      object DBGrid1: TDBGrid
        Left = 3
        Top = 44
        Width = 564
        Height = 79
        DataSource = DSItensOC
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Produto'
            Width = 279
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANT'
            Title.Caption = 'Quantidade'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRUNIT'
            Title.Caption = 'Valor'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTot'
            Title.Caption = 'Valor Total'
            Width = 70
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label9: TLabel
      Left = 367
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object Label10: TLabel
      Left = 379
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Ordem'
    end
    object SpeedButton3: TSpeedButton
      Left = 551
      Top = 26
      Width = 22
      Height = 23
      Hint = 'Busca Avan'#231'ada de Ordens de Compra'
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
      DataSource = DSOC
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object RadioButton1: TRadioButton
      Left = 490
      Top = 8
      Width = 75
      Height = 17
      Caption = 'Fornecedor'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton2Click
    end
    object RadioButton2: TRadioButton
      Left = 414
      Top = 10
      Width = 73
      Height = 13
      Caption = 'Nro Ordem'
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object Edit1: TEdit
      Left = 412
      Top = 26
      Width = 137
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
  end
  object GBForn: TGroupBox
    Left = 537
    Top = 334
    Width = 580
    Height = 318
    Caption = 'Especifique o Fornecedor'
    TabOrder = 3
    Visible = False
    object Label4: TLabel
      Left = 109
      Top = 28
      Width = 54
      Height = 13
      Caption = 'Fornecedor'
    end
    object SpeedButton2: TSpeedButton
      Left = 521
      Top = 24
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 167
      Top = 24
      Width = 352
      Height = 21
      KeyField = 'CODCADGEN'
      ListField = 'NOME'
      ListSource = Dados.DSFornecedoresLK
      TabOrder = 0
      OnEnter = DBLookupComboBox1Enter
    end
    object BitBtn3: TBitBtn
      Left = 58
      Top = 64
      Width = 225
      Height = 25
      Caption = 'Cancela a Edi'#231#227'o da Ordem de Compra'
      TabOrder = 1
      OnClick = BitBtn3Click
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
    object BitBtn4: TBitBtn
      Left = 298
      Top = 64
      Width = 225
      Height = 25
      Caption = 'Continua a Edi'#231#227'o da Ordem de Compra'
      TabOrder = 2
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF5F5557777777777505555777777777757F55555555555555
        055555555555FF5575F555555550055030555555555775F7F7F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        305555577F555557F7F5550E0BFBFB003055557575F55577F7F550EEE0BFB0B0
        305557FF575F5757F7F5000EEE0BFBF03055777FF575FFF7F7F50000EEE00000
        30557777FF577777F7F500000E05555BB05577777F75555777F5500000555550
        3055577777555557F7F555000555555999555577755555577755}
      NumGlyphs = 2
    end
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 96
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
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
      object Vendas1: TMenuItem
        Caption = 'Ordens de Compra'
        OnClick = Vendas1Click
      end
    end
  end
  object TbOC: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionOC
    DeleteSQL.Strings = (
      'delete from ORDEMCOMPRA'
      'where'
      '  CODORDEMCOMPRA = :OLD_CODORDEMCOMPRA')
    InsertSQL.Strings = (
      'insert into ORDEMCOMPRA'
      
        '  (CODFORNGEN, CODORDEMCOMPRA, CONTATO, DATAORDEMCOMPRA, OBS, PR' +
        'AZOENTREGA)'
      'values'
      
        '  (:CODFORNGEN, :CODORDEMCOMPRA, :CONTATO, :DATAORDEMCOMPRA, :OB' +
        'S, :PRAZOENTREGA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODORDEMCOMPRA,'
      '  DATAORDEMCOMPRA,'
      '  CODFORNGEN,'
      '  CONTATO,'
      '  PRAZOENTREGA,'
      '  OBS'
      'from ORDEMCOMPRA '
      'where'
      '  CODORDEMCOMPRA = :CODORDEMCOMPRA')
    SelectSQL.Strings = (
      'select * from ORDEMCOMPRA')
    ModifySQL.Strings = (
      'update ORDEMCOMPRA'
      'set'
      '  CODFORNGEN = :CODFORNGEN,'
      '  CODORDEMCOMPRA = :CODORDEMCOMPRA,'
      '  CONTATO = :CONTATO,'
      '  DATAORDEMCOMPRA = :DATAORDEMCOMPRA,'
      '  OBS = :OBS,'
      '  PRAZOENTREGA = :PRAZOENTREGA'
      'where'
      '  CODORDEMCOMPRA = :OLD_CODORDEMCOMPRA')
    GeneratorField.Field = 'CODORDEMCOMPRA'
    GeneratorField.Generator = 'GEN_ORDEMCOMPRA_ID'
    Left = 280
    Top = 8
    object TbOCCODORDEMCOMPRA: TIntegerField
      FieldName = 'CODORDEMCOMPRA'
      Origin = '"ORDEMCOMPRA"."CODORDEMCOMPRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbOCDATAORDEMCOMPRA: TDateField
      FieldName = 'DATAORDEMCOMPRA'
      Origin = '"ORDEMCOMPRA"."DATAORDEMCOMPRA"'
    end
    object TbOCCODFORNGEN: TIntegerField
      FieldName = 'CODFORNGEN'
      Origin = '"ORDEMCOMPRA"."CODFORNGEN"'
      Required = True
    end
    object TbOCCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"ORDEMCOMPRA"."CONTATO"'
      Size = 50
    end
    object TbOCPRAZOENTREGA: TIBStringField
      FieldName = 'PRAZOENTREGA'
      Origin = '"ORDEMCOMPRA"."PRAZOENTREGA"'
      Size = 25
    end
    object TbOCOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"ORDEMCOMPRA"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object TbItensOC: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionOC
    OnCalcFields = TbItensOCCalcFields
    DeleteSQL.Strings = (
      'delete from ITENSORDEMCOMPRA'
      'where'
      '  CODORDEMCOMPRA = :OLD_CODORDEMCOMPRA and'
      '  NROITEM = :OLD_NROITEM')
    InsertSQL.Strings = (
      'insert into ITENSORDEMCOMPRA'
      '  (CODORDEMCOMPRA, CODPRODUTO, NROITEM, QUANT, VLRUNIT)'
      'values'
      '  (:CODORDEMCOMPRA, :CODPRODUTO, :NROITEM, :QUANT, :VLRUNIT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODORDEMCOMPRA,'
      '  NROITEM,'
      '  CODPRODUTO,'
      '  QUANT,'
      '  VLRUNIT'
      'from ITENSORDEMCOMPRA '
      'where'
      '  CODORDEMCOMPRA = :CODORDEMCOMPRA and'
      '  NROITEM = :NROITEM')
    SelectSQL.Strings = (
      'select * from ITENSORDEMCOMPRA'
      'WHERE CODORDEMCOMPRA= :CODORDEMCOMPRA'
      'ORDER BY NROITEM')
    ModifySQL.Strings = (
      'update ITENSORDEMCOMPRA'
      'set'
      '  CODORDEMCOMPRA = :CODORDEMCOMPRA,'
      '  CODPRODUTO = :CODPRODUTO,'
      '  NROITEM = :NROITEM,'
      '  QUANT = :QUANT,'
      '  VLRUNIT = :VLRUNIT'
      'where'
      '  CODORDEMCOMPRA = :OLD_CODORDEMCOMPRA and'
      '  NROITEM = :OLD_NROITEM')
    DataSource = DSOC
    Left = 288
    Top = 32
    object TbItensOCCODORDEMCOMPRA: TIntegerField
      FieldName = 'CODORDEMCOMPRA'
      Origin = '"ITENSORDEMCOMPRA"."CODORDEMCOMPRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbItensOCNROITEM: TIntegerField
      FieldName = 'NROITEM'
      Origin = '"ITENSORDEMCOMPRA"."NROITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbItensOCCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = '"ITENSORDEMCOMPRA"."CODPRODUTO"'
      Required = True
    end
    object TbItensOCQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = '"ITENSORDEMCOMPRA"."QUANT"'
      Precision = 18
      Size = 2
    end
    object TbItensOCVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = '"ITENSORDEMCOMPRA"."VLRUNIT"'
      Precision = 18
      Size = 2
    end
    object TbItensOCProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = Dados.QryProdutosLK
      LookupKeyFields = 'CODPRODUTO'
      LookupResultField = 'NOME'
      KeyFields = 'CODPRODUTO'
      Size = 100
      Lookup = True
    end
    object TbItensOCVlrTot: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VlrTot'
      Calculated = True
    end
  end
  object TransactionOC: TIBTransaction
    DefaultDatabase = Dados.Database
    Left = 304
    Top = 56
  end
  object DSOC: TDataSource
    DataSet = TbOC
    OnStateChange = DSOCStateChange
    OnDataChange = DSOCDataChange
    Left = 304
    Top = 8
  end
  object DSItensOC: TDataSource
    DataSet = TbItensOC
    Left = 312
    Top = 32
  end
end
