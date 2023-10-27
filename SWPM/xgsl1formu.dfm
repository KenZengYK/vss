object frmxgsl1: Tfrmxgsl1
  Left = 196
  Top = 117
  Caption = 'QN Split (SQN)'
  ClientHeight = 271
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 73
    Height = 13
    Caption = 'Original QN Qty'
  end
  object SpeedButton1: TSpeedButton
    Left = 40
    Top = 168
    Width = 265
    Height = 25
    Caption = 'Size B/down Reorganize'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 232
    Top = 32
    Width = 3
    Height = 13
    Visible = False
  end
  object Label3: TLabel
    Left = 232
    Top = 24
    Width = 3
    Height = 13
    Visible = False
  end
  object Edit1: TEdit
    Left = 120
    Top = 40
    Width = 89
    Height = 21
    Color = 11795962
    ReadOnly = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 216
    Width = 97
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
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 216
    Width = 97
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object opt1: TRadioButton
    Left = 240
    Top = -16
    Width = 73
    Height = 17
    Caption = 'To Line'
    Checked = True
    TabOrder = 3
    TabStop = True
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 72
    Width = 265
    Height = 73
    Caption = 'DSQN (d)'
    TabOrder = 4
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 137
      Height = 13
      Caption = 'Line Location (Keep / Jump) '
    end
    object Label6: TLabel
      Left = 8
      Top = 40
      Width = 42
      Height = 13
      Caption = 'Quantity '
    end
    object ComboBox1: TComboBox
      Left = 168
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object SpinEdit1: TSpinEdit
      Left = 168
      Top = 43
      Width = 89
      Height = 22
      Color = 11795962
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 1
      Value = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = -64
    Width = 265
    Height = 73
    Caption = 'DSQN2 (D)'
    TabOrder = 5
    Visible = False
    object Label7: TLabel
      Left = 8
      Top = 16
      Width = 151
      Height = 13
      Caption = 'Location(Same Line/Other Line)'
    end
    object Label8: TLabel
      Left = 8
      Top = 40
      Width = 85
      Height = 13
      Caption = '2nd level Split Qty'
    end
    object ComboBox2: TComboBox
      Left = 168
      Top = 16
      Width = 89
      Height = 21
      TabOrder = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 168
      Top = 43
      Width = 89
      Height = 22
      Color = 11795962
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 1
      Value = 0
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
    Top = 8
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
    Top = 8
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
    Top = 8
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 8
  end
end
