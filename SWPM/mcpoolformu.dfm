object frmmcpool: Tfrmmcpool
  Left = 192
  Top = 114
  Width = 265
  Height = 267
  Caption = 'Mc Pool'
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
  object BitBtn1: TBitBtn
    Left = 40
    Top = 56
    Width = 177
    Height = 25
    Caption = 'Factory Mc Supply Station'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 40
    Top = 88
    Width = 177
    Height = 25
    Caption = 'Workshop Mc Supply Station'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 40
    Top = 120
    Width = 177
    Height = 25
    Caption = 'Line Stationed Mc'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 40
    Top = 152
    Width = 177
    Height = 25
    Caption = 'Dead Mc'
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 40
    Top = 184
    Width = 177
    Height = 25
    Caption = 'Exit'
    TabOrder = 5
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 40
    Top = 24
    Width = 177
    Height = 25
    Caption = 'Mc Pool'
    TabOrder = 0
    OnClick = BitBtn6Click
    NumGlyphs = 2
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 48
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 80
    Top = 65528
  end
end
