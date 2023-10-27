object frmmwfenq: Tfrmmwfenq
  Left = 192
  Top = 114
  Width = 449
  Height = 411
  Caption = 'Mobile Workforce Group Enquiry'
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
    Top = 24
    Width = 61
    Height = 13
    Caption = 'MWF Group '
  end
  object Edit1: TEdit
    Left = 96
    Top = 24
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 56
    Width = 377
    Height = 257
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = BitBtn1Click
    Columns = <
      item
        EditButtons = <>
        FieldName = 'PLINE'
        Footers = <>
        Title.Caption = 'MWF Group'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        Title.Caption = 'Factory'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'THEAD'
        Footers = <>
        Title.Caption = 'Group Leader'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CRDT'
        Footers = <>
        Title.Caption = 'Creation Date'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'WORKERT'
        Footers = <>
        Title.Caption = 'WF Qty'
        Width = 63
      end>
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 328
    Width = 73
    Height = 25
    Caption = 'OK'
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
    Left = 104
    Top = 328
    Width = 73
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblmwf'
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'THEAD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CRDT'
        DataType = ftDate
      end
      item
        Name = 'WORKERT'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 248
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 16
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 312
    Top = 16
  end
end
