object frmsewflow1: Tfrmsewflow1
  Left = 0
  Top = 0
  Caption = 'QN/SQN Dynamic Process'
  ClientHeight = 210
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 77
    Width = 26
    Height = 13
    Caption = 'Date '
  end
  object Label2: TLabel
    Left = 40
    Top = 111
    Width = 37
    Height = 13
    Caption = 'Sect hr '
  end
  object Label3: TLabel
    Left = 200
    Top = 8
    Width = 3
    Height = 13
    Visible = False
  end
  object xh1: TRadioButton
    Left = 40
    Top = 32
    Width = 90
    Height = 17
    Caption = 'Sewing Start '
    TabOrder = 0
  end
  object xh2: TRadioButton
    Left = 136
    Top = 32
    Width = 105
    Height = 17
    Caption = 'Sewing Finished'
    TabOrder = 1
  end
  object DateEdit1: TDateEdit
    Left = 80
    Top = 77
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object Edit1: TCurrencyEdit
    Left = 80
    Top = 111
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    AutoSize = False
    DisplayFormat = '0.0'
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 157
    Width = 81
    Height = 25
    Caption = 'Submit'
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
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 120
    Top = 157
    Width = 81
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 5
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 24
    Top = 65520
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
    Top = 65520
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
    Top = 65520
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
    Top = 65520
  end
end
