object FIntegraCont: TFIntegraCont
  Left = 192
  Top = 151
  AutoScroll = False
  AutoSize = True
  Caption = 'Integra'#231#227'o Cont'#225'bil'
  ClientHeight = 219
  ClientWidth = 454
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 219
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 11
      Width = 117
      Height = 13
      Caption = 'Selecione o m'#234's e o ano'
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 32
      Width = 446
      Height = 182
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object ComboBox1: TComboBox
      Left = 160
      Top = 8
      Width = 82
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object Edit1: TEdit
      Left = 247
      Top = 8
      Width = 34
      Height = 21
      TabOrder = 2
      Text = '2.000'
    end
    object UpDown1: TUpDown
      Left = 281
      Top = 8
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 2000
      Max = 2100
      Position = 2000
      TabOrder = 3
      Wrap = False
    end
    object BitBtn1: TBitBtn
      Left = 328
      Top = 5
      Width = 121
      Height = 25
      Caption = 'Efetuar Integra'#231#227'o'
      TabOrder = 4
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object QryIntCont: TIBQuery
    Left = 296
    Top = 64
  end
  object DSIntCont: TDataSource
    DataSet = QryIntCont
    Left = 296
    Top = 96
  end
end
