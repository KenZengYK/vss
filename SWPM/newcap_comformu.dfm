object frmnewcap_com: Tfrmnewcap_com
  Left = 192
  Top = 114
  Caption = 'Capacity Planning - Comparison Reports'
  ClientHeight = 333
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label2: TLabel
    Left = 160
    Top = 32
    Width = 25
    Height = 13
    Caption = 'Year '
  end
  object Label4: TLabel
    Left = 168
    Top = 96
    Width = 12
    Height = 13
    Caption = 'to '
  end
  object Label3: TLabel
    Left = 168
    Top = 128
    Width = 12
    Height = 13
    Caption = 'to '
  end
  object Label5: TLabel
    Left = 24
    Top = 64
    Width = 30
    Height = 13
    Caption = 'Team '
  end
  object Label6: TLabel
    Left = 320
    Top = 32
    Width = 3
    Height = 13
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 32
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    Text = 'SL'
    Items.Strings = (
      'SL'
      'KB'
      'FJ')
  end
  object SpinEdit1: TSpinEdit
    Left = 200
    Top = 32
    Width = 57
    Height = 22
    MaxValue = 2020
    MinValue = 2008
    TabOrder = 1
    Value = 2008
  end
  object SpinEdit2: TSpinEdit
    Left = 112
    Top = 96
    Width = 49
    Height = 22
    MaxValue = 53
    MinValue = 1
    TabOrder = 4
    Value = 1
    OnChange = SpinEdit2Change
  end
  object SpinEdit3: TSpinEdit
    Left = 184
    Top = 96
    Width = 49
    Height = 22
    MaxValue = 53
    MinValue = 1
    TabOrder = 5
    Value = 53
    OnChange = SpinEdit2Change
  end
  object xh1: TRadioGroup
    Left = 24
    Top = 160
    Width = 361
    Height = 41
    Caption = 'Format'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Comparison 1'
      'Comparison 2'
      'Comparison 3')
    TabOrder = 9
    OnClick = xh1Click
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 216
    Width = 129
    Height = 25
    Caption = 'Customer dependent'
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
    TabOrder = 10
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 280
    Width = 161
    Height = 25
    Caption = 'Customer'#39's Sequence'
    DoubleBuffered = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777447777777777777777477777777777777477700000000077444777777777
      7777777777777777777744477777777777777477777777777777774770000000
      0077447777777777777777777777777777774447777777777777747777777777
      7777447770000000007774777777777777777777777777777777}
    ParentDoubleBuffered = False
    TabOrder = 11
    OnClick = BitBtn2Click
  end
  object opt1: TRadioButton
    Left = 24
    Top = 96
    Width = 81
    Height = 17
    Caption = 'Week from '
    Checked = True
    TabOrder = 3
    TabStop = True
  end
  object SpinEdit4: TSpinEdit
    Left = 112
    Top = 128
    Width = 49
    Height = 22
    MaxValue = 12
    MinValue = 1
    TabOrder = 7
    Value = 1
    OnChange = SpinEdit4Change
  end
  object SpinEdit5: TSpinEdit
    Left = 184
    Top = 128
    Width = 49
    Height = 22
    MaxValue = 12
    MinValue = 1
    TabOrder = 8
    Value = 12
    OnChange = SpinEdit4Change
  end
  object opt2: TRadioButton
    Left = 24
    Top = 128
    Width = 81
    Height = 17
    Caption = 'Month from '
    TabOrder = 6
  end
  object BitBtn3: TBitBtn
    Left = 152
    Top = 216
    Width = 113
    Height = 25
    Caption = 'Team dependent'
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
    TabOrder = 12
    OnClick = BitBtn3Click
  end
  object ComboBox2: TComboBox
    Left = 64
    Top = 64
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object chk1: TCheckBox
    Left = 256
    Top = 112
    Width = 97
    Height = 17
    Caption = 'Hide subgroup'
    TabOrder = 13
    Visible = False
  end
  object chk2: TCheckBox
    Left = 152
    Top = 64
    Width = 105
    Height = 17
    Caption = 'Team dependent'
    Checked = True
    State = cbChecked
    TabOrder = 14
    Visible = False
  end
  object BitBtn4: TBitBtn
    Left = 184
    Top = 280
    Width = 81
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 15
  end
  object BitBtn5: TBitBtn
    Left = 24
    Top = 248
    Width = 361
    Height = 25
    Caption = 'Tracking SO issue and WO cfmd processing performance'
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
    TabOrder = 16
    OnClick = BitBtn5Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 224
    Top = -16
    Width = 186
    Height = 21
    Date = 39959.748229525500000000
    Time = 39959.748229525500000000
    TabOrder = 17
    Visible = False
  end
  object BitBtn6: TBitBtn
    Left = 264
    Top = 216
    Width = 121
    Height = 25
    Caption = 'Factory dependent'
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
    TabOrder = 18
    OnClick = BitBtn6Click
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftFloat
      end
      item
        Name = 'K01'
        DataType = ftFloat
      end
      item
        Name = 'U01'
        DataType = ftFloat
      end
      item
        Name = 'T01'
        DataType = ftFloat
      end
      item
        Name = 'B02'
        DataType = ftFloat
      end
      item
        Name = 'K02'
        DataType = ftFloat
      end
      item
        Name = 'U02'
        DataType = ftFloat
      end
      item
        Name = 'T02'
        DataType = ftFloat
      end
      item
        Name = 'B03'
        DataType = ftFloat
      end
      item
        Name = 'K03'
        DataType = ftFloat
      end
      item
        Name = 'U03'
        DataType = ftFloat
      end
      item
        Name = 'T03'
        DataType = ftFloat
      end
      item
        Name = 'B04'
        DataType = ftFloat
      end
      item
        Name = 'K04'
        DataType = ftFloat
      end
      item
        Name = 'U04'
        DataType = ftFloat
      end
      item
        Name = 'T04'
        DataType = ftFloat
      end
      item
        Name = 'B05'
        DataType = ftFloat
      end
      item
        Name = 'K05'
        DataType = ftFloat
      end
      item
        Name = 'U05'
        DataType = ftFloat
      end
      item
        Name = 'T05'
        DataType = ftFloat
      end
      item
        Name = 'B06'
        DataType = ftFloat
      end
      item
        Name = 'K06'
        DataType = ftFloat
      end
      item
        Name = 'U06'
        DataType = ftFloat
      end
      item
        Name = 'T06'
        DataType = ftFloat
      end
      item
        Name = 'B07'
        DataType = ftFloat
      end
      item
        Name = 'K07'
        DataType = ftFloat
      end
      item
        Name = 'U07'
        DataType = ftFloat
      end
      item
        Name = 'T07'
        DataType = ftFloat
      end
      item
        Name = 'B08'
        DataType = ftFloat
      end
      item
        Name = 'K08'
        DataType = ftFloat
      end
      item
        Name = 'U08'
        DataType = ftFloat
      end
      item
        Name = 'T08'
        DataType = ftFloat
      end
      item
        Name = 'B09'
        DataType = ftFloat
      end
      item
        Name = 'K09'
        DataType = ftFloat
      end
      item
        Name = 'U09'
        DataType = ftFloat
      end
      item
        Name = 'T09'
        DataType = ftFloat
      end
      item
        Name = 'B10'
        DataType = ftFloat
      end
      item
        Name = 'K10'
        DataType = ftFloat
      end
      item
        Name = 'U10'
        DataType = ftFloat
      end
      item
        Name = 'T10'
        DataType = ftFloat
      end
      item
        Name = 'B11'
        DataType = ftFloat
      end
      item
        Name = 'K11'
        DataType = ftFloat
      end
      item
        Name = 'U11'
        DataType = ftFloat
      end
      item
        Name = 'T11'
        DataType = ftFloat
      end
      item
        Name = 'B12'
        DataType = ftFloat
      end
      item
        Name = 'K12'
        DataType = ftFloat
      end
      item
        Name = 'U12'
        DataType = ftFloat
      end
      item
        Name = 'T12'
        DataType = ftFloat
      end
      item
        Name = 'B13'
        DataType = ftFloat
      end
      item
        Name = 'K13'
        DataType = ftFloat
      end
      item
        Name = 'U13'
        DataType = ftFloat
      end
      item
        Name = 'T13'
        DataType = ftFloat
      end
      item
        Name = 'B14'
        DataType = ftFloat
      end
      item
        Name = 'K14'
        DataType = ftFloat
      end
      item
        Name = 'U14'
        DataType = ftFloat
      end
      item
        Name = 'T14'
        DataType = ftFloat
      end
      item
        Name = 'B15'
        DataType = ftFloat
      end
      item
        Name = 'K15'
        DataType = ftFloat
      end
      item
        Name = 'U15'
        DataType = ftFloat
      end
      item
        Name = 'T15'
        DataType = ftFloat
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftFloat
      end
      item
        Name = 'TK'
        DataType = ftFloat
      end
      item
        Name = 'TU'
        DataType = ftFloat
      end
      item
        Name = 'TTL'
        DataType = ftFloat
      end
      item
        Name = 'VDES'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'XDES'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NSEQ'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
  end
  object DataSource2: TDataSource
    DataSet = Query4
    OnDataChange = DataSource2DataChange
    Left = 40
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 72
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 104
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Planning - Comparison 1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 88106
        mmTop = 4498
        mmWidth = 92604
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 2910
        mmTop = 14288
        mmWidth = 10848
        BandType = 0
      end
      object fty002: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 16669
        mmTop = 14288
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 50271
        mmTop = 14288
        mmWidth = 7408
        BandType = 0
      end
      object yr002: TppLabel
        UserName = 'yr001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 59796
        mmTop = 14288
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 224632
        mmTop = 14288
        mmWidth = 13843
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 241565
        mmTop = 14288
        mmWidth = 12192
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 258763
        mmTop = 14288
        mmWidth = 7197
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 268288
        mmTop = 14288
        mmWidth = 6350
        BandType = 0
      end
      object x0001: TppLabel
        UserName = 'x0001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week from    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 88106
        mmTop = 14288
        mmWidth = 15346
        BandType = 0
      end
      object wk0001: TppLabel
        UserName = 'wk001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 111390
        mmTop = 14288
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'to    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 123296
        mmTop = 14288
        mmWidth = 5027
        BandType = 0
      end
      object wk0002: TppLabel
        UserName = 'wk002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 130175
        mmTop = 14288
        mmWidth = 8467
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'vdes'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2910
        mmLeft = 2381
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TB'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 39497
        mmTop = 265
        mmWidth = 8128
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TK'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 50642
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TU'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 65849
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 69131
        mmTop = 265
        mmWidth = 8128
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 82392
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 91917
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 106860
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 111231
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 123138
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 138081
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 147606
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 152242
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 164148
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 179091
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 188616
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 193252
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B04'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 210312
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K04'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 220102
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U04'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 229891
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T04'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 240210
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SDSC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 12435
        mmTop = 265
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B05'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 245111
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K05'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 256255
        mmTop = 265
        mmWidth = 5419
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U05'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 270108
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T05'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 275009
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      NewPage = True
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '11.07'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand1: TppDetailBand
            BeforePrint = ppDetailBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 3703
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'vdes'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              SuppressRepeatedValues = True
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2910
              mmLeft = 2381
              mmTop = 265
              mmWidth = 9260
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B06'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 40852
              mmTop = 265
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText102'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K06'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 56060
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U06'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 65849
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T06'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 70485
              mmTop = 265
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B07'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 87810
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K07'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 97335
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U07'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 106860
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText31'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T07'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 116649
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText32'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B08'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 121783
              mmTop = 265
              mmWidth = 8128
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText33'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K08'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 132663
              mmTop = 265
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText201'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U08'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 147606
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T08'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 150887
              mmTop = 265
              mmWidth = 8128
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText36'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B09'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 169566
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K09'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 179091
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U09'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 188616
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T09'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 198670
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText40'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B10'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 204894
              mmTop = 265
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText41'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K10'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 214684
              mmTop = 265
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText42: TppDBText
              UserName = 'DBText42'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U10'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 229891
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText43: TppDBText
              UserName = 'DBText43'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T10'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 234792
              mmTop = 265
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText44: TppDBText
              UserName = 'DBText44'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SDSC'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2498
              mmLeft = 12435
              mmTop = 265
              mmWidth = 25400
              BandType = 4
            end
            object ppDBText49: TppDBText
              UserName = 'DBText49'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B11'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 250529
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText50: TppDBText
              UserName = 'DBText50'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K11'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 260319
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText51: TppDBText
              UserName = 'DBText51'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U11'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 270108
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppDBText52: TppDBText
              UserName = 'DBText52'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T11'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 280427
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppGroup2: TppGroup
            BreakName = 'TM'
            DataPipeline = ppDBPipeline2
            OutlineSettings.CreateNode = True
            NewFile = False
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 10848
              mmPrintPosition = 0
              object ppShape1: TppShape
                UserName = 'Shape1'
                mmHeight = 10319
                mmLeft = 2381
                mmTop = 529
                mmWidth = 280194
                BandType = 3
                GroupNo = 0
              end
              object ppLabel1: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Week '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 3175
                mmTop = 4498
                mmWidth = 8202
                BandType = 3
                GroupNo = 0
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 37835
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 78317
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object c007: TppLabel
                UserName = 'c007'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 50271
                mmTop = 1588
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object ppLabel3: TppLabel
                UserName = 'Label3'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 39952
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel4: TppLabel
                UserName = 'Label4'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 49742
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel5: TppLabel
                UserName = 'Label5'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 59531
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 69586
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLine9: TppLine
                UserName = 'Line9'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 38100
                mmTop = 5556
                mmWidth = 244211
                BandType = 3
                GroupNo = 0
              end
              object ppLine10: TppLine
                UserName = 'Line10'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 119063
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLine11: TppLine
                UserName = 'Line11'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 160073
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLine12: TppLine
                UserName = 'Line12'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 201084
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLabel7: TppLabel
                UserName = 'Label7'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 81492
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel8: TppLabel
                UserName = 'Label8'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 91017
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel9: TppLabel
                UserName = 'Label9'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 100542
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel10: TppLabel
                UserName = 'Label10'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 110331
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel11: TppLabel
                UserName = 'Label11'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 122238
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel12: TppLabel
                UserName = 'Label12'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 131763
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel13: TppLabel
                UserName = 'Label13'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 141288
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel14: TppLabel
                UserName = 'Label502'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 151342
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel15: TppLabel
                UserName = 'Label14'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 163248
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel16: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 172773
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel17: TppLabel
                UserName = 'Label17'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 182298
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel20: TppLabel
                UserName = 'Label20'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 192352
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel23: TppLabel
                UserName = 'Label23'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 203994
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel24: TppLabel
                UserName = 'Label24'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 213784
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel25: TppLabel
                UserName = 'Label25'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 223573
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel29: TppLabel
                UserName = 'Label29'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 233892
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object c008: TppLabel
                UserName = 'c008'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 91017
                mmTop = 1588
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object c009: TppLabel
                UserName = 'c009'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 131763
                mmTop = 1588
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object c010: TppLabel
                UserName = 'c010'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 172773
                mmTop = 1588
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object c011: TppLabel
                UserName = 'c011'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 213784
                mmTop = 1588
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object c012: TppLabel
                UserName = 'c012'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 254265
                mmTop = 1588
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object ppLabel38: TppLabel
                UserName = 'Label38'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 244475
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel39: TppLabel
                UserName = 'Label39'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 254265
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLine13: TppLine
                UserName = 'Line13'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 242359
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLabel41: TppLabel
                UserName = 'Label41'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 264055
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel42: TppLabel
                UserName = 'Label42'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 274373
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'WK'
            DataPipeline = ppDBPipeline2
            KeepTogether = True
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 1323
              mmPrintPosition = 0
              object ppLine16: TppLine
                UserName = 'Line16'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 2381
                mmTop = 529
                mmWidth = 280194
                BandType = 5
                GroupNo = 1
              end
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'TM'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10848
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape1'
          mmHeight = 10319
          mmLeft = 2381
          mmTop = 529
          mmWidth = 280194
          BandType = 3
          GroupNo = 0
        end
        object x0002: TppLabel
          UserName = 'x0002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Week '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3175
          mmTop = 4498
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 37835
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 78317
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object c001: TppLabel
          UserName = 'c001'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 40481
          mmTop = 1588
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 39952
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 49742
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 59531
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel48: TppLabel
          UserName = 'Label48'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 69586
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 38100
          mmTop = 5556
          mmWidth = 244211
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 119063
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 160073
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 201084
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 81492
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 91017
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 100542
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 110331
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 122238
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 131763
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 141288
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 151342
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 172773
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 182298
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel54: TppLabel
          UserName = 'Label501'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 192352
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 203994
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 213784
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 223573
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 233892
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object c002: TppLabel
          UserName = 'c002'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 91017
          mmTop = 1588
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object c003: TppLabel
          UserName = 'c003'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 131763
          mmTop = 1588
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object c004: TppLabel
          UserName = 'c004'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 172773
          mmTop = 1588
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object c005: TppLabel
          UserName = 'c005'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 213784
          mmTop = 1588
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object c006: TppLabel
          UserName = 'c006'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 254265
          mmTop = 1588
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 244475
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 254265
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 264055
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel67: TppLabel
          UserName = 'Label67'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 274373
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 242359
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'WK'
      DataPipeline = ppDBPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1323
        mmPrintPosition = 0
        object ppLine15: TppLine
          UserName = 'Line15'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 2381
          mmTop = 529
          mmWidth = 280194
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 136
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 168
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3810
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 3810
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 280
    Top = 64
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Planning '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 68527
        mmTop = 1588
        mmWidth = 50271
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 2910
        mmTop = 9260
        mmWidth = 10848
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 16669
        mmTop = 9260
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 65617
        mmTop = 9260
        mmWidth = 7408
        BandType = 0
      end
      object yr001: TppLabel
        UserName = 'yr001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 75142
        mmTop = 9260
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 224632
        mmTop = 9260
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 241565
        mmTop = 9260
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 258763
        mmTop = 9260
        mmWidth = 7144
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 268288
        mmTop = 9260
        mmWidth = 6350
        BandType = 0
      end
      object x001: TppLabel
        UserName = 'x0001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week from    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 97367
        mmTop = 9260
        mmWidth = 15346
        BandType = 0
      end
      object wk001: TppLabel
        UserName = 'wk001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 120650
        mmTop = 9260
        mmWidth = 8467
        BandType = 0
      end
      object x002: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'to    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 132557
        mmTop = 9260
        mmWidth = 5027
        BandType = 0
      end
      object wk002: TppLabel
        UserName = 'wk002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 141023
        mmTop = 9260
        mmWidth = 8467
        BandType = 0
      end
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - Comparison 1    (Ex-fty)    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 120121
        mmTop = 2381
        mmWidth = 56092
        BandType = 0
      end
      object tm001: TppLabel
        UserName = 'tm001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Team   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 39158
        mmTop = 9260
        mmWidth = 8467
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object spt01: TppShape
        UserName = 'spt01'
        Brush.Color = 13092603
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 68263
        mmTop = 265
        mmWidth = 10319
        BandType = 4
      end
      object spa01: TppShape
        UserName = 'spa01'
        Brush.Color = 13092603
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 265
        mmWidth = 7673
        BandType = 4
      end
      object sp101: TppShape
        UserName = 'sp101'
        Brush.Color = 16711654
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 265
        mmWidth = 5556
        BandType = 4
      end
      object pst01: TppShape
        UserName = 'pst01'
        Brush.Color = 13092603
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 17727
        mmTop = 265
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'vdes'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 2381
        mmTop = 265
        mmWidth = 8202
        BandType = 4
      end
      object t001: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TB'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 39497
        mmTop = 265
        mmWidth = 8128
        BandType = 4
      end
      object t002: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TK'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 50642
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object t003: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TU'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 65849
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object t004: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 69395
        mmTop = 265
        mmWidth = 8128
        BandType = 4
      end
      object ax001: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 81069
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax002: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 96202
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax003: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 105834
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax004: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T01'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 109908
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax006: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 131604
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax007: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 141129
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax008: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 156072
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax009: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T02'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 160708
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax011: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 182669
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax012: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 192194
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax013: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 207137
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax014: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T03'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 211773
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax016: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B04'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 233734
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ax017: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K04'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 248941
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax018: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U04'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 258731
        mmTop = 265
        mmWidth = 1355
        BandType = 4
      end
      object ax019: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T04'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 263632
        mmTop = 265
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SDSC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 17727
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 37835
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 78581
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ax005: TppDBText
        UserName = 'ax005'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'B13'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 123053
        mmTop = 265
        mmWidth = 4741
        BandType = 4
      end
      object ax010: TppDBText
        UserName = 'ax010'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'K13'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 174383
        mmTop = 265
        mmWidth = 4741
        BandType = 4
      end
      object ax015: TppDBText
        UserName = 'ax015'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'U13'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 225183
        mmTop = 265
        mmWidth = 4741
        BandType = 4
      end
      object ax020: TppDBText
        UserName = 'ax020'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T13'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2879
        mmLeft = 276248
        mmTop = 265
        mmWidth = 4741
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 282311
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'XDES'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup8
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2910
        mmLeft = 11113
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine80: TppLine
        UserName = 'Line80'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 78846
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine89: TppLine
        UserName = 'Line89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 67733
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1058
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      NewPage = True
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 3810
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 3810
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '11.07'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand4: TppDetailBand
            BeforePrint = ppDetailBand4BeforePrint
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object spt02: TppShape
              UserName = 'spt02'
              Brush.Color = 13092603
              Pen.Style = psClear
              mmHeight = 3440
              mmLeft = 68263
              mmTop = 265
              mmWidth = 10583
              BandType = 4
            end
            object spb01: TppShape
              UserName = 'spb01'
              Brush.Color = 13092603
              Pen.Style = psClear
              mmHeight = 3440
              mmLeft = 2910
              mmTop = 264
              mmWidth = 7673
              BandType = 4
            end
            object sp201: TppShape
              UserName = 'sp201'
              Brush.Color = 16711654
              Pen.Style = psClear
              mmHeight = 3440
              mmLeft = 11377
              mmTop = 264
              mmWidth = 5555
              BandType = 4
            end
            object pst02: TppShape
              UserName = 'pst02'
              Brush.Color = 13092603
              Pen.Style = psClear
              mmHeight = 3440
              mmLeft = 17727
              mmTop = 264
              mmWidth = 19844
              BandType = 4
            end
            object t005: TppDBText
              UserName = 't005'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TB'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 39497
              mmTop = 265
              mmWidth = 8128
              BandType = 4
            end
            object t006: TppDBText
              UserName = 'DBText103'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TK'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 50642
              mmTop = 265
              mmWidth = 6773
              BandType = 4
            end
            object t007: TppDBText
              UserName = 't007'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TU'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 65849
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object t008: TppDBText
              UserName = 't008'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TTL'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 69659
              mmTop = 265
              mmWidth = 8128
              BandType = 4
            end
            object bx001: TppDBText
              UserName = 'bx001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B01'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 79978
              mmTop = 265
              mmWidth = 8128
              BandType = 4
            end
            object bx002: TppDBText
              UserName = 'bx002'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K01'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 90858
              mmTop = 265
              mmWidth = 6773
              BandType = 4
            end
            object bx003: TppDBText
              UserName = 'bx003'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U01'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 105802
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx004: TppDBText
              UserName = 'bx004'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T01'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 108818
              mmTop = 265
              mmWidth = 8128
              BandType = 4
            end
            object bx006: TppDBText
              UserName = 'bx006'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B02'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 137022
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx007: TppDBText
              UserName = 'bx007'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K02'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 146547
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx008: TppDBText
              UserName = 'DBText202'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U02'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 156072
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx009: TppDBText
              UserName = 'bx009'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T02'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 166126
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx011: TppDBText
              UserName = 'bx011'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B03'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 188087
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx012: TppDBText
              UserName = 'bx012'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K03'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 197612
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx013: TppDBText
              UserName = 'bx013'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U03'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 207137
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx014: TppDBText
              UserName = 'bx014'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T03'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 217191
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx016: TppDBText
              UserName = 'bx016'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B04'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 239152
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx017: TppDBText
              UserName = 'bx017'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K04'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 248941
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx018: TppDBText
              UserName = 'bx018'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U04'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 258731
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object ppLine24: TppLine
              UserName = 'Line24'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 2381
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine35: TppLine
              UserName = 'Line35'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 37835
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine36: TppLine
              UserName = 'Line36'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 78581
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object bx005: TppDBText
              UserName = 'bx005'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'B13'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 123053
              mmTop = 265
              mmWidth = 4741
              BandType = 4
            end
            object bx010: TppDBText
              UserName = 'ax0101'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'K13'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 174383
              mmTop = 265
              mmWidth = 4741
              BandType = 4
            end
            object bx015: TppDBText
              UserName = 'bx015'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'U13'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 225183
              mmTop = 265
              mmWidth = 4741
              BandType = 4
            end
            object bx019: TppDBText
              UserName = 'bx019'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T04'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 269050
              mmTop = 265
              mmWidth = 1355
              BandType = 4
            end
            object bx020: TppDBText
              UserName = 'ax0201'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T13'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 276248
              mmTop = 265
              mmWidth = 4741
              BandType = 4
            end
            object ppLine37: TppLine
              UserName = 'Line37'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 282311
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText54'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'vdes'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              SuppressRepeatedValues = True
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2498
              mmLeft = 2381
              mmTop = 265
              mmWidth = 8202
              BandType = 4
            end
            object ppDBText55: TppDBText
              UserName = 'DBText55'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'XDES'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup6
              SuppressRepeatedValues = True
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2910
              mmLeft = 10848
              mmTop = 265
              mmWidth = 6350
              BandType = 4
            end
            object ppDBText56: TppDBText
              UserName = 'DBText56'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SDSC'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 17727
              mmTop = 265
              mmWidth = 20108
              BandType = 4
            end
            object ppLine67: TppLine
              UserName = 'Line67'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 10583
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine68: TppLine
              UserName = 'Line68'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 17198
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine82: TppLine
              UserName = 'Line82'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 78846
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine90: TppLine
              UserName = 'Line90'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 67733
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            NewPage = True
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppSubReport3: TppSubReport
              UserName = 'SubReport3'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 0
              mmWidth = 284427
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport3: TppChildReport
                AutoStop = False
                DataPipeline = ppDBPipeline2
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.Orientation = poLandscape
                PrinterSetup.PaperName = 'A4'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.SaveDeviceSettings = False
                PrinterSetup.mmMarginBottom = 3810
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 3810
                PrinterSetup.mmPaperHeight = 210079
                PrinterSetup.mmPaperWidth = 297127
                PrinterSetup.PaperSize = 9
                Version = '11.07'
                mmColumnWidth = 0
                DataPipelineName = 'ppDBPipeline2'
                object ppTitleBand3: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand5: TppDetailBand
                  BeforePrint = ppDetailBand5BeforePrint
                  mmBottomOffset = 0
                  mmHeight = 3703
                  mmPrintPosition = 0
                  object spt03: TppShape
                    UserName = 'spt03'
                    Brush.Color = 13092603
                    Pen.Style = psClear
                    mmHeight = 3440
                    mmLeft = 68263
                    mmTop = 265
                    mmWidth = 10583
                    BandType = 4
                  end
                  object spc01: TppShape
                    UserName = 'spc01'
                    Brush.Color = 13092603
                    Pen.Style = psClear
                    mmHeight = 3440
                    mmLeft = 2910
                    mmTop = 265
                    mmWidth = 7673
                    BandType = 4
                  end
                  object sp301: TppShape
                    UserName = 'sp301'
                    Brush.Color = 16711654
                    Pen.Style = psClear
                    mmHeight = 3440
                    mmLeft = 11377
                    mmTop = 265
                    mmWidth = 5555
                    BandType = 4
                  end
                  object pst03: TppShape
                    UserName = 'pst03'
                    Brush.Color = 13092603
                    Pen.Style = psClear
                    mmHeight = 3440
                    mmLeft = 17727
                    mmTop = 265
                    mmWidth = 19844
                    BandType = 4
                  end
                  object t009: TppDBText
                    UserName = 'DBText59'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'TB'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 39497
                    mmTop = 265
                    mmWidth = 8128
                    BandType = 4
                  end
                  object t010: TppDBText
                    UserName = 'DBText103'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'TK'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 50642
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object t011: TppDBText
                    UserName = 'DBText61'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'TU'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 65849
                    mmTop = 265
                    mmWidth = 1355
                    BandType = 4
                  end
                  object t012: TppDBText
                    UserName = 'DBText62'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'TTL'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 69660
                    mmTop = 265
                    mmWidth = 8128
                    BandType = 4
                  end
                  object cx001: TppDBText
                    UserName = 'bx001'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'B01'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 81333
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx002: TppDBText
                    UserName = 'bx002'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'K01'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 96276
                    mmTop = 265
                    mmWidth = 1355
                    BandType = 4
                  end
                  object cx003: TppDBText
                    UserName = 'bx003'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'U01'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 105802
                    mmTop = 265
                    mmWidth = 1355
                    BandType = 4
                  end
                  object cx004: TppDBText
                    UserName = 'bx004'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'T01'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 110173
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx006: TppDBText
                    UserName = 'bx006'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'B02'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 131604
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx007: TppDBText
                    UserName = 'bx007'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'K02'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 141129
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx008: TppDBText
                    UserName = 'DBText202'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'U02'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 156072
                    mmTop = 265
                    mmWidth = 1355
                    BandType = 4
                  end
                  object cx009: TppDBText
                    UserName = 'bx009'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'T02'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 160708
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx011: TppDBText
                    UserName = 'bx011'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'B03'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 182669
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx012: TppDBText
                    UserName = 'bx012'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'K03'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 192194
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx013: TppDBText
                    UserName = 'bx013'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'U03'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 207137
                    mmTop = 265
                    mmWidth = 1355
                    BandType = 4
                  end
                  object cx014: TppDBText
                    UserName = 'bx014'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'T03'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 211773
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx016: TppDBText
                    UserName = 'bx016'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'B04'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 233734
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx017: TppDBText
                    UserName = 'bx017'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'K04'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 248941
                    mmTop = 265
                    mmWidth = 1355
                    BandType = 4
                  end
                  object cx018: TppDBText
                    UserName = 'bx018'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'U04'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 258731
                    mmTop = 265
                    mmWidth = 1355
                    BandType = 4
                  end
                  object ppLine39: TppLine
                    UserName = 'Line24'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 3969
                    mmLeft = 2381
                    mmTop = 0
                    mmWidth = 1852
                    BandType = 4
                  end
                  object ppLine40: TppLine
                    UserName = 'Line35'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 3969
                    mmLeft = 37835
                    mmTop = 0
                    mmWidth = 1852
                    BandType = 4
                  end
                  object ppLine41: TppLine
                    UserName = 'Line36'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 3969
                    mmLeft = 78581
                    mmTop = 0
                    mmWidth = 1852
                    BandType = 4
                  end
                  object cx005: TppDBText
                    UserName = 'bx005'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'B13'
                    DataPipeline = ppDBPipeline2
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 123053
                    mmTop = 265
                    mmWidth = 4741
                    BandType = 4
                  end
                  object cx010: TppDBText
                    UserName = 'ax0101'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'K13'
                    DataPipeline = ppDBPipeline2
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 174383
                    mmTop = 265
                    mmWidth = 4741
                    BandType = 4
                  end
                  object cx015: TppDBText
                    UserName = 'bx015'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'U13'
                    DataPipeline = ppDBPipeline2
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 225183
                    mmTop = 265
                    mmWidth = 4741
                    BandType = 4
                  end
                  object cx019: TppDBText
                    UserName = 'bx019'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'T04'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 263632
                    mmTop = 265
                    mmWidth = 6773
                    BandType = 4
                  end
                  object cx020: TppDBText
                    UserName = 'ax0201'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'T13'
                    DataPipeline = ppDBPipeline2
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2879
                    mmLeft = 276248
                    mmTop = 265
                    mmWidth = 4741
                    BandType = 4
                  end
                  object ppLine42: TppLine
                    UserName = 'Line37'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 3969
                    mmLeft = 282311
                    mmTop = 0
                    mmWidth = 265
                    BandType = 4
                  end
                  object ppDBText57: TppDBText
                    UserName = 'DBText57'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'vdes'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    SuppressRepeatedValues = True
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2498
                    mmLeft = 2381
                    mmTop = 265
                    mmWidth = 8202
                    BandType = 4
                  end
                  object ppDBText58: TppDBText
                    UserName = 'DBText1'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'XDES'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    ResetGroup = ppGroup10
                    SuppressRepeatedValues = True
                    TextAlignment = taCentered
                    Transparent = True
                    WordWrap = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2910
                    mmLeft = 10848
                    mmTop = 265
                    mmWidth = 6350
                    BandType = 4
                  end
                  object ppDBText59: TppDBText
                    UserName = 'DBText2'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'SDSC'
                    DataPipeline = ppDBPipeline2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 2381
                    mmLeft = 17727
                    mmTop = 265
                    mmWidth = 20108
                    BandType = 4
                  end
                  object ppLine69: TppLine
                    UserName = 'Line69'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 3969
                    mmLeft = 10583
                    mmTop = 0
                    mmWidth = 1852
                    BandType = 4
                  end
                  object ppLine70: TppLine
                    UserName = 'Line70'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 3969
                    mmLeft = 17198
                    mmTop = 0
                    mmWidth = 1852
                    BandType = 4
                  end
                  object ppLine85: TppLine
                    UserName = 'Line85'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 3969
                    mmLeft = 78846
                    mmTop = 0
                    mmWidth = 1852
                    BandType = 4
                  end
                  object ppLine91: TppLine
                    UserName = 'Line901'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 3969
                    mmLeft = 67733
                    mmTop = 0
                    mmWidth = 1852
                    BandType = 4
                  end
                end
                object ppSummaryBand5: TppSummaryBand
                  NewPage = True
                  PrintHeight = phDynamic
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 5027
                  mmPrintPosition = 0
                  object ppSubReport4: TppSubReport
                    UserName = 'SubReport4'
                    ExpandAll = False
                    NewPrintJob = False
                    OutlineSettings.CreateNode = True
                    TraverseAllData = False
                    DataPipelineName = 'ppDBPipeline2'
                    mmHeight = 5027
                    mmLeft = 0
                    mmTop = 0
                    mmWidth = 284427
                    BandType = 7
                    mmBottomOffset = 0
                    mmOverFlowOffset = 0
                    mmStopPosition = 0
                    object ppChildReport4: TppChildReport
                      AutoStop = False
                      DataPipeline = ppDBPipeline2
                      PrinterSetup.BinName = 'Default'
                      PrinterSetup.DocumentName = 'Report'
                      PrinterSetup.Orientation = poLandscape
                      PrinterSetup.PaperName = 'A4'
                      PrinterSetup.PrinterName = 'Default'
                      PrinterSetup.SaveDeviceSettings = False
                      PrinterSetup.mmMarginBottom = 3810
                      PrinterSetup.mmMarginLeft = 6350
                      PrinterSetup.mmMarginRight = 6350
                      PrinterSetup.mmMarginTop = 3810
                      PrinterSetup.mmPaperHeight = 210079
                      PrinterSetup.mmPaperWidth = 297127
                      PrinterSetup.PaperSize = 9
                      Version = '11.07'
                      mmColumnWidth = 0
                      DataPipelineName = 'ppDBPipeline2'
                      object ppTitleBand4: TppTitleBand
                        mmBottomOffset = 0
                        mmHeight = 0
                        mmPrintPosition = 0
                      end
                      object ppDetailBand6: TppDetailBand
                        BeforePrint = ppDetailBand6BeforePrint
                        mmBottomOffset = 0
                        mmHeight = 3703
                        mmPrintPosition = 0
                        object spt04: TppShape
                          UserName = 'spt04'
                          Brush.Color = 13092603
                          Pen.Style = psClear
                          mmHeight = 3440
                          mmLeft = 68263
                          mmTop = 265
                          mmWidth = 10583
                          BandType = 4
                        end
                        object spd01: TppShape
                          UserName = 'spd01'
                          Brush.Color = 13092603
                          Pen.Style = psClear
                          mmHeight = 3440
                          mmLeft = 2910
                          mmTop = 265
                          mmWidth = 7673
                          BandType = 4
                        end
                        object sp401: TppShape
                          UserName = 'sp401'
                          Brush.Color = 16711654
                          Pen.Style = psClear
                          mmHeight = 3440
                          mmLeft = 11377
                          mmTop = 265
                          mmWidth = 5555
                          BandType = 4
                        end
                        object pst04: TppShape
                          UserName = 'pst04'
                          Brush.Color = 13092603
                          Pen.Style = psClear
                          mmHeight = 3440
                          mmLeft = 17727
                          mmTop = 265
                          mmWidth = 19844
                          BandType = 4
                        end
                        object t013: TppDBText
                          UserName = 'DBText59'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'TB'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 39497
                          mmTop = 265
                          mmWidth = 8128
                          BandType = 4
                        end
                        object t014: TppDBText
                          UserName = 'DBText103'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'TK'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 50642
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object t015: TppDBText
                          UserName = 'DBText61'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'TU'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 65849
                          mmTop = 265
                          mmWidth = 1355
                          BandType = 4
                        end
                        object t016: TppDBText
                          UserName = 'DBText62'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'TTL'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 69660
                          mmTop = 265
                          mmWidth = 8128
                          BandType = 4
                        end
                        object cx021: TppDBText
                          UserName = 'bx001'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'B01'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 81333
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx022: TppDBText
                          UserName = 'bx002'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'K01'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 96276
                          mmTop = 265
                          mmWidth = 1355
                          BandType = 4
                        end
                        object cx023: TppDBText
                          UserName = 'bx003'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'U01'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 105802
                          mmTop = 265
                          mmWidth = 1355
                          BandType = 4
                        end
                        object cx024: TppDBText
                          UserName = 'bx004'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'T01'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 110173
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx026: TppDBText
                          UserName = 'bx006'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'B02'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 131604
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx027: TppDBText
                          UserName = 'bx007'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'K02'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 141129
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx028: TppDBText
                          UserName = 'DBText202'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'U02'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 156072
                          mmTop = 265
                          mmWidth = 1355
                          BandType = 4
                        end
                        object cx029: TppDBText
                          UserName = 'bx009'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'T02'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 160708
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx031: TppDBText
                          UserName = 'bx011'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'B03'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 182669
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx032: TppDBText
                          UserName = 'bx012'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'K03'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 192194
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx033: TppDBText
                          UserName = 'bx013'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'U03'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 207137
                          mmTop = 265
                          mmWidth = 1355
                          BandType = 4
                        end
                        object cx034: TppDBText
                          UserName = 'bx014'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'T03'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 211773
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx036: TppDBText
                          UserName = 'bx016'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'B04'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 233734
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx037: TppDBText
                          UserName = 'bx017'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'K04'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 248941
                          mmTop = 265
                          mmWidth = 1355
                          BandType = 4
                        end
                        object cx038: TppDBText
                          UserName = 'bx018'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'U04'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 258731
                          mmTop = 265
                          mmWidth = 1355
                          BandType = 4
                        end
                        object ppLine50: TppLine
                          UserName = 'Line24'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 3969
                          mmLeft = 2381
                          mmTop = 0
                          mmWidth = 1852
                          BandType = 4
                        end
                        object ppLine51: TppLine
                          UserName = 'Line35'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 3969
                          mmLeft = 37835
                          mmTop = 0
                          mmWidth = 1852
                          BandType = 4
                        end
                        object ppLine52: TppLine
                          UserName = 'Line36'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 3969
                          mmLeft = 78581
                          mmTop = 0
                          mmWidth = 1852
                          BandType = 4
                        end
                        object cx025: TppDBText
                          UserName = 'bx005'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'B13'
                          DataPipeline = ppDBPipeline2
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 123053
                          mmTop = 265
                          mmWidth = 4741
                          BandType = 4
                        end
                        object cx030: TppDBText
                          UserName = 'ax0101'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'K13'
                          DataPipeline = ppDBPipeline2
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 174383
                          mmTop = 265
                          mmWidth = 4741
                          BandType = 4
                        end
                        object cx035: TppDBText
                          UserName = 'bx015'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'U13'
                          DataPipeline = ppDBPipeline2
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 225183
                          mmTop = 265
                          mmWidth = 4741
                          BandType = 4
                        end
                        object cx039: TppDBText
                          UserName = 'bx019'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'T04'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 263632
                          mmTop = 265
                          mmWidth = 6773
                          BandType = 4
                        end
                        object cx040: TppDBText
                          UserName = 'ax0201'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'T13'
                          DataPipeline = ppDBPipeline2
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2879
                          mmLeft = 276248
                          mmTop = 265
                          mmWidth = 4741
                          BandType = 4
                        end
                        object ppLine53: TppLine
                          UserName = 'Line37'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 3969
                          mmLeft = 282311
                          mmTop = 0
                          mmWidth = 265
                          BandType = 4
                        end
                        object ppDBText60: TppDBText
                          UserName = 'DBText60'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'vdes'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          SuppressRepeatedValues = True
                          TextAlignment = taCentered
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2498
                          mmLeft = 2381
                          mmTop = 265
                          mmWidth = 8202
                          BandType = 4
                        end
                        object ppDBText61: TppDBText
                          UserName = 'DBText1'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'XDES'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          ResetGroup = ppGroup12
                          SuppressRepeatedValues = True
                          TextAlignment = taCentered
                          Transparent = True
                          WordWrap = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2910
                          mmLeft = 10848
                          mmTop = 265
                          mmWidth = 6350
                          BandType = 4
                        end
                        object ppDBText62: TppDBText
                          UserName = 'DBText2'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'SDSC'
                          DataPipeline = ppDBPipeline2
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 2381
                          mmLeft = 17727
                          mmTop = 265
                          mmWidth = 20108
                          BandType = 4
                        end
                        object ppLine71: TppLine
                          UserName = 'Line71'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 3969
                          mmLeft = 10583
                          mmTop = 0
                          mmWidth = 1852
                          BandType = 4
                        end
                        object ppLine72: TppLine
                          UserName = 'Line72'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 3969
                          mmLeft = 17198
                          mmTop = 0
                          mmWidth = 1852
                          BandType = 4
                        end
                        object ppLine87: TppLine
                          UserName = 'Line87'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 3969
                          mmLeft = 78846
                          mmTop = 0
                          mmWidth = 1852
                          BandType = 4
                        end
                        object ppLine93: TppLine
                          UserName = 'Line93'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 3969
                          mmLeft = 67733
                          mmTop = 0
                          mmWidth = 1852
                          BandType = 4
                        end
                      end
                      object ppSummaryBand6: TppSummaryBand
                        NewPage = True
                        PrintHeight = phDynamic
                        AlignToBottom = False
                        mmBottomOffset = 0
                        mmHeight = 5027
                        mmPrintPosition = 0
                        object ppSubReport5: TppSubReport
                          UserName = 'SubReport5'
                          ExpandAll = False
                          NewPrintJob = False
                          OutlineSettings.CreateNode = True
                          TraverseAllData = False
                          DataPipelineName = 'ppDBPipeline2'
                          mmHeight = 5027
                          mmLeft = 0
                          mmTop = 0
                          mmWidth = 284427
                          BandType = 7
                          mmBottomOffset = 0
                          mmOverFlowOffset = 0
                          mmStopPosition = 0
                          object ppChildReport5: TppChildReport
                            AutoStop = False
                            DataPipeline = ppDBPipeline2
                            PrinterSetup.BinName = 'Default'
                            PrinterSetup.DocumentName = 'Report'
                            PrinterSetup.Orientation = poLandscape
                            PrinterSetup.PaperName = 'A4'
                            PrinterSetup.PrinterName = 'Default'
                            PrinterSetup.SaveDeviceSettings = False
                            PrinterSetup.mmMarginBottom = 3810
                            PrinterSetup.mmMarginLeft = 6350
                            PrinterSetup.mmMarginRight = 6350
                            PrinterSetup.mmMarginTop = 3810
                            PrinterSetup.mmPaperHeight = 210079
                            PrinterSetup.mmPaperWidth = 297127
                            PrinterSetup.PaperSize = 9
                            Version = '11.07'
                            mmColumnWidth = 0
                            DataPipelineName = 'ppDBPipeline2'
                            object ppTitleBand5: TppTitleBand
                              mmBottomOffset = 0
                              mmHeight = 0
                              mmPrintPosition = 0
                            end
                            object ppDetailBand7: TppDetailBand
                              BeforePrint = ppDetailBand7BeforePrint
                              mmBottomOffset = 0
                              mmHeight = 3703
                              mmPrintPosition = 0
                              object spt05: TppShape
                                UserName = 'spt04'
                                Brush.Color = 13092603
                                Pen.Style = psClear
                                mmHeight = 3440
                                mmLeft = 68263
                                mmTop = 265
                                mmWidth = 10583
                                BandType = 4
                              end
                              object spe01: TppShape
                                UserName = 'spd01'
                                Brush.Color = 13092603
                                Pen.Style = psClear
                                mmHeight = 3440
                                mmLeft = 2910
                                mmTop = 265
                                mmWidth = 7673
                                BandType = 4
                              end
                              object sp501: TppShape
                                UserName = 'sp401'
                                Brush.Color = 16711654
                                Pen.Style = psClear
                                mmHeight = 3440
                                mmLeft = 11377
                                mmTop = 265
                                mmWidth = 5555
                                BandType = 4
                              end
                              object pst05: TppShape
                                UserName = 'pst04'
                                Brush.Color = 13092603
                                Pen.Style = psClear
                                mmHeight = 3440
                                mmLeft = 17727
                                mmTop = 265
                                mmWidth = 19844
                                BandType = 4
                              end
                              object t017: TppDBText
                                UserName = 'DBText59'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'TB'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 39497
                                mmTop = 265
                                mmWidth = 8128
                                BandType = 4
                              end
                              object t018: TppDBText
                                UserName = 'DBText103'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'TK'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 50642
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object t019: TppDBText
                                UserName = 'DBText61'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'TU'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 65849
                                mmTop = 265
                                mmWidth = 1355
                                BandType = 4
                              end
                              object t020: TppDBText
                                UserName = 'DBText62'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'TTL'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 69660
                                mmTop = 265
                                mmWidth = 8128
                                BandType = 4
                              end
                              object cx041: TppDBText
                                UserName = 'bx001'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'B01'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 81333
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx042: TppDBText
                                UserName = 'bx002'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'K01'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 96276
                                mmTop = 265
                                mmWidth = 1355
                                BandType = 4
                              end
                              object cx043: TppDBText
                                UserName = 'bx003'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'U01'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 105802
                                mmTop = 265
                                mmWidth = 1355
                                BandType = 4
                              end
                              object cx044: TppDBText
                                UserName = 'bx004'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'T01'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 110173
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx046: TppDBText
                                UserName = 'bx006'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'B02'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 131604
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx047: TppDBText
                                UserName = 'bx007'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'K02'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 141129
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx048: TppDBText
                                UserName = 'DBText202'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'U02'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 156072
                                mmTop = 265
                                mmWidth = 1355
                                BandType = 4
                              end
                              object cx049: TppDBText
                                UserName = 'bx009'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'T02'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 160708
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx051: TppDBText
                                UserName = 'bx011'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'B03'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 182669
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx052: TppDBText
                                UserName = 'bx012'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'K03'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 192194
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx053: TppDBText
                                UserName = 'bx013'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'U03'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 207137
                                mmTop = 265
                                mmWidth = 1355
                                BandType = 4
                              end
                              object cx054: TppDBText
                                UserName = 'bx014'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'T03'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 211773
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx056: TppDBText
                                UserName = 'bx016'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'B04'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 233734
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx057: TppDBText
                                UserName = 'bx017'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'K04'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 248941
                                mmTop = 265
                                mmWidth = 1355
                                BandType = 4
                              end
                              object cx058: TppDBText
                                UserName = 'bx018'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'U04'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 258731
                                mmTop = 265
                                mmWidth = 1355
                                BandType = 4
                              end
                              object ppLine117: TppLine
                                UserName = 'Line24'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Position = lpLeft
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 2381
                                mmTop = 0
                                mmWidth = 1852
                                BandType = 4
                              end
                              object ppLine118: TppLine
                                UserName = 'Line35'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Position = lpLeft
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 37835
                                mmTop = 0
                                mmWidth = 1852
                                BandType = 4
                              end
                              object ppLine119: TppLine
                                UserName = 'Line36'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Position = lpLeft
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 78581
                                mmTop = 0
                                mmWidth = 1852
                                BandType = 4
                              end
                              object cx045: TppDBText
                                UserName = 'bx005'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'B13'
                                DataPipeline = ppDBPipeline2
                                DisplayFormat = '#,0.00;-#,0.00'
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 123053
                                mmTop = 265
                                mmWidth = 4741
                                BandType = 4
                              end
                              object cx050: TppDBText
                                UserName = 'ax0101'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'K13'
                                DataPipeline = ppDBPipeline2
                                DisplayFormat = '#,0.00;-#,0.00'
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 174383
                                mmTop = 265
                                mmWidth = 4741
                                BandType = 4
                              end
                              object cx055: TppDBText
                                UserName = 'bx015'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'U13'
                                DataPipeline = ppDBPipeline2
                                DisplayFormat = '#,0.00;-#,0.00'
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 225183
                                mmTop = 265
                                mmWidth = 4741
                                BandType = 4
                              end
                              object cx059: TppDBText
                                UserName = 'bx019'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'T04'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 263632
                                mmTop = 265
                                mmWidth = 6773
                                BandType = 4
                              end
                              object cx060: TppDBText
                                UserName = 'ax0201'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'T13'
                                DataPipeline = ppDBPipeline2
                                DisplayFormat = '#,0.00;-#,0.00'
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                TextAlignment = taRightJustified
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2879
                                mmLeft = 276248
                                mmTop = 265
                                mmWidth = 4741
                                BandType = 4
                              end
                              object ppLine120: TppLine
                                UserName = 'Line37'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Position = lpLeft
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 282311
                                mmTop = 0
                                mmWidth = 265
                                BandType = 4
                              end
                              object ppDBText89: TppDBText
                                UserName = 'DBText60'
                                HyperlinkColor = clBlue
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'vdes'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 6
                                Font.Style = []
                                SuppressRepeatedValues = True
                                TextAlignment = taCentered
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2498
                                mmLeft = 2381
                                mmTop = 265
                                mmWidth = 8202
                                BandType = 4
                              end
                              object ppDBText90: TppDBText
                                UserName = 'DBText1'
                                HyperlinkColor = clBlue
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'XDES'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 6
                                Font.Style = []
                                ResetGroup = ppGroup12
                                SuppressRepeatedValues = True
                                TextAlignment = taCentered
                                Transparent = True
                                WordWrap = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2910
                                mmLeft = 10848
                                mmTop = 265
                                mmWidth = 6350
                                BandType = 4
                              end
                              object ppDBText91: TppDBText
                                UserName = 'DBText2'
                                HyperlinkColor = clBlue
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'SDSC'
                                DataPipeline = ppDBPipeline2
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 6
                                Font.Style = []
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 2381
                                mmLeft = 17727
                                mmTop = 265
                                mmWidth = 20108
                                BandType = 4
                              end
                              object ppLine121: TppLine
                                UserName = 'Line71'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Position = lpLeft
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 10583
                                mmTop = 0
                                mmWidth = 1852
                                BandType = 4
                              end
                              object ppLine122: TppLine
                                UserName = 'Line72'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Position = lpLeft
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 17198
                                mmTop = 0
                                mmWidth = 1852
                                BandType = 4
                              end
                              object ppLine123: TppLine
                                UserName = 'Line87'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Position = lpLeft
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 78846
                                mmTop = 0
                                mmWidth = 1852
                                BandType = 4
                              end
                              object ppLine124: TppLine
                                UserName = 'Line93'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Position = lpLeft
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 67733
                                mmTop = 0
                                mmWidth = 1852
                                BandType = 4
                              end
                            end
                            object ppSummaryBand7: TppSummaryBand
                              NewPage = True
                              PrintHeight = phDynamic
                              AlignToBottom = False
                              mmBottomOffset = 0
                              mmHeight = 5027
                              mmPrintPosition = 0
                              object ppSubReport6: TppSubReport
                                UserName = 'SubReport6'
                                ExpandAll = False
                                NewPrintJob = False
                                OutlineSettings.CreateNode = True
                                TraverseAllData = False
                                DataPipelineName = 'ppDBPipeline2'
                                mmHeight = 5027
                                mmLeft = 0
                                mmTop = 0
                                mmWidth = 284427
                                BandType = 7
                                mmBottomOffset = 0
                                mmOverFlowOffset = 0
                                mmStopPosition = 0
                                object ppChildReport6: TppChildReport
                                  AutoStop = False
                                  DataPipeline = ppDBPipeline2
                                  PrinterSetup.BinName = 'Default'
                                  PrinterSetup.DocumentName = 'Report'
                                  PrinterSetup.Orientation = poLandscape
                                  PrinterSetup.PaperName = 'A4'
                                  PrinterSetup.PrinterName = 'Default'
                                  PrinterSetup.SaveDeviceSettings = False
                                  PrinterSetup.mmMarginBottom = 3810
                                  PrinterSetup.mmMarginLeft = 6350
                                  PrinterSetup.mmMarginRight = 6350
                                  PrinterSetup.mmMarginTop = 3810
                                  PrinterSetup.mmPaperHeight = 210079
                                  PrinterSetup.mmPaperWidth = 297127
                                  PrinterSetup.PaperSize = 9
                                  Version = '11.07'
                                  mmColumnWidth = 0
                                  DataPipelineName = 'ppDBPipeline2'
                                  object ppTitleBand6: TppTitleBand
                                    mmBottomOffset = 0
                                    mmHeight = 0
                                    mmPrintPosition = 0
                                  end
                                  object ppDetailBand8: TppDetailBand
                                    BeforePrint = ppDetailBand7BeforePrint
                                    mmBottomOffset = 0
                                    mmHeight = 3703
                                    mmPrintPosition = 0
                                    object ppShape8: TppShape
                                      UserName = 'spt04'
                                      Brush.Color = 13092603
                                      Pen.Style = psClear
                                      mmHeight = 3440
                                      mmLeft = 68263
                                      mmTop = 265
                                      mmWidth = 10583
                                      BandType = 4
                                    end
                                    object ppShape9: TppShape
                                      UserName = 'spd01'
                                      Brush.Color = 13092603
                                      Pen.Style = psClear
                                      mmHeight = 3440
                                      mmLeft = 2910
                                      mmTop = 265
                                      mmWidth = 7673
                                      BandType = 4
                                    end
                                    object ppShape14: TppShape
                                      UserName = 'sp401'
                                      Brush.Color = 16711654
                                      Pen.Style = psClear
                                      mmHeight = 3440
                                      mmLeft = 11377
                                      mmTop = 265
                                      mmWidth = 5555
                                      BandType = 4
                                    end
                                    object ppShape17: TppShape
                                      UserName = 'pst04'
                                      Brush.Color = 13092603
                                      Pen.Style = psClear
                                      mmHeight = 3440
                                      mmLeft = 17727
                                      mmTop = 265
                                      mmWidth = 19844
                                      BandType = 4
                                    end
                                    object ppDBText63: TppDBText
                                      UserName = 'DBText59'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'TB'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 39497
                                      mmTop = 265
                                      mmWidth = 8128
                                      BandType = 4
                                    end
                                    object ppDBText64: TppDBText
                                      UserName = 'DBText103'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'TK'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 50642
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText65: TppDBText
                                      UserName = 'DBText61'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'TU'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 65849
                                      mmTop = 265
                                      mmWidth = 1355
                                      BandType = 4
                                    end
                                    object ppDBText66: TppDBText
                                      UserName = 'DBText62'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'TTL'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 69660
                                      mmTop = 265
                                      mmWidth = 8128
                                      BandType = 4
                                    end
                                    object ppDBText67: TppDBText
                                      UserName = 'bx001'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'B01'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 81333
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText68: TppDBText
                                      UserName = 'bx002'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'K01'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 96276
                                      mmTop = 265
                                      mmWidth = 1355
                                      BandType = 4
                                    end
                                    object ppDBText69: TppDBText
                                      UserName = 'bx003'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'U01'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 105802
                                      mmTop = 265
                                      mmWidth = 1355
                                      BandType = 4
                                    end
                                    object ppDBText70: TppDBText
                                      UserName = 'bx004'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'T01'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 110173
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText71: TppDBText
                                      UserName = 'bx006'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'B02'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 131604
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText72: TppDBText
                                      UserName = 'bx007'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'K02'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 141129
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText75: TppDBText
                                      UserName = 'DBText202'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'U02'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 156072
                                      mmTop = 265
                                      mmWidth = 1355
                                      BandType = 4
                                    end
                                    object ppDBText76: TppDBText
                                      UserName = 'bx009'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'T02'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 160708
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText77: TppDBText
                                      UserName = 'bx011'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'B03'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 182669
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText78: TppDBText
                                      UserName = 'bx012'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'K03'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 192194
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText79: TppDBText
                                      UserName = 'bx013'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'U03'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 207137
                                      mmTop = 265
                                      mmWidth = 1355
                                      BandType = 4
                                    end
                                    object ppDBText80: TppDBText
                                      UserName = 'bx014'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'T03'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 211773
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText81: TppDBText
                                      UserName = 'bx016'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'B04'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 233734
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText82: TppDBText
                                      UserName = 'bx017'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'K04'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 248941
                                      mmTop = 265
                                      mmWidth = 1355
                                      BandType = 4
                                    end
                                    object ppDBText83: TppDBText
                                      UserName = 'bx018'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'U04'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 258731
                                      mmTop = 265
                                      mmWidth = 1355
                                      BandType = 4
                                    end
                                    object ppLine142: TppLine
                                      UserName = 'Line24'
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      Position = lpLeft
                                      Weight = 0.750000000000000000
                                      mmHeight = 3969
                                      mmLeft = 2381
                                      mmTop = 0
                                      mmWidth = 1852
                                      BandType = 4
                                    end
                                    object ppLine143: TppLine
                                      UserName = 'Line35'
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      Position = lpLeft
                                      Weight = 0.750000000000000000
                                      mmHeight = 3969
                                      mmLeft = 37835
                                      mmTop = 0
                                      mmWidth = 1852
                                      BandType = 4
                                    end
                                    object ppLine144: TppLine
                                      UserName = 'Line36'
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      Position = lpLeft
                                      Weight = 0.750000000000000000
                                      mmHeight = 3969
                                      mmLeft = 78581
                                      mmTop = 0
                                      mmWidth = 1852
                                      BandType = 4
                                    end
                                    object ppDBText84: TppDBText
                                      UserName = 'bx005'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'B13'
                                      DataPipeline = ppDBPipeline2
                                      DisplayFormat = '#,0.00;-#,0.00'
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 123053
                                      mmTop = 265
                                      mmWidth = 4741
                                      BandType = 4
                                    end
                                    object ppDBText85: TppDBText
                                      UserName = 'ax0101'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'K13'
                                      DataPipeline = ppDBPipeline2
                                      DisplayFormat = '#,0.00;-#,0.00'
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 174383
                                      mmTop = 265
                                      mmWidth = 4741
                                      BandType = 4
                                    end
                                    object ppDBText86: TppDBText
                                      UserName = 'bx015'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'U13'
                                      DataPipeline = ppDBPipeline2
                                      DisplayFormat = '#,0.00;-#,0.00'
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 225183
                                      mmTop = 265
                                      mmWidth = 4741
                                      BandType = 4
                                    end
                                    object ppDBText87: TppDBText
                                      UserName = 'bx019'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'T04'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 263632
                                      mmTop = 265
                                      mmWidth = 6773
                                      BandType = 4
                                    end
                                    object ppDBText88: TppDBText
                                      UserName = 'ax0201'
                                      HyperlinkColor = clBlue
                                      AutoSize = True
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'T13'
                                      DataPipeline = ppDBPipeline2
                                      DisplayFormat = '#,0.00;-#,0.00'
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 7
                                      Font.Style = []
                                      TextAlignment = taRightJustified
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2879
                                      mmLeft = 276248
                                      mmTop = 265
                                      mmWidth = 4741
                                      BandType = 4
                                    end
                                    object ppLine145: TppLine
                                      UserName = 'Line37'
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      Position = lpLeft
                                      Weight = 0.750000000000000000
                                      mmHeight = 3969
                                      mmLeft = 282311
                                      mmTop = 0
                                      mmWidth = 265
                                      BandType = 4
                                    end
                                    object ppDBText92: TppDBText
                                      UserName = 'DBText60'
                                      HyperlinkColor = clBlue
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'vdes'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 6
                                      Font.Style = []
                                      SuppressRepeatedValues = True
                                      TextAlignment = taCentered
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2498
                                      mmLeft = 2381
                                      mmTop = 265
                                      mmWidth = 8202
                                      BandType = 4
                                    end
                                    object ppDBText93: TppDBText
                                      UserName = 'DBText1'
                                      HyperlinkColor = clBlue
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'XDES'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 6
                                      Font.Style = []
                                      ResetGroup = ppGroup12
                                      SuppressRepeatedValues = True
                                      TextAlignment = taCentered
                                      Transparent = True
                                      WordWrap = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2910
                                      mmLeft = 10848
                                      mmTop = 265
                                      mmWidth = 6350
                                      BandType = 4
                                    end
                                    object ppDBText94: TppDBText
                                      UserName = 'DBText2'
                                      HyperlinkColor = clBlue
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      DataField = 'SDSC'
                                      DataPipeline = ppDBPipeline2
                                      Font.Charset = DEFAULT_CHARSET
                                      Font.Color = clBlack
                                      Font.Name = 'Arial'
                                      Font.Size = 6
                                      Font.Style = []
                                      Transparent = True
                                      DataPipelineName = 'ppDBPipeline2'
                                      mmHeight = 2381
                                      mmLeft = 17727
                                      mmTop = 265
                                      mmWidth = 20108
                                      BandType = 4
                                    end
                                    object ppLine146: TppLine
                                      UserName = 'Line71'
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      Position = lpLeft
                                      Weight = 0.750000000000000000
                                      mmHeight = 3969
                                      mmLeft = 10583
                                      mmTop = 0
                                      mmWidth = 1852
                                      BandType = 4
                                    end
                                    object ppLine147: TppLine
                                      UserName = 'Line72'
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      Position = lpLeft
                                      Weight = 0.750000000000000000
                                      mmHeight = 3969
                                      mmLeft = 17198
                                      mmTop = 0
                                      mmWidth = 1852
                                      BandType = 4
                                    end
                                    object ppLine148: TppLine
                                      UserName = 'Line87'
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      Position = lpLeft
                                      Weight = 0.750000000000000000
                                      mmHeight = 3969
                                      mmLeft = 78846
                                      mmTop = 0
                                      mmWidth = 1852
                                      BandType = 4
                                    end
                                    object ppLine149: TppLine
                                      UserName = 'Line93'
                                      Border.BorderPositions = []
                                      Border.Color = clBlack
                                      Border.Style = psSolid
                                      Border.Visible = False
                                      Position = lpLeft
                                      Weight = 0.750000000000000000
                                      mmHeight = 3969
                                      mmLeft = 67733
                                      mmTop = 0
                                      mmWidth = 1852
                                      BandType = 4
                                    end
                                  end
                                  object ppSummaryBand8: TppSummaryBand
                                    PrintHeight = phDynamic
                                    AlignToBottom = False
                                    mmBottomOffset = 0
                                    mmHeight = 0
                                    mmPrintPosition = 0
                                  end
                                  object ppGroup25: TppGroup
                                    BreakName = 'TM'
                                    DataPipeline = ppDBPipeline2
                                    OutlineSettings.CreateNode = True
                                    NewFile = False
                                    StartOnOddPage = False
                                    UserName = 'Group2'
                                    mmNewColumnThreshold = 0
                                    mmNewPageThreshold = 0
                                    DataPipelineName = 'ppDBPipeline2'
                                    object ppGroupHeaderBand25: TppGroupHeaderBand
                                      mmBottomOffset = 0
                                      mmHeight = 10848
                                      mmPrintPosition = 0
                                      object ppShape18: TppShape
                                        UserName = 'Shape3'
                                        mmHeight = 10319
                                        mmLeft = 2381
                                        mmTop = 529
                                        mmWidth = 280194
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppShape19: TppShape
                                        UserName = 'Shape13'
                                        Brush.Color = 13092603
                                        Pen.Style = psClear
                                        mmHeight = 4763
                                        mmLeft = 68263
                                        mmTop = 5821
                                        mmWidth = 10583
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel35: TppLabel
                                        UserName = 'w0005'
                                        HyperlinkColor = clBlue
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'Week '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 3175
                                        mmTop = 4498
                                        mmWidth = 8202
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLine150: TppLine
                                        UserName = 'Line18'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 10319
                                        mmLeft = 37835
                                        mmTop = 529
                                        mmWidth = 2910
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLine151: TppLine
                                        UserName = 'Line19'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 10319
                                        mmLeft = 78581
                                        mmTop = 529
                                        mmWidth = 2910
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel79: TppLabel
                                        UserName = 'tc05'
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
                                        Font.Style = [fsBold]
                                        TextAlignment = taCentered
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 38629
                                        mmTop = 1588
                                        mmWidth = 39423
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel80: TppLabel
                                        UserName = 'Label59'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   B   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 39952
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel81: TppLabel
                                        UserName = 'Label60'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   K   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 49742
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel82: TppLabel
                                        UserName = 'Label61'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   U   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 59531
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel83: TppLabel
                                        UserName = 'Label62'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'Total '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 70115
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLine152: TppLine
                                        UserName = 'Line20'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Weight = 0.750000000000000000
                                        mmHeight = 1588
                                        mmLeft = 38100
                                        mmTop = 5556
                                        mmWidth = 244211
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLine153: TppLine
                                        UserName = 'Line21'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 10319
                                        mmLeft = 129117
                                        mmTop = 529
                                        mmWidth = 2910
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLine154: TppLine
                                        UserName = 'Line22'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 10319
                                        mmLeft = 179917
                                        mmTop = 529
                                        mmWidth = 2910
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLine155: TppLine
                                        UserName = 'Line23'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 10319
                                        mmLeft = 230717
                                        mmTop = 529
                                        mmWidth = 2910
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel84: TppLabel
                                        UserName = 'bt001'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   B   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 80433
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel85: TppLabel
                                        UserName = 'bt002'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   K   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 89959
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel86: TppLabel
                                        UserName = 'bt003'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   U   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 99484
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel87: TppLabel
                                        UserName = 'bt004'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'Total '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 109273
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel88: TppLabel
                                        UserName = 'bt006'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   B   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 130704
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel89: TppLabel
                                        UserName = 'bt007'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   K   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 140229
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel90: TppLabel
                                        UserName = 'bt008'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   U   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 149754
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel91: TppLabel
                                        UserName = 'Label504'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'Total '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 159809
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel92: TppLabel
                                        UserName = 'bt011'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   B   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 181769
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel93: TppLabel
                                        UserName = 'bt012'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   K   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 191294
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel94: TppLabel
                                        UserName = 'bt013'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   U   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 200819
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel95: TppLabel
                                        UserName = 'bt014'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'Total '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 210873
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel96: TppLabel
                                        UserName = 'bt016'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   B   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 232834
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel97: TppLabel
                                        UserName = 'bt017'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   K   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 242623
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel98: TppLabel
                                        UserName = 'bt018'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '   U   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 252413
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel99: TppLabel
                                        UserName = 'bt019'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'Total '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 262732
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel104: TppLabel
                                        UserName = 'cc009'
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
                                        Font.Style = [fsBold]
                                        TextAlignment = taCentered
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 93398
                                        mmTop = 1588
                                        mmWidth = 20638
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel105: TppLabel
                                        UserName = 'cc010'
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
                                        Font.Style = [fsBold]
                                        TextAlignment = taCentered
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 144727
                                        mmTop = 1588
                                        mmWidth = 20638
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel106: TppLabel
                                        UserName = 'cc011'
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
                                        Font.Style = [fsBold]
                                        TextAlignment = taCentered
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 195263
                                        mmTop = 1588
                                        mmWidth = 20638
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel107: TppLabel
                                        UserName = 'cc012'
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
                                        Font.Style = [fsBold]
                                        TextAlignment = taCentered
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 247386
                                        mmTop = 1588
                                        mmWidth = 20638
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel108: TppLabel
                                        UserName = 'bt005'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '    %   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 119592
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel109: TppLabel
                                        UserName = 'bt010'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '    %   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 170127
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel110: TppLabel
                                        UserName = 'bt015'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '    %   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 221192
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLabel111: TppLabel
                                        UserName = 'at0201'
                                        HyperlinkColor = clBlue
                                        AutoSize = False
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = '    %   '
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 8
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 3440
                                        mmLeft = 273051
                                        mmTop = 6350
                                        mmWidth = 7673
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLine156: TppLine
                                        UserName = 'Line86'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 10319
                                        mmLeft = 78846
                                        mmTop = 529
                                        mmWidth = 2910
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                      object ppLine157: TppLine
                                        UserName = 'Line109'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 5027
                                        mmLeft = 67733
                                        mmTop = 5821
                                        mmWidth = 2381
                                        BandType = 3
                                        GroupNo = 0
                                      end
                                    end
                                    object ppGroupFooterBand25: TppGroupFooterBand
                                      HideWhenOneDetail = False
                                      mmBottomOffset = 0
                                      mmHeight = 25665
                                      mmPrintPosition = 0
                                      object ppShape20: TppShape
                                        UserName = 'Shape7'
                                        mmHeight = 19315
                                        mmLeft = 2381
                                        mmTop = 6085
                                        mmWidth = 280194
                                        BandType = 5
                                        GroupNo = 0
                                      end
                                      object ppRichText11: TppRichText
                                        UserName = 'RichText9'
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Tahoma'
                                        Font.Size = 8
                                        Font.Style = []
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'RichText9'
                                        RichText = 
                                          '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                                          '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                                          'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                                          't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                                          'ojection / Scheduled based on T3\par'#13#10'          How to measure P' +
                                          'H Fty capacity?\par'#13#10'              It is based on different cust' +
                                          'omers and factories with their past performance on the efficienc' +
                                          'y and learning curve (calculation based on GSD) to project the P' +
                                          'H Fty Capacity.\par'#13#10'          What is GSD Fty capacity?\par'#13#10'  ' +
                                          '            It is based on the 100% (efficiency) GSD (not includ' +
                                          'ing the learning curve and line balancing factors) manhours (# o' +
                                          'f production lines / workers) provided by the respective factory' +
                                          ' on a monthly basis (working days).\par'#13#10'          1a)+1b) = 2a)' +
                                          '+2b)                     2b)=3a)+3b)\par'#13#10'\pard\lang1028\f0\par'#13 +
                                          #10'\par'#13#10'}'#13#10#0
                                        mmHeight = 17992
                                        mmLeft = 2910
                                        mmTop = 6615
                                        mmWidth = 277813
                                        BandType = 5
                                        GroupNo = 0
                                        mmBottomOffset = 0
                                        mmOverFlowOffset = 0
                                        mmStopPosition = 0
                                        mmLeftMargin = 794
                                      end
                                      object ppRichText12: TppRichText
                                        UserName = 'RichText10'
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Tahoma'
                                        Font.Size = 8
                                        Font.Style = []
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'RichText10'
                                        RichText = 
                                          '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                                          '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                                          'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                                          't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                                          'ojection / Scheduled based on Ex-fty\lang1028\f0\par'#13#10'\lang1033\' +
                                          'f2           How to measure PH Fty capacity?\par'#13#10'              ' +
                                          'It is based on different customers and factories with their past' +
                                          ' performance on the efficiency and learning curve (calculation b' +
                                          'ased on GSD) to project the PH Fty Capacity.\par'#13#10'          What' +
                                          ' is GSD Fty capacity?\par'#13#10'              It is based on the 100%' +
                                          ' (efficiency) GSD (not including the learning curve and line bal' +
                                          'ancing factors) manhours (# of production lines / workers) provi' +
                                          'ded by the respective factory on a monthly basis (working days).' +
                                          '\par'#13#10'\pard\lang1028\f0\par'#13#10'\par'#13#10'}'#13#10#0
                                        mmHeight = 16404
                                        mmLeft = 2910
                                        mmTop = 6615
                                        mmWidth = 277813
                                        BandType = 5
                                        GroupNo = 0
                                        mmBottomOffset = 0
                                        mmOverFlowOffset = 0
                                        mmStopPosition = 0
                                        mmLeftMargin = 794
                                      end
                                      object ppLabel112: TppLabel
                                        UserName = 'Label1'
                                        HyperlinkColor = clBlue
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'Label112'
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 7
                                        Font.Style = [fsBold]
                                        Transparent = True
                                        mmHeight = 2921
                                        mmLeft = 2910
                                        mmTop = 1588
                                        mmWidth = 7662
                                        BandType = 5
                                        GroupNo = 0
                                      end
                                    end
                                  end
                                  object ppGroup26: TppGroup
                                    BreakName = 'WK'
                                    DataPipeline = ppDBPipeline2
                                    KeepTogether = True
                                    OutlineSettings.CreateNode = True
                                    NewFile = False
                                    ReprintOnSubsequentPage = False
                                    StartOnOddPage = False
                                    UserName = 'Group4'
                                    mmNewColumnThreshold = 0
                                    mmNewPageThreshold = 0
                                    DataPipelineName = 'ppDBPipeline2'
                                    object ppGroupHeaderBand26: TppGroupHeaderBand
                                      mmBottomOffset = 0
                                      mmHeight = 0
                                      mmPrintPosition = 0
                                    end
                                    object ppGroupFooterBand26: TppGroupFooterBand
                                      HideWhenOneDetail = False
                                      mmBottomOffset = 0
                                      mmHeight = 529
                                      mmPrintPosition = 0
                                      object ppLine158: TppLine
                                        UserName = 'Line92'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Weight = 0.750000000000000000
                                        mmHeight = 529
                                        mmLeft = 2381
                                        mmTop = 0
                                        mmWidth = 280194
                                        BandType = 5
                                        GroupNo = 1
                                      end
                                      object ppLine159: TppLine
                                        UserName = 'Line78'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Weight = 0.750000000000000000
                                        mmHeight = 265
                                        mmLeft = 2381
                                        mmTop = 264
                                        mmWidth = 280194
                                        BandType = 5
                                        GroupNo = 1
                                      end
                                    end
                                  end
                                  object ppGroup27: TppGroup
                                    BreakName = 'XDES'
                                    DataPipeline = ppDBPipeline2
                                    OutlineSettings.CreateNode = True
                                    NewFile = False
                                    ReprintOnSubsequentPage = False
                                    StartOnOddPage = False
                                    UserName = 'Group16'
                                    mmNewColumnThreshold = 0
                                    mmNewPageThreshold = 0
                                    DataPipelineName = 'ppDBPipeline2'
                                    object ppGroupHeaderBand27: TppGroupHeaderBand
                                      mmBottomOffset = 0
                                      mmHeight = 0
                                      mmPrintPosition = 0
                                    end
                                    object ppGroupFooterBand27: TppGroupFooterBand
                                      BeforePrint = ppGroupFooterBand23BeforePrint
                                      HideWhenOneDetail = False
                                      mmBottomOffset = 0
                                      mmHeight = 3969
                                      mmPrintPosition = 0
                                      object ppLine160: TppLine
                                        UserName = 'Line66'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Pen.Style = psDot
                                        Weight = 0.750000000000000000
                                        mmHeight = 265
                                        mmLeft = 17198
                                        mmTop = 0
                                        mmWidth = 265378
                                        BandType = 5
                                        GroupNo = 2
                                      end
                                      object ppLine161: TppLine
                                        UserName = 'Line1002'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 3969
                                        mmLeft = 2381
                                        mmTop = 0
                                        mmWidth = 1852
                                        BandType = 5
                                        GroupNo = 2
                                      end
                                      object ppLine162: TppLine
                                        UserName = 'Line106'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 3969
                                        mmLeft = 10583
                                        mmTop = 0
                                        mmWidth = 1852
                                        BandType = 5
                                        GroupNo = 2
                                      end
                                      object ppLabel113: TppLabel
                                        UserName = 'xt005'
                                        HyperlinkColor = clBlue
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Caption = 'Label113'
                                        Font.Charset = DEFAULT_CHARSET
                                        Font.Color = clBlack
                                        Font.Name = 'Arial'
                                        Font.Size = 7
                                        Font.Style = [fsItalic]
                                        Transparent = True
                                        mmHeight = 2921
                                        mmLeft = 17992
                                        mmTop = 529
                                        mmWidth = 6350
                                        BandType = 5
                                        GroupNo = 2
                                      end
                                      object ppLine163: TppLine
                                        UserName = 'Line107'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Weight = 0.750000000000000000
                                        mmHeight = 529
                                        mmLeft = 10583
                                        mmTop = 3969
                                        mmWidth = 271992
                                        BandType = 5
                                        GroupNo = 2
                                      end
                                      object ppLine164: TppLine
                                        UserName = 'Line108'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 3969
                                        mmLeft = 282311
                                        mmTop = 0
                                        mmWidth = 1852
                                        BandType = 5
                                        GroupNo = 2
                                      end
                                      object ppLine165: TppLine
                                        UserName = 'Line112'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Position = lpLeft
                                        Weight = 0.750000000000000000
                                        mmHeight = 3969
                                        mmLeft = 17198
                                        mmTop = 0
                                        mmWidth = 1852
                                        BandType = 5
                                        GroupNo = 2
                                      end
                                    end
                                  end
                                  object ppGroup28: TppGroup
                                    BreakName = 'XDES'
                                    DataPipeline = ppDBPipeline2
                                    OutlineSettings.CreateNode = True
                                    NewFile = False
                                    ReprintOnSubsequentPage = False
                                    StartOnOddPage = False
                                    UserName = 'Group20'
                                    mmNewColumnThreshold = 0
                                    mmNewPageThreshold = 0
                                    DataPipelineName = 'ppDBPipeline2'
                                    object ppGroupHeaderBand28: TppGroupHeaderBand
                                      mmBottomOffset = 0
                                      mmHeight = 0
                                      mmPrintPosition = 0
                                    end
                                    object ppGroupFooterBand28: TppGroupFooterBand
                                      BeforePrint = ppGroupFooterBand20BeforePrint
                                      HideWhenOneDetail = False
                                      mmBottomOffset = 0
                                      mmHeight = 265
                                      mmPrintPosition = 0
                                      object ppLine166: TppLine
                                        UserName = 'Line116'
                                        Border.BorderPositions = []
                                        Border.Color = clBlack
                                        Border.Style = psSolid
                                        Border.Visible = False
                                        Weight = 0.750000000000000000
                                        mmHeight = 265
                                        mmLeft = 17198
                                        mmTop = 0
                                        mmWidth = 265378
                                        BandType = 5
                                        GroupNo = 3
                                      end
                                    end
                                  end
                                end
                              end
                            end
                            object ppGroup21: TppGroup
                              BreakName = 'TM'
                              DataPipeline = ppDBPipeline2
                              OutlineSettings.CreateNode = True
                              NewFile = False
                              StartOnOddPage = False
                              UserName = 'Group2'
                              mmNewColumnThreshold = 0
                              mmNewPageThreshold = 0
                              DataPipelineName = 'ppDBPipeline2'
                              object ppGroupHeaderBand21: TppGroupHeaderBand
                                mmBottomOffset = 0
                                mmHeight = 10848
                                mmPrintPosition = 0
                                object ppShape15: TppShape
                                  UserName = 'Shape3'
                                  mmHeight = 10319
                                  mmLeft = 2381
                                  mmTop = 529
                                  mmWidth = 280194
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppShape16: TppShape
                                  UserName = 'Shape13'
                                  Brush.Color = 13092603
                                  Pen.Style = psClear
                                  mmHeight = 4763
                                  mmLeft = 68263
                                  mmTop = 5821
                                  mmWidth = 10583
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object w0005: TppLabel
                                  UserName = 'w0005'
                                  HyperlinkColor = clBlue
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = 'Week '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 3175
                                  mmTop = 4498
                                  mmWidth = 8202
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLine125: TppLine
                                  UserName = 'Line18'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 10319
                                  mmLeft = 37835
                                  mmTop = 529
                                  mmWidth = 2910
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLine126: TppLine
                                  UserName = 'Line19'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 10319
                                  mmLeft = 78581
                                  mmTop = 529
                                  mmWidth = 2910
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object tc05: TppLabel
                                  UserName = 'tc05'
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
                                  Font.Style = [fsBold]
                                  TextAlignment = taCentered
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 38629
                                  mmTop = 1588
                                  mmWidth = 39423
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLabel63: TppLabel
                                  UserName = 'Label59'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   B   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 39952
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLabel72: TppLabel
                                  UserName = 'Label60'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   K   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 49742
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLabel77: TppLabel
                                  UserName = 'Label61'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   U   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 59531
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLabel78: TppLabel
                                  UserName = 'Label62'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = 'Total '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 70115
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLine127: TppLine
                                  UserName = 'Line20'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Weight = 0.750000000000000000
                                  mmHeight = 1588
                                  mmLeft = 38100
                                  mmTop = 5556
                                  mmWidth = 244211
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLine128: TppLine
                                  UserName = 'Line21'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 10319
                                  mmLeft = 129117
                                  mmTop = 529
                                  mmWidth = 2910
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLine129: TppLine
                                  UserName = 'Line22'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 10319
                                  mmLeft = 179917
                                  mmTop = 529
                                  mmWidth = 2910
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLine130: TppLine
                                  UserName = 'Line23'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 10319
                                  mmLeft = 230717
                                  mmTop = 529
                                  mmWidth = 2910
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct041: TppLabel
                                  UserName = 'bt001'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   B   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 80433
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct042: TppLabel
                                  UserName = 'bt002'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   K   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 89959
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct043: TppLabel
                                  UserName = 'bt003'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   U   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 99484
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct044: TppLabel
                                  UserName = 'bt004'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = 'Total '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 109273
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct046: TppLabel
                                  UserName = 'bt006'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   B   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 130704
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct047: TppLabel
                                  UserName = 'bt007'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   K   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 140229
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct048: TppLabel
                                  UserName = 'bt008'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   U   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 149754
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct049: TppLabel
                                  UserName = 'Label504'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = 'Total '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 159809
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct051: TppLabel
                                  UserName = 'bt011'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   B   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 181769
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct052: TppLabel
                                  UserName = 'bt012'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   K   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 191294
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct053: TppLabel
                                  UserName = 'bt013'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   U   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 200819
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct054: TppLabel
                                  UserName = 'bt014'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = 'Total '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 210873
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct056: TppLabel
                                  UserName = 'bt016'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   B   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 232834
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct057: TppLabel
                                  UserName = 'bt017'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   K   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 242623
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct058: TppLabel
                                  UserName = 'bt018'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '   U   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 252413
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct059: TppLabel
                                  UserName = 'bt019'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = 'Total '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 262732
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object cc009: TppLabel
                                  UserName = 'cc009'
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
                                  Font.Style = [fsBold]
                                  TextAlignment = taCentered
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 93398
                                  mmTop = 1588
                                  mmWidth = 20638
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object cc010: TppLabel
                                  UserName = 'cc010'
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
                                  Font.Style = [fsBold]
                                  TextAlignment = taCentered
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 144727
                                  mmTop = 1588
                                  mmWidth = 20638
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object cc011: TppLabel
                                  UserName = 'cc011'
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
                                  Font.Style = [fsBold]
                                  TextAlignment = taCentered
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 195263
                                  mmTop = 1588
                                  mmWidth = 20638
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object cc012: TppLabel
                                  UserName = 'cc012'
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
                                  Font.Style = [fsBold]
                                  TextAlignment = taCentered
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 247386
                                  mmTop = 1588
                                  mmWidth = 20638
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct045: TppLabel
                                  UserName = 'bt005'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '    %   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 119592
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct050: TppLabel
                                  UserName = 'bt010'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '    %   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 170127
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct055: TppLabel
                                  UserName = 'bt015'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '    %   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 221192
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ct060: TppLabel
                                  UserName = 'at0201'
                                  HyperlinkColor = clBlue
                                  AutoSize = False
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = '    %   '
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 8
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 3440
                                  mmLeft = 273051
                                  mmTop = 6350
                                  mmWidth = 7673
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLine131: TppLine
                                  UserName = 'Line86'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 10319
                                  mmLeft = 78846
                                  mmTop = 529
                                  mmWidth = 2910
                                  BandType = 3
                                  GroupNo = 0
                                end
                                object ppLine132: TppLine
                                  UserName = 'Line109'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 5027
                                  mmLeft = 67733
                                  mmTop = 5821
                                  mmWidth = 2381
                                  BandType = 3
                                  GroupNo = 0
                                end
                              end
                              object ppGroupFooterBand21: TppGroupFooterBand
                                HideWhenOneDetail = False
                                mmBottomOffset = 0
                                mmHeight = 25665
                                mmPrintPosition = 0
                                object ppShape7: TppShape
                                  UserName = 'Shape7'
                                  mmHeight = 19315
                                  mmLeft = 2381
                                  mmTop = 6085
                                  mmWidth = 280194
                                  BandType = 5
                                  GroupNo = 0
                                end
                                object ppRichText9: TppRichText
                                  UserName = 'RichText9'
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Tahoma'
                                  Font.Size = 8
                                  Font.Style = []
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = 'RichText9'
                                  RichText = 
                                    '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                                    '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                                    'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                                    't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                                    'ojection / Scheduled based on T3\par'#13#10'          How to measure P' +
                                    'H Fty capacity?\par'#13#10'              It is based on different cust' +
                                    'omers and factories with their past performance on the efficienc' +
                                    'y and learning curve (calculation based on GSD) to project the P' +
                                    'H Fty Capacity.\par'#13#10'          What is GSD Fty capacity?\par'#13#10'  ' +
                                    '            It is based on the 100% (efficiency) GSD (not includ' +
                                    'ing the learning curve and line balancing factors) manhours (# o' +
                                    'f production lines / workers) provided by the respective factory' +
                                    ' on a monthly basis (working days).\par'#13#10'          1a)+1b) = 2a)' +
                                    '+2b)                     2b)=3a)+3b)\par'#13#10'\pard\lang1028\f0\par'#13 +
                                    #10'\par'#13#10'}'#13#10#0
                                  mmHeight = 17992
                                  mmLeft = 2910
                                  mmTop = 6615
                                  mmWidth = 277813
                                  BandType = 5
                                  GroupNo = 0
                                  mmBottomOffset = 0
                                  mmOverFlowOffset = 0
                                  mmStopPosition = 0
                                  mmLeftMargin = 794
                                end
                                object ppRichText10: TppRichText
                                  UserName = 'RichText10'
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Tahoma'
                                  Font.Size = 8
                                  Font.Style = []
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Caption = 'RichText10'
                                  RichText = 
                                    '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                                    '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                                    'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                                    't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                                    'ojection / Scheduled based on Ex-fty\lang1028\f0\par'#13#10'\lang1033\' +
                                    'f2           How to measure PH Fty capacity?\par'#13#10'              ' +
                                    'It is based on different customers and factories with their past' +
                                    ' performance on the efficiency and learning curve (calculation b' +
                                    'ased on GSD) to project the PH Fty Capacity.\par'#13#10'          What' +
                                    ' is GSD Fty capacity?\par'#13#10'              It is based on the 100%' +
                                    ' (efficiency) GSD (not including the learning curve and line bal' +
                                    'ancing factors) manhours (# of production lines / workers) provi' +
                                    'ded by the respective factory on a monthly basis (working days).' +
                                    '\par'#13#10'\pard\lang1028\f0\par'#13#10'\par'#13#10'}'#13#10#0
                                  mmHeight = 16404
                                  mmLeft = 2910
                                  mmTop = 6615
                                  mmWidth = 277813
                                  BandType = 5
                                  GroupNo = 0
                                  mmBottomOffset = 0
                                  mmOverFlowOffset = 0
                                  mmStopPosition = 0
                                  mmLeftMargin = 794
                                end
                                object ppLabel31: TppLabel
                                  UserName = 'Label1'
                                  HyperlinkColor = clBlue
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 7
                                  Font.Style = [fsBold]
                                  Transparent = True
                                  mmHeight = 2921
                                  mmLeft = 2910
                                  mmTop = 1588
                                  mmWidth = 7662
                                  BandType = 5
                                  GroupNo = 0
                                end
                              end
                            end
                            object ppGroup22: TppGroup
                              BreakName = 'WK'
                              DataPipeline = ppDBPipeline2
                              KeepTogether = True
                              OutlineSettings.CreateNode = True
                              NewFile = False
                              ReprintOnSubsequentPage = False
                              StartOnOddPage = False
                              UserName = 'Group4'
                              mmNewColumnThreshold = 0
                              mmNewPageThreshold = 0
                              DataPipelineName = 'ppDBPipeline2'
                              object ppGroupHeaderBand22: TppGroupHeaderBand
                                mmBottomOffset = 0
                                mmHeight = 0
                                mmPrintPosition = 0
                              end
                              object ppGroupFooterBand22: TppGroupFooterBand
                                HideWhenOneDetail = False
                                mmBottomOffset = 0
                                mmHeight = 529
                                mmPrintPosition = 0
                                object ppLine133: TppLine
                                  UserName = 'Line92'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Weight = 0.750000000000000000
                                  mmHeight = 529
                                  mmLeft = 2381
                                  mmTop = 0
                                  mmWidth = 280194
                                  BandType = 5
                                  GroupNo = 1
                                end
                                object ppLine134: TppLine
                                  UserName = 'Line78'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Weight = 0.750000000000000000
                                  mmHeight = 265
                                  mmLeft = 2381
                                  mmTop = 264
                                  mmWidth = 280194
                                  BandType = 5
                                  GroupNo = 1
                                end
                              end
                            end
                            object ppGroup23: TppGroup
                              BreakName = 'XDES'
                              DataPipeline = ppDBPipeline2
                              OutlineSettings.CreateNode = True
                              NewFile = False
                              ReprintOnSubsequentPage = False
                              StartOnOddPage = False
                              UserName = 'Group16'
                              mmNewColumnThreshold = 0
                              mmNewPageThreshold = 0
                              DataPipelineName = 'ppDBPipeline2'
                              object ppGroupHeaderBand23: TppGroupHeaderBand
                                mmBottomOffset = 0
                                mmHeight = 0
                                mmPrintPosition = 0
                              end
                              object ppGroupFooterBand23: TppGroupFooterBand
                                BeforePrint = ppGroupFooterBand23BeforePrint
                                HideWhenOneDetail = False
                                mmBottomOffset = 0
                                mmHeight = 3969
                                mmPrintPosition = 0
                                object ppLine135: TppLine
                                  UserName = 'Line66'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Pen.Style = psDot
                                  Weight = 0.750000000000000000
                                  mmHeight = 265
                                  mmLeft = 17198
                                  mmTop = 0
                                  mmWidth = 265378
                                  BandType = 5
                                  GroupNo = 2
                                end
                                object ppLine136: TppLine
                                  UserName = 'Line1002'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 3969
                                  mmLeft = 2381
                                  mmTop = 0
                                  mmWidth = 1852
                                  BandType = 5
                                  GroupNo = 2
                                end
                                object ppLine137: TppLine
                                  UserName = 'Line106'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 3969
                                  mmLeft = 10583
                                  mmTop = 0
                                  mmWidth = 1852
                                  BandType = 5
                                  GroupNo = 2
                                end
                                object xt005: TppLabel
                                  UserName = 'xt005'
                                  HyperlinkColor = clBlue
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clBlack
                                  Font.Name = 'Arial'
                                  Font.Size = 7
                                  Font.Style = [fsItalic]
                                  Transparent = True
                                  mmHeight = 2921
                                  mmLeft = 17992
                                  mmTop = 529
                                  mmWidth = 6350
                                  BandType = 5
                                  GroupNo = 2
                                end
                                object ppLine138: TppLine
                                  UserName = 'Line107'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Weight = 0.750000000000000000
                                  mmHeight = 529
                                  mmLeft = 10583
                                  mmTop = 3969
                                  mmWidth = 271992
                                  BandType = 5
                                  GroupNo = 2
                                end
                                object ppLine139: TppLine
                                  UserName = 'Line108'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 3969
                                  mmLeft = 282311
                                  mmTop = 0
                                  mmWidth = 1852
                                  BandType = 5
                                  GroupNo = 2
                                end
                                object ppLine140: TppLine
                                  UserName = 'Line112'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Position = lpLeft
                                  Weight = 0.750000000000000000
                                  mmHeight = 3969
                                  mmLeft = 17198
                                  mmTop = 0
                                  mmWidth = 1852
                                  BandType = 5
                                  GroupNo = 2
                                end
                              end
                            end
                            object ppGroup24: TppGroup
                              BreakName = 'XDES'
                              DataPipeline = ppDBPipeline2
                              OutlineSettings.CreateNode = True
                              NewFile = False
                              ReprintOnSubsequentPage = False
                              StartOnOddPage = False
                              UserName = 'Group20'
                              mmNewColumnThreshold = 0
                              mmNewPageThreshold = 0
                              DataPipelineName = 'ppDBPipeline2'
                              object ppGroupHeaderBand24: TppGroupHeaderBand
                                mmBottomOffset = 0
                                mmHeight = 0
                                mmPrintPosition = 0
                              end
                              object ppGroupFooterBand24: TppGroupFooterBand
                                BeforePrint = ppGroupFooterBand20BeforePrint
                                HideWhenOneDetail = False
                                mmBottomOffset = 0
                                mmHeight = 265
                                mmPrintPosition = 0
                                object ppLine141: TppLine
                                  UserName = 'Line116'
                                  Border.BorderPositions = []
                                  Border.Color = clBlack
                                  Border.Style = psSolid
                                  Border.Visible = False
                                  Weight = 0.750000000000000000
                                  mmHeight = 265
                                  mmLeft = 17198
                                  mmTop = 0
                                  mmWidth = 265378
                                  BandType = 5
                                  GroupNo = 3
                                end
                              end
                            end
                          end
                        end
                      end
                      object ppGroup11: TppGroup
                        BreakName = 'TM'
                        DataPipeline = ppDBPipeline2
                        OutlineSettings.CreateNode = True
                        NewFile = False
                        StartOnOddPage = False
                        UserName = 'Group2'
                        mmNewColumnThreshold = 0
                        mmNewPageThreshold = 0
                        DataPipelineName = 'ppDBPipeline2'
                        object ppGroupHeaderBand11: TppGroupHeaderBand
                          mmBottomOffset = 0
                          mmHeight = 10848
                          mmPrintPosition = 0
                          object ppShape6: TppShape
                            UserName = 'Shape3'
                            mmHeight = 10319
                            mmLeft = 2381
                            mmTop = 529
                            mmWidth = 280194
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppShape13: TppShape
                            UserName = 'Shape13'
                            Brush.Color = 13092603
                            Pen.Style = psClear
                            mmHeight = 4763
                            mmLeft = 68263
                            mmTop = 5821
                            mmWidth = 10583
                            BandType = 3
                            GroupNo = 0
                          end
                          object w0004: TppLabel
                            UserName = 'Label31'
                            HyperlinkColor = clBlue
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = 'Week '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 3175
                            mmTop = 4498
                            mmWidth = 8202
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLine54: TppLine
                            UserName = 'Line18'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 10319
                            mmLeft = 37835
                            mmTop = 529
                            mmWidth = 2910
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLine55: TppLine
                            UserName = 'Line19'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 10319
                            mmLeft = 78581
                            mmTop = 529
                            mmWidth = 2910
                            BandType = 3
                            GroupNo = 0
                          end
                          object tc04: TppLabel
                            UserName = 'tc02'
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
                            Font.Style = [fsBold]
                            TextAlignment = taCentered
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 38629
                            mmTop = 1588
                            mmWidth = 39423
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLabel73: TppLabel
                            UserName = 'Label59'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   B   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 39952
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLabel74: TppLabel
                            UserName = 'Label60'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   K   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 49742
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLabel75: TppLabel
                            UserName = 'Label61'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   U   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 59531
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLabel76: TppLabel
                            UserName = 'Label62'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = 'Total '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 70115
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLine56: TppLine
                            UserName = 'Line20'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Weight = 0.750000000000000000
                            mmHeight = 1588
                            mmLeft = 38100
                            mmTop = 5556
                            mmWidth = 244211
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLine57: TppLine
                            UserName = 'Line21'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 10319
                            mmLeft = 129117
                            mmTop = 529
                            mmWidth = 2910
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLine58: TppLine
                            UserName = 'Line22'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 10319
                            mmLeft = 179917
                            mmTop = 529
                            mmWidth = 2910
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLine59: TppLine
                            UserName = 'Line23'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 10319
                            mmLeft = 230717
                            mmTop = 529
                            mmWidth = 2910
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct021: TppLabel
                            UserName = 'bt001'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   B   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 80433
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct022: TppLabel
                            UserName = 'bt002'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   K   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 89959
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct023: TppLabel
                            UserName = 'bt003'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   U   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 99484
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct024: TppLabel
                            UserName = 'bt004'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = 'Total '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 109273
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct026: TppLabel
                            UserName = 'bt006'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   B   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 130704
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct027: TppLabel
                            UserName = 'bt007'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   K   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 140229
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct028: TppLabel
                            UserName = 'bt008'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   U   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 149754
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct029: TppLabel
                            UserName = 'Label504'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = 'Total '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 159809
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct031: TppLabel
                            UserName = 'bt011'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   B   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 181769
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct032: TppLabel
                            UserName = 'bt012'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   K   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 191294
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct033: TppLabel
                            UserName = 'bt013'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   U   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 200819
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct034: TppLabel
                            UserName = 'bt014'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = 'Total '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 210873
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct036: TppLabel
                            UserName = 'bt016'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   B   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 232834
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct037: TppLabel
                            UserName = 'bt017'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   K   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 242623
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct038: TppLabel
                            UserName = 'bt018'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '   U   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 252413
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct039: TppLabel
                            UserName = 'bt019'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = 'Total '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 262732
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object cc005: TppLabel
                            UserName = 'bc001'
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
                            Font.Style = [fsBold]
                            TextAlignment = taCentered
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 93398
                            mmTop = 1588
                            mmWidth = 20638
                            BandType = 3
                            GroupNo = 0
                          end
                          object cc006: TppLabel
                            UserName = 'bc002'
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
                            Font.Style = [fsBold]
                            TextAlignment = taCentered
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 144727
                            mmTop = 1588
                            mmWidth = 20638
                            BandType = 3
                            GroupNo = 0
                          end
                          object cc007: TppLabel
                            UserName = 'bc003'
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
                            Font.Style = [fsBold]
                            TextAlignment = taCentered
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 195263
                            mmTop = 1588
                            mmWidth = 20638
                            BandType = 3
                            GroupNo = 0
                          end
                          object cc008: TppLabel
                            UserName = 'bc004'
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
                            Font.Style = [fsBold]
                            TextAlignment = taCentered
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 247386
                            mmTop = 1588
                            mmWidth = 20638
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct025: TppLabel
                            UserName = 'bt005'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '    %   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 119592
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct030: TppLabel
                            UserName = 'bt010'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '    %   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 170127
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct035: TppLabel
                            UserName = 'bt015'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '    %   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 221192
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ct040: TppLabel
                            UserName = 'at0201'
                            HyperlinkColor = clBlue
                            AutoSize = False
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = '    %   '
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 8
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 3440
                            mmLeft = 273051
                            mmTop = 6350
                            mmWidth = 7673
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLine86: TppLine
                            UserName = 'Line86'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 10319
                            mmLeft = 78846
                            mmTop = 529
                            mmWidth = 2910
                            BandType = 3
                            GroupNo = 0
                          end
                          object ppLine109: TppLine
                            UserName = 'Line109'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 5027
                            mmLeft = 67733
                            mmTop = 5821
                            mmWidth = 2381
                            BandType = 3
                            GroupNo = 0
                          end
                        end
                        object ppGroupFooterBand11: TppGroupFooterBand
                          HideWhenOneDetail = False
                          mmBottomOffset = 0
                          mmHeight = 25664
                          mmPrintPosition = 0
                          object sp0005: TppShape
                            UserName = 'sp0003'
                            mmHeight = 19315
                            mmLeft = 2381
                            mmTop = 6085
                            mmWidth = 280194
                            BandType = 5
                            GroupNo = 0
                          end
                          object ppRichText8: TppRichText
                            UserName = 'RichText6'
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Tahoma'
                            Font.Size = 8
                            Font.Style = []
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = 'RichText6'
                            RichText = 
                              '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                              '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                              'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                              't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                              'ojection / Scheduled based on T3\par'#13#10'          How to measure P' +
                              'H Fty capacity?\par'#13#10'              It is based on different cust' +
                              'omers and factories with their past performance on the efficienc' +
                              'y and learning curve (calculation based on GSD) to project the P' +
                              'H Fty Capacity.\par'#13#10'          What is GSD Fty capacity?\par'#13#10'  ' +
                              '            It is based on the 100% (efficiency) GSD (not includ' +
                              'ing the learning curve and line balancing factors) manhours (# o' +
                              'f production lines / workers) provided by the respective factory' +
                              ' on a monthly basis (working days).\par'#13#10'          1a)+1b) = 2a)' +
                              '+2b)                     2b)=3a)+3b)\par'#13#10'\pard\lang1028\f0\par'#13 +
                              #10'\par'#13#10'}'#13#10#0
                            mmHeight = 17992
                            mmLeft = 2910
                            mmTop = 6615
                            mmWidth = 277813
                            BandType = 5
                            GroupNo = 0
                            mmBottomOffset = 0
                            mmOverFlowOffset = 0
                            mmStopPosition = 0
                            mmLeftMargin = 794
                          end
                          object ppRichText7: TppRichText
                            UserName = 'RichText5'
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Tahoma'
                            Font.Size = 8
                            Font.Style = []
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Caption = 'RichText5'
                            RichText = 
                              '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                              '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                              'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                              't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                              'ojection / Scheduled based on Ex-fty\lang1028\f0\par'#13#10'\lang1033\' +
                              'f2           How to measure PH Fty capacity?\par'#13#10'              ' +
                              'It is based on different customers and factories with their past' +
                              ' performance on the efficiency and learning curve (calculation b' +
                              'ased on GSD) to project the PH Fty Capacity.\par'#13#10'          What' +
                              ' is GSD Fty capacity?\par'#13#10'              It is based on the 100%' +
                              ' (efficiency) GSD (not including the learning curve and line bal' +
                              'ancing factors) manhours (# of production lines / workers) provi' +
                              'ded by the respective factory on a monthly basis (working days).' +
                              '\par'#13#10'\pard\lang1028\f0\par'#13#10'\par'#13#10'}'#13#10#0
                            mmHeight = 16404
                            mmLeft = 2910
                            mmTop = 6615
                            mmWidth = 277813
                            BandType = 5
                            GroupNo = 0
                            mmBottomOffset = 0
                            mmOverFlowOffset = 0
                            mmStopPosition = 0
                            mmLeftMargin = 794
                          end
                          object ttl005: TppLabel
                            UserName = 'ttl005'
                            HyperlinkColor = clBlue
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 7
                            Font.Style = [fsBold]
                            Transparent = True
                            mmHeight = 2910
                            mmLeft = 2910
                            mmTop = 1588
                            mmWidth = 6350
                            BandType = 5
                            GroupNo = 0
                          end
                        end
                      end
                      object ppGroup12: TppGroup
                        BreakName = 'WK'
                        DataPipeline = ppDBPipeline2
                        KeepTogether = True
                        OutlineSettings.CreateNode = True
                        NewFile = False
                        ReprintOnSubsequentPage = False
                        StartOnOddPage = False
                        UserName = 'Group4'
                        mmNewColumnThreshold = 0
                        mmNewPageThreshold = 0
                        DataPipelineName = 'ppDBPipeline2'
                        object ppGroupHeaderBand12: TppGroupHeaderBand
                          mmBottomOffset = 0
                          mmHeight = 0
                          mmPrintPosition = 0
                        end
                        object ppGroupFooterBand12: TppGroupFooterBand
                          HideWhenOneDetail = False
                          mmBottomOffset = 0
                          mmHeight = 529
                          mmPrintPosition = 0
                          object ppLine92: TppLine
                            UserName = 'Line92'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Weight = 0.750000000000000000
                            mmHeight = 529
                            mmLeft = 2381
                            mmTop = 0
                            mmWidth = 280194
                            BandType = 5
                            GroupNo = 1
                          end
                          object ppLine78: TppLine
                            UserName = 'Line78'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Weight = 0.750000000000000000
                            mmHeight = 265
                            mmLeft = 2381
                            mmTop = 264
                            mmWidth = 280194
                            BandType = 5
                            GroupNo = 1
                          end
                        end
                      end
                      object ppGroup16: TppGroup
                        BreakName = 'XDES'
                        DataPipeline = ppDBPipeline2
                        OutlineSettings.CreateNode = True
                        NewFile = False
                        ReprintOnSubsequentPage = False
                        StartOnOddPage = False
                        UserName = 'Group16'
                        mmNewColumnThreshold = 0
                        mmNewPageThreshold = 0
                        DataPipelineName = 'ppDBPipeline2'
                        object ppGroupHeaderBand16: TppGroupHeaderBand
                          mmBottomOffset = 0
                          mmHeight = 0
                          mmPrintPosition = 0
                        end
                        object ppGroupFooterBand16: TppGroupFooterBand
                          BeforePrint = ppGroupFooterBand16BeforePrint
                          HideWhenOneDetail = False
                          mmBottomOffset = 0
                          mmHeight = 3969
                          mmPrintPosition = 0
                          object ppLine66: TppLine
                            UserName = 'Line66'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Pen.Style = psDot
                            Weight = 0.750000000000000000
                            mmHeight = 265
                            mmLeft = 17198
                            mmTop = 0
                            mmWidth = 265378
                            BandType = 5
                            GroupNo = 2
                          end
                          object ppLine105: TppLine
                            UserName = 'Line1002'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 3969
                            mmLeft = 2381
                            mmTop = 0
                            mmWidth = 1852
                            BandType = 5
                            GroupNo = 2
                          end
                          object ppLine106: TppLine
                            UserName = 'Line106'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 3969
                            mmLeft = 10583
                            mmTop = 0
                            mmWidth = 1852
                            BandType = 5
                            GroupNo = 2
                          end
                          object xt004: TppLabel
                            UserName = 'xt004'
                            HyperlinkColor = clBlue
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Name = 'Arial'
                            Font.Size = 7
                            Font.Style = [fsItalic]
                            Transparent = True
                            mmHeight = 2910
                            mmLeft = 17992
                            mmTop = 529
                            mmWidth = 6350
                            BandType = 5
                            GroupNo = 2
                          end
                          object ppLine107: TppLine
                            UserName = 'Line107'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Weight = 0.750000000000000000
                            mmHeight = 529
                            mmLeft = 10583
                            mmTop = 3969
                            mmWidth = 271992
                            BandType = 5
                            GroupNo = 2
                          end
                          object ppLine108: TppLine
                            UserName = 'Line108'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 3969
                            mmLeft = 282311
                            mmTop = 0
                            mmWidth = 1852
                            BandType = 5
                            GroupNo = 2
                          end
                          object ppLine112: TppLine
                            UserName = 'Line112'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Position = lpLeft
                            Weight = 0.750000000000000000
                            mmHeight = 3969
                            mmLeft = 17198
                            mmTop = 0
                            mmWidth = 1852
                            BandType = 5
                            GroupNo = 2
                          end
                        end
                      end
                      object ppGroup20: TppGroup
                        BreakName = 'XDES'
                        DataPipeline = ppDBPipeline2
                        OutlineSettings.CreateNode = True
                        NewFile = False
                        ReprintOnSubsequentPage = False
                        StartOnOddPage = False
                        UserName = 'Group20'
                        mmNewColumnThreshold = 0
                        mmNewPageThreshold = 0
                        DataPipelineName = 'ppDBPipeline2'
                        object ppGroupHeaderBand20: TppGroupHeaderBand
                          mmBottomOffset = 0
                          mmHeight = 0
                          mmPrintPosition = 0
                        end
                        object ppGroupFooterBand20: TppGroupFooterBand
                          BeforePrint = ppGroupFooterBand20BeforePrint
                          HideWhenOneDetail = False
                          mmBottomOffset = 0
                          mmHeight = 265
                          mmPrintPosition = 0
                          object ppLine116: TppLine
                            UserName = 'Line116'
                            Border.BorderPositions = []
                            Border.Color = clBlack
                            Border.Style = psSolid
                            Border.Visible = False
                            Weight = 0.750000000000000000
                            mmHeight = 265
                            mmLeft = 17198
                            mmTop = 0
                            mmWidth = 265378
                            BandType = 5
                            GroupNo = 3
                          end
                        end
                      end
                    end
                  end
                end
                object ppGroup9: TppGroup
                  BreakName = 'TM'
                  DataPipeline = ppDBPipeline2
                  OutlineSettings.CreateNode = True
                  NewFile = False
                  StartOnOddPage = False
                  UserName = 'Group2'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'ppDBPipeline2'
                  object ppGroupHeaderBand9: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 10848
                    mmPrintPosition = 0
                    object ppShape5: TppShape
                      UserName = 'Shape3'
                      mmHeight = 10319
                      mmLeft = 2381
                      mmTop = 529
                      mmWidth = 280194
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppShape12: TppShape
                      UserName = 'Shape12'
                      Brush.Color = 13092603
                      Pen.Style = psClear
                      mmHeight = 4763
                      mmLeft = 68263
                      mmTop = 5821
                      mmWidth = 10583
                      BandType = 3
                      GroupNo = 0
                    end
                    object w0003: TppLabel
                      UserName = 'Label31'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Week '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 3175
                      mmTop = 4498
                      mmWidth = 8202
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine43: TppLine
                      UserName = 'Line18'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 10319
                      mmLeft = 37835
                      mmTop = 529
                      mmWidth = 2910
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine44: TppLine
                      UserName = 'Line19'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 10319
                      mmLeft = 78581
                      mmTop = 529
                      mmWidth = 2910
                      BandType = 3
                      GroupNo = 0
                    end
                    object tc03: TppLabel
                      UserName = 'tc02'
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
                      Font.Style = [fsBold]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 38629
                      mmTop = 1588
                      mmWidth = 39423
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel68: TppLabel
                      UserName = 'Label59'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   B   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 39952
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel69: TppLabel
                      UserName = 'Label60'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   K   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 49742
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel70: TppLabel
                      UserName = 'Label61'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   U   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 59531
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel71: TppLabel
                      UserName = 'Label62'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Total '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 70115
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine45: TppLine
                      UserName = 'Line20'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Weight = 0.750000000000000000
                      mmHeight = 1588
                      mmLeft = 38100
                      mmTop = 5556
                      mmWidth = 244211
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine46: TppLine
                      UserName = 'Line21'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 10319
                      mmLeft = 129117
                      mmTop = 529
                      mmWidth = 2910
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine47: TppLine
                      UserName = 'Line22'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 10319
                      mmLeft = 179917
                      mmTop = 529
                      mmWidth = 2910
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine48: TppLine
                      UserName = 'Line23'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 10319
                      mmLeft = 230717
                      mmTop = 529
                      mmWidth = 2910
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct001: TppLabel
                      UserName = 'bt001'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   B   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 80433
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct002: TppLabel
                      UserName = 'bt002'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   K   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 89959
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct003: TppLabel
                      UserName = 'bt003'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   U   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 99484
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct004: TppLabel
                      UserName = 'bt004'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Total '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 109273
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct006: TppLabel
                      UserName = 'bt006'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   B   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 130704
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct007: TppLabel
                      UserName = 'bt007'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   K   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 140229
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct008: TppLabel
                      UserName = 'bt008'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   U   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 149754
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct009: TppLabel
                      UserName = 'Label504'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Total '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 159809
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct011: TppLabel
                      UserName = 'bt011'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   B   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 181769
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct012: TppLabel
                      UserName = 'bt012'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   K   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 191294
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct013: TppLabel
                      UserName = 'bt013'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   U   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 200819
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct014: TppLabel
                      UserName = 'bt014'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Total '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 210873
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct016: TppLabel
                      UserName = 'bt016'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   B   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 232834
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct017: TppLabel
                      UserName = 'bt017'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   K   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 242623
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct018: TppLabel
                      UserName = 'bt018'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '   U   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 252413
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct019: TppLabel
                      UserName = 'bt019'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Total '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 262732
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object cc001: TppLabel
                      UserName = 'bc001'
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
                      Font.Style = [fsBold]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 93398
                      mmTop = 1588
                      mmWidth = 17992
                      BandType = 3
                      GroupNo = 0
                    end
                    object cc002: TppLabel
                      UserName = 'bc002'
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
                      Font.Style = [fsBold]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 144727
                      mmTop = 1588
                      mmWidth = 17992
                      BandType = 3
                      GroupNo = 0
                    end
                    object cc003: TppLabel
                      UserName = 'bc003'
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
                      Font.Style = [fsBold]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 195263
                      mmTop = 1588
                      mmWidth = 17992
                      BandType = 3
                      GroupNo = 0
                    end
                    object cc004: TppLabel
                      UserName = 'bc004'
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
                      Font.Style = [fsBold]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 247386
                      mmTop = 1588
                      mmWidth = 17992
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct005: TppLabel
                      UserName = 'bt005'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '    %   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 119592
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct010: TppLabel
                      UserName = 'bt010'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '    %   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 170127
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct015: TppLabel
                      UserName = 'bt015'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '    %   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 221192
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ct020: TppLabel
                      UserName = 'at0201'
                      HyperlinkColor = clBlue
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = '    %   '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 273051
                      mmTop = 6350
                      mmWidth = 7673
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine83: TppLine
                      UserName = 'Line83'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 10319
                      mmLeft = 78846
                      mmTop = 529
                      mmWidth = 2910
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine104: TppLine
                      UserName = 'Line104'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 5027
                      mmLeft = 67733
                      mmTop = 5821
                      mmWidth = 2381
                      BandType = 3
                      GroupNo = 0
                    end
                  end
                  object ppGroupFooterBand9: TppGroupFooterBand
                    HideWhenOneDetail = False
                    mmBottomOffset = 0
                    mmHeight = 25665
                    mmPrintPosition = 0
                    object sp0003: TppShape
                      UserName = 'Shape1'
                      mmHeight = 19315
                      mmLeft = 2381
                      mmTop = 6085
                      mmWidth = 280194
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppRichText6: TppRichText
                      UserName = 'RichText2'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      RichText = 
                        '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                        '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                        'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                        't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                        'ojection / Scheduled based on T3\par'#13#10'          How to measure P' +
                        'H Fty capacity?\par'#13#10'              It is based on different cust' +
                        'omers and factories with their past performance on the efficienc' +
                        'y and learning curve (calculation based on GSD) to project the P' +
                        'H Fty Capacity.\par'#13#10'          What is GSD Fty capacity?\par'#13#10'  ' +
                        '            It is based on the 100% (efficiency) GSD (not includ' +
                        'ing the learning curve and line balancing factors) manhours (# o' +
                        'f production lines / workers) provided by the respective factory' +
                        ' on a monthly basis (working days).\par'#13#10'          1a)+1b) = 2a)' +
                        '+2b)                     2b)=3a)+3b)\par'#13#10'\pard\lang1028\f0\par'#13 +
                        #10'\par'#13#10'}'#13#10#0
                      mmHeight = 17992
                      mmLeft = 2910
                      mmTop = 6615
                      mmWidth = 277813
                      BandType = 5
                      GroupNo = 0
                      mmBottomOffset = 0
                      mmOverFlowOffset = 0
                      mmStopPosition = 0
                      mmLeftMargin = 794
                    end
                    object ppRichText5: TppRichText
                      UserName = 'RichText1'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      RichText = 
                        '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                        '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                        'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                        't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                        'ojection / Scheduled based on Ex-fty\lang1028\f0\par'#13#10'\lang1033\' +
                        'f2           How to measure PH Fty capacity?\par'#13#10'              ' +
                        'It is based on different customers and factories with their past' +
                        ' performance on the efficiency and learning curve (calculation b' +
                        'ased on GSD) to project the PH Fty Capacity.\par'#13#10'          What' +
                        ' is GSD Fty capacity?\par'#13#10'              It is based on the 100%' +
                        ' (efficiency) GSD (not including the learning curve and line bal' +
                        'ancing factors) manhours (# of production lines / workers) provi' +
                        'ded by the respective factory on a monthly basis (working days).' +
                        '\par'#13#10'\pard\lang1028\f0\par'#13#10'\pard\sl240\slmult1\lang1033\f2\par' +
                        #13#10'}'#13#10#0
                      mmHeight = 16933
                      mmLeft = 2910
                      mmTop = 6615
                      mmWidth = 277813
                      BandType = 5
                      GroupNo = 0
                      mmBottomOffset = 0
                      mmOverFlowOffset = 0
                      mmStopPosition = 0
                      mmLeftMargin = 794
                    end
                    object ttl003: TppLabel
                      UserName = 'Label1'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 2910
                      mmTop = 1588
                      mmWidth = 6350
                      BandType = 5
                      GroupNo = 0
                    end
                  end
                end
                object ppGroup10: TppGroup
                  BreakName = 'WK'
                  DataPipeline = ppDBPipeline2
                  KeepTogether = True
                  OutlineSettings.CreateNode = True
                  NewFile = False
                  ReprintOnSubsequentPage = False
                  StartOnOddPage = False
                  UserName = 'Group4'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'ppDBPipeline2'
                  object ppGroupHeaderBand10: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                  object ppGroupFooterBand10: TppGroupFooterBand
                    HideWhenOneDetail = False
                    mmBottomOffset = 0
                    mmHeight = 529
                    mmPrintPosition = 0
                    object ppLine88: TppLine
                      UserName = 'Line88'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Weight = 0.750000000000000000
                      mmHeight = 529
                      mmLeft = 2381
                      mmTop = 0
                      mmWidth = 280194
                      BandType = 5
                      GroupNo = 1
                    end
                    object ppLine77: TppLine
                      UserName = 'Line77'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 2381
                      mmTop = 264
                      mmWidth = 280194
                      BandType = 5
                      GroupNo = 1
                    end
                  end
                end
                object ppGroup15: TppGroup
                  BreakName = 'XDES'
                  DataPipeline = ppDBPipeline2
                  OutlineSettings.CreateNode = True
                  NewFile = False
                  ReprintOnSubsequentPage = False
                  StartOnOddPage = False
                  UserName = 'Group15'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'ppDBPipeline2'
                  object ppGroupHeaderBand15: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                  object ppGroupFooterBand15: TppGroupFooterBand
                    BeforePrint = ppGroupFooterBand15BeforePrint
                    HideWhenOneDetail = False
                    mmBottomOffset = 0
                    mmHeight = 3970
                    mmPrintPosition = 0
                    object ppLine65: TppLine
                      UserName = 'Line65'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Pen.Style = psDot
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 17198
                      mmTop = 0
                      mmWidth = 265378
                      BandType = 5
                      GroupNo = 2
                    end
                    object ppLine100: TppLine
                      UserName = 'Line100'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 3969
                      mmLeft = 2381
                      mmTop = 0
                      mmWidth = 1852
                      BandType = 5
                      GroupNo = 2
                    end
                    object ppLine101: TppLine
                      UserName = 'Line101'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 3969
                      mmLeft = 10583
                      mmTop = 0
                      mmWidth = 1852
                      BandType = 5
                      GroupNo = 2
                    end
                    object xt003: TppLabel
                      UserName = 'xt003'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsItalic]
                      Transparent = True
                      mmHeight = 2921
                      mmLeft = 17727
                      mmTop = 529
                      mmWidth = 6223
                      BandType = 5
                      GroupNo = 2
                    end
                    object ppLine102: TppLine
                      UserName = 'Line102'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 10583
                      mmTop = 3969
                      mmWidth = 271992
                      BandType = 5
                      GroupNo = 2
                    end
                    object ppLine103: TppLine
                      UserName = 'Line1001'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 3969
                      mmLeft = 282311
                      mmTop = 0
                      mmWidth = 1852
                      BandType = 5
                      GroupNo = 2
                    end
                    object ppLine111: TppLine
                      UserName = 'Line111'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Position = lpLeft
                      Weight = 0.750000000000000000
                      mmHeight = 3969
                      mmLeft = 17198
                      mmTop = 0
                      mmWidth = 1852
                      BandType = 5
                      GroupNo = 2
                    end
                  end
                end
                object ppGroup19: TppGroup
                  BreakName = 'XDES'
                  DataPipeline = ppDBPipeline2
                  OutlineSettings.CreateNode = True
                  NewFile = False
                  ReprintOnSubsequentPage = False
                  StartOnOddPage = False
                  UserName = 'Group19'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'ppDBPipeline2'
                  object ppGroupHeaderBand19: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                  object ppGroupFooterBand19: TppGroupFooterBand
                    BeforePrint = ppGroupFooterBand19BeforePrint
                    HideWhenOneDetail = False
                    mmBottomOffset = 0
                    mmHeight = 265
                    mmPrintPosition = 0
                    object ppLine115: TppLine
                      UserName = 'Line115'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 17198
                      mmTop = 0
                      mmWidth = 265378
                      BandType = 5
                      GroupNo = 3
                    end
                  end
                end
              end
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'TM'
            DataPipeline = ppDBPipeline2
            OutlineSettings.CreateNode = True
            NewFile = False
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 10848
              mmPrintPosition = 0
              object ppShape3: TppShape
                UserName = 'Shape3'
                mmHeight = 10319
                mmLeft = 2381
                mmTop = 529
                mmWidth = 280194
                BandType = 3
                GroupNo = 0
              end
              object ppShape11: TppShape
                UserName = 'Shape101'
                Brush.Color = 13092603
                Pen.Style = psClear
                mmHeight = 4763
                mmLeft = 68263
                mmTop = 5821
                mmWidth = 10583
                BandType = 3
                GroupNo = 0
              end
              object w0002: TppLabel
                UserName = 'w0002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Week '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 3175
                mmTop = 4498
                mmWidth = 8202
                BandType = 3
                GroupNo = 0
              end
              object ppLine18: TppLine
                UserName = 'Line18'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 37835
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLine19: TppLine
                UserName = 'Line19'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 78581
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object tc02: TppLabel
                UserName = 'tc02'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 38629
                mmTop = 1588
                mmWidth = 39423
                BandType = 3
                GroupNo = 0
              end
              object ppLabel59: TppLabel
                UserName = 'Label59'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 39952
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel60: TppLabel
                UserName = 'Label60'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 49742
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel61: TppLabel
                UserName = 'Label61'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 59531
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel62: TppLabel
                UserName = 'Label62'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 70115
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLine20: TppLine
                UserName = 'Line20'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 38100
                mmTop = 5556
                mmWidth = 244211
                BandType = 3
                GroupNo = 0
              end
              object ppLine21: TppLine
                UserName = 'Line21'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 129117
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLine22: TppLine
                UserName = 'Line22'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 179917
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLine23: TppLine
                UserName = 'Line23'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 230717
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object bt001: TppLabel
                UserName = 'bt001'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 80433
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt002: TppLabel
                UserName = 'bt002'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 89959
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt003: TppLabel
                UserName = 'bt003'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 99484
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt004: TppLabel
                UserName = 'bt004'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 109273
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt006: TppLabel
                UserName = 'bt006'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 130704
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt007: TppLabel
                UserName = 'bt007'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 140229
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt008: TppLabel
                UserName = 'bt008'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 149754
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt009: TppLabel
                UserName = 'Label504'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 159809
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt011: TppLabel
                UserName = 'bt011'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 181769
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt012: TppLabel
                UserName = 'bt012'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 191294
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt013: TppLabel
                UserName = 'bt013'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 200819
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt014: TppLabel
                UserName = 'bt014'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 210873
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt016: TppLabel
                UserName = 'bt016'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   B   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 232834
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt017: TppLabel
                UserName = 'bt017'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   K   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 242623
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt018: TppLabel
                UserName = 'bt018'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '   U   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 252413
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt019: TppLabel
                UserName = 'bt019'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 262732
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bc001: TppLabel
                UserName = 'bc001'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 93398
                mmTop = 1588
                mmWidth = 17992
                BandType = 3
                GroupNo = 0
              end
              object bc002: TppLabel
                UserName = 'bc002'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 144727
                mmTop = 1588
                mmWidth = 17992
                BandType = 3
                GroupNo = 0
              end
              object bc003: TppLabel
                UserName = 'bc003'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 195263
                mmTop = 1588
                mmWidth = 17992
                BandType = 3
                GroupNo = 0
              end
              object bc004: TppLabel
                UserName = 'bc004'
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
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3440
                mmLeft = 247386
                mmTop = 1588
                mmWidth = 17992
                BandType = 3
                GroupNo = 0
              end
              object bt005: TppLabel
                UserName = 'bt005'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '    %   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 119592
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt010: TppLabel
                UserName = 'bt010'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '    %   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 170127
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt015: TppLabel
                UserName = 'bt015'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '    %   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 221192
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object bt020: TppLabel
                UserName = 'at0201'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '    %   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 273051
                mmTop = 6350
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLine81: TppLine
                UserName = 'Line81'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 10319
                mmLeft = 78846
                mmTop = 529
                mmWidth = 2910
                BandType = 3
                GroupNo = 0
              end
              object ppLine99: TppLine
                UserName = 'Line99'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5027
                mmLeft = 67733
                mmTop = 5821
                mmWidth = 2381
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 25664
              mmPrintPosition = 0
              object sp0002: TppShape
                UserName = 'sp0002'
                mmHeight = 19315
                mmLeft = 2381
                mmTop = 6085
                mmWidth = 280194
                BandType = 5
                GroupNo = 0
              end
              object ppRichText4: TppRichText
                UserName = 'RichText4'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RichText4'
                RichText = 
                  '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                  '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                  'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                  't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                  'ojection / Scheduled based on T3\lang1028\f0\par'#13#10'\lang1033\f2  ' +
                  '         How to measure PH Fty capacity?\par'#13#10'              It i' +
                  's based on different customers and factories with their past per' +
                  'formance on the efficiency and learning curve (calculation based' +
                  ' on GSD) to project the PH Fty Capacity.\par'#13#10'          What is ' +
                  'GSD Fty capacity?\par'#13#10'              It is based on the 100% (ef' +
                  'ficiency) GSD (not including the learning curve and line balanci' +
                  'ng factors) manhours (# of production lines / workers) provided ' +
                  'by the respective factory on a monthly basis (working days).\par' +
                  #13#10'          1a)+1b) = 2a)+2b)                     2b)=3a)+3b)\pa' +
                  'r'#13#10'\pard\lang1028\f0\par'#13#10'\pard\sl240\slmult1\lang1033\f2\par'#13#10'}' +
                  #13#10#0
                mmHeight = 17992
                mmLeft = 2910
                mmTop = 6615
                mmWidth = 277813
                BandType = 5
                GroupNo = 0
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmLeftMargin = 794
              end
              object ppRichText3: TppRichText
                UserName = 'RichText3'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RichText3'
                RichText = 
                  '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
                  '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
                  'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
                  't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
                  'ojection / Scheduled based on Ex-fty\lang1028\f0\par'#13#10'\lang1033\' +
                  'f2           How to measure PH Fty capacity?\par'#13#10'              ' +
                  'It is based on different customers and factories with their past' +
                  ' performance on the efficiency and learning curve (calculation b' +
                  'ased on GSD) to project the PH Fty Capacity.\par'#13#10'          What' +
                  ' is GSD Fty capacity?\par'#13#10'              It is based on the 100%' +
                  ' (efficiency) GSD (not including the learning curve and line bal' +
                  'ancing factors) manhours (# of production lines / workers) provi' +
                  'ded by the respective factory on a monthly basis (working days).' +
                  '\par'#13#10'\pard\lang1028\f0\par'#13#10'\par'#13#10'}'#13#10#0
                mmHeight = 16404
                mmLeft = 2910
                mmTop = 6615
                mmWidth = 277813
                BandType = 5
                GroupNo = 0
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmLeftMargin = 794
              end
              object ttl002: TppLabel
                UserName = 'ttl002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2921
                mmLeft = 2910
                mmTop = 1588
                mmWidth = 6350
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'WK'
            DataPipeline = ppDBPipeline2
            KeepTogether = True
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand6: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 529
              mmPrintPosition = 0
              object ppLine84: TppLine
                UserName = 'Line84'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 2381
                mmTop = 0
                mmWidth = 280194
                BandType = 5
                GroupNo = 1
              end
              object ppLine60: TppLine
                UserName = 'Line60'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 2381
                mmTop = 264
                mmWidth = 280194
                BandType = 5
                GroupNo = 1
              end
            end
          end
          object ppGroup14: TppGroup
            BreakName = 'XDES'
            DataPipeline = ppDBPipeline2
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group14'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand14: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand14: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand14BeforePrint
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 3969
              mmPrintPosition = 0
              object ppLine64: TppLine
                UserName = 'Line64'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Pen.Style = psDot
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 17463
                mmTop = 0
                mmWidth = 265113
                BandType = 5
                GroupNo = 2
              end
              object ppLine95: TppLine
                UserName = 'Line95'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 2381
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 2
              end
              object ppLine96: TppLine
                UserName = 'Line96'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 10583
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 2
              end
              object xt002: TppLabel
                UserName = 'xt002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                mmHeight = 2910
                mmLeft = 17727
                mmTop = 529
                mmWidth = 6350
                BandType = 5
                GroupNo = 2
              end
              object ppLine97: TppLine
                UserName = 'Line97'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 10583
                mmTop = 3969
                mmWidth = 271992
                BandType = 5
                GroupNo = 2
              end
              object ppLine98: TppLine
                UserName = 'Line98'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 282311
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 2
              end
              object ppLine110: TppLine
                UserName = 'Line110'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 17198
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 2
              end
            end
          end
          object ppGroup18: TppGroup
            BreakName = 'XDES'
            DataPipeline = ppDBPipeline2
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group18'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand18: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand18: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand18BeforePrint
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 265
              mmPrintPosition = 0
              object ppLine114: TppLine
                UserName = 'Line114'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 17463
                mmTop = 0
                mmWidth = 265113
                BandType = 5
                GroupNo = 3
              end
            end
          end
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'TM'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10848
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape1'
          mmHeight = 10319
          mmLeft = 2381
          mmTop = 529
          mmWidth = 280194
          BandType = 3
          GroupNo = 0
        end
        object ppShape10: TppShape
          UserName = 'Shape10'
          Brush.Color = 13092603
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 68263
          mmTop = 5821
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object w0001: TppLabel
          UserName = 'x0002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Week '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3175
          mmTop = 4498
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
        end
        object ppLine25: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 37835
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine26: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 78581
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object tc01: TppLabel
          UserName = 'tc01'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 38629
          mmTop = 1588
          mmWidth = 39423
          BandType = 3
          GroupNo = 0
        end
        object ppLabel100: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 39952
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel101: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 49742
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel102: TppLabel
          UserName = 'Label47'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 59531
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel103: TppLabel
          UserName = 'Label48'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 70115
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLine27: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 38100
          mmTop = 5556
          mmWidth = 244211
          BandType = 3
          GroupNo = 0
        end
        object ppLine28: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 129117
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine29: TppLine
          UserName = 'Line7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 179917
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine30: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 230717
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object at001: TppLabel
          UserName = 'Label26'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 80433
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at002: TppLabel
          UserName = 'Label27'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 89959
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at003: TppLabel
          UserName = 'Label28'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 99484
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at004: TppLabel
          UserName = 'Label43'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 109273
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at006: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 130704
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at007: TppLabel
          UserName = 'Label45'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 140229
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at008: TppLabel
          UserName = 'Label49'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 149754
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at009: TppLabel
          UserName = 'Label50'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 159809
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at011: TppLabel
          UserName = 'Label51'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 181769
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at012: TppLabel
          UserName = 'Label52'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 191294
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at013: TppLabel
          UserName = 'Label53'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 200819
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at014: TppLabel
          UserName = 'Label501'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 210873
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at016: TppLabel
          UserName = 'Label55'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   B   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 232834
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at017: TppLabel
          UserName = 'Label56'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   K   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 242623
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at018: TppLabel
          UserName = 'Label57'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '   U   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 252413
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at019: TppLabel
          UserName = 'Label58'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 262732
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ac01: TppLabel
          UserName = 'ac01'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 93398
          mmTop = 1588
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ac02: TppLabel
          UserName = 'ac02'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 144727
          mmTop = 1588
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ac03: TppLabel
          UserName = 'ac03'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 195263
          mmTop = 1588
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ac04: TppLabel
          UserName = 'ac04'
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
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 247386
          mmTop = 1588
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object at005: TppLabel
          UserName = 'at005'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '    %   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 119592
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at010: TppLabel
          UserName = 'Label503'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '    %   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 170127
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at015: TppLabel
          UserName = 'at015'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '    %   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 221192
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object at020: TppLabel
          UserName = 'at020'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '    %   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 273051
          mmTop = 6350
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLine79: TppLine
          UserName = 'Line79'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 78846
          mmTop = 529
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppLine94: TppLine
          UserName = 'Line94'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 67733
          mmTop = 5821
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 25665
        mmPrintPosition = 0
        object sp0001: TppShape
          UserName = 'Shape2'
          mmHeight = 19315
          mmLeft = 2381
          mmTop = 6085
          mmWidth = 280194
          BandType = 5
          GroupNo = 0
        end
        object ppRichText1: TppRichText
          UserName = 'RichText1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RichText1'
          RichText = 
            '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
            '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
            'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
            't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
            'ojection / Scheduled based on Ex-fty\lang1028\f0\par'#13#10'\lang1033\' +
            'f2           How to measure PH Fty capacity?\par'#13#10'              ' +
            'It is based on different customers and factories with their past' +
            ' performance on the efficiency and learning curve (calculation b' +
            'ased on GSD) to project the PH Fty Capacity.\par'#13#10'          What' +
            ' is GSD Fty capacity?\par'#13#10'              It is based on the 100%' +
            ' (efficiency) GSD (not including the learning curve and line bal' +
            'ancing factors) manhours (# of production lines / workers) provi' +
            'ded by the respective factory on a monthly basis (working days).' +
            '\par'#13#10'\pard\lang1028\f0\par'#13#10'}'#13#10#0
          mmHeight = 15346
          mmLeft = 2910
          mmTop = 6615
          mmWidth = 277813
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeftMargin = 794
        end
        object ppRichText2: TppRichText
          UserName = 'RichText2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RichText2'
          RichText = 
            '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
            '\f0\fnil Arial;}{\f1\fnil\fcharset161{\*\fname Arial;}Arial Gree' +
            'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'\viewkind4\uc1\pard\sl240\slmul' +
            't1\lang1028\f0\fs12 TIP\par'#13#10'\f1\'#39'd6      \lang1033\f2  Sales pr' +
            'ojection / Scheduled based on T3\lang1028\f0\par'#13#10'\lang1033\f2  ' +
            '         How to measure PH Fty capacity?\par'#13#10'              It i' +
            's based on different customers and factories with their past per' +
            'formance on the efficiency and learning curve (calculation based' +
            ' on GSD) to project the PH Fty Capacity.\par'#13#10'          What is ' +
            'GSD Fty capacity?\par'#13#10'              It is based on the 100% (ef' +
            'ficiency) GSD (not including the learning curve and line balanci' +
            'ng factors) manhours (# of production lines / workers) provided ' +
            'by the respective factory on a monthly basis (working days).\par' +
            #13#10'          1a)+1b) = 2a)+2b)                     2b)=3a)+3b)\pa' +
            'r'#13#10'\pard\lang1028\f0\par'#13#10'}'#13#10#0
          mmHeight = 17992
          mmLeft = 2910
          mmTop = 6615
          mmWidth = 277813
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeftMargin = 794
        end
        object ttl001: TppLabel
          UserName = 'ttl001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2921
          mmLeft = 2910
          mmTop = 1588
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'WK'
      DataPipeline = ppDBPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand8: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 529
        mmPrintPosition = 0
        object ppLine38: TppLine
          UserName = 'Line38'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 2381
          mmTop = 0
          mmWidth = 280194
          BandType = 5
          GroupNo = 1
        end
        object ppLine49: TppLine
          UserName = 'Line49'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 2381
          mmTop = 264
          mmWidth = 280194
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'XDES'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand13BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLine61: TppLine
          UserName = 'Line61'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 17198
          mmTop = 0
          mmWidth = 265378
          BandType = 5
          GroupNo = 2
        end
        object ppLine73: TppLine
          UserName = 'Line73'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 10583
          mmTop = 3969
          mmWidth = 271992
          BandType = 5
          GroupNo = 2
        end
        object xt001: TppLabel
          UserName = 'xt001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 2910
          mmLeft = 17727
          mmTop = 529
          mmWidth = 6350
          BandType = 5
          GroupNo = 2
        end
        object ppLine74: TppLine
          UserName = 'Line74'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 2381
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine75: TppLine
          UserName = 'Line75'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 10583
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine76: TppLine
          UserName = 'Line76'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 282311
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 2
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 17198
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup17: TppGroup
      BreakName = 'XDES'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group17'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand17: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand17: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand17BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine113: TppLine
          UserName = 'Line113'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 17198
          mmTop = 0
          mmWidth = 265378
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 200
  end
  object Query6: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oafty_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SDSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TB'
        DataType = ftInteger
      end
      item
        Name = 'TK'
        DataType = ftInteger
      end
      item
        Name = 'TU'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    object HideSomeGroup1: TMenuItem
      Caption = 'Hide Some Group'
      ShortCut = 49224
      Visible = False
      OnClick = HideSomeGroup1Click
    end
    object ShowGroup1: TMenuItem
      Caption = 'Show Group'
      ShortCut = 49235
      Visible = False
      OnClick = ShowGroup1Click
    end
    object CheckSOIssueVsWOProcessDifference1: TMenuItem
      Caption = 'Check SO Issue Vs WO Cfmd Process Performance Difference'
      OnClick = CheckSOIssueVsWOProcessDifference1Click
    end
    object CheckSOIssueVsRWOCfmdProcessPerformanceDifference1: TMenuItem
      Caption = 'Check SO Issue Vs RWO Cfmd Process Performance Difference'
      OnClick = CheckSOIssueVsRWOCfmdProcessPerformanceDifference1Click
    end
    object CheckaT31: TMenuItem
      Caption = 'Check aT3(-) and aT3(+)'
      OnClick = CheckaT31Click
    end
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 160
    Top = 56
  end
end
