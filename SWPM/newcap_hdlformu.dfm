object frmnewcap_HDL: Tfrmnewcap_HDL
  Left = 192
  Top = 114
  Width = 361
  Height = 251
  Caption = 'HDL - Control and Maintain'
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
  object BitBtn20: TBitBtn
    Left = 24
    Top = 32
    Width = 305
    Height = 25
    Caption = 'HDL of Assembly Line WF - Control and Maintain'
    TabOrder = 0
    OnClick = BitBtn20Click
  end
  object BitBtn3: TBitBtn
    Left = 24
    Top = 64
    Width = 305
    Height = 25
    Caption = 'HDL of Core-tech WF - Control and Maintain'
    TabOrder = 1
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 24
    Top = 96
    Width = 305
    Height = 25
    Caption = 'HDL of Specific WF - Control and Maintain'
    TabOrder = 2
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 24
    Top = 128
    Width = 305
    Height = 25
    Caption = 'HDL of Bonding WF - Control and Maintain'
    TabOrder = 3
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 24
    Top = 160
    Width = 305
    Height = 25
    Caption = 'Exit'
    TabOrder = 4
    OnClick = BitBtn6Click
  end
end
