object frmnewcap_simfty1: Tfrmnewcap_simfty1
  Left = 192
  Top = 114
  Caption = 'Resources Setup (@month)'
  ClientHeight = 167
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 88
    Width = 68
    Height = 13
    Caption = 'Setup Option  '
  end
  object Label2: TLabel
    Left = 144
    Top = 56
    Width = 18
    Height = 13
    Caption = 'For '
  end
  object Label3: TLabel
    Left = 32
    Top = 24
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label4: TLabel
    Left = 232
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Month '
  end
  object Label5: TLabel
    Left = 40
    Top = 56
    Width = 25
    Height = 13
    Caption = 'Year '
  end
  object Edit1: TEdit
    Left = 128
    Top = 88
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 120
    Width = 73
    Height = 25
    Caption = 'OK'
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
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 120
    Width = 73
    Height = 25
    Caption = 'Exit'
    Kind = bkClose
    TabOrder = 5
  end
  object SpinEdit1: TSpinEdit
    Left = 168
    Top = 56
    Width = 57
    Height = 22
    MaxValue = 12
    MinValue = 1
    TabOrder = 2
    Value = 1
    OnChange = SpinEdit1Change
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 24
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    Text = 'SL'
    Items.Strings = (
      'SL'
      'RX'
      'CL')
  end
  object SpinEdit2: TSpinEdit
    Left = 72
    Top = 56
    Width = 57
    Height = 22
    MaxValue = 2030
    MinValue = 2011
    TabOrder = 1
    Value = 2011
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 8
    Top = 65528
  end
end
