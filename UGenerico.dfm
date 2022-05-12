object FGenerico: TFGenerico
  Left = 184
  Top = 109
  Width = 616
  Height = 600
  Caption = 'FGenerico'
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 514
    Width = 608
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
      Hint = 'Inserir Generico'
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
      Hint = 'Alterar Generico'
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
      Hint = 'Excluir Generico'
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
      Hint = 'Gravar generico'
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
      Hint = 'Cancelar Cliente'
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
    Width = 608
    Height = 460
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 604
      Height = 456
      Hint = 
        'Especifica CFOP, Transportoradoras, Bancos... para os cadastros ' +
        'que os necessistam'
      ActivePage = TabSheet2
      Align = alClient
      TabIndex = 2
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 596
          Height = 428
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label2: TLabel
            Left = 102
            Top = 39
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'digo'
          end
          object Label3: TLabel
            Left = 107
            Top = 62
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome'
          end
          object Label1: TLabel
            Left = 95
            Top = 85
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fantasia'
          end
          object Label7: TLabel
            Left = 89
            Top = 199
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Endere'#231'o'
          end
          object Label6: TLabel
            Left = 102
            Top = 221
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade'
          end
          object SpeedButton1: TSpeedButton
            Left = 450
            Top = 218
            Width = 23
            Height = 22
            Hint = 'Cadastro de Cidades'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object Label8: TLabel
            Left = 108
            Top = 266
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro'
          end
          object Label11: TLabel
            Left = 73
            Top = 131
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone F'#225'brica'
          end
          object Label12: TLabel
            Left = 108
            Top = 243
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'CNPJ'
          end
          object Label13: TLabel
            Left = 399
            Top = 243
            Width = 10
            Height = 13
            Alignment = taRightJustify
            Caption = 'IE'
          end
          object Label14: TLabel
            Left = 114
            Top = 365
            Width = 19
            Height = 13
            Caption = 'Obs'
          end
          object Label18: TLabel
            Left = 343
            Top = 131
            Width = 47
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone Loja'
          end
          object Label19: TLabel
            Left = 107
            Top = 175
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'E-mail'
          end
          object Label20: TLabel
            Left = 98
            Top = 109
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Contato'
          end
          object Label4: TLabel
            Left = 228
            Top = 39
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Cadastro'
          end
          object Label30: TLabel
            Left = 515
            Top = 222
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label35: TLabel
            Left = 119
            Top = 153
            Width = 17
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fax'
          end
          object GroupBox1: TGroupBox
            Left = 7
            Top = 281
            Width = 581
            Height = 80
            Caption = 'Dados Cobran'#231'a'
            TabOrder = 17
            object Label15: TLabel
              Left = 81
              Top = 14
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o'
            end
            object Label16: TLabel
              Left = 94
              Top = 36
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label17: TLabel
              Left = 100
              Top = 58
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object SpeedButton2: TSpeedButton
              Left = 442
              Top = 31
              Width = 23
              Height = 22
              Hint = 'Cadastro de Cidades'
              Caption = '...'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object Label31: TLabel
              Left = 507
              Top = 35
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object DBEdit12: TDBEdit
              Left = 131
              Top = 9
              Width = 430
              Height = 21
              DataField = 'ENDERECOCOB'
              DataSource = DSGenerico
              TabOrder = 0
            end
            object DBEdit13: TDBEdit
              Left = 131
              Top = 32
              Width = 46
              Height = 21
              DataField = 'CODCIDADECOB'
              DataSource = DSGenerico
              TabOrder = 1
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 179
              Top = 32
              Width = 261
              Height = 21
              DataField = 'CODCIDADECOB'
              DataSource = DSGenerico
              KeyField = 'CODCIDADE'
              ListField = 'NOME'
              ListSource = Dados.DSCidadesLK
              TabOrder = 2
              OnEnter = DBLookupComboBox1Enter
            end
            object DBEdit14: TDBEdit
              Left = 131
              Top = 55
              Width = 191
              Height = 21
              DataField = 'BAIRROCOB'
              DataSource = DSGenerico
              TabOrder = 4
            end
            object Edit4: TEdit
              Left = 525
              Top = 31
              Width = 36
              Height = 21
              TabOrder = 3
            end
          end
          object DBEdit1: TDBEdit
            Left = 139
            Top = 36
            Width = 46
            Height = 21
            DataField = 'CODCADGEN'
            DataSource = DSGenerico
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 139
            Top = 59
            Width = 430
            Height = 21
            DataField = 'NOME'
            DataSource = DSGenerico
            TabOrder = 3
            OnExit = DBEdit3Exit
          end
          object DBEdit2: TDBEdit
            Left = 139
            Top = 82
            Width = 430
            Height = 21
            DataField = 'FANTASIA'
            DataSource = DSGenerico
            TabOrder = 4
          end
          object DBEdit7: TDBEdit
            Left = 139
            Top = 195
            Width = 430
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DSGenerico
            TabOrder = 10
            OnExit = DBEdit7Exit
          end
          object DBEdit8: TDBEdit
            Left = 139
            Top = 218
            Width = 46
            Height = 21
            DataField = 'CODCIDADE'
            DataSource = DSGenerico
            TabOrder = 11
            OnExit = DBEdit8Exit
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 187
            Top = 218
            Width = 261
            Height = 21
            DataField = 'CODCIDADE'
            DataSource = DSGenerico
            KeyField = 'CODCIDADE'
            ListField = 'NOME'
            ListSource = Dados.DSCidadesLK
            TabOrder = 12
            OnEnter = DBLookupComboBox1Enter
          end
          object DBEdit9: TDBEdit
            Left = 139
            Top = 263
            Width = 191
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DSGenerico
            TabOrder = 16
            OnExit = DBEdit9Exit
          end
          object DBEdit6: TDBEdit
            Left = 139
            Top = 128
            Width = 177
            Height = 21
            DataField = 'FONEGERAL'
            DataSource = DSGenerico
            TabOrder = 6
          end
          object DBEdit10: TDBEdit
            Left = 139
            Top = 240
            Width = 157
            Height = 21
            DataField = 'CNPJCPF'
            DataSource = DSGenerico
            TabOrder = 14
            OnExit = DBEdit10Exit
          end
          object DBEdit11: TDBEdit
            Left = 412
            Top = 240
            Width = 157
            Height = 21
            DataField = 'IERG'
            DataSource = DSGenerico
            TabOrder = 15
            OnExit = DBEdit11Exit
          end
          object DBMemo1: TDBMemo
            Left = 137
            Top = 363
            Width = 431
            Height = 60
            DataField = 'OBS'
            DataSource = DSGenerico
            ScrollBars = ssVertical
            TabOrder = 18
          end
          object DBEdit15: TDBEdit
            Left = 393
            Top = 128
            Width = 177
            Height = 21
            DataField = 'FONEAUX'
            DataSource = DSGenerico
            TabOrder = 7
          end
          object DBEdit16: TDBEdit
            Left = 139
            Top = 172
            Width = 430
            Height = 21
            DataField = 'EMAIL'
            DataSource = DSGenerico
            TabOrder = 9
          end
          object DBEdit17: TDBEdit
            Left = 139
            Top = 105
            Width = 430
            Height = 21
            DataField = 'CONTATO'
            DataSource = DSGenerico
            TabOrder = 5
          end
          object DBEdit4: TDBEdit
            Left = 303
            Top = 36
            Width = 77
            Height = 21
            DataField = 'DATACADASTRO'
            DataSource = DSGenerico
            ReadOnly = True
            TabOrder = 2
          end
          object Edit3: TEdit
            Left = 533
            Top = 217
            Width = 36
            Height = 21
            TabOrder = 13
          end
          object GroupBox5: TGroupBox
            Left = 20
            Top = 3
            Width = 357
            Height = 33
            Caption = 'Este Cliente Tamb'#233'm '#233
            TabOrder = 0
            object DBCheckBox1: TDBCheckBox
              Left = 9
              Top = 12
              Width = 97
              Height = 17
              Caption = 'Cliente'
              DataField = 'TIPOC'
              DataSource = DSGenerico
              TabOrder = 0
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 133
              Top = 12
              Width = 97
              Height = 17
              Caption = 'Fornecedor'
              DataField = 'TIPOF'
              DataSource = DSGenerico
              TabOrder = 1
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 257
              Top = 12
              Width = 97
              Height = 17
              Caption = 'Transportadora'
              DataField = 'TIPOT'
              DataSource = DSGenerico
              TabOrder = 2
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
          end
          object DBEdit20: TDBEdit
            Left = 139
            Top = 150
            Width = 177
            Height = 21
            DataField = 'FAX'
            DataSource = DSGenerico
            TabOrder = 8
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 384
            Top = 3
            Width = 185
            Height = 33
            Caption = 'Tipo de Pessoa'
            Columns = 2
            DataField = 'TIPOPESSOA'
            DataSource = DSGenerico
            Items.Strings = (
              'F'#237'sica'
              'Jur'#237'dica')
            TabOrder = 19
            Values.Strings = (
              'F'
              'J')
            OnChange = DBRadioGroup1Change
            OnExit = BitBtnAlterarClick
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Padr'#245'es'
        ImageIndex = 2
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 596
          Height = 428
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label29: TLabel
            Left = 101
            Top = 40
            Width = 28
            Height = 13
            Caption = 'CFOP'
          end
          object SpeedButton5: TSpeedButton
            Left = 423
            Top = 36
            Width = 23
            Height = 22
            Hint = 'Cadastro de CFOP'
            Caption = '...'
            Flat = True
            OnClick = SpeedButton3Click
          end
          object Label32: TLabel
            Left = 57
            Top = 84
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Transportadora'
          end
          object Label33: TLabel
            Left = 73
            Top = 62
            Width = 56
            Height = 13
            Caption = 'Cond. Pgto '
          end
          object SpeedButton7: TSpeedButton
            Left = 423
            Top = 58
            Width = 23
            Height = 22
            Hint = 'Cadastro de Condi'#231#227'o de Pagamento'
            Caption = '...'
            Flat = True
            OnClick = SpeedButton3Click
          end
          object Label34: TLabel
            Left = 98
            Top = 18
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Banco'
          end
          object SpeedButton3: TSpeedButton
            Left = 423
            Top = 14
            Width = 23
            Height = 22
            Hint = 'Cadastro de Bancos'
            Caption = '...'
            Flat = True
            OnClick = SpeedButton3Click
          end
          object DBEdit5: TDBEdit
            Left = 133
            Top = 36
            Width = 42
            Height = 21
            DataField = 'CODCFOP'
            DataSource = DSGenerico
            TabOrder = 2
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 176
            Top = 36
            Width = 244
            Height = 21
            DataField = 'CODCFOP'
            DataSource = DSGenerico
            KeyField = 'CODCFOP'
            ListField = 'NOME'
            ListSource = Dados.DSCFOPLK
            TabOrder = 3
            OnEnter = DBLookupComboBox5Enter
          end
          object DBEdit18: TDBEdit
            Left = 133
            Top = 80
            Width = 42
            Height = 21
            DataField = 'CODTRANSP'
            DataSource = DSGenerico
            TabOrder = 6
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 176
            Top = 80
            Width = 244
            Height = 21
            DataField = 'CODTRANSP'
            DataSource = DSGenerico
            KeyField = 'CODCADGEN'
            ListField = 'NOME'
            ListSource = Dados.DSTransportadorasLK
            TabOrder = 7
            OnEnter = DBLookupComboBox6Enter
          end
          object DBEdit19: TDBEdit
            Left = 133
            Top = 58
            Width = 42
            Height = 21
            DataField = 'CODCONDPGTO'
            DataSource = DSGenerico
            TabOrder = 4
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 176
            Top = 58
            Width = 244
            Height = 21
            DataField = 'CODCONDPGTO'
            DataSource = DSGenerico
            KeyField = 'CODCONDPGTO'
            ListField = 'NOME'
            ListSource = Dados.DSCondPgtoLK
            TabOrder = 5
            OnEnter = DBLookupComboBox7Enter
          end
          object DBEdit23: TDBEdit
            Left = 133
            Top = 14
            Width = 42
            Height = 21
            DataField = 'CODBANCO'
            DataSource = DSGenerico
            TabOrder = 0
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 176
            Top = 14
            Width = 244
            Height = 21
            DataField = 'CODBANCO'
            DataSource = DSGenerico
            KeyField = 'CODBANCO'
            ListField = 'NOME'
            ListSource = Dados.DSBancosLK
            TabOrder = 1
            OnEnter = DBLookupComboBox3Enter
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Estat'#237'sticas'
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 0
          Top = 145
          Width = 581
          Height = 107
          Caption = 'Generico'
          TabOrder = 1
          object Label23: TLabel
            Left = 116
            Top = 40
            Width = 170
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' de Contas a Receber Pendentes'
          end
          object Label24: TLabel
            Left = 99
            Top = 63
            Width = 187
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor das Contas a Receber Pendentes'
          end
          object Label25: TLabel
            Left = 142
            Top = 85
            Width = 144
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data do Pr'#243'ximo Recebimento'
          end
          object Label27: TLabel
            Left = 81
            Top = 17
            Width = 205
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' de Contas a Receber Pagas com Atraso'
          end
          object Edit9: TEdit
            Left = 293
            Top = 59
            Width = 91
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = 'Edit9'
          end
          object Edit10: TEdit
            Left = 293
            Top = 80
            Width = 91
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = 'Edit10'
          end
          object Edit11: TEdit
            Left = 293
            Top = 37
            Width = 33
            Height = 21
            ReadOnly = True
            TabOrder = 2
            Text = 'Edit11'
          end
          object Edit12: TEdit
            Left = 293
            Top = 15
            Width = 33
            Height = 21
            ReadOnly = True
            TabOrder = 3
            Text = 'Edit12'
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 61
          Width = 581
          Height = 83
          Caption = 'Generico'
          TabOrder = 0
          object Label21: TLabel
            Left = 218
            Top = 14
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' de Vendas'
          end
          object Label22: TLabel
            Left = 201
            Top = 37
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor das Vendas'
          end
          object Label5: TLabel
            Left = 180
            Top = 59
            Width = 104
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data da '#218'ltima Venda'
          end
          object Edit6: TEdit
            Left = 293
            Top = 11
            Width = 33
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = 'Edit6'
          end
          object Edit7: TEdit
            Left = 293
            Top = 33
            Width = 91
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = 'Edit7'
          end
          object Edit8: TEdit
            Left = 293
            Top = 56
            Width = 91
            Height = 21
            ReadOnly = True
            TabOrder = 2
            Text = 'Edit8'
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 1
          Width = 581
          Height = 61
          Caption = 'Generico'
          TabOrder = 2
          object Label26: TLabel
            Left = 197
            Top = 16
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' de Or'#231'amentos'
          end
          object Label28: TLabel
            Left = 159
            Top = 36
            Width = 125
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data do '#218'ltimo Or'#231'amento'
          end
          object Edit2: TEdit
            Left = 293
            Top = 11
            Width = 33
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = 'Edit2'
          end
          object Edit5: TEdit
            Left = 293
            Top = 33
            Width = 91
            Height = 21
            ReadOnly = True
            TabOrder = 1
            Text = 'Edit5'
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label9: TLabel
      Left = 386
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Localizar'
    end
    object Label10: TLabel
      Left = 397
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Ordem'
    end
    object SBBusca: TSpeedButton
      Left = 580
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SBBuscaClick
    end
    object DBNavigator1: TDBNavigator
      Left = 14
      Top = 12
      Width = 240
      Height = 31
      DataSource = DSGenerico
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 487
      Top = 8
      Width = 48
      Height = 17
      Caption = 'Nome'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton1: TRadioButton
      Left = 433
      Top = 8
      Width = 55
      Height = 17
      Caption = 'C'#243'digo'
      TabOrder = 2
      OnClick = RadioButton1Click
    end
    object Edit1: TEdit
      Left = 432
      Top = 26
      Width = 144
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
    object RadioButton3: TRadioButton
      Left = 538
      Top = 8
      Width = 54
      Height = 17
      Caption = 'Cidade'
      TabOrder = 4
      OnClick = RadioButton1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 264
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Cidades1: TMenuItem
        Caption = 'Cidades'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Ficha: TMenuItem
        Caption = 'Ficha'
        OnClick = FichaClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Generico: TMenuItem
        Caption = 'Generico'
        OnClick = GenericoClick
      end
      object N2: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Generico1: TMenuItem
        Caption = 'Generico1'
        Visible = False
        OnClick = Generico1Click
      end
      object Generico2: TMenuItem
        Caption = 'Generico2'
        Visible = False
        OnClick = Generico2Click
      end
      object Generico3: TMenuItem
        Caption = 'Generico3'
        Visible = False
        OnClick = Generico3Click
      end
    end
  end
  object DSGenerico: TDataSource
    DataSet = TbGenerico
    OnStateChange = DSGenericoStateChange
    OnDataChange = DSGenericoDataChange
    Left = 304
    Top = 8
  end
  object TransactionGen: TIBTransaction
    DefaultDatabase = Dados.Database
    DefaultAction = TACommitRetaining
    Left = 328
    Top = 40
  end
  object TbGenerico: TIBDataSet
    Database = Dados.Database
    Transaction = TransactionGen
    DeleteSQL.Strings = (
      'delete from CADGEN'
      'where'
      '  CODCADGEN = :OLD_CODCADGEN')
    InsertSQL.Strings = (
      'insert into CADGEN'
      
        '  (BAIRRO, BAIRROCOB, CNPJCPF, CODBANCO, CODCADGEN, CODCFOP, COD' +
        'CIDADE, '
      
        '   CODCIDADECOB, CODCONDPGTO, CODTRANSP, CONTATO, DATACADASTRO, ' +
        'EMAIL, '
      
        '   ENDERECO, ENDERECOCOB, FANTASIA, FAX, FONEAUX, FONEGERAL, IER' +
        'G, NOME, '
      '   OBS, TIPOC, TIPOF, TIPOPESSOA, TIPOT)'
      'values'
      
        '  (:BAIRRO, :BAIRROCOB, :CNPJCPF, :CODBANCO, :CODCADGEN, :CODCFO' +
        'P, :CODCIDADE, '
      
        '   :CODCIDADECOB, :CODCONDPGTO, :CODTRANSP, :CONTATO, :DATACADAS' +
        'TRO, :EMAIL, '
      
        '   :ENDERECO, :ENDERECOCOB, :FANTASIA, :FAX, :FONEAUX, :FONEGERA' +
        'L, :IERG, '
      '   :NOME, :OBS, :TIPOC, :TIPOF, :TIPOPESSOA, :TIPOT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCADGEN,'
      '  CODCIDADE,'
      '  CODCIDADECOB,'
      '  CODBANCO,'
      '  CODCONDPGTO,'
      '  CODCFOP,'
      '  TIPOT,'
      '  TIPOC,'
      '  TIPOF,'
      '  CODTRANSP,'
      '  DATACADASTRO,'
      '  NOME,'
      '  FANTASIA,'
      '  CONTATO,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  FONEGERAL,'
      '  FONEAUX,'
      '  FAX,'
      '  EMAIL,'
      '  TIPOPESSOA,'
      '  OBS,'
      '  CNPJCPF,'
      '  IERG,'
      '  ENDERECOCOB,'
      '  BAIRROCOB'
      'from CADGEN '
      'where'
      '  CODCADGEN = :CODCADGEN')
    SelectSQL.Strings = (
      'SELECT * FROM CADGEN'
      'where TIPOC = '#39'T'#39)
    ModifySQL.Strings = (
      'update CADGEN'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  BAIRROCOB = :BAIRROCOB,'
      '  CNPJCPF = :CNPJCPF,'
      '  CODBANCO = :CODBANCO,'
      '  CODCADGEN = :CODCADGEN,'
      '  CODCFOP = :CODCFOP,'
      '  CODCIDADE = :CODCIDADE,'
      '  CODCIDADECOB = :CODCIDADECOB,'
      '  CODCONDPGTO = :CODCONDPGTO,'
      '  CODTRANSP = :CODTRANSP,'
      '  CONTATO = :CONTATO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  EMAIL = :EMAIL,'
      '  ENDERECO = :ENDERECO,'
      '  ENDERECOCOB = :ENDERECOCOB,'
      '  FANTASIA = :FANTASIA,'
      '  FAX = :FAX,'
      '  FONEAUX = :FONEAUX,'
      '  FONEGERAL = :FONEGERAL,'
      '  IERG = :IERG,'
      '  NOME = :NOME,'
      '  OBS = :OBS,'
      '  TIPOC = :TIPOC,'
      '  TIPOF = :TIPOF,'
      '  TIPOPESSOA = :TIPOPESSOA,'
      '  TIPOT = :TIPOT'
      'where'
      '  CODCADGEN = :OLD_CODCADGEN')
    GeneratorField.Field = 'CODCADGEN'
    GeneratorField.Generator = 'GEN_CADGEN_ID'
    Left = 352
    Top = 8
    object TbGenericoCODCADGEN: TIntegerField
      FieldName = 'CODCADGEN'
      Origin = '"CADGEN"."CODCADGEN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbGenericoCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = '"CADGEN"."CODCIDADE"'
    end
    object TbGenericoCODCIDADECOB: TIntegerField
      FieldName = 'CODCIDADECOB'
      Origin = '"CADGEN"."CODCIDADECOB"'
    end
    object TbGenericoCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
      Origin = '"CADGEN"."CODBANCO"'
    end
    object TbGenericoCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
      Origin = '"CADGEN"."CODCONDPGTO"'
    end
    object TbGenericoCODCFOP: TIntegerField
      FieldName = 'CODCFOP'
      Origin = '"CADGEN"."CODCFOP"'
    end
    object TbGenericoCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Origin = '"CADGEN"."CODTRANSP"'
    end
    object TbGenericoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"CADGEN"."DATACADASTRO"'
    end
    object TbGenericoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CADGEN"."NOME"'
      Size = 75
    end
    object TbGenericoFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"CADGEN"."FANTASIA"'
      Size = 75
    end
    object TbGenericoCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"CADGEN"."CONTATO"'
      Size = 25
    end
    object TbGenericoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CADGEN"."ENDERECO"'
      Size = 100
    end
    object TbGenericoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CADGEN"."BAIRRO"'
      Size = 50
    end
    object TbGenericoFONEGERAL: TIBStringField
      FieldName = 'FONEGERAL'
      Origin = '"CADGEN"."FONEGERAL"'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object TbGenericoFONEAUX: TIBStringField
      FieldName = 'FONEAUX'
      Origin = '"CADGEN"."FONEAUX"'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object TbGenericoFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"CADGEN"."FAX"'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object TbGenericoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CADGEN"."EMAIL"'
      Size = 70
    end
    object TbGenericoTIPOPESSOA: TIBStringField
      FieldName = 'TIPOPESSOA'
      Origin = '"CADGEN"."TIPOPESSOA"'
      FixedChar = True
      Size = 1
    end
    object TbGenericoOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"CADGEN"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TbGenericoCNPJCPF: TIBStringField
      FieldName = 'CNPJCPF'
      Origin = '"CADGEN"."CNPJCPF"'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 18
    end
    object TbGenericoIERG: TIBStringField
      FieldName = 'IERG'
      Origin = '"CADGEN"."IERG"'
      EditMask = '999/9999999;0;_'
      Size = 18
    end
    object TbGenericoENDERECOCOB: TIBStringField
      FieldName = 'ENDERECOCOB'
      Origin = '"CADGEN"."ENDERECOCOB"'
      Size = 100
    end
    object TbGenericoBAIRROCOB: TIBStringField
      FieldName = 'BAIRROCOB'
      Origin = '"CADGEN"."BAIRROCOB"'
      Size = 50
    end
    object TbGenericoTIPOT: TIBStringField
      FieldName = 'TIPOT'
      Origin = '"CADGEN"."TIPOT"'
      FixedChar = True
      Size = 1
    end
    object TbGenericoTIPOC: TIBStringField
      FieldName = 'TIPOC'
      Origin = '"CADGEN"."TIPOC"'
      FixedChar = True
      Size = 1
    end
    object TbGenericoTIPOF: TIBStringField
      FieldName = 'TIPOF'
      Origin = '"CADGEN"."TIPOF"'
      FixedChar = True
      Size = 1
    end
  end
  object QryAux: TIBQuery
    Database = Dados.Database
    Transaction = TransactionGen
    Left = 384
    Top = 40
  end
end
