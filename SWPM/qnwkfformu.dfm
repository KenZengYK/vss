object frmqnwkf: Tfrmqnwkf
  Left = 192
  Top = 114
  Width = 297
  Height = 243
  Caption = 'Current Workforce by QN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 8
    Width = 3
    Height = 13
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 32
    Width = 241
    Height = 25
    Caption = 'Mobile Workforce - On-std (Shortage/GSD gap)'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 72
    Width = 241
    Height = 25
    Caption = 'Stationed Workforce - Opt Perf (Absence)'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 24
    Top = 112
    Width = 241
    Height = 25
    Caption = 'Mobile Workforce - Opt Perf (Absence/BN)'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 24
    Top = 152
    Width = 241
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
end
