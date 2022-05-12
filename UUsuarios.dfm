object FUsuarios: TFUsuarios
  Left = 156
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 291
  ClientWidth = 512
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 254
    Width = 512
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnNovo: TBitBtn
      Left = 7
      Top = 6
      Width = 89
      Height = 25
      Hint = 'Inserir Usu'#225'rio'
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
      Left = 109
      Top = 6
      Width = 89
      Height = 27
      Hint = 'Alterar Usu'#225'rio'
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
      Left = 211
      Top = 6
      Width = 89
      Height = 25
      Hint = 'Excluir Usu'#225'rio'
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
      Left = 313
      Top = 6
      Width = 89
      Height = 25
      Hint = 'Gravar Usu'#225'rio'
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
      Left = 415
      Top = 6
      Width = 89
      Height = 25
      Hint = 'Cancelar Usu'#225'rio'
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
    Width = 512
    Height = 200
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 508
      Height = 196
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados do Usu'#225'rio'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 500
          Height = 168
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label2: TLabel
            Left = 82
            Top = 64
            Width = 36
            Height = 13
            Caption = 'Usu'#225'rio'
          end
          object Label3: TLabel
            Left = 82
            Top = 89
            Width = 31
            Height = 13
            Caption = 'Senha'
          end
          object DBEdit1: TDBEdit
            Left = 121
            Top = 61
            Width = 200
            Height = 21
            CharCase = ecUpperCase
            DataField = 'LOGIN'
            DataSource = DSUsuarios
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 121
            Top = 85
            Width = 200
            Height = 21
            DataField = 'SENHA'
            DataSource = DSUsuarios
            PasswordChar = '*'
            TabOrder = 1
            OnExit = DBEdit2Exit
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'M'#243'dulos e Permiss'#245'es'
        ImageIndex = 1
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 500
          Height = 168
          Align = alClient
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 496
            Height = 147
            Align = alTop
            DataSource = DSUsuMod
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = DBGrid1CellClick
            OnExit = DBGrid1Exit
            Columns = <
              item
                Expanded = False
                FieldName = 'Modulo'
                ReadOnly = True
                Title.Caption = 'Descri'#231#227'o'
                Width = 200
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NivelConsStr'
                Title.Caption = 'Consulta'
                Width = 55
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NivelEdiStr'
                Title.Caption = 'Edi'#231#227'o'
                Width = 55
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NivelExcStr'
                Title.Caption = 'Exclus'#227'o'
                Width = 55
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NivelRelStr'
                Title.Caption = 'Relat'#243'rios'
                Width = 55
                Visible = True
              end>
          end
        end
      end
    end
    object Panel7: TPanel
      Left = 467
      Top = 170
      Width = 507
      Height = 196
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      Visible = False
      object Label4: TLabel
        Left = 82
        Top = 64
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label5: TLabel
        Left = 82
        Top = 89
        Width = 31
        Height = 13
        Caption = 'Senha'
      end
      object DBEdit3: TDBEdit
        Left = 121
        Top = 61
        Width = 200
        Height = 21
        CharCase = ecUpperCase
        DataField = 'LOGIN'
        DataSource = DSUsuarios
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 121
        Top = 85
        Width = 200
        Height = 21
        DataField = 'SENHA'
        DataSource = DSUsuarios
        PasswordChar = '*'
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 17
        Top = 128
        Width = 225
        Height = 25
        Caption = 'Cancela a Edi'#231#227'o do Usu'#225'rio'
        TabOrder = 2
        OnClick = BitBtn1Click
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
      object BitBtn2: TBitBtn
        Left = 258
        Top = 128
        Width = 225
        Height = 25
        Caption = 'Continua a Edi'#231#227'o do Usu'#225'rio'
        TabOrder = 3
        OnClick = BitBtn2Click
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 22
      Top = 12
      Width = 240
      Height = 31
      DataSource = DSUsuarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 88
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
  end
  object DSUsuarios: TDataSource
    DataSet = TbUsuarios
    OnStateChange = DSUsuariosStateChange
    Left = 152
    Top = 72
  end
  object DSUsuMod: TDataSource
    DataSet = TbUsuMod
    Left = 152
    Top = 40
  end
  object TransUsu: TIBTransaction
    DefaultDatabase = Dados.Database
    Left = 136
    Top = 102
  end
  object TbUsuarios: TIBDataSet
    Database = Dados.Database
    Transaction = TransUsu
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      '  (CODUSUARIO, LOGIN, SENHA)'
      'values'
      '  (:CODUSUARIO, :LOGIN, :SENHA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODUSUARIO,'
      '  LOGIN,'
      '  SENHA'
      'from USUARIOS '
      'where'
      '  CODUSUARIO = :CODUSUARIO')
    SelectSQL.Strings = (
      'SELECT * FROM USUARIOS')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  CODUSUARIO = :CODUSUARIO,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA'
      'where'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    GeneratorField.Field = 'CODUSUARIO'
    GeneratorField.Generator = 'GEN_USUARIOS_ID'
    Left = 120
    Top = 72
    object TbUsuariosCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'USUARIOS.CODUSUARIO'
      Required = True
    end
    object TbUsuariosLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'USUARIOS.LOGIN'
      Size = 40
    end
    object TbUsuariosSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'USUARIOS.SENHA'
    end
  end
  object TbUsuMod: TIBDataSet
    Database = Dados.Database
    Transaction = TransUsu
    OnCalcFields = TbUsuModCalcFields
    DeleteSQL.Strings = (
      'delete from USUMODULOS'
      'where'
      '  CODMODULO = :OLD_CODMODULO and'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    InsertSQL.Strings = (
      'insert into USUMODULOS'
      
        '  (CODMODULO, CODUSUARIO, NIVELCONS, NIVELEDI, NIVELEXC, NIVELRE' +
        'L)'
      'values'
      
        '  (:CODMODULO, :CODUSUARIO, :NIVELCONS, :NIVELEDI, :NIVELEXC, :N' +
        'IVELREL)')
    RefreshSQL.Strings = (
      'Select '
      '  CODUSUARIO,'
      '  CODMODULO,'
      '  NIVELCONS,'
      '  NIVELEDI,'
      '  NIVELEXC,'
      '  NIVELREL'
      'from USUMODULOS '
      'where'
      '  CODMODULO = :CODMODULO and'
      '  CODUSUARIO = :CODUSUARIO')
    SelectSQL.Strings = (
      'select * from USUMODULOS'
      'where CodUsuario = :CODUSUARIO')
    ModifySQL.Strings = (
      'update USUMODULOS'
      'set'
      '  CODMODULO = :CODMODULO,'
      '  CODUSUARIO = :CODUSUARIO,'
      '  NIVELCONS = :NIVELCONS,'
      '  NIVELEDI = :NIVELEDI,'
      '  NIVELEXC = :NIVELEXC,'
      '  NIVELREL = :NIVELREL'
      'where'
      '  CODMODULO = :OLD_CODMODULO and'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    DataSource = DSUsuarios
    Left = 112
    Top = 40
    object TbUsuModCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = '"USUMODULOS"."CODUSUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbUsuModCODMODULO: TIntegerField
      FieldName = 'CODMODULO'
      Origin = '"USUMODULOS"."CODMODULO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbUsuModNIVELCONS: TIBStringField
      FieldName = 'NIVELCONS'
      Origin = '"USUMODULOS"."NIVELCONS"'
      Size = 1
    end
    object TbUsuModNIVELEDI: TIBStringField
      FieldName = 'NIVELEDI'
      Origin = '"USUMODULOS"."NIVELEDI"'
      Size = 1
    end
    object TbUsuModNIVELEXC: TIBStringField
      FieldName = 'NIVELEXC'
      Origin = '"USUMODULOS"."NIVELEXC"'
      Size = 1
    end
    object TbUsuModNIVELREL: TIBStringField
      FieldName = 'NIVELREL'
      Origin = '"USUMODULOS"."NIVELREL"'
      Size = 1
    end
    object TbUsuModNivelConsStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'NivelConsStr'
      Size = 1
      Calculated = True
    end
    object TbUsuModNivelEdiStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'NivelEdiStr'
      Size = 1
      Calculated = True
    end
    object TbUsuModNivelExcStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'NivelExcStr'
      Size = 1
      Calculated = True
    end
    object TbUsuModNivelRelStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'NivelRelStr'
      Size = 1
      Calculated = True
    end
    object TbUsuModModulo: TStringField
      FieldKind = fkLookup
      FieldName = 'Modulo'
      LookupDataSet = Dados.QryModulosLK
      LookupKeyFields = 'CODMODULO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODMODULO'
      Size = 70
      Lookup = True
    end
  end
  object TbHistSenha: TIBTable
    Database = Dados.Database
    Transaction = TransUsu
    IndexFieldNames = 'CODUSUARIO'
    MasterFields = 'CODUSUARIO'
    MasterSource = DSUsuarios
    TableName = 'HISTSENHA'
    Left = 136
    Top = 136
    object TbHistSenhaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object TbHistSenhaSENHA: TIBStringField
      FieldName = 'SENHA'
    end
    object TbHistSenhaCODHIST: TIntegerField
      FieldName = 'CODHIST'
      Required = True
    end
    object TbHistSenhaDATAULTHIST: TDateField
      FieldName = 'DATAULTHIST'
    end
  end
  object QryModulos: TIBQuery
    Database = Dados.Database
    Transaction = TransUsu
    DataSource = DSUsuMod
    SQL.Strings = (
      'select * from  MODULOS'
      'order by DESCRICAO')
    Left = 120
    Top = 8
    object QryModulosCODMODULO: TIntegerField
      FieldName = 'CODMODULO'
      Origin = '"MODULOS"."CODMODULO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryModulosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"MODULOS"."DESCRICAO"'
      Size = 150
    end
  end
end
