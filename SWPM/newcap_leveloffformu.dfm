object frmnewcap_leveloff: Tfrmnewcap_leveloff
  Left = 274
  Top = 208
  Caption = 'Level off Del Qty of Sale Proj by Week'
  ClientHeight = 639
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 153
    Top = 57
    Width = 2
    Height = 541
    ExplicitHeight = 543
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Factory '
    end
    object Label2: TLabel
      Left = 152
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Year '
    end
    object Label3: TLabel
      Left = 288
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Month '
    end
    object Label4: TLabel
      Left = 384
      Top = 8
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 24
      Top = 32
      Width = 142
      Height = 13
      Caption = 'Calculation backward Start on'
    end
    object Label6: TLabel
      Left = 304
      Top = 32
      Width = 15
      Height = 13
      Caption = 'for '
    end
    object Label7: TLabel
      Left = 400
      Top = 32
      Width = 34
      Height = 13
      Caption = 'months'
    end
    object lblmn01: TLabel
      Left = 328
      Top = 8
      Width = 33
      Height = 13
      AutoSize = False
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 0
      Text = 'SL'
      Items.Strings = (
        'SL'
        'CL')
    end
    object SpinEdit1: TSpinEdit
      Left = 184
      Top = 8
      Width = 57
      Height = 22
      Enabled = False
      MaxValue = 2030
      MinValue = 2008
      TabOrder = 1
      Value = 2008
    end
    object DateEdit1: TDateEdit
      Left = 168
      Top = 32
      Width = 121
      Height = 21
      Enabled = False
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 328
      Top = 32
      Width = 57
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 57
    Width = 153
    Height = 541
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    Indent = 19
    ReadOnly = True
    SortType = stText
    TabOrder = 1
    OnChange = TreeView1Change
  end
  object DBGridEh1: TDBGridEh
    Left = 155
    Top = 57
    Width = 774
    Height = 541
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 4
    FrozenCols = 4
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        Title.Caption = 'Cust'#39's Proj Code'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'SDESC'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            Value = '(Excl. Level off)'
            ValueType = fvtStaticText
          end>
        Title.Caption = 'Cust Style'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footers = <
          item
            Value = 'B'
            ValueType = fvtStaticText
          end
          item
            Value = 'K'
            ValueType = fvtStaticText
          end
          item
            Value = 'U'
            ValueType = fvtStaticText
          end
          item
            Value = 'TTL'
            ValueType = fvtStaticText
          end>
        Title.Caption = 'Product Code'
        Width = 46
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'WOFF'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Title.Caption = 'Month Total Qty'
        Width = 50
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W1'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Width = 70
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W2'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Width = 70
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W3'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Width = 70
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W4'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Width = 70
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W5'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Width = 70
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'W6'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Width = 70
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'BAL1'
        Footers = <>
        Title.Caption = 'Balance'
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'WTTL'
        Footer.DisplayFormat = '#0'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        Title.Caption = 'Month Total Qty'
        Visible = False
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 598
    Width = 929
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Label8: TLabel
      Left = 576
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Split Qty for FJ '
      Visible = False
    end
    object Label9: TLabel
      Left = 760
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Split Qty for FJ '
      Visible = False
    end
    object Label10: TLabel
      Left = 688
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Split Qty for FJ '
      Visible = False
    end
    object Label11: TLabel
      Left = 760
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Split Qty for FJ '
      Visible = False
    end
    object Label12: TLabel
      Left = 832
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Split Qty for FJ '
      Visible = False
    end
    object Label13: TLabel
      Left = 760
      Top = 24
      Width = 71
      Height = 13
      Caption = 'Split Qty for FJ '
      Visible = False
    end
    object Label14: TLabel
      Left = 688
      Top = 24
      Width = 71
      Height = 13
      Caption = 'Split Qty for FJ '
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 616
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Proceed Level off'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      Visible = False
      OnClick = BitBtn1Click
    end
    object BitBtn5: TBitBtn
      Left = 456
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      Visible = False
    end
    object BitBtn2: TBitBtn
      Left = 528
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Split for FJ'
      DoubleBuffered = True
      Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC00000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888355844444444444444888888F3A8488888888888848888880228487
        7777777888488888899984877777778888488888822284878888888888488D88
        8000848807070788884885D888B184807070707088488D5D8200848707070707
        D5D5D5D5D00084807070707088488D5D8000848888888888884885D880008487
        7777777888488D88800084877777778888488888800084877777778888488888
        8303848888888888884888888606848777778884444888888D0D848777777884
        748888888B0B8488888888844888888880638444444444448888888884A78888
        8888888888888888814788888888888888888888843F}
      ParentDoubleBuffered = False
      TabOrder = 2
      Visible = False
    end
    object BitBtn3: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'New'
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object DBEdit1: TDBEdit
      Left = 648
      Top = 8
      Width = 105
      Height = 21
      DataSource = DataSource1
      TabOrder = 4
      Visible = False
    end
    object BitBtn4: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Edit'
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
      TabOrder = 5
      OnClick = BitBtn4Click
    end
    object BitBtn8: TBitBtn
      Left = 168
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Review'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 240
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 7
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_proj_leveloff'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'M1'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SDESC'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'W1'
        DataType = ftInteger
      end
      item
        Name = 'W2'
        DataType = ftInteger
      end
      item
        Name = 'W3'
        DataType = ftInteger
      end
      item
        Name = 'W4'
        DataType = ftInteger
      end
      item
        Name = 'W5'
        DataType = ftInteger
      end
      item
        Name = 'W6'
        DataType = ftInteger
      end
      item
        Name = 'GRP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WTTL'
        DataType = ftInteger
      end
      item
        Name = 'WOFF'
        DataType = ftFloat
      end
      item
        Name = 'BAL1'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;grp;cust;flag6;seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 160
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Query1
    OnStateChange = DataSource1StateChange
    Left = 192
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 256
    Top = 104
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 288
    Top = 104
    Version = '11.07'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 78052
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Planning - Ratio by Week '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 60590
        mmTop = 10583
        mmWidth = 66940
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5821
        mmTop = 21696
        mmWidth = 7673
        BandType = 0
      end
      object yr01: TppLabel
        UserName = 'yr01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2011 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 21696
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Month: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 21696
        mmWidth = 9525
        BandType = 0
      end
      object mn01: TppLabel
        UserName = 'mn01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 44715
        mmTop = 21696
        mmWidth = 2381
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 37306
        mmLeft = 5556
        mmTop = 31750
        mmWidth = 185473
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 38894
        mmWidth = 185473
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 44715
        mmWidth = 185473
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 46831
        mmWidth = 185473
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 52388
        mmWidth = 185473
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 60061
        mmWidth = 185473
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 62177
        mmWidth = 185473
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 54240
        mmWidth = 185473
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 9525
        mmTop = 33867
        mmWidth = 10319
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 23283
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 49477
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 73025
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SL/FJ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 9525
        mmTop = 40217
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SL/FJ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 9525
        mmTop = 48154
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Capacity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 40217
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sales Projection  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 24871
        mmTop = 48154
        mmWidth = 22140
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KB  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 9525
        mmTop = 55563
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KB  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 9525
        mmTop = 63500
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sales Projection  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 63500
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Capacity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 55563
        mmWidth = 22754
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 96573
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 120121
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 143669
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 37306
        mmLeft = 168011
        mmTop = 31750
        mmWidth = 2910
        BandType = 0
      end
      object w001: TppLabel
        UserName = 'w001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 53446
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object w002: TppLabel
        UserName = 'w002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object w003: TppLabel
        UserName = 'w003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object w004: TppLabel
        UserName = 'w004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object w005: TppLabel
        UserName = 'w005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 148167
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 33867
        mmWidth = 15875
        BandType = 0
      end
      object s001: TppLabel
        UserName = 's001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 53446
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s002: TppLabel
        UserName = 's002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s003: TppLabel
        UserName = 's003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s004: TppLabel
        UserName = 's004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s005: TppLabel
        UserName = 's005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 148167
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '100.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object s006: TppLabel
        UserName = 's006'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 53446
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object s007: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object s008: TppLabel
        UserName = 's008'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object s009: TppLabel
        UserName = 's009'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object s010: TppLabel
        UserName = 's010'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 148167
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '100.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 48154
        mmWidth = 15875
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 36248
        mmTop = 3704
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
end
