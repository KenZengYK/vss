object frmnewcap_calendar: Tfrmnewcap_calendar
  Left = 192
  Top = 114
  Width = 281
  Height = 251
  Caption = 'Factory Calendar / LW Calendar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Button1: TButton
    Left = 24
    Top = 32
    Width = 225
    Height = 25
    Caption = 'Factory Calendar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 64
    Width = 225
    Height = 25
    Caption = 'Default Line Work Calendar'
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 96
    Width = 225
    Height = 25
    Caption = 'Adjusted Default Line Work Calendar'
    Enabled = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 128
    Width = 225
    Height = 25
    Caption = 'Current Line Work Calendar'
    Enabled = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 24
    Top = 160
    Width = 225
    Height = 25
    Caption = 'Exit'
    TabOrder = 4
    OnClick = Button5Click
  end
end
