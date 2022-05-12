object FOrcamento: TFOrcamento
  Left = 196
  Top = 152
  BorderStyle = bsSingle
  Caption = 'Cadastro de Or'#231'amentos'
  ClientHeight = 382
  ClientWidth = 612
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
    Top = 345
    Width = 612
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnNovo: TBitBtn
      Left = 52
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Inserir Or'#231'amento'
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
      Left = 154
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Alterar Or'#231'amento'
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
      Left = 257
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Excluir Or'#231'amento'
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
      Left = 360
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Gravar Or'#231'amento'
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
      Left = 463
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Cancelar Or'#231'amento'
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
    Width = 612
    Height = 291
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 608
      Height = 287
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Dados Principais'
        object Label2: TLabel
          Left = 57
          Top = 5
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro Or'#231'amento'
        end
        object Label1: TLabel
          Left = 96
          Top = 28
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object SpeedButton1: TSpeedButton
          Left = 534
          Top = 24
          Width = 23
          Height = 22
          Hint = 'Cadastro de Clientes'
          Caption = '...'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object Label6: TLabel
          Left = 377
          Top = 6
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Or'#231'amento'
        end
        object Label12: TLabel
          Left = 30
          Top = 49
          Width = 98
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Contato Cliente'
        end
        object Label11: TLabel
          Left = 92
          Top = 71
          Width = 37
          Height = 13
          Caption = 'Contato'
        end
        object Label16: TLabel
          Left = 9
          Top = 92
          Width = 122
          Height = 13
          Caption = 'Condi'#231#245'es de Pagamento'
        end
        object Label29: TLabel
          Left = 48
          Top = 114
          Width = 82
          Height = 13
          Caption = 'Prazo de Entrega'
        end
        object Label5: TLabel
          Left = 34
          Top = 134
          Width = 97
          Height = 13
          Caption = 'Por Conta do Cliente'
        end
        object Label30: TLabel
          Left = 110
          Top = 188
          Width = 19
          Height = 13
          Caption = 'Obs'
        end
        object DBEdit1: TDBEdit
          Left = 133
          Top = 2
          Width = 46
          Height = 21
          DataField = 'CODORCAMENTO'
          DataSource = DSOrcamento
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 133
          Top = 24
          Width = 46
          Height = 21
          DataField = 'CODCLIGEN'
          DataSource = DSOrcamento
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 181
          Top = 24
          Width = 352
          Height = 21
          DataField = 'CODCLIGEN'
          DataSource = DSOrcamento
          KeyField = 'CODCADGEN'
          ListField = 'NOME'
          ListSource = Dados.DSClientesLK
          TabOrder = 3
          OnEnter = DBLookupComboBox1Enter
        end
        object DBEdit5: TDBEdit
          Left = 459
          Top = 2
          Width = 71
          Height = 21
          DataField = 'DATAORCAMENTO'
          DataSource = DSOrcamento
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 133
          Top = 46
          Width = 71
          Height = 21
          DataField = 'DATACONTATOCLIENTE'
          DataSource = DSOrcamento
          TabOrder = 4
        end
        object DBEdit10: TDBEdit
          Left = 133
          Top = 67
          Width = 399
          Height = 21
          DataField = 'CONTATO'
          DataSource = DSOrcamento
          TabOrder = 5
        end
        object DBEdit14: TDBEdit
          Left = 133
          Top = 89
          Width = 399
          Height = 21
          DataField = 'CONDPGTO'
          DataSource = DSOrcamento
          TabOrder = 6
        end
        object DBEdit27: TDBEdit
          Left = 133
          Top = 111
          Width = 399
          Height = 21
          DataField = 'PRAZOENTREGA'
          DataSource = DSOrcamento
          TabOrder = 7
        end
        object DBMemo1: TDBMemo
          Left = 133
          Top = 132
          Width = 399
          Height = 52
          DataField = 'PORCONTACLIENTE'
          DataSource = DSOrcamento
          ScrollBars = ssVertical
          TabOrder = 8
        end
        object DBMemo2: TDBMemo
          Left = 133
          Top = 185
          Width = 399
          Height = 52
          DataField = 'OBS'
          DataSource = DSOrcamento
          ScrollBars = ssVertical
          TabOrder = 9
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Itens do Or'#231'amento'
        ImageIndex = 1
        object Label3: TLabel
          Left = 348
          Top = 217
          Width = 48
          Height = 16
          Caption = 'Label3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 584
          Height = 209
          TabOrder = 0
          object BitNovoIt: TBitBtn
            Left = 7
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Inserir Produto'
            Caption = 'Novo'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitNovoItClick
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
          object BitAlterarIt: TBitBtn
            Left = 93
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Alterar Produto'
            Caption = 'Alterar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitAlterarItClick
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
          object BitExcluirIt: TBitBtn
            Left = 179
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Excluir Produto'
            Caption = 'Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitExcluirItClick
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
            Width = 577
            Height = 161
            DataSource = DSItensOrcamento
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'NROITEM'
                Title.Caption = 'Nro Item'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUTO'
                Title.Caption = 'Produto'
                Width = 340
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Caption = 'Valor Unit'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANT'
                Title.Caption = 'Quant'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTAL'
                Title.Caption = 'Valor Total'
                Visible = True
              end>
          end
          object BitDescricaoit: TBitBtn
            Left = 451
            Top = 17
            Width = 128
            Height = 25
            Hint = 'Visualiza a Decri'#231#227'o do Produto'
            Caption = 'Visualizar Descri'#231#227'o'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = BitDescricaoitClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33033333333333333F7F3333333333333000333333333333F777333333333333
              000333333333333F777333333333333000333333333333F77733333333333300
              033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
              33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
              3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
              33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
              333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
              333333773FF77333333333370007333333333333777333333333}
            NumGlyphs = 2
          end
        end
        object BitBtn1: TBitBtn
          Left = 116
          Top = 213
          Width = 167
          Height = 25
          Caption = 'Totalizar valor do or'#231'amento'
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 612
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label9: TLabel
      Left = 376
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object Label10: TLabel
      Left = 387
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Ordem'
    end
    object SpeedButton3: TSpeedButton
      Left = 567
      Top = 26
      Width = 23
      Height = 22
      Hint = 'Busca Avan'#231'ada de Or'#231'amentos'
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
      DataSource = DSOrcamento
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object RadioButton1: TRadioButton
      Left = 478
      Top = 8
      Width = 52
      Height = 17
      Caption = 'Cliente'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton2Click
    end
    object RadioButton2: TRadioButton
      Left = 422
      Top = 8
      Width = 55
      Height = 17
      Caption = 'C'#243'digo'
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object Edit1: TEdit
      Left = 422
      Top = 26
      Width = 142
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
    object RadioButton3: TRadioButton
      Left = 533
      Top = 8
      Width = 58
      Height = 17
      Caption = 'Contato'
      TabOrder = 4
      OnClick = RadioButton2Click
    end
  end
  object GBCli: TGroupBox
    Left = 561
    Top = 358
    Width = 610
    Height = 326
    Caption = 'Especifique o Cliente'
    TabOrder = 4
    Visible = False
    object Label4: TLabel
      Left = 115
      Top = 28
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 505
      Top = 24
      Width = 23
      Height = 22
      Hint = 'Cadastro de Clientes'
      Caption = '...'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 151
      Top = 24
      Width = 352
      Height = 21
      KeyField = 'CODCADGEN'
      ListField = 'NOME'
      ListSource = Dados.DSClientesLK
      TabOrder = 0
      OnEnter = DBLookupComboBox1Enter
    end
    object BitBtn3: TBitBtn
      Left = 80
      Top = 72
      Width = 209
      Height = 25
      Caption = 'Cancela a Edi'#231#227'o do Or'#231'amento'
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
      Left = 304
      Top = 72
      Width = 209
      Height = 25
      Caption = 'Continua a Edi'#231#227'o do Or'#231'amento'
      TabOrder = 2
      OnClick = BitBtn4Click
      OnKeyPress = BitBtn4KeyPress
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
  object Panel4: TPanel
    Left = 698
    Top = 332
    Width = 380
    Height = 160
    BevelInner = bvSpace
    TabOrder = 3
    Visible = False
    object DBMemo3: TDBMemo
      Left = 7
      Top = 10
      Width = 364
      Height = 126
      DataField = 'DESCRICAO'
      DataSource = DSItensOrcamento
      ReadOnly = True
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 230
      Top = 133
      Width = 145
      Height = 25
      Caption = 'Voltar para o or'#231'amento'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 48
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      OnClick = BitBtnSairClick
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = SpeedButton1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Vendas1: TMenuItem
        Caption = 'Or'#231'amentos'
        OnClick = Vendas1Click
      end
    end
    object Oramento1: TMenuItem
      Caption = 'Or'#231'amentos'
      object GerarHTML2: TMenuItem
        Caption = 'Gerar Or'#231'amento'
        OnClick = GerarHTML2Click
      end
    end
  end
  object TransactionOrc: TIBTransaction
    DefaultDatabase = Dados.Database
    Left = 288
    Top = 59
  end
  object TbOrcamento: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionOrc
    DeleteSQL.Strings = (
      'delete from ORCAMENTOS'
      'where'
      '  CODORCAMENTO = :OLD_CODORCAMENTO')
    InsertSQL.Strings = (
      'insert into ORCAMENTOS'
      
        '  (CODCLIGEN, CODORCAMENTO, CONDPGTO, CONTATO, DATACONTATOCLIENT' +
        'E, DATAORCAMENTO, '
      '   OBS, PORCONTACLIENTE, PRAZOENTREGA)'
      'values'
      
        '  (:CODCLIGEN, :CODORCAMENTO, :CONDPGTO, :CONTATO, :DATACONTATOC' +
        'LIENTE, '
      '   :DATAORCAMENTO, :OBS, :PORCONTACLIENTE, :PRAZOENTREGA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODORCAMENTO,'
      '  DATAORCAMENTO,'
      '  CODCLIGEN,'
      '  DATACONTATOCLIENTE,'
      '  CONTATO,'
      '  CONDPGTO,'
      '  PRAZOENTREGA,'
      '  PORCONTACLIENTE,'
      '  OBS'
      'from ORCAMENTOS '
      'where'
      '  CODORCAMENTO = :CODORCAMENTO')
    SelectSQL.Strings = (
      'SELECT * FROM ORCAMENTOS'
      'Order By CODORCAMENTO')
    ModifySQL.Strings = (
      'update ORCAMENTOS'
      'set'
      '  CODCLIGEN = :CODCLIGEN,'
      '  CODORCAMENTO = :CODORCAMENTO,'
      '  CONDPGTO = :CONDPGTO,'
      '  CONTATO = :CONTATO,'
      '  DATACONTATOCLIENTE = :DATACONTATOCLIENTE,'
      '  DATAORCAMENTO = :DATAORCAMENTO,'
      '  OBS = :OBS,'
      '  PORCONTACLIENTE = :PORCONTACLIENTE,'
      '  PRAZOENTREGA = :PRAZOENTREGA'
      'where'
      '  CODORCAMENTO = :OLD_CODORCAMENTO')
    GeneratorField.Field = 'CODORCAMENTO'
    GeneratorField.Generator = 'GEN_ORCAMENTOS_ID'
    Left = 304
    Top = 32
    object TbOrcamentoCODORCAMENTO: TIntegerField
      FieldName = 'CODORCAMENTO'
      Origin = '"ORCAMENTOS"."CODORCAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbOrcamentoDATAORCAMENTO: TDateField
      FieldName = 'DATAORCAMENTO'
      Origin = '"ORCAMENTOS"."DATAORCAMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object TbOrcamentoCODCLIGEN: TIntegerField
      FieldName = 'CODCLIGEN'
      Origin = '"ORCAMENTOS"."CODCLIGEN"'
    end
    object TbOrcamentoDATACONTATOCLIENTE: TDateField
      FieldName = 'DATACONTATOCLIENTE'
      Origin = '"ORCAMENTOS"."DATACONTATOCLIENTE"'
      EditMask = '99/99/9999;1;_'
    end
    object TbOrcamentoCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"ORCAMENTOS"."CONTATO"'
      Size = 50
    end
    object TbOrcamentoCONDPGTO: TIBStringField
      FieldName = 'CONDPGTO'
      Origin = '"ORCAMENTOS"."CONDPGTO"'
      Size = 25
    end
    object TbOrcamentoPRAZOENTREGA: TIBStringField
      FieldName = 'PRAZOENTREGA'
      Origin = '"ORCAMENTOS"."PRAZOENTREGA"'
      Size = 25
    end
    object TbOrcamentoPORCONTACLIENTE: TIBStringField
      FieldName = 'PORCONTACLIENTE'
      Origin = '"ORCAMENTOS"."PORCONTACLIENTE"'
      Size = 150
    end
    object TbOrcamentoOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"ORCAMENTOS"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object TbItensOrcamento: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionOrc
    OnCalcFields = TbItensOrcamentoCalcFields
    DeleteSQL.Strings = (
      'delete from ITENSORCAMENTOS'
      'where'
      '  CODORCAMENTO = :OLD_CODORCAMENTO and'
      '  NROITEM = :OLD_NROITEM')
    InsertSQL.Strings = (
      'insert into ITENSORCAMENTOS'
      
        '  (CODORCAMENTO, CODPRODUTO, DESCRICAO, INCLUIRORC, NROITEM, QUA' +
        'NT, VLRUNIT)'
      'values'
      
        '  (:CODORCAMENTO, :CODPRODUTO, :DESCRICAO, :INCLUIRORC, :NROITEM' +
        ', :QUANT, '
      '   :VLRUNIT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODORCAMENTO,'
      '  NROITEM,'
      '  CODPRODUTO,'
      '  QUANT,'
      '  VLRUNIT,'
      '  DESCRICAO,'
      '  INCLUIRORC'
      'from ITENSORCAMENTOS '
      'where'
      '  CODORCAMENTO = :CODORCAMENTO and'
      '  NROITEM = :NROITEM')
    SelectSQL.Strings = (
      'SELECT * FROM ITENSORCAMENTOS'
      'WHERE'
      'CODORCAMENTO = :CODORCAMENTO'
      'ORDER BY NROITEM')
    ModifySQL.Strings = (
      'update ITENSORCAMENTOS'
      'set'
      '  CODORCAMENTO = :CODORCAMENTO,'
      '  CODPRODUTO = :CODPRODUTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  INCLUIRORC = :INCLUIRORC,'
      '  NROITEM = :NROITEM,'
      '  QUANT = :QUANT,'
      '  VLRUNIT = :VLRUNIT'
      'where'
      '  CODORCAMENTO = :OLD_CODORCAMENTO and'
      '  NROITEM = :OLD_NROITEM')
    DataSource = DSOrcamento
    Left = 304
    object TbItensOrcamentoCODORCAMENTO: TIntegerField
      FieldName = 'CODORCAMENTO'
      Origin = '"ITENSORCAMENTOS"."CODORCAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbItensOrcamentoNROITEM: TIntegerField
      FieldName = 'NROITEM'
      Origin = '"ITENSORCAMENTOS"."NROITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbItensOrcamentoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = '"ITENSORCAMENTOS"."CODPRODUTO"'
      Required = True
    end
    object TbItensOrcamentoQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = '"ITENSORCAMENTOS"."QUANT"'
      Precision = 18
      Size = 2
    end
    object TbItensOrcamentoVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = '"ITENSORCAMENTOS"."VLRUNIT"'
      DisplayFormat = '#,##0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object TbItensOrcamentoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      Origin = '"ITENSORCAMENTOS"."DESCRICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TbItensOrcamentoINCLUIRORC: TSmallintField
      FieldName = 'INCLUIRORC'
      Origin = '"ITENSORCAMENTOS"."INCLUIRORC"'
    end
    object TbItensOrcamentoVLRTOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VLRTOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object TbItensOrcamentoPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = Dados.QryProdutosLK
      LookupKeyFields = 'CODPRODUTO'
      LookupResultField = 'NOME'
      KeyFields = 'CODPRODUTO'
      Size = 75
      Lookup = True
    end
  end
  object DSOrcamento: TDataSource
    DataSet = TbOrcamento
    OnStateChange = DSOrcamentoStateChange
    OnDataChange = DSOrcamentoDataChange
    Left = 272
    Top = 32
  end
  object DSItensOrcamento: TDataSource
    DataSet = TbItensOrcamento
    Left = 272
  end
  object QryAux: TIBQuery
    Database = Dados.Database
    Transaction = TransactionOrc
    Left = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 152
    object GerarHTML1: TMenuItem
      AutoCheck = True
      Caption = 'Gerar HTML'
    end
  end
end
