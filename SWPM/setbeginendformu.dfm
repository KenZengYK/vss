object frmsetbeginend: Tfrmsetbeginend
  Left = 192
  Top = 114
  Caption = 'Start / End'
  ClientHeight = 143
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 101
    Height = 13
    Caption = 'Start Date / Sect Hr  '
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 98
    Height = 13
    Caption = 'End Date / Sect Hr  '
  end
  object DateEdit1: TDateEdit
    Left = 136
    Top = 24
    Width = 105
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 136
    Top = 56
    Width = 105
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 96
    Width = 73
    Height = 25
    Caption = 'OK'
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 96
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 5
  end
  object cxEdit1: TcxCurrencyEdit
    Left = 248
    Top = 24
    Properties.DisplayFormat = '0.0'
    Properties.NullString = '0.0'
    Style.BorderStyle = ebs3D
    TabOrder = 1
    Width = 49
  end
  object cxEdit2: TcxCurrencyEdit
    Left = 248
    Top = 56
    Properties.DisplayFormat = '0.0'
    Properties.NullString = '0.0'
    Style.BorderStyle = ebs3D
    TabOrder = 3
    Width = 49
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_plc'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 40
  end
end
