object FCompras: TFCompras
  Left = 192
  Top = 109
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Compras'
  ClientHeight = 342
  ClientWidth = 674
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
    Top = 305
    Width = 674
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnNovo: TBitBtn
      Left = 115
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Inserir Compra'
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
      Left = 209
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Alterar Compra'
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
      Left = 303
      Top = 6
      Width = 80
      Height = 25
      Hint = 'E&xcluir Venda'
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
      Left = 397
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Gravar Venda'
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
      Left = 491
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Cancelar Venda'
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
    Width = 674
    Height = 251
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 670
      Height = 247
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados Principais'
        object Label2: TLabel
          Left = 88
          Top = 5
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro Compra'
        end
        object Label1: TLabel
          Left = 90
          Top = 49
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornecedor'
        end
        object SpeedButton1: TSpeedButton
          Left = 540
          Top = 45
          Width = 23
          Height = 22
          Caption = '...'
          Flat = True
          OnClick = SpeedButton4Click
        end
        object Label5: TLabel
          Left = 107
          Top = 26
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro NF '
        end
        object Label6: TLabel
          Left = 235
          Top = 5
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Compra'
        end
        object Label11: TLabel
          Left = 116
          Top = 71
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'CFOP'
        end
        object SpeedButton2: TSpeedButton
          Left = 540
          Top = 67
          Width = 23
          Height = 22
          Caption = '...'
          Flat = True
          OnClick = SpeedButton2Click
        end
        object Label16: TLabel
          Left = 207
          Top = 26
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro Ordem Compra'
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 91
          Width = 662
          Height = 128
          Align = alBottom
          Caption = 'Itens da Compra'
          TabOrder = 8
          object BitItensNew: TBitBtn
            Left = 7
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Inserir Produto'
            Caption = 'Novo'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitItensNewClick
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
          object BitItensEdit: TBitBtn
            Left = 93
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Alterar Produto'
            Caption = 'Alterar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitItensEditClick
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
          object BitItensDel: TBitBtn
            Left = 179
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Excluir Produto'
            Caption = 'Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitItensDelClick
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
            Left = 2
            Top = 44
            Width = 655
            Height = 80
            DataSource = DSItensComProdutos
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Produtos'
                Title.Caption = 'Produto'
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Caption = 'Valor Unit'
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANT'
                Title.Caption = 'Quant'
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrTot'
                Title.Caption = 'Valor Total'
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Valor ICMS '
                Visible = True
              end>
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 384
          Top = 7
          Width = 176
          Height = 32
          Caption = 'Tipo de Nota'
          Columns = 2
          DataField = 'TIPONOTA'
          DataSource = DSCompras
          Items.Strings = (
            'Entrada'
            'Sa'#237'da')
          TabOrder = 9
          Values.Strings = (
            'E'
            'S')
        end
        object DBEdit1: TDBEdit
          Left = 148
          Top = 2
          Width = 46
          Height = 21
          DataField = 'NROCOMPRA'
          DataSource = DSCompras
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 148
          Top = 45
          Width = 46
          Height = 21
          DataField = 'CODFORNGEN'
          DataSource = DSCompras
          TabOrder = 4
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 196
          Top = 45
          Width = 342
          Height = 21
          DataField = 'CODFORNGEN'
          DataSource = DSCompras
          KeyField = 'CODCADGEN'
          ListField = 'NOME'
          ListSource = Dados.DSFornecedoresLK
          TabOrder = 5
          OnEnter = DBLookupComboBox1Enter
        end
        object DBEdit4: TDBEdit
          Left = 148
          Top = 23
          Width = 46
          Height = 21
          DataField = 'NRONF'
          DataSource = DSCompras
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 301
          Top = 1
          Width = 74
          Height = 21
          DataField = 'DATACOMPRA'
          DataSource = DSCompras
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 148
          Top = 67
          Width = 46
          Height = 21
          DataField = 'CODCFOP'
          DataSource = DSCompras
          TabOrder = 6
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 196
          Top = 67
          Width = 342
          Height = 21
          DataField = 'CODCFOP'
          DataSource = DSCompras
          KeyField = 'CODCFOP'
          ListField = 'NOME'
          ListSource = Dados.DSCFOPLK
          TabOrder = 7
          OnEnter = DBLookupComboBox2Enter
        end
        object DBEdit14: TDBEdit
          Left = 301
          Top = 23
          Width = 74
          Height = 21
          DataField = 'CODORDEMCOMPRA'
          DataSource = DSCompras
          TabOrder = 3
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Transportadora/Cond Pgto/Emiss'#227'o'
        ImageIndex = 1
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 662
          Height = 107
          Align = alTop
          Caption = 'Transportador/Volumes Transportados'
          TabOrder = 0
          object SpeedButton4: TSpeedButton
            Left = 500
            Top = 62
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            OnClick = SpeedButton4Click
          end
          object Label13: TLabel
            Left = 40
            Top = 66
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Transportadora'
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 115
            Top = 22
            Width = 153
            Height = 32
            Caption = 'Frete por Conta'
            Columns = 2
            DataField = 'FRETEPORCONTA'
            DataSource = DSCompras
            Items.Strings = (
              'Emitente'
              'Destin'#225'rio')
            TabOrder = 2
            Values.Strings = (
              'E'
              'S')
          end
          object DBEdit12: TDBEdit
            Left = 114
            Top = 63
            Width = 46
            Height = 21
            DataField = 'CODTRANSP'
            DataSource = DSCompras
            TabOrder = 0
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 162
            Top = 63
            Width = 335
            Height = 21
            DataField = 'CODTRANSP'
            DataSource = DSCompras
            KeyField = 'CODCADGEN'
            ListField = 'NOME'
            ListSource = Dados.DSTransportadorasLK
            TabOrder = 1
            OnEnter = DBLookupComboBox4Enter
          end
        end
        object GroupBox5: TGroupBox
          Left = 410
          Top = 107
          Width = 252
          Height = 112
          Align = alRight
          Caption = 'Dados sobre a Emiss'#227'o da Nota'
          TabOrder = 1
          object Label32: TLabel
            Left = 33
            Top = 47
            Width = 80
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data de Emiss'#227'o'
          end
          object DBEdit30: TDBEdit
            Left = 116
            Top = 43
            Width = 121
            Height = 21
            DataField = 'DATAEMISSAONF'
            DataSource = DSCompras
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 107
          Width = 409
          Height = 112
          Align = alLeft
          Caption = 'Condi'#231#245'es de Pagamento'
          TabOrder = 2
          object Label12: TLabel
            Left = 9
            Top = 47
            Width = 56
            Height = 13
            Caption = 'Cond. Pgto.'
          end
          object SpeedButton3: TSpeedButton
            Left = 379
            Top = 44
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            OnClick = SpeedButton3Click
          end
          object DBEdit11: TDBEdit
            Left = 68
            Top = 44
            Width = 46
            Height = 21
            DataField = 'CODCONDPGTO'
            DataSource = DSCompras
            TabOrder = 0
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 116
            Top = 44
            Width = 261
            Height = 21
            DataField = 'CODCONDPGTO'
            DataSource = DSCompras
            KeyField = 'CODCONDPGTO'
            ListField = 'NOME'
            ListSource = Dados.DSCondPgtoLK
            TabOrder = 1
            OnEnter = DBLookupComboBox3Enter
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 674
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label9: TLabel
      Left = 440
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object Label10: TLabel
      Left = 451
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Ordem'
    end
    object SpeedButton5: TSpeedButton
      Left = 646
      Top = 26
      Width = 23
      Height = 22
      Hint = 'Busca Avan'#231'ada de Clientes'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777700000777700000770B00077770B000770F00088770F
        00077000000000000007700F00000B000007700F00000F000007700F00000000
        000777000008700000777770F077770B07777770F077770F0777777000777700
        077777777777777777777777777777777777}
      OnClick = SpeedButton5Click
    end
    object DBNavigator1: TDBNavigator
      Left = 14
      Top = 12
      Width = 240
      Height = 31
      DataSource = DSCompras
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object RadioButton1: TRadioButton
      Left = 566
      Top = 8
      Width = 78
      Height = 17
      Caption = 'Fornecedor'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton2Click
    end
    object RadioButton2: TRadioButton
      Left = 486
      Top = 8
      Width = 75
      Height = 17
      Caption = 'Nro Compra'
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object Edit1: TEdit
      Left = 486
      Top = 26
      Width = 157
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
    object BitImporta: TBitBtn
      Left = 266
      Top = 16
      Width = 167
      Height = 25
      Caption = 'Importar Ordem de Compra'
      TabOrder = 4
      OnClick = BitImportaClick
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
  object GBForn: TGroupBox
    Left = 600
    Top = 254
    Width = 674
    Height = 288
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
    object SpeedButton6: TSpeedButton
      Left = 527
      Top = 23
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton4Click
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 173
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
      Left = 80
      Top = 64
      Width = 209
      Height = 25
      Caption = 'Cancela a Edi'#231#227'o da Compra'
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
      Top = 64
      Width = 209
      Height = 25
      Caption = 'Continua a Edi'#231#227'o da Compra'
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
    Left = 24
    Top = 88
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object CFOP1: TMenuItem
        Caption = 'CFOP'
      end
      object CondiesdePagamento1: TMenuItem
        Caption = 'Condi'#231#245'es de Pagamento'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object Transportadora1: TMenuItem
        Caption = 'Transportadora'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ImportarOramento1: TMenuItem
        Caption = 'Importar Ordem de Compra'
        OnClick = BitImportaClick
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
        Caption = 'Compras'
        OnClick = Vendas1Click
      end
    end
  end
  object TbItensComProdutos: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionCompras
    OnCalcFields = TbItensComProdutosCalcFields
    DeleteSQL.Strings = (
      'delete from COMPRODUTOS'
      'where'
      '  NROCOMPRA = :OLD_NROCOMPRA and'
      '  NROITEM = :OLD_NROITEM')
    InsertSQL.Strings = (
      'insert into COMPRODUTOS'
      '  (CODPRODUTO, NROCOMPRA, NROITEM, QUANT, VLRUNIT)'
      'values'
      '  (:CODPRODUTO, :NROCOMPRA, :NROITEM, :QUANT, :VLRUNIT)')
    RefreshSQL.Strings = (
      'Select '
      '  NROCOMPRA,'
      '  NROITEM,'
      '  CODPRODUTO,'
      '  QUANT,'
      '  VLRUNIT'
      'from COMPRODUTOS '
      'where'
      '  NROCOMPRA = :NROCOMPRA and'
      '  NROITEM = :NROITEM')
    SelectSQL.Strings = (
      'select * from COMPRODUTOS'
      'where NROCOMPRA= :NROCOMPRA'
      'ORDER BY NROITEM')
    ModifySQL.Strings = (
      'update COMPRODUTOS'
      'set'
      '  CODPRODUTO = :CODPRODUTO,'
      '  NROCOMPRA = :NROCOMPRA,'
      '  NROITEM = :NROITEM,'
      '  QUANT = :QUANT,'
      '  VLRUNIT = :VLRUNIT'
      'where'
      '  NROCOMPRA = :OLD_NROCOMPRA and'
      '  NROITEM = :OLD_NROITEM')
    DataSource = DSCompras
    Left = 144
    Top = 24
    object TbItensComProdutosNROCOMPRA: TIntegerField
      FieldName = 'NROCOMPRA'
      Origin = '"COMPRODUTOS"."NROCOMPRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbItensComProdutosNROITEM: TIntegerField
      FieldName = 'NROITEM'
      Origin = '"COMPRODUTOS"."NROITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbItensComProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = '"COMPRODUTOS"."CODPRODUTO"'
      Required = True
    end
    object TbItensComProdutosQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = '"COMPRODUTOS"."QUANT"'
      Precision = 18
      Size = 2
    end
    object TbItensComProdutosVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = '"COMPRODUTOS"."VLRUNIT"'
      Precision = 18
      Size = 2
    end
    object TbItensComProdutosProdutos: TStringField
      FieldKind = fkLookup
      FieldName = 'Produtos'
      LookupDataSet = Dados.QryProdutosLK
      LookupKeyFields = 'CODPRODUTO'
      LookupResultField = 'NOME'
      KeyFields = 'CODPRODUTO'
      Size = 100
      Lookup = True
    end
    object TbItensComProdutosVlrTot: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VlrTot'
      Calculated = True
    end
  end
  object TbCompras: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionCompras
    DeleteSQL.Strings = (
      'delete from COMPRAS'
      'where'
      '  NROCOMPRA = :OLD_NROCOMPRA')
    InsertSQL.Strings = (
      'insert into COMPRAS'
      
        '  (CODCFOP, CODCONDPGTO, CODFORNGEN, CODORDEMCOMPRA, CODTRANSP, ' +
        'DATACOMPRA, '
      '   DATAEMISSAONF, FRETEPORCONTA, NROCOMPRA, NRONF, TIPONOTA)'
      'values'
      
        '  (:CODCFOP, :CODCONDPGTO, :CODFORNGEN, :CODORDEMCOMPRA, :CODTRA' +
        'NSP, :DATACOMPRA, '
      
        '   :DATAEMISSAONF, :FRETEPORCONTA, :NROCOMPRA, :NRONF, :TIPONOTA' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  NROCOMPRA,'
      '  DATACOMPRA,'
      '  TIPONOTA,'
      '  NRONF,'
      '  DATAEMISSAONF,'
      '  CODFORNGEN,'
      '  CODCFOP,'
      '  CODCONDPGTO,'
      '  CODTRANSP,'
      '  CODORDEMCOMPRA,'
      '  FRETEPORCONTA'
      'from COMPRAS '
      'where'
      '  NROCOMPRA = :NROCOMPRA')
    SelectSQL.Strings = (
      'select *  from COMPRAS')
    ModifySQL.Strings = (
      'update COMPRAS'
      'set'
      '  CODCFOP = :CODCFOP,'
      '  CODCONDPGTO = :CODCONDPGTO,'
      '  CODFORNGEN = :CODFORNGEN,'
      '  CODORDEMCOMPRA = :CODORDEMCOMPRA,'
      '  CODTRANSP = :CODTRANSP,'
      '  DATACOMPRA = :DATACOMPRA,'
      '  DATAEMISSAONF = :DATAEMISSAONF,'
      '  FRETEPORCONTA = :FRETEPORCONTA,'
      '  NROCOMPRA = :NROCOMPRA,'
      '  NRONF = :NRONF,'
      '  TIPONOTA = :TIPONOTA'
      'where'
      '  NROCOMPRA = :OLD_NROCOMPRA')
    GeneratorField.Field = 'NROCOMPRA'
    GeneratorField.Generator = 'GEN_COMPRAS_ID'
    Left = 128
    object TbComprasNROCOMPRA: TIntegerField
      FieldName = 'NROCOMPRA'
      Origin = '"COMPRAS"."NROCOMPRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbComprasDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = '"COMPRAS"."DATACOMPRA"'
    end
    object TbComprasTIPONOTA: TIBStringField
      FieldName = 'TIPONOTA'
      Origin = '"COMPRAS"."TIPONOTA"'
      Size = 1
    end
    object TbComprasNRONF: TLargeintField
      FieldName = 'NRONF'
      Origin = '"COMPRAS"."NRONF"'
    end
    object TbComprasDATAEMISSAONF: TDateField
      FieldName = 'DATAEMISSAONF'
      Origin = '"COMPRAS"."DATAEMISSAONF"'
    end
    object TbComprasCODFORNGEN: TIntegerField
      FieldName = 'CODFORNGEN'
      Origin = '"COMPRAS"."CODFORNGEN"'
      Required = True
    end
    object TbComprasCODCFOP: TIntegerField
      FieldName = 'CODCFOP'
      Origin = '"COMPRAS"."CODCFOP"'
      Required = True
    end
    object TbComprasCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
      Origin = '"COMPRAS"."CODCONDPGTO"'
      Required = True
    end
    object TbComprasCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Origin = '"COMPRAS"."CODTRANSP"'
      Required = True
    end
    object TbComprasCODORDEMCOMPRA: TIntegerField
      FieldName = 'CODORDEMCOMPRA'
      Origin = '"COMPRAS"."CODORDEMCOMPRA"'
    end
    object TbComprasFRETEPORCONTA: TIBStringField
      FieldName = 'FRETEPORCONTA'
      Origin = '"COMPRAS"."FRETEPORCONTA"'
      Size = 1
    end
  end
  object TransactionCompras: TIBTransaction
    DefaultDatabase = Dados.Database
    Left = 160
    Top = 48
  end
  object DSCompras: TDataSource
    DataSet = TbCompras
    OnStateChange = DSComprasStateChange
    OnDataChange = DSComprasDataChange
    Left = 152
  end
  object DSItensComProdutos: TDataSource
    DataSet = TbItensComProdutos
    Left = 168
    Top = 24
  end
  object QryAux: TIBQuery
    Database = Dados.Database
    Transaction = TransactionCompras
    Left = 200
    Top = 8
  end
end
