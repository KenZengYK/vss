object frmftydefault_ref: Tfrmftydefault_ref
  Left = 448
  Top = 235
  Caption = 'Factory Loading - Reference Period'
  ClientHeight = 207
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
    Top = 56
    Width = 47
    Height = 13
    Caption = 'Customer '
  end
  object Label2: TLabel
    Left = 192
    Top = 56
    Width = 65
    Height = 13
    Caption = 'Product Code'
  end
  object Label5: TLabel
    Left = 32
    Top = 24
    Width = 26
    Height = 13
    Caption = 'Line  '
  end
  object DBText1: TDBText
    Left = 88
    Top = 24
    Width = 89
    Height = 17
    DataField = 'PLINE'
    DataSource = frmftydefault.DataSource1
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 56
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object ComboBox2: TComboBox
    Left = 264
    Top = 56
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 88
    Width = 297
    Height = 49
    Caption = 'Reference Period'
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 26
      Height = 13
      Caption = 'From '
    end
    object Label4: TLabel
      Left = 168
      Top = 16
      Width = 16
      Height = 13
      Caption = 'To '
    end
    object DateEdit1: TDateEdit
      Left = 40
      Top = 16
      Width = 105
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 184
      Top = 16
      Width = 105
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 152
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
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 112
    Top = 152
  end
end
