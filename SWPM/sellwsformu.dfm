object frmsellws: Tfrmsellws
  Left = 192
  Top = 114
  Caption = 'QN/SQN Dynamic Process at workshop Select'
  ClientHeight = 311
  ClientWidth = 353
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = -16
    Width = 63
    Height = 13
    Caption = 'LWs Process'
    Visible = False
  end
  object Label2: TLabel
    Left = 32
    Top = 200
    Width = 23
    Height = 13
    Caption = 'Date'
  end
  object Label3: TLabel
    Left = 32
    Top = 232
    Width = 48
    Height = 13
    Caption = 'Sect Time'
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = -16
    Width = 65
    Height = 21
    TabOrder = 0
    Text = #8730
    Visible = False
    Items.Strings = (
      'w'
      'x'
      #8730)
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 264
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
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DateEdit1: TDateEdit
    Left = 112
    Top = 200
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object Edit1: TCurrencyEdit
    Left = 112
    Top = 232
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    DisplayFormat = '0.0'
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 24
    Width = 297
    Height = 169
    Caption = 'QN Dynamic Process at workshop'
    TabOrder = 4
    object xh1: TRadioButton
      Left = 32
      Top = 16
      Width = 65
      Height = 17
      Caption = 'Active'
      TabOrder = 0
      OnClick = xh1Click
    end
    object xh3: TRadioButton
      Left = 32
      Top = 120
      Width = 89
      Height = 17
      Caption = 'Re-Active'
      TabOrder = 1
      OnClick = xh3Click
    end
    object xh4: TRadioButton
      Left = 32
      Top = 144
      Width = 113
      Height = 17
      Caption = 'Complete'
      TabOrder = 2
      OnClick = xh4Click
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 32
      Width = 265
      Height = 81
      TabOrder = 3
      object Label4: TLabel
        Left = 72
        Top = 16
        Width = 64
        Height = 13
        Caption = 'Split Location'
      end
      object xh2: TRadioGroup
        Left = 8
        Top = 8
        Width = 57
        Height = 33
        Ctl3D = False
        Items.Strings = (
          'Halt')
        ParentCtl3D = False
        TabOrder = 0
        OnClick = xh2Click
      end
      object ComboBox2: TComboBox
        Left = 144
        Top = 16
        Width = 113
        Height = 21
        TabOrder = 1
        Text = 'Sewn'
        Items.Strings = (
          'Picked'
          'T1'
          'Sewn'
          'cPacked')
      end
      object BitBtn2: TBitBtn
        Left = 8
        Top = 48
        Width = 249
        Height = 25
        Caption = 'Instruction/Reason (Halt)'
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BitBtn2Click
      end
    end
    object ComboBox3: TComboBox
      Left = 104
      Top = 16
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 4
      Text = 'First Group'
      Items.Strings = (
        'First Group'
        'Last Group')
    end
    object ComboBox4: TComboBox
      Left = 104
      Top = 120
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 5
      Text = 'First Group'
      Items.Strings = (
        'First Group'
        'Last Group')
    end
  end
  object BitBtn3: TBitBtn
    Left = 112
    Top = 264
    Width = 81
    Height = 25
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
    Left = 32
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 64
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 96
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 128
  end
end
