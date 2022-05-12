object FVendas: TFVendas
  Left = 221
  Top = 111
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Vendas'
  ClientHeight = 362
  ClientWidth = 779
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
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 779
    Height = 271
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 775
      Height = 267
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados Principais'
        object Label2: TLabel
          Left = 165
          Top = 4
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro Venda'
        end
        object Label1: TLabel
          Left = 184
          Top = 48
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object SpeedButton1: TSpeedButton
          Left = 612
          Top = 43
          Width = 23
          Height = 22
          Caption = '...'
          Flat = True
          OnClick = SpeedButton4Click
        end
        object Label5: TLabel
          Left = 179
          Top = 25
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro NF '
        end
        object Label6: TLabel
          Left = 319
          Top = 5
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Venda'
        end
        object Label11: TLabel
          Left = 188
          Top = 70
          Width = 28
          Height = 13
          Caption = 'CFOP'
        end
        object SpeedButton2: TSpeedButton
          Left = 612
          Top = 66
          Width = 23
          Height = 22
          Caption = '...'
          Flat = True
          OnClick = SpeedButton2Click
        end
        object Label16: TLabel
          Left = 304
          Top = 26
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro Or'#231'amento'
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 91
          Width = 767
          Height = 148
          Align = alBottom
          Caption = 'Itens da Venda'
          TabOrder = 9
          object BitNovoProd: TBitBtn
            Left = 7
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Inserir Produto'
            Caption = 'Novo'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitNovoProdClick
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
          object BitAltProd: TBitBtn
            Left = 93
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Alterar Produto'
            Caption = 'Alterar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitAltProdClick
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
          object BitExcProd: TBitBtn
            Left = 179
            Top = 17
            Width = 80
            Height = 25
            Hint = 'Excluir Produto'
            Caption = 'Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitExcProdClick
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
            Width = 761
            Height = 99
            DataSource = DSVenItens
            ReadOnly = True
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
                Width = 450
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Caption = 'Valor Unit'
                Width = 72
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
                FieldName = 'VlrTot'
                Title.Caption = 'Valor Total'
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Valor ICMS'
                Visible = True
              end>
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 467
          Top = 6
          Width = 169
          Height = 32
          Caption = 'Tipo de Nota'
          Columns = 2
          DataField = 'TIPONOTA'
          DataSource = DSVendas
          Items.Strings = (
            'Entrada'
            'Sa'#237'da')
          TabOrder = 4
          Values.Strings = (
            'E'
            'S')
        end
        object DBEdit1: TDBEdit
          Left = 220
          Top = 1
          Width = 46
          Height = 21
          DataField = 'NROVENDA'
          DataSource = DSVendas
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 220
          Top = 44
          Width = 46
          Height = 21
          DataField = 'CODCLIGEN'
          DataSource = DSVendas
          TabOrder = 5
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 268
          Top = 44
          Width = 342
          Height = 21
          DataField = 'CODCLIGEN'
          DataSource = DSVendas
          KeyField = 'CODCADGEN'
          ListField = 'NOME'
          ListSource = Dados.DSClientesLK
          TabOrder = 6
          OnEnter = DBLookupComboBox1Enter
        end
        object DBEdit4: TDBEdit
          Left = 220
          Top = 22
          Width = 46
          Height = 21
          DataField = 'NRONF'
          DataSource = DSVendas
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 381
          Top = 2
          Width = 81
          Height = 21
          DataField = 'DATAVENDA'
          DataSource = DSVendas
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 220
          Top = 66
          Width = 46
          Height = 21
          DataField = 'CODCFOP'
          DataSource = DSVendas
          TabOrder = 7
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 268
          Top = 66
          Width = 342
          Height = 21
          DataField = 'CODCFOP'
          DataSource = DSVendas
          KeyField = 'CODCFOP'
          ListField = 'NOME'
          ListSource = Dados.DSCFOPLK
          TabOrder = 8
          OnEnter = DBLookupComboBox2Enter
        end
        object DBEdit14: TDBEdit
          Left = 381
          Top = 23
          Width = 81
          Height = 21
          DataField = 'CODORCAMENTO'
          DataSource = DSVendas
          ReadOnly = True
          TabOrder = 3
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'C'#225'lc. Imposto/Transportadora'
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 55
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label3: TLabel
            Left = 483
            Top = 7
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr ICMS Subst'
          end
          object Label4: TLabel
            Left = 3
            Top = 7
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base Calc ICMS'
          end
          object Label7: TLabel
            Left = 163
            Top = 7
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr ICMS '
          end
          object Label14: TLabel
            Left = 284
            Top = 7
            Width = 122
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base de Calc ICMS Subst'
          end
          object Label17: TLabel
            Left = 507
            Top = 30
            Width = 47
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Tot IPI'
          end
          object Label18: TLabel
            Left = 42
            Top = 30
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Frete'
          end
          object Label19: TLabel
            Left = 158
            Top = 30
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Seguro'
          end
          object Label20: TLabel
            Left = 315
            Top = 30
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Caption = 'Outras Desp Acess'
          end
          object Label8: TLabel
            Left = 634
            Top = 7
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Tot Prod'
          end
          object Label15: TLabel
            Left = 633
            Top = 30
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Tot Nota'
          end
          object DBEdit2: TDBEdit
            Left = 557
            Top = 3
            Width = 72
            Height = 21
            DataField = 'VLRICMSSUBST'
            DataSource = DSVendas
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 83
            Top = 3
            Width = 72
            Height = 21
            DataSource = DSVendas
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 208
            Top = 3
            Width = 72
            Height = 21
            DataSource = DSVendas
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 408
            Top = 3
            Width = 72
            Height = 21
            DataSource = DSVendas
            TabOrder = 2
          end
          object DBEdit15: TDBEdit
            Left = 557
            Top = 26
            Width = 72
            Height = 21
            DataSource = DSVendas
            TabOrder = 8
          end
          object DBEdit16: TDBEdit
            Left = 83
            Top = 26
            Width = 72
            Height = 21
            DataField = 'VLRFRETE'
            DataSource = DSVendas
            TabOrder = 5
          end
          object DBEdit17: TDBEdit
            Left = 208
            Top = 26
            Width = 72
            Height = 21
            DataField = 'VLRSEGURO'
            DataSource = DSVendas
            TabOrder = 6
          end
          object DBEdit18: TDBEdit
            Left = 408
            Top = 26
            Width = 72
            Height = 21
            DataField = 'VLRDESPESAS'
            DataSource = DSVendas
            TabOrder = 7
          end
          object DBEdit7: TDBEdit
            Left = 692
            Top = 3
            Width = 72
            Height = 21
            DataSource = DSVendas
            TabOrder = 4
          end
          object DBEdit13: TDBEdit
            Left = 692
            Top = 26
            Width = 72
            Height = 21
            DataSource = DSVendas
            TabOrder = 9
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 83
          Width = 767
          Height = 156
          Align = alBottom
          Caption = 'Transportador/Volumes Transportados'
          TabOrder = 1
          object SpeedButton4: TSpeedButton
            Left = 484
            Top = 56
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            OnClick = SpeedButton4Click
          end
          object Label13: TLabel
            Left = 24
            Top = 60
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Transportadora'
          end
          object Label21: TLabel
            Left = 14
            Top = 82
            Width = 82
            Height = 13
            Alignment = taRightJustify
            Caption = 'Placa do Ve'#237'culo'
          end
          object Label22: TLabel
            Left = 232
            Top = 82
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'UF'
          end
          object Label23: TLabel
            Left = 41
            Top = 105
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Quantidade'
          end
          object Label24: TLabel
            Left = 208
            Top = 105
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Esp'#233'cie'
          end
          object Label25: TLabel
            Left = 373
            Top = 105
            Width = 30
            Height = 13
            Caption = 'Marca'
          end
          object Label26: TLabel
            Left = 527
            Top = 105
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object Label27: TLabel
            Left = 44
            Top = 128
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso Bruto'
          end
          object Label28: TLabel
            Left = 183
            Top = 128
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso L'#237'quido'
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 99
            Top = 20
            Width = 153
            Height = 32
            Caption = 'Frete por Conta'
            Columns = 2
            DataField = 'FRETEPORCONTA'
            DataSource = DSVendas
            Items.Strings = (
              'Emitente'
              'Destin'#225'rio')
            TabOrder = 0
            Values.Strings = (
              'E'
              'S')
          end
          object DBEdit12: TDBEdit
            Left = 98
            Top = 57
            Width = 46
            Height = 21
            DataField = 'CODTRANSP'
            DataSource = DSVendas
            TabOrder = 1
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 146
            Top = 57
            Width = 335
            Height = 21
            DataField = 'CODTRANSP'
            DataSource = DSVendas
            KeyField = 'CODCADGEN'
            ListField = 'NOME'
            ListSource = Dados.DSTransportadorasLK
            TabOrder = 2
            OnEnter = DBLookupComboBox4Enter
          end
          object DBEdit19: TDBEdit
            Left = 98
            Top = 79
            Width = 102
            Height = 21
            DataField = 'PLACA'
            DataSource = DSVendas
            TabOrder = 3
          end
          object DBEdit20: TDBEdit
            Left = 249
            Top = 79
            Width = 25
            Height = 21
            DataField = 'UFPLACA'
            DataSource = DSVendas
            TabOrder = 4
          end
          object DBEdit21: TDBEdit
            Left = 98
            Top = 102
            Width = 103
            Height = 21
            DataField = 'QUANTIDADE'
            DataSource = DSVendas
            TabOrder = 5
          end
          object DBEdit22: TDBEdit
            Left = 249
            Top = 102
            Width = 101
            Height = 21
            DataField = 'ESPECIE'
            DataSource = DSVendas
            TabOrder = 6
          end
          object DBEdit23: TDBEdit
            Left = 407
            Top = 102
            Width = 101
            Height = 21
            DataField = 'MARCA'
            DataSource = DSVendas
            TabOrder = 7
          end
          object DBEdit24: TDBEdit
            Left = 568
            Top = 102
            Width = 101
            Height = 21
            DataField = 'NUMERO'
            DataSource = DSVendas
            TabOrder = 8
          end
          object DBEdit25: TDBEdit
            Left = 98
            Top = 125
            Width = 52
            Height = 21
            DataField = 'PESOBRUTO'
            DataSource = DSVendas
            TabOrder = 9
          end
          object DBEdit26: TDBEdit
            Left = 249
            Top = 125
            Width = 52
            Height = 21
            DataField = 'PESOLIQUIDO'
            DataSource = DSVendas
            TabOrder = 10
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Dados Emiss'#227'o/Info. Adic./Cond. Pgto'
        ImageIndex = 2
        object GroupBox4: TGroupBox
          Left = 0
          Top = 103
          Width = 408
          Height = 110
          Caption = 'Condi'#231#245'es de Pagamento'
          TabOrder = 0
          object Label12: TLabel
            Left = 9
            Top = 49
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
            Top = 45
            Width = 46
            Height = 21
            DataField = 'CODCONDPGTO'
            DataSource = DSVendas
            TabOrder = 0
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 116
            Top = 45
            Width = 261
            Height = 21
            DataField = 'CODCONDPGTO'
            DataSource = DSVendas
            KeyField = 'CODCONDPGTO'
            ListField = 'NOME'
            ListSource = Dados.DSCondPgtoLK
            TabOrder = 1
            OnEnter = DBLookupComboBox3Enter
          end
        end
        object GroupBox3: TGroupBox
          Left = 409
          Top = 0
          Width = 359
          Height = 213
          Caption = 'Informa'#231#245'es Adicionais'
          TabOrder = 1
          object DBMemo1: TDBMemo
            Left = 4
            Top = 16
            Width = 351
            Height = 192
            DataSource = DSVendas
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 408
          Height = 100
          Caption = 'Dados sobre a Emiss'#227'o da Nota'
          TabOrder = 2
          object Label32: TLabel
            Left = 57
            Top = 24
            Width = 80
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data de Emiss'#227'o'
          end
          object Label33: TLabel
            Left = 25
            Top = 48
            Width = 112
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data de Sa'#237'da/Entrada'
          end
          object Label35: TLabel
            Left = 82
            Top = 71
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Hora Sa'#237'da'
          end
          object DBEdit30: TDBEdit
            Left = 140
            Top = 20
            Width = 121
            Height = 21
            DataField = 'DATAEMISSAONF'
            DataSource = DSVendas
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit31: TDBEdit
            Left = 140
            Top = 44
            Width = 121
            Height = 21
            DataField = 'DATASAIDAENTNF'
            DataSource = DSVendas
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit33: TDBEdit
            Left = 140
            Top = 67
            Width = 121
            Height = 21
            DataField = 'HORASAIDA'
            DataSource = DSVendas
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label9: TLabel
      Left = 581
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object Label10: TLabel
      Left = 592
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Ordem'
    end
    object SpeedButton5: TSpeedButton
      Left = 751
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
      DataSource = DSVendas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object RadioButton1: TRadioButton
      Left = 704
      Top = 8
      Width = 52
      Height = 17
      Caption = 'Cliente'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 629
      Top = 8
      Width = 71
      Height = 17
      Caption = 'Nro Venda'
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object Edit1: TEdit
      Left = 627
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
    object BitBtn10: TBitBtn
      Left = 391
      Top = 15
      Width = 85
      Height = 25
      Caption = 'Nota Fiscal'
      TabOrder = 4
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn11: TBitBtn
      Left = 479
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Duplicata'
      TabOrder = 5
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitImporta: TBitBtn
      Left = 264
      Top = 15
      Width = 124
      Height = 25
      Caption = 'Importar Or'#231'amento'
      TabOrder = 6
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
  object Panel1: TPanel
    Left = 0
    Top = 325
    Width = 779
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnNovo: TBitBtn
      Left = 165
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Inserir Venda'
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
      Left = 259
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Alterar Venda'
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
      Left = 353
      Top = 6
      Width = 80
      Height = 25
      Hint = 'Excluir Venda'
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
      Left = 447
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
      Left = 541
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
  object GBCli: TGroupBox
    Left = 729
    Top = 326
    Width = 777
    Height = 308
    Caption = 'Especifique o Cliente'
    TabOrder = 3
    Visible = False
    object Label29: TLabel
      Left = 168
      Top = 28
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton6: TSpeedButton
      Left = 564
      Top = 23
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = SpeedButton4Click
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 208
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
      Left = 172
      Top = 64
      Width = 209
      Height = 25
      Caption = 'Cancela a Edi'#231#227'o da Venda'
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
      Left = 396
      Top = 64
      Width = 209
      Height = 25
      Caption = 'Continua a Edi'#231#227'o da Venda'
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
    Left = 112
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      OnClick = BitImportaClick
      object CFOP1: TMenuItem
        Caption = 'CFOP'
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object CondiesdePagamento1: TMenuItem
        Caption = 'Condi'#231#245'es de Pagamento'
      end
      object Transportadora1: TMenuItem
        Caption = 'Transportadora'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ImportarOramento1: TMenuItem
        Caption = 'Importar Or'#231'amento'
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
      object Duplicatas1: TMenuItem
        Caption = 'Duplicatas'
        Visible = False
        OnClick = Duplicatas1Click
      end
      object N3: TMenuItem
        Caption = '-'
        Visible = False
      end
      object NotasFiscais1: TMenuItem
        Caption = 'Notas Fiscais'
        Visible = False
        OnClick = NotasFiscais1Click
      end
      object N4: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Vendas1: TMenuItem
        Caption = 'Vendas'
        OnClick = Vendas1Click
      end
    end
  end
  object TbVenItens: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionVen
    OnCalcFields = TbVenItensCalcFields
    DeleteSQL.Strings = (
      'delete from VENPRODUTOS'
      'where'
      '  NROVENDA = :OLD_NROVENDA')
    InsertSQL.Strings = (
      'insert into VENPRODUTOS'
      
        '  (CODPRODUTO, CODTIPOCLASSFISCAL, NROITEM, NROVENDA, PERCICMS, ' +
        'PERCIPI, '
      '   QUANT, VLRUNIT)'
      'values'
      
        '  (:CODPRODUTO, :CODTIPOCLASSFISCAL, :NROITEM, :NROVENDA, :PERCI' +
        'CMS, :PERCIPI, '
      '   :QUANT, :VLRUNIT)')
    RefreshSQL.Strings = (
      'Select '
      '  NROVENDA,'
      '  NROITEM,'
      '  CODPRODUTO,'
      '  CODTIPOCLASSFISCAL,'
      '  PERCICMS,'
      '  PERCIPI,'
      '  VLRUNIT,'
      '  QUANT'
      'from VENPRODUTOS '
      'where'
      '  NROVENDA = :NROVENDA')
    SelectSQL.Strings = (
      'SELECT * FROM VENPRODUTOS'
      'WHERE NROVENDA = :NROVENDA'
      'ORDER BY NROITEM')
    ModifySQL.Strings = (
      'update VENPRODUTOS'
      'set'
      '  CODPRODUTO = :CODPRODUTO,'
      '  CODTIPOCLASSFISCAL = :CODTIPOCLASSFISCAL,'
      '  NROITEM = :NROITEM,'
      '  NROVENDA = :NROVENDA,'
      '  PERCICMS = :PERCICMS,'
      '  PERCIPI = :PERCIPI,'
      '  QUANT = :QUANT,'
      '  VLRUNIT = :VLRUNIT'
      'where'
      '  NROVENDA = :OLD_NROVENDA')
    DataSource = DSVendas
    Left = 40
    object TbVenItensNROVENDA: TIntegerField
      FieldName = 'NROVENDA'
      Origin = '"VENPRODUTOS"."NROVENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbVenItensNROITEM: TIntegerField
      FieldName = 'NROITEM'
      Origin = '"VENPRODUTOS"."NROITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbVenItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = '"VENPRODUTOS"."CODPRODUTO"'
      Required = True
    end
    object TbVenItensCODTIPOCLASSFISCAL: TIntegerField
      FieldName = 'CODTIPOCLASSFISCAL'
      Origin = '"VENPRODUTOS"."CODTIPOCLASSFISCAL"'
      Required = True
    end
    object TbVenItensPERCICMS: TSmallintField
      FieldName = 'PERCICMS'
      Origin = '"VENPRODUTOS"."PERCICMS"'
    end
    object TbVenItensPERCIPI: TSmallintField
      FieldName = 'PERCIPI'
      Origin = '"VENPRODUTOS"."PERCIPI"'
    end
    object TbVenItensVLRUNIT: TIBBCDField
      FieldName = 'VLRUNIT'
      Origin = '"VENPRODUTOS"."VLRUNIT"'
      Precision = 18
      Size = 2
    end
    object TbVenItensQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = '"VENPRODUTOS"."QUANT"'
      Precision = 18
      Size = 2
    end
    object TbVenItensVlrTot: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VlrTot'
      Calculated = True
    end
    object TbVenItensProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = Dados.QryProdutosLK
      LookupKeyFields = 'CODPRODUTO'
      LookupResultField = 'NOME'
      KeyFields = 'CODPRODUTO'
      Size = 100
      Lookup = True
    end
  end
  object DSVendas: TDataSource
    DataSet = TbVendas
    OnStateChange = DSVendasStateChange
    OnDataChange = DSVendasDataChange
    Left = 24
    Top = 24
  end
  object DSVenItens: TDataSource
    DataSet = TbVenItens
    Left = 8
  end
  object TransactionVen: TIBTransaction
    DefaultDatabase = Dados.Database
    Left = 80
    Top = 8
  end
  object QryAux: TIBQuery
    Database = Dados.Database
    Transaction = TransactionVen
    Left = 152
    Top = 8
  end
  object QryValores: TIBQuery
    Left = 184
    Top = 8
  end
  object TbVendas: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionVen
    OnPostError = TbVendasPostError
    DeleteSQL.Strings = (
      'delete from VENDAS'
      'where'
      '  NROVENDA = :OLD_NROVENDA')
    InsertSQL.Strings = (
      'insert into VENDAS'
      
        '  (CODCFOP, CODCLIGEN, CODCONDPGTO, CODORCAMENTO, CODTRANSP, DAT' +
        'AEMISSAONF, '
      
        '   DATASAIDAENTNF, DATAVENDA, ESPECIE, FRETEPORCONTA, HORASAIDA,' +
        ' MARCA, '
      
        '   NRONF, NROVENDA, NUMERO, PESOBRUTO, PESOLIQUIDO, PLACA, QUANT' +
        'IDADE, '
      
        '   TIPONOTA, UFPLACA, VLRDESPESAS, VLRFRETE, VLRICMSSUBST, VLRSE' +
        'GURO)'
      'values'
      
        '  (:CODCFOP, :CODCLIGEN, :CODCONDPGTO, :CODORCAMENTO, :CODTRANSP' +
        ', :DATAEMISSAONF, '
      
        '   :DATASAIDAENTNF, :DATAVENDA, :ESPECIE, :FRETEPORCONTA, :HORAS' +
        'AIDA, :MARCA, '
      
        '   :NRONF, :NROVENDA, :NUMERO, :PESOBRUTO, :PESOLIQUIDO, :PLACA,' +
        ' :QUANTIDADE, '
      
        '   :TIPONOTA, :UFPLACA, :VLRDESPESAS, :VLRFRETE, :VLRICMSSUBST, ' +
        ':VLRSEGURO)')
    RefreshSQL.Strings = (
      'Select '
      '  NROVENDA,'
      '  DATAVENDA,'
      '  NRONF,'
      '  DATAEMISSAONF,'
      '  DATASAIDAENTNF,'
      '  HORASAIDA,'
      '  TIPONOTA,'
      '  CODCLIGEN,'
      '  CODCFOP,'
      '  CODCONDPGTO,'
      '  CODTRANSP,'
      '  CODORCAMENTO,'
      '  FRETEPORCONTA,'
      '  VLRFRETE,'
      '  VLRSEGURO,'
      '  VLRICMSSUBST,'
      '  VLRDESPESAS,'
      '  QUANTIDADE,'
      '  ESPECIE,'
      '  MARCA,'
      '  NUMERO,'
      '  PLACA,'
      '  UFPLACA,'
      '  PESOBRUTO,'
      '  PESOLIQUIDO'
      'from VENDAS '
      'where'
      '  NROVENDA = :NROVENDA')
    SelectSQL.Strings = (
      'SELECT * from VENDAS ')
    ModifySQL.Strings = (
      'update VENDAS'
      'set'
      '  CODCFOP = :CODCFOP,'
      '  CODCLIGEN = :CODCLIGEN,'
      '  CODCONDPGTO = :CODCONDPGTO,'
      '  CODORCAMENTO = :CODORCAMENTO,'
      '  CODTRANSP = :CODTRANSP,'
      '  DATAEMISSAONF = :DATAEMISSAONF,'
      '  DATASAIDAENTNF = :DATASAIDAENTNF,'
      '  DATAVENDA = :DATAVENDA,'
      '  ESPECIE = :ESPECIE,'
      '  FRETEPORCONTA = :FRETEPORCONTA,'
      '  HORASAIDA = :HORASAIDA,'
      '  MARCA = :MARCA,'
      '  NRONF = :NRONF,'
      '  NROVENDA = :NROVENDA,'
      '  NUMERO = :NUMERO,'
      '  PESOBRUTO = :PESOBRUTO,'
      '  PESOLIQUIDO = :PESOLIQUIDO,'
      '  PLACA = :PLACA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  TIPONOTA = :TIPONOTA,'
      '  UFPLACA = :UFPLACA,'
      '  VLRDESPESAS = :VLRDESPESAS,'
      '  VLRFRETE = :VLRFRETE,'
      '  VLRICMSSUBST = :VLRICMSSUBST,'
      '  VLRSEGURO = :VLRSEGURO'
      'where'
      '  NROVENDA = :OLD_NROVENDA')
    GeneratorField.Field = 'NROVENDA'
    GeneratorField.Generator = 'GEN_VENDAS_ID'
    Left = 56
    Top = 32
    object TbVendasNROVENDA: TIntegerField
      FieldName = 'NROVENDA'
      Origin = '"VENDAS"."NROVENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbVendasDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      Origin = '"VENDAS"."DATAVENDA"'
    end
    object TbVendasNRONF: TIntegerField
      FieldName = 'NRONF'
      Origin = '"VENDAS"."NRONF"'
    end
    object TbVendasDATAEMISSAONF: TDateField
      FieldName = 'DATAEMISSAONF'
      Origin = '"VENDAS"."DATAEMISSAONF"'
    end
    object TbVendasDATASAIDAENTNF: TDateField
      FieldName = 'DATASAIDAENTNF'
      Origin = '"VENDAS"."DATASAIDAENTNF"'
    end
    object TbVendasHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = '"VENDAS"."HORASAIDA"'
    end
    object TbVendasTIPONOTA: TIBStringField
      FieldName = 'TIPONOTA'
      Origin = '"VENDAS"."TIPONOTA"'
      Size = 1
    end
    object TbVendasCODCLIGEN: TIntegerField
      FieldName = 'CODCLIGEN'
      Origin = '"VENDAS"."CODCLIGEN"'
      Required = True
    end
    object TbVendasCODCFOP: TIntegerField
      FieldName = 'CODCFOP'
      Origin = '"VENDAS"."CODCFOP"'
      Required = True
    end
    object TbVendasCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
      Origin = '"VENDAS"."CODCONDPGTO"'
      Required = True
    end
    object TbVendasCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Origin = '"VENDAS"."CODTRANSP"'
      Required = True
    end
    object TbVendasCODORCAMENTO: TIntegerField
      FieldName = 'CODORCAMENTO'
      Origin = '"VENDAS"."CODORCAMENTO"'
    end
    object TbVendasFRETEPORCONTA: TIBStringField
      FieldName = 'FRETEPORCONTA'
      Origin = '"VENDAS"."FRETEPORCONTA"'
      Size = 1
    end
    object TbVendasVLRFRETE: TIBBCDField
      FieldName = 'VLRFRETE'
      Origin = '"VENDAS"."VLRFRETE"'
      Precision = 18
      Size = 2
    end
    object TbVendasVLRSEGURO: TIBBCDField
      FieldName = 'VLRSEGURO'
      Origin = '"VENDAS"."VLRSEGURO"'
      Precision = 18
      Size = 2
    end
    object TbVendasVLRICMSSUBST: TIBBCDField
      FieldName = 'VLRICMSSUBST'
      Origin = '"VENDAS"."VLRICMSSUBST"'
      Precision = 18
      Size = 2
    end
    object TbVendasVLRDESPESAS: TIBBCDField
      FieldName = 'VLRDESPESAS'
      Origin = '"VENDAS"."VLRDESPESAS"'
      Precision = 18
      Size = 2
    end
    object TbVendasQUANTIDADE: TIBStringField
      FieldName = 'QUANTIDADE'
      Origin = '"VENDAS"."QUANTIDADE"'
    end
    object TbVendasESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = '"VENDAS"."ESPECIE"'
    end
    object TbVendasMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VENDAS"."MARCA"'
    end
    object TbVendasNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VENDAS"."NUMERO"'
    end
    object TbVendasPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"VENDAS"."PLACA"'
      Size = 10
    end
    object TbVendasUFPLACA: TIBStringField
      FieldName = 'UFPLACA'
      Origin = '"VENDAS"."UFPLACA"'
      Size = 2
    end
    object TbVendasPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = '"VENDAS"."PESOBRUTO"'
      Precision = 18
      Size = 2
    end
    object TbVendasPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = '"VENDAS"."PESOLIQUIDO"'
      Precision = 18
      Size = 2
    end
    object TbVendasVlrTotProd: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VlrTotProd'
      Calculated = True
    end
  end
end
