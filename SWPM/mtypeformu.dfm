object frmmtype: Tfrmmtype
  Left = 192
  Top = 114
  Width = 585
  Height = 408
  Caption = 'Mc Type'
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
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 24
    Width = 529
    Height = 281
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'MTYP1'
        Footers = <>
        Title.Caption = 'Mc Type|Code'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'MTYP2'
        Footers = <>
        Title.Caption = 'Mc Type|Description|English'
        Width = 137
      end
      item
        EditButtons = <>
        FieldName = 'MTYP'
        Footers = <>
        Title.Caption = 'Mc Type|Description|Chinese'
        Width = 144
      end
      item
        EditButtons = <>
        FieldName = 'MTYP3'
        Footers = <>
        Title.Caption = 'Mc Type|Description|Thai'
        Width = 117
      end>
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 320
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      2222200000000002222203300007030222220330000703000222033000000303
      0222033333333303000203300000330303020307777703030302030777770303
      0302030777770003030203077777070303020000000000000302220307777707
      0302220000000000000222220307777707022222000000000002}
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 320
    Width = 73
    Height = 25
    Caption = 'Select'
    TabOrder = 2
    OnClick = BitBtn2Click
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
  object BitBtn3: TBitBtn
    Left = 168
    Top = 320
    Width = 73
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_mctype'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MTYP'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MTYP1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MTYP2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MTYP3'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'mtyp1'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 24
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 65528
  end
end
