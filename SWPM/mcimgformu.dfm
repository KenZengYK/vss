object frmmcimg: Tfrmmcimg
  Left = 192
  Top = 114
  Width = 524
  Height = 440
  Caption = 'Mc Image'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 516
    Height = 365
    Align = alClient
    TabOrder = 0
    ControlData = {
      4C00000055350000B92500000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 365
    Width = 516
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 184
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Load Image File'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 112
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
  end
  object OpenDialog1: TOpenPictureDialog
    Left = 64
    Top = 8
  end
end
