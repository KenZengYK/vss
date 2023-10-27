object frmcpyinv: Tfrmcpyinv
  Left = 192
  Top = 114
  Width = 609
  Height = 419
  Caption = 'Copy from Invoice #'
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
    Left = 264
    Top = 248
    Width = 3
    Height = 13
    Visible = False
  end
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 24
    Width = 553
    Height = 297
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
        FieldName = 'CUST'
        Footers = <>
        Title.Caption = 'Cust'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'INV'
        Footers = <>
        Title.Caption = 'Invoice #'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'PAYTERM'
        Footers = <>
        Title.Caption = 'Payment Term'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'INCOTERM'
        Footers = <>
        Title.Caption = 'Incoterm'
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'COUNTRY'
        Footers = <>
        Title.Caption = 'Contry of Origin'
      end
      item
        EditButtons = <>
        FieldName = 'SHPM'
        Footers = <>
        Title.Caption = 'Ship mode'
      end
      item
        EditButtons = <>
        FieldName = 'VESSEL'
        Footers = <>
        Title.Caption = 'Name of vessel'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'LPORT'
        Footers = <>
        Title.Caption = 'Port of loading'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'DPORT'
        Footers = <>
        Title.Caption = 'Port of discharge'
        Width = 91
      end>
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 336
    Width = 73
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
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
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_inv'
    FieldDefs = <
      item
        Name = 'INV'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INVDT'
        DataType = ftDate
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ADDR'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'MEMO1'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'PAYTERM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'INCOTERM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COUNTRY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SHPM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VESSEL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DEPARTDT'
        DataType = ftDate
      end
      item
        Name = 'LPORT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DPORT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INVMARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'SHPNO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 88
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 120
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 160
  end
end
