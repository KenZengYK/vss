object frmmcloc: Tfrmmcloc
  Left = 411
  Top = 302
  Width = 409
  Height = 387
  Caption = 'Location of Mc'
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
  object Bevel3: TBevel
    Left = 24
    Top = 152
    Width = 353
    Height = 57
  end
  object Bevel1: TBevel
    Left = 24
    Top = 24
    Width = 353
    Height = 57
  end
  object Bevel2: TBevel
    Left = 24
    Top = 88
    Width = 353
    Height = 57
  end
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 124
    Height = 13
    Caption = 'Factory Mc Supply Station'
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 138
    Height = 13
    Caption = 'Workshop Mc Supply Station'
  end
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 89
    Height = 13
    Caption = 'Line Stationed Mc '
  end
  object Bevel4: TBevel
    Left = 24
    Top = 216
    Width = 353
    Height = 33
  end
  object Bevel5: TBevel
    Left = 24
    Top = 256
    Width = 353
    Height = 33
  end
  object xh1: TRadioButton
    Left = 32
    Top = 56
    Width = 65
    Height = 17
    Caption = 'Reserve'
    TabOrder = 0
  end
  object xh2: TRadioButton
    Left = 184
    Top = 56
    Width = 97
    Height = 17
    Caption = 'On Repairing'
    TabOrder = 1
  end
  object xh3: TRadioButton
    Left = 32
    Top = 120
    Width = 121
    Height = 17
    Caption = 'Workshop (Locked)'
    TabOrder = 2
  end
  object xh4: TRadioButton
    Left = 32
    Top = 184
    Width = 65
    Height = 17
    Caption = 'Line'
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 120
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 184
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 5
  end
  object xh5: TRadioButton
    Left = 32
    Top = 264
    Width = 97
    Height = 17
    Caption = 'Dead Mc '
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Confirm'
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 304
    Width = 73
    Height = 25
    TabOrder = 8
    Kind = bkClose
  end
  object xh6: TRadioButton
    Left = 32
    Top = 224
    Width = 97
    Height = 17
    Caption = 'Training Class'
    TabOrder = 9
  end
  object xh7: TRadioButton
    Left = 144
    Top = 224
    Width = 97
    Height = 17
    Caption = 'Sample Room'
    TabOrder = 10
  end
  object xh8: TRadioButton
    Left = 112
    Top = 56
    Width = 65
    Height = 17
    Caption = 'Open'
    TabOrder = 11
  end
  object xh9: TRadioButton
    Left = 288
    Top = 56
    Width = 81
    Height = 17
    Caption = 'BN Support'
    TabOrder = 12
  end
end
