object frmlbxh: Tfrmlbxh
  Left = 359
  Top = 231
  Width = 697
  Height = 513
  Caption = 'LB'#36039#26009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 689
    Height = 438
    ActivePage = TabSheet10
    Align = alClient
    Style = tsButtons
    TabIndex = 9
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #26410#20998#39006
      object DBGridEh1: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #33394'/'#30908#29544#31435
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #20013#26222
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #20013#22823
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #28154#26222
      ImageIndex = 4
      object DBGridEh5: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = #28154#22823
      ImageIndex = 5
      object DBGridEh6: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = #20013#33394
      ImageIndex = 6
      object DBGridEh7: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = #28154#33394
      ImageIndex = 7
      object DBGridEh8: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = #26222#30908
      ImageIndex = 8
      object DBGridEh9: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
    object TabSheet10: TTabSheet
      Caption = #22823#30908
      ImageIndex = 9
      object DBGridEh10: TDBGridEh
        Left = 16
        Top = 16
        Width = 425
        Height = 241
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = DataSource1
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
            FieldName = 'OPT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20998#39006
            Width = 72
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'zsah'
            Footers = <>
            Title.Caption = #32317'SAH'
            Width = 66
          end
          item
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'bsah'
            Footers = <>
            Title.Caption = #29942#38968'SAH'
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'zrs'
            Footers = <>
            Title.Caption = #21214#21205#21147
            Width = 51
          end
          item
            DisplayFormat = '#0'
            EditButtons = <>
            FieldName = 'wsta'
            Footers = <>
            Title.Caption = #24037#20316#20301
            Width = 57
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #24179#34913#29575
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 438
    Width = 689
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = #20445#23384
      TabOrder = 0
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
      Top = 8
      Width = 73
      Height = 25
      Caption = #36864#20986
      TabOrder = 1
      Kind = bkClose
    end
  end
  object ie_lb: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_lb'
    FieldDefs = <
      item
        Name = 'KH'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'seq'
        DataType = ftInteger
      end
      item
        Name = 'xh'
        DataType = ftInteger
      end
      item
        Name = 'vtype'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'OPT'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'zsah'
        DataType = ftFloat
      end
      item
        Name = 'bsah'
        DataType = ftFloat
      end
      item
        Name = 'zrs'
        DataType = ftFloat
      end
      item
        Name = 'wsta'
        DataType = ftFloat
      end
      item
        Name = 'LB'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'zygxIndex1'
        Fields = 'seq'
      end
      item
        Name = 'zygxIndex2'
        Fields = 'dzxxfx'
      end>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    AfterPost = ie_lbAfterPost
    Left = 16
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ie_lb
    Left = 44
    Top = 8
  end
  object Query1: TClientDataSet
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
    Left = 72
    Top = 8
  end
  object Query2: TClientDataSet
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
    Left = 100
    Top = 8
  end
  object Query3: TClientDataSet
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
    Left = 128
    Top = 8
  end
end
