object frmselstyle: Tfrmselstyle
  Left = 192
  Top = 110
  Width = 577
  Height = 427
  Caption = #27454#34399#26597#35426
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
    Width = 569
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 48
      Height = 13
      Caption = #23458#25142#27454#34399
    end
    object Label2: TLabel
      Left = 344
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object Edit1: TEdit
      Left = 80
      Top = 8
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 569
    Height = 319
    Align = alClient
    AllowedOperations = []
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
    OnDblClick = BitBtn1Click
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTNO'
        Footers = <>
        Title.Caption = 'PH '#27454#34399
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        Title.Caption = #23458#25142#27454#34399
        Width = 176
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 569
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = #36984#25799
      TabOrder = 0
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
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select distinct artno,cstyle from tbl_pdn_pack_opt01'
    FieldDefs = <
      item
        Name = 'ARTNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'artno'
      end
      item
        Name = 'idx2'
        Fields = 'cstyle'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 296
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 328
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ARTNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 360
  end
  object Query3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ARTNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 392
  end
end
