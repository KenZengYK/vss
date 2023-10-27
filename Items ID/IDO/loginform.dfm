object frmlogin: Tfrmlogin
  Left = 212
  Top = 107
  Width = 289
  Height = 252
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 64
    Top = 40
    Width = 30
    Height = 16
    Caption = #29992#25142
  end
  object Label2: TLabel
    Left = 64
    Top = 96
    Width = 30
    Height = 16
    Caption = #23494#30908
  end
  object Edit1: TEdit
    Left = 96
    Top = 40
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 96
    Top = 96
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = Edit2KeyDown
    OnKeyPress = Edit2KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 152
    Width = 73
    Height = 33
    Caption = #30906#23450
    ModalResult = 1
    TabOrder = 2
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
    Left = 160
    Top = 152
    Width = 73
    Height = 33
    Caption = #36864#20986
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object SocketConnection1: TSocketConnection
    ServerName = 'AppServer_Test.ccn_testsvr'
    Address = '10.2.1.30'
    Left = 16
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = SocketConnection1
    Left = 50
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 16
    object AddUsers1: TMenuItem
      Caption = 'Add Users'
      ShortCut = 113
      Visible = False
      OnClick = AddUsers1Click
    end
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = SocketConnection1
    Left = 50
    Top = 8
  end
  object SocketConnection2: TSocketConnection
    ServerName = 'pkserver.Myserver'
    Address = '10.2.1.30'
    Left = 16
    Top = 56
  end
  object SocketConnection3: TSocketConnection
    ServerName = 'schedule_svr.clsschedule'
    Address = '10.2.1.30'
    Left = 16
    Top = 112
  end
end
