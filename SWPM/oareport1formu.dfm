object frmoareport1: Tfrmoareport1
  Left = 192
  Top = 114
  Caption = 'frmoareport1'
  ClientHeight = 223
  ClientWidth = 353
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
    Left = 32
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label2: TLabel
    Left = 192
    Top = 32
    Width = 52
    Height = 13
    Caption = 'Workshop '
  end
  object Label3: TLabel
    Left = 32
    Top = 128
    Width = 53
    Height = 13
    Caption = 'As at Date '
  end
  object Label4: TLabel
    Left = 32
    Top = 64
    Width = 50
    Height = 13
    Caption = 'Customer  '
  end
  object Label5: TLabel
    Left = 32
    Top = 96
    Width = 50
    Height = 13
    Caption = 'Cust Style '
  end
  object Label6: TLabel
    Left = 224
    Top = 96
    Width = 43
    Height = 13
    Caption = 'Clr Code '
  end
  object Label7: TLabel
    Left = 200
    Top = 128
    Width = 16
    Height = 13
    Caption = 'To '
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 32
    Width = 73
    Height = 21
    TabOrder = 0
    Text = 'SL'
    Items.Strings = (
      'SL'
      'KB')
  end
  object ComboBox2: TComboBox
    Left = 248
    Top = 32
    Width = 81
    Height = 21
    TabOrder = 1
    Text = '4B'
    Items.Strings = (
      '3A'
      '3B'
      '3D'
      '4A'
      '4B'
      '4C'
      '4D'
      'KB1A'
      'KB1B'
      'KB2')
  end
  object DateEdit1: TDateEdit
    Left = 88
    Top = 128
    Width = 105
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 168
    Width = 73
    Height = 25
    Caption = 'Preview'
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 168
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 8
  end
  object ComboBox3: TComboBox
    Left = 88
    Top = 64
    Width = 105
    Height = 21
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 88
    Top = 96
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 272
    Top = 96
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object DateEdit2: TDateEdit
    Left = 224
    Top = 128
    Width = 105
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
    Visible = False
  end
end
