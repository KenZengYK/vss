object frmpackplan_selpdn: Tfrmpackplan_selpdn
  Left = 192
  Top = 114
  Width = 545
  Height = 395
  Caption = 'PDN Selection'
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
  object Label2: TLabel
    Left = 32
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label3: TLabel
    Left = 176
    Top = 32
    Width = 25
    Height = 13
    Caption = 'Year '
  end
  object Label4: TLabel
    Left = 288
    Top = 32
    Width = 29
    Height = 13
    Caption = 'Week'
  end
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 64
    Width = 473
    Height = 225
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        Title.Caption = 'Factory'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'PDN'
        Footers = <>
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'SEQ1'
        Footers = <>
        Title.Caption = 'Manifest #'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'EXFTY'
        Footers = <>
        Title.Caption = 'Ex-fty Date'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'WK'
        Footers = <>
        Title.Caption = 'Week'
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'STT'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 131
      end>
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 1
    Text = 'SL'
    OnChange = ComboBox1Change
    Items.Strings = (
      'SL'
      'KB')
  end
  object yEdit1: TSpinEdit
    Left = 200
    Top = 32
    Width = 57
    Height = 22
    MaxValue = 2020
    MinValue = 2007
    TabOrder = 2
    Value = 2007
    OnChange = ComboBox1Change
  end
  object wEdit1: TSpinEdit
    Left = 320
    Top = 32
    Width = 49
    Height = 22
    MaxValue = 53
    MinValue = 1
    TabOrder = 3
    Value = 32
    OnChange = ComboBox1Change
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Select'
    TabOrder = 4
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
    Top = 304
    Width = 73
    Height = 25
    TabOrder = 5
    Kind = bkClose
  end
  object xh1: TCheckBox
    Left = 216
    Top = 304
    Width = 97
    Height = 17
    Caption = 'Select All PDN'
    TabOrder = 6
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_voyage_m'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MARKS1'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ACTDT'
        DataType = ftDate
      end
      item
        Name = 'ACTTM'
        DataType = ftTime
      end
      item
        Name = 'STT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'VOYN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SHPM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXTM'
        DataType = ftTime
      end
      item
        Name = 'VER'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRUCK'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INDT'
        DataType = ftDate
      end
      item
        Name = 'INTM'
        DataType = ftTime
      end
      item
        Name = 'ONDT'
        DataType = ftDate
      end
      item
        Name = 'VESS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'LPORT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DEST'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'BOX'
        DataType = ftInteger
      end
      item
        Name = 'WGHT'
        DataType = ftFloat
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'MEMO1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RAIR'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'PS_CHANGE'
        DataType = ftMemo
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 136
    Top = 65528
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 72
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 104
    Top = 65528
  end
end
