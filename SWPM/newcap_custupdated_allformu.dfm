object frmnewcap_custupdated_all: Tfrmnewcap_custupdated_all
  Left = 245
  Top = 149
  Width = 401
  Height = 219
  Caption = 
    'Customer Sales Order Summary - Confirmed & Projection'#39's outstand' +
    'ing'
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
  object xh1: TRadioButton
    Left = 24
    Top = 32
    Width = 353
    Height = 17
    Caption = 
      'Qty is based on SO'#39's Delivery date in RWO && Projection'#39's outsta' +
      'nding'
    TabOrder = 0
  end
  object xh2: TRadioButton
    Left = 24
    Top = 64
    Width = 353
    Height = 17
    Caption = 
      'Qty is based on RWO'#39's T3 (std ahead) + aT3 && Projection'#39's Del d' +
      'ate'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 128
    Width = 73
    Height = 25
    Caption = 'Preview'
    TabOrder = 2
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 96
    Top = 128
    Width = 73
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    Kind = bkClose
  end
  object xh3: TRadioButton
    Left = 24
    Top = 96
    Width = 353
    Height = 17
    Caption = 
      'Qty is based on RWO'#39's aT3 only && Manual aT3 for projection qty ' +
      'only'
    TabOrder = 4
  end
end