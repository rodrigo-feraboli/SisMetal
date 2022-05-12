object FAltereSenha: TFAltereSenha
  Left = 195
  Top = 153
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Altere sua Senha'
  ClientHeight = 189
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 189
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 124
      Top = 17
      Width = 26
      Height = 13
      Caption = 'Login'
    end
    object Label2: TLabel
      Left = 92
      Top = 49
      Width = 58
      Height = 13
      Caption = 'Senha Atual'
    end
    object Edit1: TEdit
      Left = 159
      Top = 14
      Width = 155
      Height = 21
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 0
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 159
      Top = 46
      Width = 155
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      OnExit = Edit2Exit
    end
    object BitBtn1: TBitBtn
      Left = 39
      Top = 159
      Width = 127
      Height = 25
      Caption = 'Confirmar'
      ModalResult = 1
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 170
      Top = 159
      Width = 127
      Height = 25
      Caption = 'Limpar Senha'
      TabOrder = 4
      OnClick = Edit3Exit
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 302
      Top = 159
      Width = 127
      Height = 25
      Caption = 'Voltar para o sistema'
      ModalResult = 2
      TabOrder = 5
      OnClick = BitBtn3Click
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
    object Panel2: TPanel
      Left = 6
      Top = 80
      Width = 456
      Height = 66
      BevelInner = bvSpace
      BevelOuter = bvLowered
      TabOrder = 2
      object Label3: TLabel
        Left = 85
        Top = 10
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nova Senha'
      end
      object Label4: TLabel
        Left = 8
        Top = 42
        Width = 137
        Height = 13
        Alignment = taRightJustify
        Caption = 'Confirma'#231#227'o da Nova Senha'
      end
      object Edit3: TEdit
        Left = 154
        Top = 7
        Width = 155
        Height = 21
        PasswordChar = '*'
        TabOrder = 0
        OnExit = Edit3Exit
      end
      object Edit4: TEdit
        Left = 154
        Top = 38
        Width = 155
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
        OnExit = Edit3Exit
      end
    end
  end
end
