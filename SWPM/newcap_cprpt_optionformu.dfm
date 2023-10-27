object frmnewcap_cprpt_option: Tfrmnewcap_cprpt_option
  Left = 192
  Top = 114
  Caption = 'CP - Production Balancing Report Option'
  ClientHeight = 291
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 24
    Top = 127
    Width = 369
    Height = 97
  end
  object Label1: TLabel
    Left = 248
    Top = 152
    Width = 3
    Height = 16
    Visible = False
  end
  object Label2: TLabel
    Left = 24
    Top = 120
    Width = 39
    Height = 16
    Caption = 'Note:- '
  end
  object Label3: TLabel
    Left = 32
    Top = 144
    Width = 126
    Height = 13
    Caption = 'Group A - Capacity_Setup '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 163
    Width = 242
    Height = 13
    Caption = 'Group B - Capacity_Sales Projection && Order Fill-up '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 182
    Width = 141
    Height = 13
    Caption = 'Group C - Difference of B && A '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 201
    Width = 315
    Height = 13
    Caption = 
      'Group D - Cap. Utilization on time dependent (For analysis purpo' +
      'se)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 24
    Top = 16
    Width = 369
    Height = 105
  end
  object Label7: TLabel
    Left = 24
    Top = 8
    Width = 65
    Height = 16
    Caption = 'Grouping:- '
  end
  object Label8: TLabel
    Left = 247
    Top = 243
    Width = 3
    Height = 16
    Visible = False
  end
  object xh1: TRadioButton
    Left = 32
    Top = 24
    Width = 143
    Height = 17
    Caption = 'Group A + B + C +D '
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object xh2: TRadioButton
    Left = 32
    Top = 48
    Width = 97
    Height = 17
    Caption = 'Group A '
    TabOrder = 1
  end
  object xh3: TRadioButton
    Left = 197
    Top = 48
    Width = 81
    Height = 17
    Caption = 'Group B '
    TabOrder = 2
  end
  object BitBtn15: TBitBtn
    Left = 24
    Top = 240
    Width = 81
    Height = 25
    Caption = 'Preview'
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
    TabOrder = 3
    OnClick = BitBtn15Click
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 240
    Width = 81
    Height = 25
    Caption = 'Exit'
    Kind = bkClose
    TabOrder = 4
  end
  object xh4: TRadioButton
    Left = 32
    Top = 72
    Width = 105
    Height = 17
    Caption = 'Group A + B '
    TabOrder = 5
  end
  object xh5: TRadioButton
    Left = 197
    Top = 72
    Width = 97
    Height = 17
    Caption = 'Group C + D '
    TabOrder = 6
  end
  object xh6: TRadioButton
    Left = 197
    Top = 96
    Width = 121
    Height = 17
    Caption = 'Group B + C + D '
    TabOrder = 7
  end
  object xh7: TRadioButton
    Left = 32
    Top = 96
    Width = 121
    Height = 17
    Caption = 'Group A + B + C'
    TabOrder = 8
  end
  object xh8: TRadioButton
    Left = 197
    Top = 25
    Width = 188
    Height = 17
    Caption = 'Group A + B + C (Key figure) '
    TabOrder = 9
  end
end
