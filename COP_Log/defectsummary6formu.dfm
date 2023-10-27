object frmdefectsummary6: Tfrmdefectsummary6
  Left = 192
  Top = 114
  Caption = 'frmdefectsummary6'
  ClientHeight = 242
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 184
    Top = 24
    Width = 25
    Height = 13
    Caption = 'Year '
  end
  object Label5: TLabel
    Left = 24
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Customer '
  end
  object Label7: TLabel
    Left = 136
    Top = 176
    Width = 73
    Height = 13
    Caption = 'Assembly Line  '
  end
  object SpinEdit1: TSpinEdit
    Left = 216
    Top = 24
    Width = 65
    Height = 22
    MaxValue = 2020
    MinValue = 2008
    TabOrder = 0
    Value = 2008
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 24
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    Text = 'AFGH'
    Items.Strings = (
      'AFGH'
      'AGPO'
      'APWS')
  end
  object rb1: TRadioButton
    Left = 24
    Top = 56
    Width = 65
    Height = 17
    Caption = 'Weekly'
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object SpinEdit2: TSpinEdit
    Left = 104
    Top = 56
    Width = 65
    Height = 22
    MaxValue = 53
    MinValue = 1
    TabOrder = 3
    Value = 53
  end
  object rb2: TRadioButton
    Left = 24
    Top = 80
    Width = 65
    Height = 17
    Caption = 'Monthly'
    TabOrder = 4
  end
  object SpinEdit3: TSpinEdit
    Left = 104
    Top = 80
    Width = 65
    Height = 22
    MaxValue = 12
    MinValue = 1
    TabOrder = 5
    Value = 12
  end
  object rb3: TRadioButton
    Left = 24
    Top = 104
    Width = 73
    Height = 17
    Caption = 'Seasonal'
    TabOrder = 6
  end
  object SpinEdit4: TSpinEdit
    Left = 104
    Top = 104
    Width = 65
    Height = 22
    MaxValue = 4
    MinValue = 1
    TabOrder = 7
    Value = 4
  end
  object rb4: TRadioButton
    Left = 24
    Top = 128
    Width = 73
    Height = 17
    Caption = 'Yearly '
    TabOrder = 8
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 208
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
    TabOrder = 9
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 208
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 10
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 152
    Width = 113
    Height = 17
    Caption = 'Garments Full Audit'
    TabOrder = 11
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 176
    Width = 97
    Height = 17
    Caption = 'Full Inspection'
    TabOrder = 12
  end
  object Edit1: TEdit
    Left = 216
    Top = 176
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 13
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_aql_insp_offline_cmp'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
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
        Name = 'FTY'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
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
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INSP_QTY'
        DataType = ftInteger
      end
      item
        Name = 'INSP_RST'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'OFFLINE_QTY'
        DataType = ftInteger
      end
      item
        Name = 'OFFLINE_SQTY'
        DataType = ftInteger
      end
      item
        Name = 'OFFLINE_RST'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'DEF1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF3'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF4'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF5'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF7'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF8'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF9'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEF10'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 8
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 72
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 104
    Top = 65528
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 136
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_aql_defectsummary2'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'PDN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'QTY1'
        DataType = ftInteger
      end
      item
        Name = 'QTY2'
        DataType = ftInteger
      end
      item
        Name = 'QTY3'
        DataType = ftInteger
      end
      item
        Name = 'QTY4'
        DataType = ftInteger
      end
      item
        Name = 'QTY5'
        DataType = ftInteger
      end
      item
        Name = 'QTY6'
        DataType = ftInteger
      end
      item
        Name = 'QTY7'
        DataType = ftInteger
      end
      item
        Name = 'QTY8'
        DataType = ftInteger
      end
      item
        Name = 'QTY9'
        DataType = ftInteger
      end
      item
        Name = 'QTY10'
        DataType = ftInteger
      end
      item
        Name = 'QTY11'
        DataType = ftInteger
      end
      item
        Name = 'QTY12'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FTY'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SQTY1'
        DataType = ftInteger
      end
      item
        Name = 'OQTY'
        DataType = ftInteger
      end
      item
        Name = 'DTYP'
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'AUDIT'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'AUDIT1'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT2'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT3'
        DataType = ftBoolean
      end
      item
        Name = 'ACC'
        DataType = ftBoolean
      end
      item
        Name = 'DELLOT'
        DataType = ftInteger
      end
      item
        Name = 'MQ1'
        DataType = ftInteger
      end
      item
        Name = 'MQ2'
        DataType = ftInteger
      end
      item
        Name = 'MQ3'
        DataType = ftInteger
      end
      item
        Name = 'MQ4'
        DataType = ftInteger
      end
      item
        Name = 'MQ5'
        DataType = ftInteger
      end
      item
        Name = 'MQ6'
        DataType = ftInteger
      end
      item
        Name = 'MQ7'
        DataType = ftInteger
      end
      item
        Name = 'MQ8'
        DataType = ftInteger
      end
      item
        Name = 'MQ9'
        DataType = ftInteger
      end
      item
        Name = 'MQ10'
        DataType = ftInteger
      end
      item
        Name = 'MQ11'
        DataType = ftInteger
      end
      item
        Name = 'MQ12'
        DataType = ftInteger
      end
      item
        Name = 'OQTY1'
        DataType = ftInteger
      end
      item
        Name = 'TQTY1'
        DataType = ftInteger
      end
      item
        Name = 'QTYP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'MAJR'
        DataType = ftInteger
      end
      item
        Name = 'MINR'
        DataType = ftInteger
      end
      item
        Name = 'MOQ'
        DataType = ftInteger
      end
      item
        Name = 'MACC'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 176
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 208
    Top = 64
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 248
    Top = 64
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_aql_defectsummary2'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'PDN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'QTY1'
        DataType = ftInteger
      end
      item
        Name = 'QTY2'
        DataType = ftInteger
      end
      item
        Name = 'QTY3'
        DataType = ftInteger
      end
      item
        Name = 'QTY4'
        DataType = ftInteger
      end
      item
        Name = 'QTY5'
        DataType = ftInteger
      end
      item
        Name = 'QTY6'
        DataType = ftInteger
      end
      item
        Name = 'QTY7'
        DataType = ftInteger
      end
      item
        Name = 'QTY8'
        DataType = ftInteger
      end
      item
        Name = 'QTY9'
        DataType = ftInteger
      end
      item
        Name = 'QTY10'
        DataType = ftInteger
      end
      item
        Name = 'QTY11'
        DataType = ftInteger
      end
      item
        Name = 'QTY12'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FTY'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SQTY1'
        DataType = ftInteger
      end
      item
        Name = 'OQTY'
        DataType = ftInteger
      end
      item
        Name = 'DTYP'
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'AUDIT'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'AUDIT1'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT2'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT3'
        DataType = ftBoolean
      end
      item
        Name = 'ACC'
        DataType = ftBoolean
      end
      item
        Name = 'DELLOT'
        DataType = ftInteger
      end
      item
        Name = 'MQ1'
        DataType = ftInteger
      end
      item
        Name = 'MQ2'
        DataType = ftInteger
      end
      item
        Name = 'MQ3'
        DataType = ftInteger
      end
      item
        Name = 'MQ4'
        DataType = ftInteger
      end
      item
        Name = 'MQ5'
        DataType = ftInteger
      end
      item
        Name = 'MQ6'
        DataType = ftInteger
      end
      item
        Name = 'MQ7'
        DataType = ftInteger
      end
      item
        Name = 'MQ8'
        DataType = ftInteger
      end
      item
        Name = 'MQ9'
        DataType = ftInteger
      end
      item
        Name = 'MQ10'
        DataType = ftInteger
      end
      item
        Name = 'MQ11'
        DataType = ftInteger
      end
      item
        Name = 'MQ12'
        DataType = ftInteger
      end
      item
        Name = 'OQTY1'
        DataType = ftInteger
      end
      item
        Name = 'TQTY1'
        DataType = ftInteger
      end
      item
        Name = 'QTYP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'MAJR'
        DataType = ftInteger
      end
      item
        Name = 'MINR'
        DataType = ftInteger
      end
      item
        Name = 'MOQ'
        DataType = ftInteger
      end
      item
        Name = 'MACC'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 176
    Top = 96
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 208
    Top = 96
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline3'
    Left = 248
    Top = 96
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport3PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 168
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object sub001: TppLabel
        UserName = 'sub001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week 12 Major Defect Analysis On AQL Audit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 5821
        mmTop = 2646
        mmWidth = 272257
        BandType = 0
      end
      object sub002: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week 12 Major Defect Analysis On AQL Audit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 5821
        mmTop = 8202
        mmWidth = 272257
        BandType = 0
      end
      object cust001: TppLabel
        UserName = 'cust001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 22225
        mmWidth = 14023
        BandType = 0
      end
      object styles001: TppLabel
        UserName = 'styles001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Styles: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 47096
        mmTop = 22225
        mmWidth = 9260
        BandType = 0
      end
      object pos001: TppLabel
        UserName = 'pos001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'POs: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 22225
        mmWidth = 7144
        BandType = 0
      end
      object shp001: TppLabel
        UserName = 'shp001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipment Quantity being Audit: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 22225
        mmWidth = 39952
        BandType = 0
      end
      object sample001: TppLabel
        UserName = 'sample001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sample Garments: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 218282
        mmTop = 22225
        mmWidth = 24606
        BandType = 0
      end
      object line001: TppLabel
        UserName = 'line001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 18521
        mmWidth = 14023
        BandType = 0
      end
      object cust002: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 25665
        mmWidth = 14023
        BandType = 0
      end
      object styles002: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Styles: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 47096
        mmTop = 25665
        mmWidth = 9260
        BandType = 0
      end
      object pos002: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'POs: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 25665
        mmWidth = 7144
        BandType = 0
      end
      object shp002: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipment Quantity being Audit: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 25665
        mmWidth = 39952
        BandType = 0
      end
      object samp002: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sample Garments: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 218282
        mmTop = 25665
        mmWidth = 24606
        BandType = 0
      end
      object line002: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 18256
        mmWidth = 14023
        BandType = 0
      end
      object wk001: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 48419
        mmTop = 13758
        mmWidth = 184944
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25171#21360#26085#26399': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 193411
        mmTop = 18521
        mmWidth = 13229
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 209286
        mmTop = 18521
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913#30908': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 233098
        mmTop = 18521
        mmWidth = 7408
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 242359
        mmTop = 18521
        mmWidth = 7144
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 18521
        mmWidth = 14023
        BandType = 0
      end
      object ws001: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Styles: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 47096
        mmTop = 18521
        mmWidth = 9260
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5556
        mmLeft = 794
        mmTop = 0
        mmWidth = 283105
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 48154
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 62971
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 77788
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 92604
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 107421
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 122238
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 137054
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 151871
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OQTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 211138
        mmTop = 1323
        mmWidth = 5556
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 47625
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 106892
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 92075
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 62442
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 77258
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 136525
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 151342
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 166159
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 180975
        mmTop = 0
        mmWidth = 1323
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
        mmHeight = 5556
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine76: TppLine
        UserName = 'Line76'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 238655
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 262732
        mmTop = 1323
        mmWidth = 14552
        BandType = 4
      end
      object ppLine134: TppLine
        UserName = 'Line134'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 223309
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SQTY1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 247386
        mmTop = 1323
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 56092
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 70908
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 85725
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 100542
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 115359
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 130175
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 144992
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 159809
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 174625
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel92: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 54240
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel93: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 69056
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel94: TppLabel
        UserName = 'Label115'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 83873
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel95: TppLabel
        UserName = 'Label116'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 98690
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel96: TppLabel
        UserName = 'Label117'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 113506
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel97: TppLabel
        UserName = 'Label118'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 128323
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel98: TppLabel
        UserName = 'Label119'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 143140
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel99: TppLabel
        UserName = 'Label120'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 157957
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel100: TppLabel
        UserName = 'Label1201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 172773
        mmTop = 1323
        mmWidth = 2381
        BandType = 4
      end
      object ppLine170: TppLine
        UserName = 'Line170'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 262203
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TQTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 231511
        mmTop = 1323
        mmWidth = 6879
        BandType = 4
      end
      object p001: TppLabel
        UserName = 'Label401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  %    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 241300
        mmTop = 1323
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MOQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 217488
        mmTop = 1323
        mmWidth = 5556
        BandType = 4
      end
      object ppLine191: TppLine
        UserName = 'Line191'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 216959
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 195792
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine79: TppLine
        UserName = 'Line79'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 210609
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 181505
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 187590
        mmTop = 1852
        mmWidth = 2381
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 189442
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText75: TppDBText
        UserName = 'DBText75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 196321
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 202407
        mmTop = 1852
        mmWidth = 2381
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MQ11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0;'#39#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 204259
        mmTop = 1323
        mmWidth = 6085
        BandType = 4
      end
      object ppLine143: TppLine
        UserName = 'Line1701'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 277548
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object g001: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  %    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 278078
        mmTop = 1323
        mmWidth = 5292
        BandType = 4
      end
      object yn01: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Assembly Line Sub-total / '#32068#35037#32218#23567#35336': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 10848
        mmTop = 1323
        mmWidth = 34925
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'YR'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'M1'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 21696
        mmPrintPosition = 0
        object ppShape19: TppShape
          UserName = 'Shape19'
          mmHeight = 20902
          mmLeft = 794
          mmTop = 1058
          mmWidth = 283105
          BandType = 3
          GroupNo = 1
        end
        object ppShape8: TppShape
          UserName = 'Shape8'
          Brush.Color = 14221053
          Pen.Style = psClear
          mmHeight = 3704
          mmLeft = 47890
          mmTop = 1323
          mmWidth = 162984
          BandType = 3
          GroupNo = 1
        end
        object ppShape7: TppShape
          UserName = 'Shape7'
          Brush.Color = 14221053
          Pen.Style = psClear
          mmHeight = 20373
          mmLeft = 210609
          mmTop = 1323
          mmWidth = 73025
          BandType = 3
          GroupNo = 1
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = 14221053
          Pen.Style = psClear
          mmHeight = 20373
          mmLeft = 1058
          mmTop = 1323
          mmWidth = 47096
          BandType = 3
          GroupNo = 1
        end
        object ppLine85: TppLine
          UserName = 'Line85'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 47625
          mmTop = 17463
          mmWidth = 163248
          BandType = 3
          GroupNo = 1
        end
        object ppLabel84: TppLabel
          UserName = 'Label84'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Assembly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 1323
          mmTop = 4233
          mmWidth = 10054
          BandType = 3
          GroupNo = 1
        end
        object ppLine86: TppLine
          UserName = 'Line86'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 18785
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object def0001: TppLabel
          UserName = 'def0001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Uneven Seam Allowance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 48154
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object def0002: TppLabel
          UserName = 'def0002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 62971
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine87: TppLine
          UserName = 'Line87'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 32808
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object def0003: TppLabel
          UserName = 'def0003'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0003'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 77788
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine88: TppLine
          UserName = 'Line88'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 62442
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object def0004: TppLabel
          UserName = 'def0004'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0004'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 92604
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine89: TppLine
          UserName = 'Line89'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 47625
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine90: TppLine
          UserName = 'Line90'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 77258
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object def0005: TppLabel
          UserName = 'def0005'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Uneven Seam Allowance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 107421
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine91: TppLine
          UserName = 'Line91'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 92075
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object def0006: TppLabel
          UserName = 'def0006'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0006'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 122238
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine92: TppLine
          UserName = 'Line92'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 106892
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object def0007: TppLabel
          UserName = 'def0007'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0007'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 137054
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine93: TppLine
          UserName = 'Line93'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 121709
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object def0008: TppLabel
          UserName = 'def0008'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0008'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 151871
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object def0009: TppLabel
          UserName = 'def0009'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0009'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 166688
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine94: TppLine
          UserName = 'Line94'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 151342
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine95: TppLine
          UserName = 'Line95'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 136525
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine96: TppLine
          UserName = 'Line901'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 166159
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine97: TppLine
          UserName = 'Line97'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 180975
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine98: TppLine
          UserName = 'Line98'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 230982
          mmTop = 7144
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine99: TppLine
          UserName = 'Line99'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 246857
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object qty0001: TppLabel
          UserName = 'qty0001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 48154
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0002: TppLabel
          UserName = 'qty0002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 62971
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0003: TppLabel
          UserName = 'qty0003'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 77788
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0004: TppLabel
          UserName = 'qty0004'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 92604
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0005: TppLabel
          UserName = 'qty0005'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 107421
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0006: TppLabel
          UserName = 'qty0006'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 122238
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0008: TppLabel
          UserName = 'qty0008'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 151871
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0009: TppLabel
          UserName = 'qty0009'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 166688
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0007: TppLabel
          UserName = 'qty0007'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 137054
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object style001: TppLabel
          UserName = 'style001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust Style No.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 33338
          mmTop = 4233
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'T2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 19315
          mmTop = 4233
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 26458
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Style'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 26988
          mmTop = 4233
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel5: TppLabel
          UserName = 'Label7'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 26988
          mmTop = 8467
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel6: TppLabel
          UserName = 'Label8'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Line'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 1323
          mmTop = 8467
          mmWidth = 10054
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label10'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #32068#35037#32218
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 1323
          mmTop = 12435
          mmWidth = 10054
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label11'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Week'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 19315
          mmTop = 8467
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel10: TppLabel
          UserName = 'Label101'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27454#24335
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 26988
          mmTop = 12435
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #31278#39006
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 26988
          mmTop = 16669
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object style002: TppLabel
          UserName = 'Label13'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #23458#25142#27454#34399'  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 33338
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label14'
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
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 231511
          mmTop = 10054
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label21'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'T2 '#36913
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 19315
          mmTop = 12435
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLine44: TppLine
          UserName = 'Line44'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 11642
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLabel15: TppLabel
          UserName = 'Label25'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 12171
          mmTop = 4233
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel16: TppLabel
          UserName = 'Label26'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 12171
          mmTop = 8467
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label27'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #23458#25142
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 12171
          mmTop = 12435
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label28'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20195#34399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 12171
          mmTop = 16669
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLine59: TppLine
          UserName = 'Line59'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 47625
          mmTop = 4763
          mmWidth = 163248
          BandType = 3
          GroupNo = 1
        end
        object code0001: TppLabel
          UserName = 'Label9'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 48154
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0002: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 62971
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0003: TppLabel
          UserName = 'Label30'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 77788
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0004: TppLabel
          UserName = 'Label31'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 92604
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0005: TppLabel
          UserName = 'Label32'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 107421
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0006: TppLabel
          UserName = 'Label33'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 122238
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0007: TppLabel
          UserName = 'Label34'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 137054
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0008: TppLabel
          UserName = 'Label35'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 151871
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0009: TppLabel
          UserName = 'Label36'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 166688
          mmTop = 1852
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine74: TppLine
          UserName = 'Line1001'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 262203
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLabel27: TppLabel
          UserName = 'Label43'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #32317#35336
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 231511
          mmTop = 13758
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 239184
          mmTop = 10054
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object ppLine133: TppLine
          UserName = 'Line133'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 223309
          mmTop = 7144
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLabel30: TppLabel
          UserName = 'Label46'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Defect Points '#30133#40670
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 211138
          mmTop = 3969
          mmWidth = 35454
          BandType = 3
          GroupNo = 1
        end
        object ppLabel31: TppLabel
          UserName = 'Label47'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Other'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 211138
          mmTop = 8467
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label48'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20854#23427
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 211138
          mmTop = 11906
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label49'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 211138
          mmTop = 16404
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel35: TppLabel
          UserName = 'Label51'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 223838
          mmTop = 10054
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel37: TppLabel
          UserName = 'Label53'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #31278#39006
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 223838
          mmTop = 13758
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel61: TppLabel
          UserName = 'Label501'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sewn Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 247386
          mmTop = 4233
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object sx01: TppLabel
          UserName = 'Label37'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Audit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 247386
          mmTop = 10583
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object sx02: TppLabel
          UserName = 'Label87'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #24050#23529#26680#20043
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 247386
          mmTop = 13758
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object ppLabel64: TppLabel
          UserName = 'Label88'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #32299#21512#25104#34915#25976#37327
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 247386
          mmTop = 16933
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object ppLabel65: TppLabel
          UserName = 'Label89'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'being'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 247386
          mmTop = 7408
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object ppLine169: TppLine
          UserName = 'Line169'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 47625
          mmTop = 7938
          mmWidth = 163248
          BandType = 3
          GroupNo = 1
        end
        object ppLabel73: TppLabel
          UserName = 'Label96'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 48154
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel74: TppLabel
          UserName = 'Label97'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 56092
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel75: TppLabel
          UserName = 'Label98'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 62971
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel76: TppLabel
          UserName = 'Label99'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 70908
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel77: TppLabel
          UserName = 'Label100'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 77788
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel78: TppLabel
          UserName = 'Label102'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 85725
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel79: TppLabel
          UserName = 'Label1001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 92604
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel80: TppLabel
          UserName = 'Label103'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 100542
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel81: TppLabel
          UserName = 'Label104'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 107421
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel82: TppLabel
          UserName = 'Label105'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 115359
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel83: TppLabel
          UserName = 'Label106'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 122238
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel85: TppLabel
          UserName = 'Label107'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 130175
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel86: TppLabel
          UserName = 'Label108'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 137054
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel87: TppLabel
          UserName = 'Label109'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 144992
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel88: TppLabel
          UserName = 'Label110'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 151871
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel89: TppLabel
          UserName = 'Label111'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 159809
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel90: TppLabel
          UserName = 'Label1101'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 166688
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel91: TppLabel
          UserName = 'Label112'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 174625
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label5'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #25104#34915#27171#26495#25976#37327
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 262732
          mmTop = 12435
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object ppLine75: TppLine
          UserName = 'Line75'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 238655
          mmTop = 7144
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object sx04: TppLabel
          UserName = 'Label81'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '('#20840#26597#25976')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 262732
          mmTop = 16669
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object ppLabel34: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 217488
          mmTop = 16404
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel26: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '('#20027#35201')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 231511
          mmTop = 17463
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel36: TppLabel
          UserName = 'Label50'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '('#20027#35201')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 239184
          mmTop = 13758
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object ppLine188: TppLine
          UserName = 'Line188'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 210609
          mmTop = 7144
          mmWidth = 36513
          BandType = 3
          GroupNo = 1
        end
        object ppLine189: TppLine
          UserName = 'Line189'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 210609
          mmTop = 15346
          mmWidth = 12700
          BandType = 3
          GroupNo = 1
        end
        object ppLine190: TppLine
          UserName = 'Line190'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 216959
          mmTop = 15346
          mmWidth = 1323
          BandType = 3
          GroupNo = 1
        end
        object ppLabel24: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sample Gmts'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 262732
          mmTop = 4233
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object sx03: TppLabel
          UserName = 'Label404'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(Inspected ttl)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 262732
          mmTop = 8467
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object def0010: TppLabel
          UserName = 'def0010'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0009'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 181505
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object def0011: TppLabel
          UserName = 'def0011'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def0009'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8731
          mmLeft = 196321
          mmTop = 8467
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 195792
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine41: TppLine
          UserName = 'Line41'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 210609
          mmTop = 1058
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object code0010: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 181505
          mmTop = 2117
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object code0011: TppLabel
          UserName = 'Label41'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 196321
          mmTop = 2117
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0010: TppLabel
          UserName = 'Label52'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 181505
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object qty0011: TppLabel
          UserName = 'Label54'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qtys '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 196321
          mmTop = 18256
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 181505
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel41: TppLabel
          UserName = 'Label55'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 189442
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel42: TppLabel
          UserName = 'Label56'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20027#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 196321
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel43: TppLabel
          UserName = 'Label57'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27425#35201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 204259
          mmTop = 5292
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLine142: TppLine
          UserName = 'Line142'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 20902
          mmLeft = 277548
          mmTop = 1058
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object ppLabel53: TppLabel
          UserName = 'Label405'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Perf.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 277813
          mmTop = 4233
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
        end
        object ppLabel54: TppLabel
          UserName = 'Label63'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 277813
          mmTop = 8467
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
        end
        object ppLabel55: TppLabel
          UserName = 'Label64'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #34920#29694
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 278078
          mmTop = 12435
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object ppLabel56: TppLabel
          UserName = 'Label65'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #32026#25976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 278078
          mmTop = 16669
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1323
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
