object frmlockcfks: Tfrmlockcfks
  Left = 0
  Top = 0
  Caption = 'Lock Sewing Start dd - AL Ws'
  ClientHeight = 153
  ClientWidth = 313
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
    Left = 32
    Top = 24
    Width = 82
    Height = 13
    Caption = 'Sewing Start dd  '
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 53
    Height = 13
    Caption = 'Sect time   '
  end
  object Label3: TLabel
    Left = 21
    Top = 127
    Width = 284
    Height = 13
    Caption = 'After locked the sewing start dd, need to do re-scheduling!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBDateEdit1: TDBDateEdit
    Left = 121
    Top = 24
    Width = 112
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'CFKSRQ'
    DataSource = worksheet1.DataSource1
    NumGlyphs = 2
    TabOrder = 0
  end
  object RzDBNumericEdit1: TRzDBNumericEdit
    Left = 121
    Top = 56
    Width = 56
    Height = 21
    DataSource = worksheet1.DataSource1
    DataField = 'CFKSJS'
    Alignment = taLeftJustify
    TabOrder = 1
    DisplayFormat = '0.0'
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 96
    Width = 81
    Height = 25
    Caption = 'Confirm'
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
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 176
    Top = 328
  end
end
