object frmwipImage: TfrmwipImage
  Left = 192
  Top = 114
  Width = 273
  Height = 211
  Caption = 'Factory WIP - Styles Image Illustration'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 35
    Height = 13
    Caption = 'Factory'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 49
    Height = 13
    Caption = 'Workshop'
  end
  object Label3: TLabel
    Left = 40
    Top = 88
    Width = 44
    Height = 13
    Caption = 'Customer'
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 24
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'SL'
      'KB')
  end
  object ComboBox2: TComboBox
    Left = 96
    Top = 56
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 96
    Top = 88
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 4
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 128
    Width = 73
    Height = 25
    Caption = 'Preview'
    TabOrder = 3
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
    Left = 152
    Top = 128
    Width = 73
    Height = 25
    TabOrder = 4
    Kind = bkClose
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 8
    Top = 8
  end
end
