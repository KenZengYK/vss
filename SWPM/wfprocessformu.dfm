object frmwfprocess: Tfrmwfprocess
  Left = 192
  Top = 114
  Width = 465
  Height = 347
  Caption = 'Alteration'
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
    Left = 32
    Top = 232
    Width = 54
    Height = 13
    Caption = 'Transfer to '
  end
  object Label2: TLabel
    Left = 184
    Top = 8
    Width = 3
    Height = 13
    Visible = False
  end
  object Label3: TLabel
    Left = 32
    Top = 16
    Width = 34
    Height = 13
    Caption = 'WF ID '
  end
  object DBText1: TDBText
    Left = 72
    Top = 16
    Width = 89
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 176
    Top = 16
    Width = 51
    Height = 13
    Caption = 'WF Name '
  end
  object DBText2: TDBText
    Left = 240
    Top = 16
    Width = 105
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBMemo1: TDBMemo
    Left = 32
    Top = 48
    Width = 393
    Height = 169
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 256
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 1
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
    Left = 104
    Top = 256
    Width = 73
    Height = 25
    TabOrder = 2
    Kind = bkClose
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 232
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 3
    OnChange = ComboBox1Change
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 192
    Top = 256
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 256
  end
end
