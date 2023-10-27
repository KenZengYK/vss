object frmie_iews: Tfrmie_iews
  Left = 192
  Top = 114
  Width = 417
  Height = 299
  Caption = #29983#29986#24037#22580#36984#25799
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
    Width = 361
    Height = 169
    AllowedOperations = []
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
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
        FieldName = 'zb'
        Footers = <>
        Title.Caption = #29983#29986#24037#22580'|'#20195#34399
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'zbdesc_en'
        Footers = <>
        Title.Caption = #29983#29986#24037#22580'|'#25551#36848
        Width = 291
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 216
    Width = 73
    Height = 25
    Caption = #30906#23450
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
  object BitBtn2: TBitBtn
    Left = 96
    Top = 216
    Width = 73
    Height = 25
    Caption = #36864#20986
    TabOrder = 2
    Kind = bkClose
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_zbdesc'
    FieldDefs = <
      item
        Name = 'seq'
        DataType = ftInteger
      end
      item
        Name = 'zb'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'zbdesc_en'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'zbdesc_cn'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 136
    Top = 8
  end
  object Query5: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 164
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 8
  end
end
