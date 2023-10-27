object frmprojsah: Tfrmprojsah
  Left = 191
  Top = 114
  Width = 561
  Height = 473
  Caption = 'Actual SAH/Eff%'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Line '
    end
    object ComboBox1: TComboBox
      Left = 56
      Top = 8
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 553
    Height = 357
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DT1'
        Footers = <>
        Title.Caption = 'Actual Date Range|From'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'DT2'
        Footers = <>
        Title.Caption = 'Actual Date Range|To'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'PTYP'
        Footers = <>
        Title.Caption = 'Prod Code'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        Title.Caption = 'Cust Code'
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'WF'
        Footers = <>
        Width = 65
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        Title.Caption = 'Quantity'
        Width = 65
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'SAH1'
        Footers = <>
        Title.Caption = 'SAH'
        Width = 67
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'EFF'
        Footers = <>
        Title.Caption = 'Actual Eff%'
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 398
    Width = 553
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from line_capacity1'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT1'
        DataType = ftDate
      end
      item
        Name = 'DT2'
        DataType = ftDate
      end
      item
        Name = 'PTYP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SAH1'
        DataType = ftFloat
      end
      item
        Name = 'QTY'
        DataType = ftFloat
      end
      item
        Name = 'PTYP1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WF'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 176
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 240
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 8
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 304
    Top = 8
  end
end
