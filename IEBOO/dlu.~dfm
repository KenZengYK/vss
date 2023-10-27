object frmxtdl: Tfrmxtdl
  Left = 271
  Top = 145
  Width = 268
  Height = 227
  BorderIcons = [biSystemMenu]
  Caption = #31995#32113#30331#24404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 52
    Height = 16
    Caption = #29992#25142#21517':'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 52
    Height = 16
    Caption = #23494'    '#30908':'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 24
    CharCase = ecLowerCase
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 24
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 0
    OnKeyPress = ComboBox1KeyPress
  end
  object Button1: TButton
    Left = 32
    Top = 104
    Width = 65
    Height = 25
    Caption = #30906#23450
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 104
    Width = 65
    Height = 25
    Caption = #21462#28040
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 26
    Top = -16
    Width = 186
    Height = 21
    Date = 37939.739645544000000000
    Time = 37939.739645544000000000
    TabOrder = 4
    Visible = False
  end
  object ComboBox2: TComboBox
    Left = 32
    Top = 144
    Width = 185
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = #20013#25991
    OnChange = ComboBox2Change
    Items.Strings = (
      #20013#25991
      'ENGLISH')
  end
  object SocketConnection1: TSocketConnection
    ServerName = 'IETMUSERVER.ccn_ietmu'
    Address = '10.2.1.242'
    Left = 72
    Top = 8
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = SocketConnection1
    Left = 240
    Top = 16
  end
  object query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = SocketConnection1
    Left = 8
    Top = 8
  end
  object query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = SocketConnection1
    Left = 232
    Top = 72
  end
  object SocketConnection2: TSocketConnection
    ServerName = 'PS_Server.ccn_psib'
    Address = '10.2.1.7'
    Left = 104
    Top = 8
  end
end
