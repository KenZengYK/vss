object frmdefectsummary4: Tfrmdefectsummary4
  Left = 192
  Top = 114
  Caption = 'frmdefectsummary4'
  ClientHeight = 251
  ClientWidth = 293
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
        DataType = ftTimeStamp
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
        DataType = ftString
        Size = 3000
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
        DataType = ftString
        Size = 3000
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
        DataType = ftTimeStamp
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
        DataType = ftTimeStamp
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
      mmHeight = 50271
      mmPrintPosition = 0
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 20902
        mmLeft = 794
        mmTop = 29633
        mmWidth = 283105
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 14221053
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 47890
        mmTop = 29898
        mmWidth = 148167
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 14221053
        Pen.Style = psClear
        mmHeight = 20373
        mmLeft = 195792
        mmTop = 29898
        mmWidth = 87842
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 14221053
        Pen.Style = psClear
        mmHeight = 20373
        mmLeft = 1058
        mmTop = 29898
        mmWidth = 47096
        BandType = 0
      end
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
      object ppLine85: TppLine
        UserName = 'Line85'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 47625
        mmTop = 46038
        mmWidth = 148167
        BandType = 0
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
        mmTop = 32808
        mmWidth = 10054
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 48154
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 62971
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 77788
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 92604
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 107421
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 122238
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 137054
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 151871
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 166688
        mmTop = 34396
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmLeft = 216165
        mmTop = 35719
        mmWidth = 1852
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 62971
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 77788
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 92604
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 107421
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 122238
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 151871
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 166688
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 137054
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmTop = 32808
        mmWidth = 14023
        BandType = 0
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
        mmTop = 32808
        mmWidth = 6879
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmTop = 32808
        mmWidth = 5556
        BandType = 0
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
        mmTop = 37042
        mmWidth = 5556
        BandType = 0
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
        mmTop = 37042
        mmWidth = 10054
        BandType = 0
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
        mmTop = 41010
        mmWidth = 10054
        BandType = 0
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
        mmTop = 37042
        mmWidth = 6879
        BandType = 0
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
        mmTop = 41010
        mmWidth = 5556
        BandType = 0
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
        mmTop = 45244
        mmWidth = 5556
        BandType = 0
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
        mmTop = 37042
        mmWidth = 14023
        BandType = 0
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
        mmLeft = 216694
        mmTop = 38629
        mmWidth = 6879
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 19315
        mmTop = 41010
        mmWidth = 6879
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmTop = 32808
        mmWidth = 6350
        BandType = 0
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
        mmTop = 37042
        mmWidth = 6350
        BandType = 0
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
        mmTop = 41010
        mmWidth = 6350
        BandType = 0
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
        mmTop = 45244
        mmWidth = 6350
        BandType = 0
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
        mmTop = 33338
        mmWidth = 148167
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 48154
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 62971
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 77788
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 92604
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 107421
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 122238
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 137054
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 151871
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmHeight = 2498
        mmLeft = 166688
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
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
        mmLeft = 216694
        mmTop = 42333
        mmWidth = 6879
        BandType = 0
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
        mmLeft = 224367
        mmTop = 38629
        mmWidth = 10054
        BandType = 0
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
        mmLeft = 208492
        mmTop = 35719
        mmWidth = 1852
        BandType = 0
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
        mmLeft = 196321
        mmTop = 32544
        mmWidth = 50271
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Others'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 196321
        mmTop = 38629
        mmWidth = 11906
        BandType = 0
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
        mmLeft = 196321
        mmTop = 42333
        mmWidth = 11906
        BandType = 0
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
        mmLeft = 209021
        mmTop = 38629
        mmWidth = 6879
        BandType = 0
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
        mmLeft = 209021
        mmTop = 42333
        mmWidth = 6879
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
      object shp003: TppLabel
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
        mmTop = 32808
        mmWidth = 14552
        BandType = 0
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
        mmTop = 39158
        mmWidth = 14552
        BandType = 0
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
        mmTop = 42333
        mmWidth = 14552
        BandType = 0
      end
      object shp004: TppLabel
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
        mmTop = 45508
        mmWidth = 14552
        BandType = 0
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
        mmTop = 35983
        mmWidth = 14552
        BandType = 0
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
        mmTop = 41010
        mmWidth = 14552
        BandType = 0
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
        mmLeft = 223838
        mmTop = 35719
        mmWidth = 1058
        BandType = 0
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
        mmTop = 45244
        mmWidth = 14552
        BandType = 0
      end
      object ppLine188: TppLine
        UserName = 'Line188'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 196057
        mmTop = 35719
        mmWidth = 51065
        BandType = 0
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
        mmTop = 32808
        mmWidth = 14552
        BandType = 0
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
        mmTop = 37042
        mmWidth = 14552
        BandType = 0
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
        mmHeight = 11377
        mmLeft = 181505
        mmTop = 34396
        mmWidth = 14023
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
        mmHeight = 20902
        mmLeft = 195792
        mmTop = 29633
        mmWidth = 1852
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 234686
        mmTop = 35719
        mmWidth = 1852
        BandType = 0
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
        mmTop = 30692
        mmWidth = 14023
        BandType = 0
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
        mmTop = 46831
        mmWidth = 14023
        BandType = 0
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
        mmTop = 29633
        mmWidth = 1588
        BandType = 0
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
        mmTop = 32808
        mmWidth = 5821
        BandType = 0
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
        mmTop = 37042
        mmWidth = 5821
        BandType = 0
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
        mmTop = 41010
        mmWidth = 5292
        BandType = 0
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
        mmTop = 45244
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Top 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 235215
        mmTop = 38629
        mmWidth = 11377
        BandType = 0
      end
      object code1001: TppLabel
        UserName = 'code1001'
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
        mmLeft = 235215
        mmTop = 42333
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label50'
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
        mmLeft = 235215
        mmTop = 46038
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rpt#: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 239184
        mmTop = 13758
        mmWidth = 7578
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2.1a '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 248709
        mmTop = 13758
        mmWidth = 6308
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
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WK'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 19315
        mmTop = 1323
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 33338
        mmTop = 1323
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmWidth = 14023
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
        mmLeft = 196321
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 18785
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 32808
        mmTop = 0
        mmWidth = 1323
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
        mmLeft = 216165
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
      object ppLine30: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 26458
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 26988
        mmTop = 1323
        mmWidth = 5556
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 11642
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 12171
        mmTop = 1323
        mmWidth = 6350
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
        mmLeft = 223838
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
        mmLeft = 208492
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DTYP'
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
        mmLeft = 209021
        mmTop = 1323
        mmWidth = 6879
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
        mmLeft = 216694
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
        mmLeft = 228600
        mmTop = 1323
        mmWidth = 5292
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
        mmLeft = 234686
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
        mmWidth = 14023
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
      object p101: TppLabel
        UserName = 'Label41'
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
        mmLeft = 240771
        mmTop = 1323
        mmWidth = 5292
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
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
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLine60: TppLine
              UserName = 'Line60'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Visible = False
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 8467
              mmTop = 1058
              mmWidth = 13229
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            BeforePrint = ppSummaryBand2BeforePrint
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 11642
            mmPrintPosition = 0
            object ppSubReport2: TppSubReport
              UserName = 'SubReport2'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 6615
              mmWidth = 284427
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport2: TppChildReport
                AutoStop = False
                DataPipeline = ppDBPipeline3
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
                DataPipelineName = 'ppDBPipeline3'
                object ppTitleBand2: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand2: TppDetailBand
                  BeforePrint = ppDetailBand2BeforePrint
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppShape9: TppShape
                    UserName = 'Shape9'
                    mmHeight = 5556
                    mmLeft = 794
                    mmTop = 0
                    mmWidth = 283105
                    BandType = 4
                  end
                  object ppDBText34: TppDBText
                    UserName = 'DBText34'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY1'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 48154
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText35: TppDBText
                    UserName = 'DBText35'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY2'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 62971
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText36: TppDBText
                    UserName = 'DBText36'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY3'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 77788
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText37: TppDBText
                    UserName = 'DBText37'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY4'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 92604
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText38: TppDBText
                    UserName = 'DBText38'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY5'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 107421
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText39: TppDBText
                    UserName = 'DBText39'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY6'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 122238
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText40: TppDBText
                    UserName = 'DBText102'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY7'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 137054
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText41: TppDBText
                    UserName = 'DBText41'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY8'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 151871
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText42: TppDBText
                    UserName = 'DBText42'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY9'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 166688
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppDBText45: TppDBText
                    UserName = 'DBText45'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'OQTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 196321
                    mmTop = 1323
                    mmWidth = 11906
                    BandType = 4
                  end
                  object ppDBText46: TppDBText
                    UserName = 'DBText46'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'TQTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 216694
                    mmTop = 1323
                    mmWidth = 6879
                    BandType = 4
                  end
                  object ppLine102: TppLine
                    UserName = 'Line102'
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
                  object ppLine103: TppLine
                    UserName = 'Line103'
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
                  object ppLine104: TppLine
                    UserName = 'Line104'
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
                  object ppLine105: TppLine
                    UserName = 'Line105'
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
                  object ppLine106: TppLine
                    UserName = 'Line106'
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
                  object ppLine107: TppLine
                    UserName = 'Line107'
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
                  object ppLine108: TppLine
                    UserName = 'Line108'
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
                  object ppLine109: TppLine
                    UserName = 'Line109'
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
                  object ppLine110: TppLine
                    UserName = 'Line110'
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
                  object ppLine111: TppLine
                    UserName = 'Line111'
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
                  object ppLine113: TppLine
                    UserName = 'Line113'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5556
                    mmLeft = 216165
                    mmTop = 0
                    mmWidth = 1323
                    BandType = 4
                  end
                  object ppLine114: TppLine
                    UserName = 'Line114'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5556
                    mmLeft = 234686
                    mmTop = 0
                    mmWidth = 1323
                    BandType = 4
                  end
                  object ppLine115: TppLine
                    UserName = 'Line115'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5556
                    mmLeft = 223838
                    mmTop = 0
                    mmWidth = 1323
                    BandType = 4
                  end
                  object ppDBText47: TppDBText
                    UserName = 'DBText47'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 262732
                    mmTop = 1323
                    mmWidth = 14552
                    BandType = 4
                  end
                  object p006: TppLabel
                    UserName = 'Label1'
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
                    mmLeft = 228600
                    mmTop = 1323
                    mmWidth = 5292
                    BandType = 4
                  end
                  object wsttl003: TppLabel
                    UserName = 'Label7'
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
                    mmHeight = 2498
                    mmLeft = 10848
                    mmTop = 1323
                    mmWidth = 36491
                    BandType = 4
                  end
                  object ppLine139: TppLine
                    UserName = 'Line139'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5556
                    mmLeft = 208492
                    mmTop = 0
                    mmWidth = 1323
                    BandType = 4
                  end
                  object ppLine156: TppLine
                    UserName = 'Line156'
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
                  object ppDBText44: TppDBText
                    UserName = 'DBText44'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'SQTY1'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 247386
                    mmTop = 1323
                    mmWidth = 14552
                    BandType = 4
                  end
                  object ppLine27: TppLine
                    UserName = 'Line27'
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
                  object ppLine112: TppLine
                    UserName = 'Line112'
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
                  object ppDBText80: TppDBText
                    UserName = 'DBText80'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY10'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 181505
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 4
                  end
                  object ppLine149: TppLine
                    UserName = 'Line149'
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
                  object g006: TppLabel
                    UserName = 'Label9'
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
                  object p106: TppLabel
                    UserName = 'Label2'
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
                    mmLeft = 240771
                    mmTop = 1323
                    mmWidth = 5292
                    BandType = 4
                  end
                end
                object ppSummaryBand3: TppSummaryBand
                  BeforePrint = ppSummaryBand3BeforePrint
                  PrintHeight = phDynamic
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppShape2: TppShape
                    UserName = 'Shape2'
                    mmHeight = 5292
                    mmLeft = 794
                    mmTop = 0
                    mmWidth = 283105
                    BandType = 7
                  end
                  object ppDBCalc1: TppDBCalc
                    UserName = 'DBCalc1'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY1'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 48154
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc2: TppDBCalc
                    UserName = 'DBCalc2'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY2'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 62971
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc3: TppDBCalc
                    UserName = 'DBCalc3'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY3'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 77788
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc4: TppDBCalc
                    UserName = 'DBCalc4'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY4'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 92604
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc5: TppDBCalc
                    UserName = 'DBCalc5'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY5'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 107421
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc6: TppDBCalc
                    UserName = 'DBCalc6'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY6'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 122238
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc7: TppDBCalc
                    UserName = 'DBCalc7'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY7'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 137054
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc8: TppDBCalc
                    UserName = 'DBCalc8'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY8'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 151871
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc9: TppDBCalc
                    UserName = 'DBCalc9'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY9'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 166688
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppDBCalc12: TppDBCalc
                    UserName = 'DBCalc12'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'OQTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 196321
                    mmTop = 1323
                    mmWidth = 11906
                    BandType = 7
                  end
                  object ppDBCalc13: TppDBCalc
                    UserName = 'DBCalc13'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'TQTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 216694
                    mmTop = 1323
                    mmWidth = 6879
                    BandType = 7
                  end
                  object ppLabel4: TppLabel
                    UserName = 'Label5'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Total / '#32317#35336': '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2498
                    mmLeft = 1588
                    mmTop = 1323
                    mmWidth = 11980
                    BandType = 7
                  end
                  object ppLine17: TppLine
                    UserName = 'Line17'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 47625
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine18: TppLine
                    UserName = 'Line18'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 121709
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine19: TppLine
                    UserName = 'Line19'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 106892
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine20: TppLine
                    UserName = 'Line20'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 92075
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine21: TppLine
                    UserName = 'Line21'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 62442
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine22: TppLine
                    UserName = 'Line22'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 77258
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine23: TppLine
                    UserName = 'Line23'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 136525
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine24: TppLine
                    UserName = 'Line101'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 151342
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine25: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 166159
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine26: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 180975
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine28: TppLine
                    UserName = 'Line28'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 216165
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine29: TppLine
                    UserName = 'Line29'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 234686
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine83: TppLine
                    UserName = 'Line83'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 223838
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppDBCalc42: TppDBCalc
                    UserName = 'DBCalc42'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 262732
                    mmTop = 1323
                    mmWidth = 14552
                    BandType = 7
                  end
                  object p005: TppLabel
                    UserName = 'Label6'
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
                    mmLeft = 228600
                    mmTop = 1323
                    mmWidth = 5292
                    BandType = 7
                  end
                  object ppSubReport3: TppSubReport
                    UserName = 'SubReport3'
                    ExpandAll = False
                    KeepTogether = True
                    NewPrintJob = False
                    OutlineSettings.CreateNode = True
                    TraverseAllData = False
                    mmHeight = 5027
                    mmLeft = 0
                    mmTop = 7673
                    mmWidth = 284427
                    BandType = 7
                    mmBottomOffset = 0
                    mmOverFlowOffset = 0
                    mmStopPosition = 0
                    object ppChildReport3: TppChildReport
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
                      object ppTitleBand3: TppTitleBand
                        mmBottomOffset = 0
                        mmHeight = 0
                        mmPrintPosition = 0
                      end
                      object ppDetailBand4: TppDetailBand
                        PrintHeight = phDynamic
                        mmBottomOffset = 0
                        mmHeight = 4233
                        mmPrintPosition = 0
                        object ppLine132: TppLine
                          UserName = 'Line132'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Visible = False
                          Weight = 0.750000000000000000
                          mmHeight = 1588
                          mmLeft = 13494
                          mmTop = 2644
                          mmWidth = 26988
                          BandType = 4
                        end
                      end
                      object ppSummaryBand4: TppSummaryBand
                        PrintHeight = phDynamic
                        AlignToBottom = False
                        mmBottomOffset = 0
                        mmHeight = 43392
                        mmPrintPosition = 0
                        object shape01: TppShape
                          UserName = 'shape01'
                          StretchWithParent = True
                          mmHeight = 32544
                          mmLeft = 794
                          mmTop = 1058
                          mmWidth = 282840
                          BandType = 7
                        end
                        object lbl01: TppLabel
                          UserName = 'lbl01'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Notepad: - '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 8
                          Font.Style = []
                          Transparent = True
                          Visible = False
                          mmHeight = 3260
                          mmLeft = 1588
                          mmTop = 2117
                          mmWidth = 14012
                          BandType = 7
                        end
                        object lbl02: TppLabel
                          UserName = 'Label1'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 
                            '(The defects conclusion plus corrective and preventive action pl' +
                            'an from auditors related to garments construction, measurement a' +
                            'nd material nature.) '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          Visible = False
                          mmHeight = 2381
                          mmLeft = 18785
                          mmTop = 2646
                          mmWidth = 141552
                          BandType = 7
                        end
                        object ppLabel1: TppLabel
                          UserName = 'Label2'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = #20633#35387': - '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 8
                          Font.Style = []
                          Transparent = True
                          mmHeight = 3260
                          mmLeft = 1588
                          mmTop = 5556
                          mmWidth = 9102
                          BandType = 7
                        end
                        object ppLabel14: TppLabel
                          UserName = 'Label3'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = '('#22312#36074#37327#30133#40670#21644#38928#38450#31998#27491#35336#21123#26178', '#27298#23450#21729#35201#25351#20986#30133#40670#29986#29983#30340#21407#22240', '#22914#25104#34915#32080#27083', '#23610#23544#21644#29289#26009#29305#24615'  ) '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2498
                          mmLeft = 18785
                          mmTop = 6085
                          mmWidth = 87207
                          BandType = 7
                        end
                        object memo01: TppMemo
                          UserName = 'memo01'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          CharWrap = False
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Stretch = True
                          Transparent = True
                          Visible = False
                          mmHeight = 23548
                          mmLeft = 3440
                          mmTop = 9525
                          mmWidth = 278871
                          BandType = 7
                          mmBottomOffset = 0
                          mmOverFlowOffset = 0
                          mmStopPosition = 0
                          mmLeading = 0
                        end
                        object ppSubReport4: TppSubReport
                          UserName = 'SubReport4'
                          ExpandAll = False
                          NewPrintJob = False
                          OutlineSettings.CreateNode = True
                          ShiftRelativeTo = memo01
                          TraverseAllData = False
                          mmHeight = 5027
                          mmLeft = 0
                          mmTop = 36513
                          mmWidth = 284427
                          BandType = 7
                          mmBottomOffset = 0
                          mmOverFlowOffset = 0
                          mmStopPosition = 0
                          object ppChildReport4: TppChildReport
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
                            object ppTitleBand4: TppTitleBand
                              mmBottomOffset = 0
                              mmHeight = 17727
                              mmPrintPosition = 0
                              object ppShape11: TppShape
                                UserName = 'Shape11'
                                StretchWithParent = True
                                mmHeight = 14817
                                mmLeft = 794
                                mmTop = 2646
                                mmWidth = 282840
                                BandType = 1
                              end
                              object ppMemo1: TppMemo
                                UserName = 'Memo1'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Caption = 'Memo1'
                                CharWrap = False
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 6
                                Font.Style = []
                                Lines.Strings = (
                                  'Tips:-'
                                  
                                    #9'Perf. Grade'#9'Defect Points %'#9#9'Perf. Grade'#9'Defect Points %'#9#9'Perf.' +
                                    ' Grade'#9'Defect Points %'
                                  
                                    #9'     A'#9#9'    less than 1%'#9#9'     B'#9#9'   less than 2%'#9#9'     C'#9#9'   l' +
                                    'ess than 3%'
                                  #9'     F'#9#9'    3-5%'#9#9#9'     U'#9#9'   unclassify over 5%'
                                  #9)
                                Transparent = True
                                mmHeight = 12171
                                mmLeft = 2646
                                mmTop = 3704
                                mmWidth = 246857
                                BandType = 1
                                mmBottomOffset = 0
                                mmOverFlowOffset = 0
                                mmStopPosition = 0
                                mmLeading = 0
                              end
                            end
                            object ppDetailBand5: TppDetailBand
                              PrintHeight = phDynamic
                              mmBottomOffset = 0
                              mmHeight = 3969
                              mmPrintPosition = 0
                              object ppLine150: TppLine
                                UserName = 'Line150'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Visible = False
                                Weight = 0.750000000000000000
                                mmHeight = 3969
                                mmLeft = 15081
                                mmTop = 0
                                mmWidth = 13229
                                BandType = 4
                              end
                            end
                            object ppSummaryBand5: TppSummaryBand
                              Visible = False
                              AlignToBottom = False
                              mmBottomOffset = 0
                              mmHeight = 131763
                              mmPrintPosition = 0
                              object ppImage1: TppImage
                                UserName = 'Image1'
                                AlignHorizontal = ahCenter
                                AlignVertical = avCenter
                                AutoSize = True
                                MaintainAspectRatio = False
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Picture.Data = {
                                  0A544A504547496D61676548970100FFD8FFE000104A46494600010101006000
                                  600000FFDB004300020101020101020202020202020203050303030303060404
                                  0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
                                  0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
                                  0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
                                  0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110801E5031D03012200021101031101
                                  FFC4001F0000010501010101010100000000000000000102030405060708090A
                                  0BFFC400B5100002010303020403050504040000017D01020300041105122131
                                  410613516107227114328191A1082342B1C11552D1F02433627282090A161718
                                  191A25262728292A3435363738393A434445464748494A535455565758595A63
                                  6465666768696A737475767778797A838485868788898A92939495969798999A
                                  A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
                                  D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
                                  01010101010101010000000000000102030405060708090A0BFFC400B5110002
                                  0102040403040705040400010277000102031104052131061241510761711322
                                  328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
                                  292A35363738393A434445464748494A535455565758595A636465666768696A
                                  737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
                                  A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
                                  E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FAF7
                                  5CD73F6B0FDB47FE0AC3FB53FC34F869FB53FF00C291F04FC11FF844BFB374DF
                                  F856BA3F897ED3FDABA38B997F7B70239576CD0C8DF33C99F3B0368400FA07FC
                                  3BC3F6EBFF00A48AFF00E604F0FF00FF001EA3FE09E1FF0029D7FF00828AFF00
                                  DD35FF00D47EE2BEFF00A00F803FE1DE1FB75FFD2457FF00302787FF00F8F51F
                                  F0EF0FDBAFFE922BFF009813C3FF00FC7ABEFF00A2803E00FF0087787EDD7FF4
                                  915FFCC09E1FFF00E3D47FC3BC3F6EBFFA48AFFE604F0FFF00F1EAFBFE8A00F8
                                  03FE1DE1FB75FF00D2457FF302787FFF008F51FF000EF0FDBAFF00E922BFF981
                                  3C3FFF00C7ABEFFA2803E00FF87787EDD7FF004915FF00CC09E1FF00FE3D47FC
                                  3BC3F6EBFF00A48AFF00E604F0FF00FF001EAFBFE8A00F803FE1DE1FB75FFD24
                                  57FF00302787FF00F8F51FF0EF0FDBAFFE922BFF009813C3FF00FC7ABEFF00A2
                                  803E00FF0087787EDD7FF4915FFCC09E1FFF00E3D47FC3BC3F6EBFFA48AFFE60
                                  4F0FFF00F1EAFBFE8A00F803FE1DE1FB75FF00D2457FF302787FFF008F51FF00
                                  0EF0FDBAFF00E922BFF9813C3FFF00C7ABEFFA2803E00FF87787EDD7FF004915
                                  FF00CC09E1FF00FE3D47FC3BC3F6EBFF00A48AFF00E604F0FF00FF001EAFBFE8
                                  A00F803FE1DE1FB75FFD2457FF00302787FF00F8F51FF0EF0FDBAFFE922BFF00
                                  9813C3FF00FC7ABEFF00A2803E00FF0087787EDD7FF4915FFCC09E1FFF00E3D4
                                  7FC3BC3F6EBFFA48AFFE604F0FFF00F1EAFBFE8A00F803FE1DE1FB75FF00D245
                                  7FF302787FFF008F51FF000EF0FDBAFF00E922BFF9813C3FFF00C7ABEFFA2803
                                  E00FF87787EDD7FF004915FF00CC09E1FF00FE3D47FC3BC3F6EBFF00A48AFF00
                                  E604F0FF00FF001EAFBFE8A00F803FE1DE1FB75FFD2457FF00302787FF00F8F5
                                  1FF0EF0FDBAFFE922BFF009813C3FF00FC7ABEFF00A2803E00FF0087787EDD7F
                                  F4915FFCC09E1FFF00E3D47FC3BC3F6EBFFA48AFFE604F0FFF00F1EAFBFE8A00
                                  F803FE1DE1FB75FF00D2457FF302787FFF008F51FF000EF0FDBAFF00E922BFF9
                                  813C3FFF00C7ABEFFA2803E00FF87787EDD7FF004915FF00CC09E1FF00FE3D47
                                  FC3BC3F6EBFF00A48AFF00E604F0FF00FF001EAFBFE8A00F803FE1DE1FB75FFD
                                  2457FF00302787FF00F8F51FF0EF0FDBAFFE922BFF009813C3FF00FC7ABEFF00
                                  A2803E00FF0087787EDD7FF4915FFCC09E1FFF00E3D47FC3BC3F6EBFFA48AFFE
                                  604F0FFF00F1EAFBFE8A00F803FE1DE1FB75FF00D2457FF302787FFF008F51FF
                                  000EF0FDBAFF00E922BFF9813C3FFF00C7ABEFFA2803E00FF87787EDD7FF0049
                                  15FF00CC09E1FF00FE3D47FC3BC3F6EBFF00A48AFF00E604F0FF00FF001EAFBF
                                  E8A00F803FE1DE1FB75FFD2457FF00302787FF00F8F51FF0EF0FDBAFFE922BFF
                                  009813C3FF00FC7ABEFF00A2803E00FF0087787EDD7FF4915FFCC09E1FFF00E3
                                  D47FC3BC3F6EBFFA48AFFE604F0FFF00F1EAFBFE8A00F803FE1DE1FB75FF00D2
                                  457FF302787FFF008F51FF000EF0FDBAFF00E922BFF9813C3FFF00C7ABEFFA28
                                  03E00FF87787EDD7FF004915FF00CC09E1FF00FE3D47FC3BC3F6EBFF00A48AFF
                                  00E604F0FF00FF001EAFBFE8A00F803FE1DE1FB75FFD2457FF00302787FF00F8
                                  F51FF0EF0FDBAFFE922BFF009813C3FF00FC7ABEFF00A2803E00FF0087787EDD
                                  7FF4915FFCC09E1FFF00E3D47FC3BC3F6EBFFA48AFFE604F0FFF00F1EAFBFE8A
                                  00F803FE1DE1FB75FF00D2457FF302787FFF008F51FF000EF0FDBAFF00E922BF
                                  F9813C3FFF00C7ABEFFA2803E00FF87787EDD7FF004915FF00CC09E1FF00FE3D
                                  47FC3BC3F6EBFF00A48AFF00E604F0FF00FF001EAFBFE8A00F803FE1DE1FB75F
                                  FD2457FF00302787FF00F8F51FF0EF0FDBAFFE922BFF009813C3FF00FC7ABEFF
                                  00A2803E00FF0087787EDD7FF4915FFCC09E1FFF00E3D47FC3BC3F6EBFFA48AF
                                  FE604F0FFF00F1EAFBFE8A00F803FE1DE1FB75FF00D2457FF302787FFF008F51
                                  FF000EF0FDBAFF00E922BFF9813C3FFF00C7ABEFFA2803E00FF87787EDD7FF00
                                  4915FF00CC09E1FF00FE3D47FC3BC3F6EBFF00A48AFF00E604F0FF00FF001EAF
                                  BFE8A00F803FE1DE1FB75FFD2457FF00302787FF00F8F51FF0EF0FDBAFFE922B
                                  FF009813C3FF00FC7ABEFF00A2803E00FF0087787EDD7FF4915FFCC09E1FFF00
                                  E3D47FC3BC3F6EBFFA48AFFE604F0FFF00F1EAFBFE8A00F803FE1DE1FB75FF00
                                  D2457FF302787FFF008F51FF000EF0FDBAFF00E922BFF9813C3FFF00C7ABEFFA
                                  2803E00FF87787EDD7FF004915FF00CC09E1FF00FE3D47FC3BC3F6EBFF00A48A
                                  FF00E604F0FF00FF001EAFBFE8A00F803FE1DE1FB75FFD2457FF00302787FF00
                                  F8F51FF0EF0FDBAFFE922BFF009813C3FF00FC7ABEFF00A2803E00FF0087787E
                                  DD7FF4915FFCC09E1FFF00E3D47FC3BC3F6EBFFA48AFFE604F0FFF00F1EAFBFE
                                  8A00F803FE1DE1FB75FF00D2457FF302787FFF008F51FF000EF0FDBAFF00E922
                                  BFF9813C3FFF00C7ABEFFA2803E00FF87787EDD7FF004915FF00CC09E1FF00FE
                                  3D47FC3BC3F6EBFF00A48AFF00E604F0FF00FF001EAFBFE8A00F803FE1DE1FB7
                                  5FFD2457FF00302787FF00F8F51FF0EF0FDBAFFE922BFF009813C3FF00FC7ABE
                                  FF00A2803E00FF0087787EDD7FF4915FFCC09E1FFF00E3D47FC3BC3F6EBFFA48
                                  AFFE604F0FFF00F1EAFBFE8A00F803FE1DE1FB75FF00D2457FF302787FFF008F
                                  51FF000EF0FDBAFF00E922BFF9813C3FFF00C7ABEFFA2803E00FF87787EDD7FF
                                  004915FF00CC09E1FF00FE3D47FC3BC3F6EBFF00A48AFF00E604F0FF00FF001E
                                  AFBFE8A00F803FE1DE1FB75FFD2457FF00302787FF00F8F51FF0EF0FDBAFFE92
                                  2BFF009813C3FF00FC7ABEFF00A2803E00FF0087787EDD7FF4915FFCC09E1FFF
                                  00E3D47FC3BC3F6EBFFA48AFFE604F0FFF00F1EAFBFE8A00F803FE1DE1FB75FF
                                  00D2457FF302787FFF008F51FF000EF0FDBAFF00E922BFF9813C3FFF00C7ABEF
                                  FA2803E00FF87787EDD7FF004915FF00CC09E1FF00FE3D47FC3BC3F6EBFF00A4
                                  8AFF00E604F0FF00FF001EAFBFE8A00F803FE1DE1FB75FFD2457FF00302787FF
                                  00F8F5741FF042FF00DA0BE2C7C71F859F1E749F8C5E3FFF008599E26F84FF00
                                  1ABC41F0F6D75EFEC3B3D1BED767A7436488DF66B5458D3748F349825D8799B4
                                  BB0515F6FD7C01FF00040BFF009BD4FF00B3AAF1CFFED8D001FF0004F0FF0094
                                  EBFF00C1457FEE9AFF00EA3F715F7FD7C01FF04F0FF94EBFFC1457FEE9AFFEA3
                                  F715F7FD00145145001451450014514500145145001451450014514500145145
                                  0014514500145145007C9FFF000523FD9EFC03F1FBE3CFECA167E3BF03F83FC6
                                  B68DF12B52B06835ED1ADB528CDBC9E0EF115C3C2566461E5B4F6769295E85ED
                                  60623746847013FED8EFFB05E95F143C21A0785B50F1458E8FF182DBE1F7C3AF
                                  0CDA5BEA33DAE8B6F2F8374DF114B6B8D3ECAFEFD2CE2DDA9986382CEE0401AD
                                  E044B7B38835BFD1FF00B537EC932FED37E23F87FAB5BFC4AF881F0EB50F86FA
                                  ADCEB7A5CBE188B4793CEBC9AC67B0F3661A8585D86D96B77791AAA855FF0049
                                  7660CC913479FACFEC21E1EBFF0087BA4D8597897C61A3F8C747F10378BA2F1E
                                  5BC9653F88A7D6E4B2974FB8D466FB45B4B653492D8DC4F68227B5304103471D
                                  BC56E96D6C2000F00FDA7FF6D9F8AFF167FE0911F1E3C6DE19F87BA87C3EF18F
                                  85BC3FE20B3BE9757D475CF0CB58DBC5A2CB75FDAFA2CD79A45BDFDCC9179B0A
                                  A09AD2C41B882E556709124D293DDE8BFF0004A7F87AFE2CD23F669F861E04F8
                                  91F17BC4165E0CB4F0F7C2FBBD5752D1B554B3B2D4B5286E2ED74FD085D47224
                                  4BAA02D6BA55CB93F6612C821064B5F6FF008B1FB054BF19FF00658F12FC2CD6
                                  FE327C5F9A1F1C7DAA1F13F883CED1E4D575CB3B9B47B296C7CB934F6B1B3B73
                                  0141B6C6D6D9B7C5E6EEF365B8926E83C65FB24CBF103E16784F47D5FE257C40
                                  BBF18781F55935BD13C79E568F1EBB6578F0DDDAB4BE4AD80D31F3657D756BB5
                                  EC997CB977E3CF559D403CFF00E16FFC143F58F1F7C13B1D42FF00E17F883C3F
                                  F11BC41E2B93C15E1CF0E6A706A9A458788751160DA909E1BAD534EB2BB4D3E3
                                  B38EE249EE25B0470D61791DBC37722DBADCE7FEDBBFB477C79F84FF00F04DBF
                                  8BBE36D2BC0BE0FF00097C48F04F87F59BD9656F177DBB4CB3B7B7D2E6BA4D53
                                  4D98E9CCD7B244FE528B5BDB4B30F2C53A97F25629A7F50FF863DB3D53E167F6
                                  26BDE38F881E27F1343AAFF6FD8F8D751BCB55D7746D4D61F221BBB2586DE3B1
                                  B5F2E0FDC9821B55B6B88E4B85B986E05DDDF9FA1A6FECADA56A9F00BC5BF0F7
                                  C71E22F187C50D37C7F697961E24BDF125FA25D6A96F756C2D248556CA3B6B7B
                                  48FECE1630B670C0321A520CF2CB34801D87C2DD4BC53ABF812C6E3C6BA3787F
                                  C3FE2693CCFB658689ACCDAC585BE24611F97752DADAC9266308C77409B59994
                                  6E0A1DBCFF00F6DBFDA575DFD93BE11695E2DD0FC11FF0B03CFF0015E85E1EBD
                                  D261D623D36FDA2D5352B7D3637B332A1826B8171776F886796DA2652E5AE23D
                                  A037A07C2DF06EA3F0FF00C0963A46ADE2CF1078E350B4F33CDD6F5B86C62BFB
                                  DDD2338F316CADEDAD86C56083CB853E545DDB9B73378FFF00C14B7E06FC47FD
                                  A37F66787C2BF0BA5F0FD9F898F8AFC3FADFF686ABACB697FD9B1697AB5AEA9E
                                  6DBBFF0067EA11BDC192CA28D166B66897CD32389047E4CA019FE20FDBC355F8
                                  6DE0BF1369DE2FF0569FA67C58F0DDDF876C7FE11DD3B5F7BED1AF8F88B55FEC
                                  9D16EA3D4DAD629059BDE09629D9ECD6E2036774CB6D3A7D99EEB3FC4BF117C6
                                  DFB4B7813E30FC12F19FC2AF005C78DBFE115B196FFC3F17C41BFF00F84735BD
                                  0F5B9350B028FAB269715E5BDC6DD3F52DC91D93003ECC566CCAE60EC24FD843
                                  C3DACFC33D7B49F107897C61E29F15F88EEF4DD46F3C71A9496435F175A5DDA5
                                  E69124621B68ECA38EC6E6349A1B54B516AD2199E68267BABA69CF0A7EC617BE
                                  15D3BC5F7C3E307C4FBDF883E31B4D3B4C9FC77716FA07F6CD958584F3CF6D67
                                  0DBA698BA6F96AF797E4BC964F2B0BD90190EC83C900F30F08FED6FF00F0CF9F
                                  F04A8FD9EBE21FC3AF84DFDA1E19D6F4AF0269369E0B87C51B6FF46D3B583616
                                  16B6F6773751F977B71049796B181752DAA4AA1DDEE23230DDFF00833F697F8A
                                  7E24D63C77E07BAF873E00B3F8BBE0FD2B47F10DBE97178EEEE7F0E6A1A76A57
                                  57D6D133EA67494B98AE15B4BBF2D10B091302DB129F364F239FB2FF008262C1
                                  A77EC6DE11F8270FC68F8BE9E1FF00026ABA1EA3A1EABE57878EAB63068CD6B2
                                  E9B61B8E95E43DBC371676D3EE785A7778F6C933C4CD19F50F0A7ECC49E15FDA
                                  E3C5FF0017478D3C617B77E31F0FE9DE1B9FC3B70BA77F63595BD8493CD6CF0E
                                  CB45BBF3164BCBF6264B970C6F64054AA402100E3FFE096FF18FE23FED07FB02
                                  FC29F1AFC51B4F0FC7E26F14785748D57ED9A56A6D79FDB315C69D6D37DB6E23
                                  FB1DAC769712C924ACF6D0AC9145C0499C1C2FB07C52F84FE16F8E3E04BEF0B7
                                  8D7C35E1FF0018786754F2FED9A46B7A743A8585DF9722CB1F9904AAD1BED911
                                  1C6E070C8A47201AE7FF00668FD9EECFF65CF85969E0AD1F5EF106AFE19D1365
                                  A787ACF5536ADFF08DE991431C36DA65BC90C11492DBC11C41524BA69EE5B24C
                                  93C8704741F14BC1BA8FC40F025F691A4F8B3C41E07D42EFCBF2B5BD121B196F
                                  ECB6C8AE7CB5BDB7B9B63BD54A1F3217F95DB6ED6DACA01F307EC8FF000FEF3E
                                  2DFF00C1093E0EF84ACFC31E1FF1A7FC259F057C3BA25DE87ADEBF75A0586A76
                                  775A35AC1751497B6B6F713C19B7925C347133160A014CF98A7847F6A7BCF827
                                  FF0004A8FD9EBC71F0A7E17F87DF49F12695E04D134BF09EAFE31BAB387C3D67
                                  AC9B0D3ACA217FF62BA96E7ECF35E5A23B3C4ACF12CB264BA88A4F4FF81DFB18
                                  5EFECF5FB23D87C22F0EFC60F89EB69A0DA59E99A0788AE2DF409759F0FD85AC
                                  76F0C3670FFC4B05A49188E02A5EE6DA69489A4264DDB0A71F65FF0004C5834E
                                  FD8DBC23F04E1F8D1F17D3C3FE04D5743D4743D57CAF0F1D56C60D19AD65D36C
                                  371D2BC87B786E2CEDA7DCF0B4EEF1ED9267899A3201C0681FB5CF8DBF6DBF87
                                  5E2FF853E2CF82DE00FED0F883A578CB44B1D1D7E255F9D2B5BB3D0F5C8BC39A
                                  F45797F1E9115CD8EF6BC47B568209DA542FBCDA32AE7D7FF647F1A5E6B1FF00
                                  04CAF83BAF7C21F02787F4FF00ED0F87FE1DBBF0DF8475BF145D5BD8697672D9
                                  5AB25A49A98B4B99DFC8B762A2536EED2B44BB826F2CB9FA17FC137AC3C19E20
                                  BCD63C3BF14BE27F87F5B377E2BB8D2EFED97459A4D013C49AD69FAD6A305BA4
                                  FA74913C7F6BB03E59B9499D12F2E14BB110343E81FB1E7ECC49FB1D7C02D0BE
                                  1D59F8D3C61E36D13C2B696FA668B3F89174E175A6D85BDB436F059AB595A5B2
                                  3C71A42087951E525DB748C368500E3FFE096FF18FE23FED07FB02FC29F1AFC5
                                  1B4F0FC7E26F14785748D57ED9A56A6D79FDB315C69D6D37DB6E23FB1DAC7697
                                  12C924ACF6D0AC9145C0499C1C2FA07ED3BF1D3FE19D7E114BE228F4BFEDAD42
                                  E755D27C3DA5D8B5CFD961B8D4754D4ADB4CB259E6D8E61B7FB55E4265956395
                                  E38848CB14ACA2363F668FD9EECFF65CF85969E0AD1F5EF106AFE19D1365A787
                                  ACF5536ADFF08DE991431C36DA65BC90C11492DBC11C41524BA69EE5B24C93C8
                                  704687C77F829A57ED07F0CEEBC33AB4FA858C6F7765A9D9DF583A2DD6977F65
                                  770DED8DE45E62BC4D241776F04CA9347244E620B247246CE8C01F387C56FF00
                                  828DFC47F8116BAC699E23F837E1FD53C6DE1BD57C1DFDA3A2F863C74D790DD6
                                  93E25D62E345B296CAEAF34FB3597505BEB59435ADC2DB5BF94D1BFDB412D1A7
                                  AFFECF5FB42F8A7C77F14FC5BF0FFE20784BC3FE13F1B784F4AD2FC43247E1EF
                                  114DAFE9571A76A536A16F6CC2E67B3B2945C09B4BBCF322FB3EC543032CAE64
                                  748BCFFC73FF0004C583E24F873501AD7C68F8BF7BE2DD5755F0F6A375E2EF2B
                                  C3D1EAB2C1A0DF4BA969361E526942C45BC1A84F2DD6E16A2791DB64933C2042
                                  3D43C29FB3127857F6B8F17FC5D1E34F185EDDF8C7C3FA7786E7F0EDC2E9DFD8
                                  D656F6124F35B3C3B2D16EFCC592F2FD8992E5C31BD90152A900840343F6A3F8
                                  E9FF000CD9F0275CF19FF65FF6B7F64FD9D3CB92E7EC9676BE75C456FF006BBD
                                  B9D8FF0065D3EDFCDFB45DDD79727D9ED61B89BCB93CBD8DE01E02FDA07C53FF
                                  000516FD9C7E2E787E3F047C00F1FF0086752D2A2F0EC571E13F8DB36B3E1CF1
                                  1FDB5678754D36E751B4D292EEC2E2DECDA197E5B69378BE8023A10EC9F47FC7
                                  7F85171F1B3E19DD787ACFC61E30F00DDCD77657906BBE17B9820D4ECDED6EE1
                                  BA5086786685A390C223963962749629258D94AB9AF3FF000A7EC617BE15D3BC
                                  5F7C3E307C4FBDF883E31B4D3B4C9FC77716FA07F6CD958584F3CF6D670DBA69
                                  8BA6F96AF797E4BC964F2B0BD90190EC83C900F30F08FED6FF00F0CF9FF04A8F
                                  D9EBE21FC3AF84DFDA1E19D6F4AF0269369E0B87C51B6FF46D3B58361616B6F6
                                  773751F977B71049796B181752DAA4AA1DDEE23230DBFAF7EDF3E29F84FE1CF8
                                  9567F103E1F787F4AF1B7C3DD2B43D764B7D0FC5736A7E1E5D3B58BEBBB0B6BC
                                  BCD4A7B0B596CEDEDA6B0BC9EFA5FB24896B650FDA14CE43C28597FC13160D3B
                                  F636F08FC1387E347C5F4F0FF81355D0F51D0F55F2BC3C755B183466B5974DB0
                                  DC74AF21EDE1B8B3B69F73C2D3BBC7B6499E2668C9FB4F7FC13DF51F8B3E31F8
                                  8FE35D0FC77E209BC41E37D2BC3DA60F0E6AA6C6DF428E0D13541A95B456F750
                                  597F68D85C3BC9A82A6A11CD2CF6726A26E614696D6D162003F659F8C5FF000F
                                  34F859F1034EF897F0CFE106BDF0CADB55B6D2B4DBAD27C4DFF09DF867C75E5C
                                  305E4B7303DC69B6B04D6F6F70F1C01D44B8BBB3BB42236B605F90FD99BF699B
                                  7FD907FE0857F00BC773E8FA878824B3F86BE06D2ECB4DB3867964BCBDD42DF4
                                  DD3ED10ADBC535C18FED1750EFF2209E609BCC504F20589FAFFD9ABF655F8A7E
                                  16F0278DF4BD6FC6DE20F86B0EBFF605D1AD744F1E5DFC47BFD0A782491EEAFA
                                  3D5BC4B62F27FA5C6D6F6E6C9ED9E0816CDA58984B75214E83E19FFC13DF47F8
                                  7BFB1B697F04EEBC77F103C51E1FF0CFF657FC233AAEAA74B4D57C33FD94D692
                                  E95F676B5B286097EC971636F3A7DAA19FCC752B3F9D1318E800FD863F6C9F12
                                  7ED59FF0945AF8A7E197883E1FEA1E1BFB24B1DC4DA66BB6FA56A715C79E0241
                                  2EB3A4E957325C44D6EC6644B5689127B52267691E38BB0FDB5BE3E6ABFB2A7E
                                  C8FF0011BE2768FE1ED3FC5777F0F7C3F77E249349BCD55F4B8EFADED2333DC2
                                  0B8582E0A49E4472941E510EE1159A356322E87C0BF81DA8FC21FED4B8D6BE23
                                  7C40F897AB6ABE546D7FE279AC63FB34116F31C30DAE9F6B69671FCD2CACD288
                                  3CF97722C92BA430245CFF00FC140FE0EF8A7F68AFD87BE2CFC3CF0545E1F93C
                                  4DF103C2BA87862CDB5BD426B1B0B7FB740F6B24F24B1413C9FBA8E579022C47
                                  CC64542D1863228067F827F69EF196B1E2ABEF08788BE1E69FE0FF00883AC787
                                  EFFC53E0AD22F3C4A2EAD759B2B67B785E1BFBBB7B790585E413DE58A5CC7125
                                  DC282F236B5B8BFD93887CC3F61EF889E04FD8BBFE093DAD6BFA77C3AFF8579E
                                  09F823FF0009AFDBFC29A16BF71E25FB37F626B1AAC77DF64BCBE104B71E7CD6
                                  9712C7E708B1E72A9DA178F4FF00829FB296B5E1CF0ADC6B5E31F1EF8C3C41F1
                                  6357F0FB68FF00F0945E4FA55EDD7845264479ADB4BF2B4BB4B2F2C5CAACA669
                                  34F0F746DEDBED2B225BDBC30E7FC19FF827BE8FF0D7E04FC42F869E25F1DFC4
                                  0F8A7E09F897FDADFDABA6F89CE976DE57F6B5C5EDCEA9E4CBA659594ABF6A9A
                                  FE766DCEDE5FC821F240C100E03E017FC152753F12FF00C26B79F157E17F883E
                                  1AF867C15E15BEF185EF8921D13C56FA55A59D8F966EA39DF56D034A93ED0639
                                  3CC862B54BA6912DEE8B794638C4DDFEB5FB5BF8EFE0D7C2CF881F103E2AFC26
                                  FF008457C13E0EF0AEA3E31864D13C516FADEAAB6B6509B892CAFED9A3B78ADF
                                  50787EE25ADC5EDA9786E15AED02C0F71D07803F649974CFEDA8FC7DF12BE207
                                  C69D3F5BD2A7D124D2FC65168EBA52D9DC6D17513D969D61676D73E72A46A5AE
                                  E3999103A446359EE04B9FA6FEC2FA56A1E15F16F86BC65E3DF89FF12BC1DE2A
                                  F0FDE784D7C3FE24D6D0DAE99A4DDA08EE2D965B58A0BABB91A258E31797F35D
                                  5E20462970AF3DCB4C01C7FEC55FB7C78C7F696F8A77FE16F167C21F107827CA
                                  D2A4D56D757874AF13C7A57EEA68627B69E7D6F42D236DC3FDA11E14805C6F48
                                  2E8B987CB4137A87ED85F1F355FD9AFE081F12E85E1ED3FC53ADDDF88341F0DE
                                  9FA6DFEAAFA55ACD71AB6B365A544F2DCA4170F1471BDEAC8C56190911901726
                                  8F829FB3AEB5F0BBC5571AC7887E2EFC4FF89F766D1ACACE3F123E95696BA7A3
                                  BA3CA56DF4BB1B286691CC51624B9499E208CB0B44B34E25E83E3F7C14D2FF00
                                  68BF835E21F056B13EA16369AF5A1863D434E748B50D1EE1487B7BFB39595C43
                                  796D3AC57104DB498A6862917E641401F387C29FF829778A7F683F8D9A3F85BC
                                  07E04F006B1A7EB9A578C752B6D4AEBE204D130FEC4BFB7B6B1668A1D32702DF
                                  53B5D5341D42198487FD0F536991265480DDEFFF00C131B41D3BE1AFFC13C6D3
                                  C3DF0D3E1AF87FC07FF085EABE2BF0F69BE10FF84BEFB54D2A2D474FD7B53B49
                                  47F6ADC5B1BA36F3DDC124BE6B5B33C693E044DB029F40F0EFEC47E09F87BE3B
                                  F117893C1907FC209AB6B5E15B6F09D83E85A7D8430F8662823310BAB085EDDE
                                  28EE1E18B4D8A4F31248A48B44D2A3688A5A22D1FB20FEC932FEC89E1CD77494
                                  F895F103C7FA7EB7AADE6B6B1789E2D1D7FB3EF2F6FAEAFEFA584D8585A13F68
                                  BABC9646594C8A98458846A0A900F903E2C7C40F88FF00B557FC112BF6BCB8F8
                                  DDE15F005C43A4E95F11AD7487B1D5DB59DD2E93A9EB91408F0C9A6DA4717D82
                                  4B1B45B6B8064966FB3A5C38825CAD7D5FF09BF69EF196B3F1F74EF027C40F87
                                  9A7F81EEFC5DE1FD47C53E195B3F128D66E859585CE9F05CC3AA22DBC50DA5E2
                                  9D56C711DACF7D0B117205C6D8E379F3FC7BFF0004F7D1FC6FF027E2FF00C348
                                  7C77F10341F04FC62FB7FDAF4DD3CE96DFD81FDA5717173ABFD8659ECA597FD3
                                  E6BBBA697ED2F71E579C45B7D982A05E817F649967FDA3BE1EFC4CBDF895F103
                                  51D5BE1FF856F3C262C268B474B0D7A2BC6B692EEEAF04760B28B89A6B2B194F
                                  D9A482256B44091223CC92807A878B3C356FE34F0AEA5A3DE49A84369AB5A4B6
                                  53C9617F3D85D22488518C57103A4D0C8013B6489D5D0E195958023E40FD963E
                                  1FDBD8FF00C1297E2DF856CFC7DA87C35B487C41F15B4983C6D7FAB4F3DD7855
                                  078A7C4112EAB2DECF3ACCF25B8C4ED3CB701C98CBB4A1897AFAFF00C59A35C7
                                  88FC2BA969F67AB6A1A0DDDFDA4B6F06A760903DD69CEE8556789678E584C884
                                  86512C72212A37232E54F87FC19FF827BE8FF0D7E04FC42F869E25F1DFC40F8A
                                  7E09F897FDADFDABA6F89CE976DE57F6B5C5EDCEA9E4CBA659594ABF6A9AFE76
                                  6DCEDE5FC821F240C100F20FD81BC05E16D13F6A7B0D47C33F083C3FFB3279BF
                                  0FE796EFC1BA6E8F0E91FF000B09EE2EEC586AEB1C30DBF996FA6F9061885DC5
                                  1EA30FF6F482EACB4CF3A15BDFAFFE2C78FF00FE1547C2CF12F8A7FB17C41E24
                                  FF00846F4ABAD57FB2342B3FB66ABAAF910BCBF66B4832BE6DC49B7646991B9D
                                  94646735E7FF00077F64997E1DFC538BC6BE27F895F103E2A789B4FD2AEB44D2
                                  2F3C4F168F6DFD8B677735B4D791431E9761651BF9F258D93334EB2B2FD95046
                                  630F2893D03E2C7807FE16BFC2CF12F85BFB6BC41E1AFF0084974ABAD2BFB5F4
                                  2BCFB1EABA579F0BC5F69B49F0DE55C47BB7C6F83B5D54E0E31401F287C27FF8
                                  290FC50F8FDA778C1BE1B781BF670F8BF77E18F0FCBAA4717C3EF8FF0016B519
                                  BF13C0B6FA65D3B69309B492EE037CF6F295788BD8324AD0AB89467FC62FF82A
                                  E78DBC37F0B25F1AF803E19F803E20F86742F82B6BF1A3C4978FE3ED4348FECF
                                  B3B886E66B7B6B68E5D11A4B9FB4C76578D6EEEB0B7FA24A2E62B32D009FD7F4
                                  FF00D96FC5DF09358B9F1ED8F8C7C41F1D3E26E97A54DA278713E216A9A6F87A
                                  C34CB3BBBAB397508966D1B465C79DF62B572D35B5C306B38D2330ACB33371FF
                                  000BBFE097FA5697FB067C47F83DAA6AFA8784A4F8D377A9DE78A67F09DD24CB
                                  A5DBDF6DB75D234F6BE825892CECF4986D34984A5AC03ECF66924705AC8C0460
                                  1F387FC1473F6D5F14FC51FD8CBF699F869F17BE0F78034BD3EDF4AF10F82AD2
                                  EB48F17CDE2753E21B6F043F8BED67305D6956412DE3B58C325C0769A3BC8220
                                  B0EDFF00484FABFC47FF000500B8F81FE15F19EA1F173C03A87826EFC3DE0AD6
                                  7E25697A669BAAC1ADDD6ADA0E9690B5EC723288E1B7D52DCDC5AACD6DE6496D
                                  9BC87ECF7B74AB70D073FF00143FE091BE12F8D5A578CACFC57F10FE27EB51F8
                                  EAEDF53D4CBC9A4C0DF6F97C1B73E0FBABC8FC9B04DB24FA7DC095D39896E2DE
                                  268A38A3324327A069BFB027836FBC2BE2DD1FC63AA78C3E265A78B3C3F79E0D
                                  F33C53AB1B9BAD27C3B748126D22DAE2258A611B80BE6DD48F25F5C98A06B9BA
                                  9DADEDCC4019FE12F8C5E29F881F14CFC1DF8DDF0CFC01A77FC27DE15D5B55B3
                                  B5D13C4D378AF4AD574EB39AC6CF51B6BF4BBD36C766FF00ED6B4088239D2543
                                  701CC5B104BC7FFC13FF0052D2FF0066BFF827C78DAF342F096A177A27807C6B
                                  F1326D3FC31E13D2D1EEA6B7B3F17EBC62B0D3ED1362190A46B1430AED049451
                                  815E81E09FD8C2F7C3BE2ABEF12EB7F183E27F8D7C623C3F7FE1BD0BC41AC5BE
                                  810DD784EDEF9EDE4BA7B48ACF4CB7B5964925B2B1933790DC85367185554799
                                  65CFF833FB05CBF06FE04FC42F0027C64F8BFAD69FF103FB5A65D4AE66D1EC75
                                  5F0D5E6A9717B757D7DA75C5869F6C63B892EAFA59D5A512AC4E91794B1AA952
                                  01CFFEC55FB7B6BBFB5BFC53BFD26DED7E007883C33A5E9525DDFEBDF0CBE31C
                                  7E35FEC8BC334296B69796C74FB3922FB4C66F248E552EBFE812AB052C99FA82
                                  BC7FE0EFEC932FC3BF8A7178D7C4FF0012BE207C54F1369FA55D689A45E789E2
                                  D1EDBFB16CEEE6B69AF22863D2EC2CA37F3E4B1B26669D6565FB2A08CC61E512
                                  7B05001451450014514500145145001451450014514500145145001451450014
                                  51450014514500145145001451450014515F207877C33FB43DC7FC1413C45E13
                                  BAF1F7C401F0B20D56DBC796FAEFF63E8274D8F47309822F0846E6C2399AE26B
                                  F37F3DC4E1A692DEC34FD3231324F7F24CA01F5FD67F84FC59A5F8F7C2BA6EBB
                                  A16A5A7EB5A26B56915FE9FA8585C25CDADFDBCA81E29A295094923746565652
                                  430208241AE7FC59AFF867C7BF00B52D535DD1350D6BC1BAD787E5BAD4347BFF
                                  000CDDDCDD5FD84B6C5A5B6974A780DD4923C4CC8D68D01958931988B9D95E3F
                                  FF0004BDD7DFC21FF04DBFD9AB42D6744F18689ADC5E0AD1FC2F75A7EA7E19D4
                                  6CAEB4DBFB1D2F65CA5D452C0AF6B187B3995669C245213088DDCCF0F9801F40
                                  5CF8B34BB3F1559E852EA5A7C5ADEA3693DFDA69EF708B75756F03C293CD1C44
                                  EF68E37B9B7576008533C40905D73F087FC102FF00E6F53FECEABC73FF00B635
                                  EBFF00116CB4ED33FE0B11F0AF5783C23E206D42EFE15789F42D4BC4D69E11BE
                                  9AC17CDD4F45BBD3ECEEB558EDCDB2616C75778E29661B19CF0AD751097C83FE
                                  0817FF0037A9FF006755E39FFDB1A003FE09E1FF0029D7FF00828AFF00DD35FF
                                  00D47EE2BEFF00AF803FE09E1FF29D7FF828AFFDD35FFD47EE2BEFFA0028A28A
                                  0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
                                  0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00F3FF00DAC7C03E
                                  29F8AFFB2C7C4BF0B78175AFF846BC6DE25F0AEA9A5787B57FB64D67FD95A8CF
                                  692C56D73E7C21A58BCB9991F7C60BAEDCA824015F903ABFC78F10F8D6D741D5
                                  BC257DF17FC25E1FF1D6956D6BA2DA43E3BF8DDE2487E204A758D175AD9677D7
                                  3E1D592CF7E89A56B918B8B012CAD15F3B63CA5761FB3DF14B52F14E91E04BEB
                                  8F0568DE1FF10789A3F2FEC761ADEB3368F6171991449E65D456B7524788CBB0
                                  DB03EE65553B43175FC41F8A3FF0432F1A7C1CF16FECFDE168BC09F08043AA78
                                  AE4F0F5819B57F0AEA135E791E1AD6AE00BCB97F876924DFBBB36732DD8BDDF2
                                  A213179AC9776E01F77FFC12BFC697763A8FC72F1FF8935AD43C23F0FBC3B69A
                                  568F7BA3F8ABE2178CB5E93C2B7F6305E6A3A8DEDCBF8B6C6C6E2C6396C353D2
                                  9FE443114B70E5AB8FFD91BF6A2F88FF001E3EC5E2CF84BE1AFB1F8F7E297C40
                                  F137C41F1E784BC693B6816DA4E87A5F9FE0ED3B4CBE922B5BFB9D375099B4CD
                                  3AE96331309E7D1B5A559638E3308F50FF008265FEC15E26FD92FC2BE29F0578
                                  BBE1E7C308BC1BE22F1047E353358788ED35368B598134D8AD7CAD32D3C33A35
                                  85B471FF00674370B2C6A645B88C4986773221FB1F7EC87E14F8FDF07F5BD635
                                  DD5BE27D85DDB7C4AF88B6491F86FE25788FC356A517C75E20705ADF4EBEB785
                                  E4CC8D99190B90154B154500033FFE09A9F18BE29FC32FF823BFC31F12EADF0C
                                  FC3FABE9FE11F855E18BFD074EF0B789AEF56D6FC4FA745A640F738B46D36111
                                  6A1F6540D05A472CE93DC3885AE215FDFD78FEABE2FD5BF6C4F18DBFC33F14FC
                                  7EF8BF1EA1F103E2AF897C3771A0E8561E1AB1B6F0769963AA78CDF45BEB4B99
                                  B429AE4DC237835963912EC5CC33A2DC8923658B77A07EC05FB3E7C3FF0083FF
                                  00F048FF00843E36D57C75F17FC310F88BE15785A1D567B6F881E20D477ADD5B
                                  69ECD63A6D84971711DB5C5D49B6CE05D3608EF17ED422B2686578C8F903E097
                                  ECF367E31FDA3B4CF0B45FB38F883E22787FE1DEABA7EA9E37F870BE0CB5B6D1
                                  3C31792B7C45D42E740827D58DA68F79FD992F8CF4011343385BAB768EEEDA33
                                  12911807BFFC65F1FF008EFE217ECA5E37B4D0FE3AFC7FF13F8DA0F158D22E34
                                  3B5D1ADF52B9D1B47D2FE22C3A25DEAEDFF08AE97A66A6BF68B5D3F5075B68EE
                                  E3926806A290990DAC93C5CFFF00C110FC6BF127E22FED6AFAAEAB37C5F1E124
                                  D2BE2069BA85A788755F1DEB3A55BDD5B78B6C62D2D4DEF882382D5AE22B4179
                                  691C36F6EB7489633C976E26B87B5B4D0B5F8E9E01F01783FC6BFB3BDD785FE1
                                  85F78C7E247C4AF17F883C55A7F88FC376DE235B0B8BDF89DA5E9BA25C6B1A11
                                  B8B496E23BBB4D6EC2E20B996E232B6F6304B12DC22C695E3FA87EC51E06F813
                                  F01A4F158F839E30B2F0778ABC41E1193C6D65AEFC2CF0FE8F1C2FA8F8C7C13A
                                  DC9A458E9567A7CDADDE59BAEA57F68B6525F5E25B3E8F35915B874B790007DF
                                  FF00F04BAD6FC7D3F86BC7363A8786BC1F6BF0FA1F895F115F4CD6ADFC4B733E
                                  B37971FF0009B6AFBA39B4E6B048618C1338122DECA488E33B0798C233F6B1F8
                                  E3A2FC02FF0082927C13D635DB2F185F5A5CFC35F1D59A47E1BF09EABE25BA0E
                                  DAA7841C16B7D3ADEE2648F11B664640809552C19D41F10F861E30FD9E3E03FF
                                  00C144BC25E22F857F06BC41F0DF4FB3F855E2DFEDE8B44F80BAF7876FF56DDA
                                  DF8463B6F2ECD74A8AE750F2D9E527C88E5F2164667F2D5B71F40F1AFEDB5E18
                                  D5FF006FAF869E35B7F077C7F93C33E1FF0087FE2DD12FEF3FE147F8CC7D9EF2
                                  FB51F0CCD6B179674BF31B7C7A7DE36E552ABE4E18A9640C01DFFED97FB4EC5F
                                  103FE0965FB45F8D7C0B2FC40F0BEA1E1CF87FE256B1BCD57C37AC784755B2BC
                                  83489A68EE2DE3BE82DAE46C664649E35DBBD4857DC8C17E10F889E3C1F07FE2
                                  17C3FD27C47F13B50D06C75ABBF88579ABF863E237ED33E28F0147E15BAB6BDF
                                  0C41A669B36A8B25DDE4D791E99225C9B66967B595F53BDBBB39DECE4B567FB0
                                  3F6F7FDAEFC29F1F7FE09B7FB4EE8FA1693F13EC6EEDBE0FF8AAF1E4F127C35F
                                  11F86AD4A2E973A10B71A8D8DBC2F26645C46AE5C80CC14AA311E7FF00103F65
                                  FD2BE1AFEDE7E1AF08F8E4F8C3E32C9FB45782BC7BA6F89DAD74E4B36BBB79FF
                                  00E103D1DE5B86B66862B38D349D36392E67124225B813FD9638E4B8B4B0001C
                                  7FC09F893E36F897FF0004BCFDB724F871F12FC3F16ADA16ABAA5AF84F5F87E2
                                  D6A1E3CD2344897C21A25CCA967E24D467B4963FDF4B76C2E259238AC6E66776
                                  12240CAFF207FC1363E39F8EF5DFF828C17F027C43FF00848261F102E358D634
                                  15F8896FAA4DE31D3A0F04C624B582D27F8817F1DF5C492450C514CC97496F2C
                                  51CB25FC7159C9A743F7FF00C4AD37FE14DFEC6DF1C7C21F18B59FB57C4DD67C
                                  2B25AF8B7E23F8D746C7867C7BA3961650410DEC575A469DA779E97935B43A51
                                  D42CA4B5BBB9B99CB5D2C8FA95F7C81FF04DAF11E93F0B3E2EFC23F891F117E2
                                  5F87F53D4B5AD5759F166B116AFACF89B526BCD59F4DB8D2A2B5F0DDE7FC24FA
                                  9E9DE2CD4224B9B6D361FECFB3BBB84B383C9BA96DF5030DBCE01F6FFF00C121
                                  7E3AF8DBC456ADE06D6FC37E006D26F7C2B6DF188F8B3C39E2CD42FA1D725F17
                                  EB1ABEA29F67B0BBD2ACE5B5B73345A83AC734B24B0446D2366B8732CA9F6FD7
                                  C01FB0A7873C53FB1BFECC7F113C2B77A07FC23BF1CF48F87FA7DEF8474FF12C
                                  9378856EB47D2FC39636D636519D32169AEEDF4EBF69EDEEEDEC7CC924BCB9B8
                                  BD8ADED535AB4B7AFB3FF67AD67C65E23F805E07D43E22E93A7E83F106FBC3F6
                                  171E27D32C1C3DAE9DAA3DB46D77044C249418D27322A912480851F3B7DE2007
                                  C6BF869AD7C54F0ADBE9FA17C42F187C35BB86ED6E1F53F0DDB6953DD4E811D4
                                  C0CBA8D9DDC3E592CAC4AC61F31AE1C29656FCD0FD9C353F8B7F193E29FC4EF8
                                  B1E0CF14FED7FF00117C33E20D54783FC2DE35F08CBF088D9F89743D0E6B9816
                                  465BC4881C6AF71AF3452C70A096D66B566DC471FA5FF1AFE0A695F1F7C2B6FE
                                  1FF104FA83F86DEED66D5F4885D16D7C496E11C1B0BD054BC966EEC8F2C28C82
                                  71179337996F2CF04BF9A1E08FD84F42D7BE187C4EF8B1E27D23F6408BC3EFF1
                                  57C76D7FAB78E7F67C93C59ABD9C4BE33D5AD8DC5FEA49AB41BADE2C6E69DE18
                                  E2B5B64DD2BAC503CB401F67FECB3AC78DFC47FB23E95F13BC19E37F187C65BB
                                  F897E1FD1FC49E1BD27E285D68DE1C8F4EB7BA8D272925C689A3931C8609F2E1
                                  A2B905E04546456790E7E97FB6B78A6FFF00E0951F0EBE384961E1FB7F1378D3
                                  C2BE15D635499A09BFB13C33FDAC6C16F7559E3F3449FD9FA7477735ECAAD3C7
                                  FE8F67206B8846674D0FD86E6F137C02FF008250FC0A867F0078C35EF15F86BE
                                  1AF862C2EFC276696963AC8B84D3ED219A12BA84F6B0C5242779759A58C81138
                                  00BE10F01F003E1D7C61D37FE08FDE02F8763C13E30F87FF00107E1F787FC31E
                                  17D5F4B935BD322D435FB0D3974D4D6134BBDB2BD963824BCB38EFEDAD6692E2
                                  D258E67490BDA616E14039FF00DA8FFE0A5FE3EFD863E017ED0575E2E3E0FF00
                                  893E31F85FE1FB2BCF0EDFF853C3973A758EA5ACDEDB5FCFFD913E9F2EA3732B
                                  49A7DA59C3AADE18EEC48BA6DE89BC88D2212CDF187ED57E7FEC5975E2DF0459
                                  FC45FEC6F0CFC3BF881E02F875E13BAF12FED35E21F02DFC9A3DA68FE0A4BFB6
                                  8F49B18458BDB982FA592EEFE3DB25BADF5C4E22CC3107FABFE397C33D6BE1EF
                                  FC136FF6CB6D3BE196A1F03FE13DD7C1FD5A3F0EF802FA4D2B7697AA2697ABB6
                                  A77B6D06997375696B67731C9A6858629901B8B6BD99ADE37B879EE7CFFC73E3
                                  6F147C3CFF0082AD7C62F13F84757D4342BBF0E788353D2EFEE1FE09F8BBE225
                                  ACE9A9F85BE1DCB0A4634658A18E4074798BF99761D0345FB8759848801A1F0E
                                  BE31F8A7E1FF00EC1FFB49EA773E21F005E786746F8816366D6BE2CF184DF153
                                  C397BE1ED53C2DE1D716B6DAB788356D1639ADEE24D4C5C66E6E561C5C4F1471
                                  CC648CB741FB19FED5175E31FD8174ED47E25FED7BE1FF0087BE1FF0A6AB61E0
                                  DD37C716D79E108355D66EAD74E2D2C7A8EA171AC78934EBAB8B9478E760A6DA
                                  E83DB4AE57CA9067CBFF00641F09F8B7C39FF04C3F8A1E14F0AE99F13F58F117
                                  867E257C31F0BEA763E15B7D5BC29E22D46DEC741F87B65ABA5B7DAC69F7B691
                                  C96D0DE7EFA736A040E65678E225C7A87C2DF0FF008DBE1FEBD63E2DD7FC0BF1
                                  FF0048F04FC30FDA024D6E1D27C5979A878EBC47A568771F0E1B4D12DB182EB5
                                  3B8BEB76D67517F96CE5B81119E72E22104E2200E7FE22FED9706B5FB0F7C6F9
                                  9BF68BFF008591E19F0E7C6AF0C7877C3FE3087C7DE1EF08DFF88347583C2FAB
                                  EADA6D9EB165269563F683049ADA0D9345215578CBE5491E1FFB467EDEFE213F
                                  F04AFD6BC09E17F19E9FAEE89E35F057C64BAD5AE6E45EFC5DD674FB2B6D4613
                                  A569371AA691A9DCC56522E93ADDBF997D793DCC36C12DC48483F37DC1F15FE2
                                  CFC3CFDABFE19FC6EF0F6A1A27C4FF0083DF0D25B4F0EEB5E23F8813F816FF00
                                  C373EB57535DC96F7515D5B6AFA57977167059E97A7C77D3DCC53DAFD82F1E3B
                                  8F2E085DABE7FD53E22FC61F1BF8BBC073C1E36F185AFC41F0C5DDCF809FC497
                                  7A26991788AFAC3C51E3CD1EF2CE38EC7EC5F654D52D7C19A1CDA8DF5B4F6514
                                  B6705E5A4F2DB8DD379201F487FC12D7E16FC42F84DAC78CED3E216BBE76A1AA
                                  695A4EA51787B55F126B3A8788F40CDD6AD016BBB6BDF11EBF6D0DBCEB6F1BC1
                                  35A5DAF9C52E1254DD6CA17EBFAF883FE08E165F0F7E145F7C53F84FA2F847C3
                                  FA0FC4DF87FAADD7FC25BA969DE11D1BC3B73AAE9D27887C456DE1FF00B6C5A6
                                  DBDB21B83A658C572336D12341A85BCD1EE5B926BEDFA0028A28A0028A28A002
                                  8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
                                  8A28A0028A28A0028A28A0028A28A0028A28A0028A28A00E3EE7E3BF866CFE3E
                                  D9FC3196EB508BC65A8F87E7F145A5B3E9576B6B756105CC36D3BC77862FB2B4
                                  91CB736E1E11299544F131408EAC4F84FF001DFC33F1B351F1859F87AEB509AE
                                  FC03E2097C2FAEC179A55DE9D259DFC704170502DC4519963682EADE549A3DD1
                                  4A932323B29CD7C41AF7ECF7FB4545FB6878A7C47A3689E305F18EA3E0AF88DE
                                  1BD1BE236A1E27B2BBF07E8F71A95F69F79E157834A96F2496DA3B5B4D3E1B5B
                                  C306940CD751ABC8B7885AEABD7FFE097BF0BBC4DF09B5BF8E916B3F0DFE27F8
                                  0744F14F8D6D7C49E1F7F1CF8B6D3C4DA9DF5BB681A569F2A4B771EA9A8DC349
                                  1DC69B31C4F2E0453DB08D88568E200FA43C65F14B42F87FE23F09E93ABDF7D9
                                  350F1C6AB2689A245E4C927DB6F12C6EEFDA2CAA9098B5B1BA9373955FDD6DCE
                                  E6556E82BE10FF0082B87ECC7F1B7F6A0F8B5E089FE1768BA7C969F08FC3F7BE
                                  3CD366D7EDADAFF49D77C5965AB68D7FA369B043FDA56D35ADE38D3AF607BF92
                                  3F2A1B4D4EE62572D7327965AFC34F8DBE0FFDB33C15E20B3F077C6FD43C1BAD
                                  7C4A93C657AAFF00112DAE74FF000BE83AAF8516C2EF46BFB3B8D636CD25A6BD
                                  1ADFAC36B15D5B5BC25BEC729766B7201F77D79FFC74FDA77C23FB3AFF0065C7
                                  E2297C4173A86B5E6B58E97E1EF0DEA5E23D56E2287609AE05969D04F73F6789
                                  A581649CC7E546F710233869A30DF107FC110BE31FFC2EFF008A7E38D6BC55E2
                                  1F8BF73F1365D2A06D53C39AEF8C3FB5B4AF0BEF9B7DC4177636DAB5EC1A7EB1
                                  F686F2E45B8B3D1B7A5B3259E9766B06A112FD1FFB7843E379FC55E0A8BC23F0
                                  BFC61E2FD36FAD352B2F11F88FC177FA358F8A348B077B276D2ECEE350BEB27B
                                  48F5078D0CD756D2B4B1269C04691CF25BDE5A0076107EDEBF09EFFC77A46836
                                  3E2BFED6FEDBFB0ADB6B5A6699797FE1C496FA38A5B1B79B598627D3A0B8B94B
                                  8B568209AE125985ED9F968DF6A83CCF983FE0817FF37A9FF6755E39FF00DB1A
                                  EC3C31E12D7DBF687D1F499FF65DF187863E13E9577A15EE8BA7E812784EDB46
                                  5BF4B0B044D535A8A3D5526964D24430DA5BDAC104F14274A4B989EEDC69FF00
                                  60E3FF00E0817FF37A9FF6755E39FF00DB1A00F40FDA8FFE082BFB27FEDA5F1D
                                  B5CF897F12FE14FF00C249E36F12FD9FFB4B52FF00849B58B3FB4F916F15B45F
                                  BAB7BB8E25DB0C31AFCA833B72724927CFFF00E2171FD853FE886FFE5E7E20FF
                                  00E4EAFBFE8A00F803FE2171FD853FE886FF00E5E7E20FFE4EA3FE2171FD853F
                                  E886FF00E5E7E20FFE4EAFBFE8A00F803FE2171FD853FE886FFE5E7E20FF00E4
                                  EA3FE2171FD853FE886FFE5E7E20FF00E4EAFBFE8A00F803FE2171FD853FE886
                                  FF00E5E7E20FFE4EA3FE2171FD853FE886FF00E5E7E20FFE4EAFBFE8A00F803F
                                  E2171FD853FE886FFE5E7E20FF00E4EA3FE2171FD853FE886FFE5E7E20FF00E4
                                  EAFBFE8A00F803FE2171FD853FE886FF00E5E7E20FFE4EA3FE2171FD853FE886
                                  FF00E5E7E20FFE4EAFBFE8A00F803FE2171FD853FE886FFE5E7E20FF00E4EA3F
                                  E2171FD853FE886FFE5E7E20FF00E4EAFBFE8A00F803FE2171FD853FE886FF00
                                  E5E7E20FFE4EA3FE2171FD853FE886FF00E5E7E20FFE4EAFBFE8A00F803FE217
                                  1FD853FE886FFE5E7E20FF00E4EA3FE2171FD853FE886FFE5E7E20FF00E4EAFB
                                  FE8A00F803FE2171FD853FE886FF00E5E7E20FFE4EA3FE2171FD853FE886FF00
                                  E5E7E20FFE4EAFBFE8A00F803FE2171FD853FE886FFE5E7E20FF00E4EA3FE217
                                  1FD853FE886FFE5E7E20FF00E4EAFBFE8A00F803FE2171FD853FE886FF00E5E7
                                  E20FFE4EA3FE2171FD853FE886FF00E5E7E20FFE4EAFBFE8A00F803FE2171FD8
                                  53FE886FFE5E7E20FF00E4EA3FE2171FD853FE886FFE5E7E20FF00E4EAFBFE8A
                                  00F803FE2171FD853FE886FF00E5E7E20FFE4EA3FE2171FD853FE886FF00E5E7
                                  E20FFE4EAFBFE8A00F803FE2171FD853FE886FFE5E7E20FF00E4EA3FE2171FD8
                                  53FE886FFE5E7E20FF00E4EAFBFE8A00F803FE2171FD853FE886FF00E5E7E20F
                                  FE4EA3FE2171FD853FE886FF00E5E7E20FFE4EAFBFE8A00F803FE2171FD853FE
                                  886FFE5E7E20FF00E4EA3FE2171FD853FE886FFE5E7E20FF00E4EAFBFE8A00F8
                                  03FE2171FD853FE886FF00E5E7E20FFE4EA3FE2171FD853FE886FF00E5E7E20F
                                  FE4EAFBFE8A00F803FE2171FD853FE886FFE5E7E20FF00E4EA3FE2171FD853FE
                                  886FFE5E7E20FF00E4EAFBFE8A00F803FE2171FD853FE886FF00E5E7E20FFE4E
                                  A3FE2171FD853FE886FF00E5E7E20FFE4EAFBFE8A00FCA6F8E1FF0466FF8252F
                                  ECCDE308FC3DF11B4AF86DE03D766B54BD8B4FF10FC56D574DB996DD99956658
                                  E6D4959A32C8EA180C65186720D71DFF000EEDFF008233FF00D0C1F02FFF000F
                                  65F7FF002D2BED3B7FF94ACFC65FFB263E06FF00D3978B6BD7EBAE187528A773
                                  CDAB8E9426E363F337FE1DDBFF000467FF00A183E05FFE1ECBEFFE5A51FF000E
                                  EDFF008233FF00D0C1F02FFF000F65F7FF002D2BF4CA8AAFAAAEE67FDA32EC7E
                                  66FF00C3BB7FE08CFF00F4307C0BFF00C3D97DFF00CB4A3FE1DDBFF0467FFA18
                                  3E05FF00E1ECBEFF00E5A57E995147D55770FED19763F337FE1DDBFF000467FF
                                  00A183E05FFE1ECBEFFE5A51FF000EEDFF008233FF00D0C1F02FFF000F65F7FF
                                  002D2BF4CA8A3EAABB87F68CBB1F99BFF0EEDFF8233FFD0C1F02FF00F0F65F7F
                                  F2D28FF8776FFC119FFE860F817FF87B2FBFF9695FA65451F555DC3FB465D8FC
                                  CDFF008776FF00C119FF00E860F817FF0087B2FBFF0096947FC3BB7FE08CFF00
                                  F4307C0BFF00C3D97DFF00CB4AFD32A28FAAAEE1FDA32EC7E66FFC3BB7FE08CF
                                  FF004307C0BFFC3D97DFFCB4A3FE1DDBFF000467FF00A183E05FFE1ECBEFFE5A
                                  57E995147D55770FED19763F337FE1DDBFF0467FFA183E05FF00E1ECBEFF00E5
                                  A51FF0EEDFF8233FFD0C1F02FF00F0F65F7FF2D2BF4CA8A3EAABB87F68CBB1F9
                                  9BFF000EEDFF008233FF00D0C1F02FFF000F65F7FF002D28FF008776FF00C119
                                  FF00E860F817FF0087B2FBFF009695FA65451F555DC3FB465D8FCCDFF8776FFC
                                  119FFE860F817FF87B2FBFF96947FC3BB7FE08CFFF004307C0BFFC3D97DFFCB4
                                  AFD32A28FAAAEE1FDA32EC7E66FF00C3BB7FE08CFF00F4307C0BFF00C3D97DFF
                                  00CB4A3FE1DDBFF0467FFA183E05FF00E1ECBEFF00E5A57E995147D55770FED1
                                  9763F337FE1DDBFF000467FF00A183E05FFE1ECBEFFE5A51FF000EEDFF008233
                                  FF00D0C1F02FFF000F65F7FF002D2BF4CAA87877C53A678C34F92EF49D46C754
                                  B58AEAE2C9E6B4B849E34B8B799EDEE212CA481245345246EBD51E3752015228
                                  FAAAEE1FDA32EC7E6E7FC3BB7FE08CFF00F4307C0BFF00C3D97DFF00CB4A3FE1
                                  DDBFF0467FFA183E05FF00E1ECBEFF00E5A57E91F8A3C53A6781FC33A8EB5AD6
                                  A363A3E8DA3DACB7B7F7F7B7096F6D656F12179269647215234452CCCC400012
                                  4E055FA3EAABB87F68CBB1F99BFF000EEDFF008233FF00D0C1F02FFF000F65F7
                                  FF002D28FF008776FF00C119FF00E860F817FF0087B2FBFF009695F66785FF00
                                  E0A37FB3D78E3C4DA768BA2FC78F833AC6B3AC5D4565616165E35D36E2E6F6E2
                                  57091C31469316791DD82AAA82492001935ECD47D5A2F6637984D6F13F337FE1
                                  DDBFF0467FFA183E05FF00E1ECBEFF00E5A51FF0EEDFF8233FFD0C1F02FF00F0
                                  F65F7FF2D2BF4CA8A3EAABB8BFB465D8FCCDFF008776FF00C119FF00E860F817
                                  FF0087B2FBFF0096947FC3BB7FE08CFF00F4307C0BFF00C3D97DFF00CB4AFD32
                                  A28FAAAEE1FDA32EC7E66FFC3BB7FE08CFFF004307C0BFFC3D97DFFCB4A3FE1D
                                  DBFF000467FF00A183E05FFE1ECBEFFE5A57E995147D55770FED19763F33FF00
                                  E1DD1FF0468FFA183E04FF00E1EEBDFF00E5AD1FF0EE8FF82347FD0C1F027FF0
                                  F75EFF00F2D6BEC9FF00825B7FCA327F674FFB261E1AFF00D355B57BBD782F1B
                                  24ED63D4B9F97FFF000EE8FF0082347FD0C1F027FF000F75EFFF002D68FF0087
                                  747FC11A3FE860F813FF0087BAF7FF0096B5FA81452FAF4BB05CFCBFFF008774
                                  7FC11A3FE860F813FF0087BAF7FF0096B47FC3BA3FE08D1FF4307C09FF00C3DD
                                  7BFF00CB5AFD40A28FAF4BB05CFCBFFF0087747FC11A3FE860F813FF0087BAF7
                                  FF0096B47FC3BA3FE08D1FF4307C09FF00C3DD7BFF00CB5AFD40A28FAF4BB05C
                                  FCBFFF0087747FC11A3FE860F813FF0087BAF7FF0096B47FC3BA3FE08D1FF430
                                  7C09FF00C3DD7BFF00CB5AFD40A28FAF4BB05CFCBFFF0087747FC11A3FE860F8
                                  13FF0087BAF7FF0096B47FC3BA3FE08D1FF4307C09FF00C3DD7BFF00CB5AFD40
                                  A28FAF4BB05CFCBFFF0087747FC11A3FE860F813FF0087BAF7FF0096B47FC3BA
                                  3FE08D1FF4307C09FF00C3DD7BFF00CB5AFD40A28FAF4BB05CFCBFFF0087747F
                                  C11A3FE860F813FF0087BAF7FF0096B47FC3BA3FE08D1FF4307C09FF00C3DD7B
                                  FF00CB5AFD40A28FAF4BB05CFCBFFF0087747FC11A3FE860F813FF0087BAF7FF
                                  0096B47FC3BA3FE08D1FF4307C09FF00C3DD7BFF00CB5AFD40A28FAF4BB05CFC
                                  BFFF0087747FC11A3FE860F813FF0087BAF7FF0096B47FC3BA3FE08D1FF4307C
                                  09FF00C3DD7BFF00CB5AFD31F11F8A74CF07E9F1DDEAFA8D86976B2DD5BD8C73
                                  5E5C2411BDC5C4C96F6F08662019259A58E245EAEF222804B0157E8FAF4BB05C
                                  FCBFFF0087747FC11A3FE860F813FF0087BAF7FF0096B47FC3BA3FE08D1FF430
                                  7C09FF00C3DD7BFF00CB5AFD31B7F14E9977E27BBD122D46C25D674FB582FAEA
                                  C12E10DD5B5BCEF324133C79DCB1C8F6F70A8C4618C12804946C727F1AFF006A
                                  5F865FB357F667FC2C6F88BE04F007F6D79BFD9FFF000926BF69A57DBFCAD9E6
                                  F95E7C89E66CF323DDB73B7CC5CE370A7F5D9760B9F9F5FF000EE8FF0082347F
                                  D0C1F027FF000F75EFFF002D68FF0087747FC11A3FE860F813FF0087BAF7FF00
                                  96B5FA27F073E3DF817F68AF0C4FADFC3EF1A784FC75A35ADD358CD7FE1ED5ED
                                  F53B586E1511DA16920765120492362A4E407538C115D6D1F5D9760B9F97FF00
                                  F0EE8FF82347FD0C1F027FF0F75EFF00F2D6BEF5FF00825BFC17FD99FE057ECF
                                  FAC691FB2ADE784EF7E1EDC78866BCD464F0F78A65F115A8D51ADAD9250D7125
                                  C4E564F212D731EF0002ADB46E24FA5D79AFEC13FF0025A7F6A8FF00B2AB67FF
                                  00A857856B6A1887525668699F49514515D630A28A2800A28A2800A28A2800A2
                                  8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
                                  8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803E4
                                  8B7FF94ACFC65FFB263E06FF00D3978B6BD7EBC82DFF00E52B3F197FEC98F81B
                                  FF004E5E2DAF40F1AFC53F0EFC3823FB7F59D3F478FEC775A8C92DE4C228ADED
                                  6D943DC5C4AE7E58E18C326E91C855DEA09CB007D2A6D2A69B3C0C426EB348DF
                                  A2B8DF02FED13F0FFE28F8634AD6FC33E3AF07788B46D76F5B4DD32FF4CD6ADA
                                  EED751BA55766B78648DCAC92858E42514960118E3835D956C730515CFF893E2
                                  B786BC1FE34F0F786F54D7B49B0F10F8B1E74D174C9EE516EF543047E6CC618B
                                  3B9C46982E40C2EE5C91B867A0A3CC7B6E15F8EDFF00047FF8FF00F153C1DE3C
                                  F0A7897E26FC48F15F8D7C3DE1CF803ACEA1AC59EA5E2C9258EFB528EF346F13
                                  25EB3EA13456AB22E8DE29D2ED3ED3712C6237B6B98D9D6DE28E693F626B93F0
                                  47C06F037C32D42DEEFC37E0CF0A787EEAD2D4D941369BA45BDA4905B986CEDC
                                  C2AD1A02B1F93A7D847B471B2C6D97188630B128B6D33484D4534D6E7CDBA97F
                                  C141AFBE26FF00C13D7E3A78F5BE1FDF5A6BFF0009AD751B4F11787A6D6B58F0
                                  CB4E90E9B6FA94C6CEFA7D3EDB528243A7DDA34723D95BBFDA1708C23F2EEDBD
                                  27F6CAFDB4FF00E1937C8F2BC35FF0917D8FC31AE78F35ADFA87D8BEC9A0E8BF
                                  63FED17B6C4527DA2FFF00D3EDFC8B67F2629712EFB9836AEFA3E28FF82677C3
                                  0B8F0CEA3E1DF0769563F09BC25E29B5974EF19685E06F0F68BA4DB78EAC6443
                                  19B4BF97EC4D72231149711ABDACD6F2A0BA98AC81B6327AE7C54F04F837C55A
                                  3596A3E37D23C31A969FE0FBE8FC476775AE5AC1343A25DDB0668EFE37981104
                                  B102E5660559016C30C9A3DEB0EF0BE88F31F831FB4CFC41F8B5FB45FC40F074
                                  9F0DB42D2BC39F0D7C4EFA0EA9E226F1699BEDB1CBA5DA6A364F696A2CC3BCE6
                                  3BD845CC533431C1E621867BC3E62C67FC14F66BBD3FFE09CBF1D351D3B55D77
                                  43D5343F02EB1ACE9FA868DAADCE977B657769672DD412473DBBA4ABB6589095
                                  0DB5D77238646653E93F0FBE03781BE12F89BC47AD7857C19E14F0CEB3E31BAF
                                  B6EBF7FA4E916F6573AE5C6F91FCEBA9234569E4DF34ADBA42C732B9CE58E5BE
                                  25F0F780FF0069CF87BAAE85AC58F847E2178527BB7B0D4B4FBC86DF56D3E4B8
                                  B5B8F9E19A260F199219E21956194923E4065E1D9DAC4DD26A4B63E529BF6BCB
                                  EFD8A74BF893E18B3D3BC57F108E9BF15EDFC0DE09D3F51BED635CB98126F08E
                                  9DAFCEB75770DBEA5AACF1866D49D5FC8BA75324519F2AD937C17FE3978D7C79
                                  FB507ED31F013C3165E1ED7740F873E3AF02EA3E35D5F4CBBF1D6AFE05F1369D
                                  34575A244E2E174D84CDE7D9C1A93A8B3376B0CF2DC4BE6989AD2091FDC34FF8
                                  79F01F57F0FDFF00C00B5D0FE11DCE95A55A25FDF7C378ACB4E7B7B3B77B8170
                                  9349A501B5236B86594334401918303B8E6B4F51FD8D7E106AFE26F0B6B577F0
                                  ABE1B5D6B3E06B5B4B2F0DDFCDE19B27B9F0FDBDA3EFB586CE431EEB78E1725A
                                  358CA88C9CA806A6CDAF2FF83FD22F9A29EAB5FF0081FD3385D23F6EF7F107ED
                                  CFAA7C1EB0F00F8AEF74CD0EE9748D4BC4D6FA6DFC967A7EA2DA545AB0F3A616
                                  86C23B436D3C31076BE175F699A34FB1F92CB727CDBE297EDC7F173C5FFF0004
                                  E5F8BDF17BC2DE03D0BC25631FC315F1E7C3BD766F13ADE4B776D71677573BEE
                                  ED5AC48B6BFB4B68EDE736D8B8B69649D2117254492AFD41ABFC06F037883E2E
                                  697E3FBFF067852F7C79A1DAB5969BE24B8D22DE4D5F4FB7612830C37450CD1C
                                  644F302AAC0626938F99B27C3EF80DE06F84BE26F11EB5E15F067853C33ACF8C
                                  6EBEDBAFDFE93A45BD95CEB971BE47F3AEA48D15A7937CD2B6E90B1CCAE73963
                                  976913CD05D0E17E297C58D7BC21F13FF67ED335BF0D58893C73AEDD69BA94BA
                                  6F8B6F123D0F524F0FEA57A116216D1AEA968C96B791FF00A479211C5B4C2132
                                  2AF93C2FC7CFDBAFC73F083F6A8FF8559A7FC38F0A6ADA9F89ED74E7F00C97DE
                                  33B8D364F17DC4B24A7508CA7F66C91C11E9B6969797772E92CE551B4F45469A
                                  FE38D7D235AFD97BE06F807C37E0F7D47E1DFC28D1748F8777E26F0AB5CE81A7
                                  DB5B7862F2E6EA370F625A30B6B2CB75E53662DACF2EC3CB62BD26E3C2FA65DF
                                  89AD35A974EB19359D3ED67B2B5BF7B743736D6F3BC2F342926372C723DBDBB3
                                  A838630464825170598AF15D0F0BFD9ABF6EF7FDA43F688F1A7836D7C03E2BD3
                                  740F0D5D6AB6565E269B4DBF5B0BBB8D2F51FECDBC8659E5B48ECC48F70246B7
                                  5B4BABC2F0C1334E2D244F209FB60EBBA9EB7F173C0FE059CF8AE2F07F89342F
                                  106AB7117867587D0B57F11EAFA78B192C344B6D444F6E61927865D46EBCB8EE
                                  209241A592D32DAC776927ABE91F01BC0DE1FF008B9AA78FEC3C19E14B2F1E6B
                                  96AB65A97892DF48B78F57D42DD44404335D04134918104202B3118863E3E55C
                                  5EF899F0C3C31F197C117DE1BF19787B42F15F86F51D86F34BD66C22BEB1BAF2
                                  E45953CC8655646DAE88E320E19148E40A354B50BAE6BA3E08FD937FE0B0971A
                                  96A1F0F3C231FC39F15C9F0F64B5D2344B3F1578B7C5D0DE78CB5349E1F09C16
                                  B7F7969040F6CF25C4BE2ED2A476FB76FF002C5DC8D1A4A8B6CFF507EC97F16F
                                  E20FC46F8EBFB44691E31B5D0A1D0BC0FE3AB7D1BC326C7513732C768FA16977
                                  863914DA438CFDA92E3719256125E4F083E5DB452CDB9A43FC0EF8A7E1E4F897
                                  6B17C30D734BD4B52478FC53E4D94D0DE5EADDD8C31BADD918924FB5699A62A3
                                  0624C9A7D9ED24C316DEECFC2FF0C8F897FF0009AFFC23BA17FC263FD97FD89F
                                  DBDF608BFB4FEC1E6F9DF64FB4EDF37C8F37F79E5EED9BFE6C679A2CD6ECA94A
                                  3AA4ADFE661FED2BABFF00617C13D6AEBFE120F1D785BCAF23FE269E0DF0FF00
                                  F6FEB76B99E31FB8B2FB15EF9BBB3B5FFD164DB1B3BFC9B7CC5F893F63CF8CF7
                                  1E22FDA6FE21594DF177F6A09A3B6F889A75A41049F0461B0835F46D17447275
                                  BB88FC2D135BC85E4781A4965B574B386D5C3247E5CCDF6DF8EF4297F682F873
                                  A64FE0CF89BAEF84AD6EA54BEB7D7BC2434ABE3A841B1C08C35EDA5DC0D13165
                                  6DC881B31AE1C2960DE21A97EC71A97ECEDA478F7C6CFF00B4C7C7DB0875ABAF
                                  F8493C473DBE89E16BF9AEE786C6DAC8489047A048E5BECD656D188E04F98C60
                                  852ECC594F4D5EC874AD6E5EAFFAEC7987ED87F13F48BAFF008290F86FC27E26
                                  F887F12755F048D0A58AE3C3BE10D6753F0E49A16B7A86B7E11D22CD26BFD36E
                                  AD16E6354D512E4DACCD25C5B25F4B312F15DD9451F947FC129BF6A9B3F017EC
                                  EF7DE3FB3F86BF125FC31E1BB5F0978334ED3ED7C6DAE4F04D7DAC69DE17FB3E
                                  9BA7691AF6A6F02471DEEA730178ED6D12599B2FB3C974934F227D09E3ED07E1
                                  57EDF1F136DECAC3C7FF0019344F175EDC69DADE97A843E109AC9743B7D36E2D
                                  AFD34D864D4F497B4B6DD7F6B6B7B710B81793BC16EB2B3DB430411F2F6FFF00
                                  04D5FD9A2D3C73A7F85B41F167C44F0FC66E61D06CFC3963E23BE778EEAD2EF4
                                  9D40CF0DE4EB26A108F2FC236166B2C77496F0C7A73C56FE4DC067A971973E9E
                                  7F869F83D1F996A5154FDEDB4FF3FCB5F4D4F14F85DE3AF8C1FF00084FC35FD9
                                  D26D2B5DD77FE1536A7A34577E1CB1F879A3D8F883EC9E1293C2DAAA3C97F2F8
                                  C9F4F1E7A6A3A52EF884AD9967FDCA6C15FA65F01BE31699FB43FC0DF0678FF4
                                  582FAD746F1CE8563E21B086F5112E61B7BBB74B88D6554665120490060ACC01
                                  07048E6BC2F49FF8248FC32D23E234DE244F117C66FB54B75A8DDFC9F12B5A82
                                  E4BDF5AE896B307D422B84D4668C2683685239AEA4453249F290B02C3ED5F087
                                  E1CE81FB29FECE9E16F08DB6A52C3E16F86FE1CB4D1A1D4356B88D5D2CECAD92
                                  159AE250A9183E5C419D82AAE7270A38AA826B722A4E325A1DB515E65F17FF00
                                  6CEF851FB3E78C1343F1F7C41F0A781EFA5B38EF91FC41A826996AF1C8F22201
                                  7131584C8C62948883F9856376DBB413566F7F6BDF84FA6FC1FB5F88571F13FE
                                  1E41E01BF9CDB5B78964F11D9AE917328764F2D2ECC9E4B3EF475DA189CA30EA
                                  0D5732B5EFA19724AF6B6FFF000FF91E89457885FF00FC1483E0858FC3DD7FC4
                                  A9F11346D42D3C28B6EDADD8E9B1CDA86B3A39B89D6DE24B9D36047BD85DA575
                                  4D8F086073903071DAFC11FDA4FC19FB4678734FD5BC1FAACDAA586A960352B7
                                  7934EB9B463019E5832E93C68D1B0960954C6E0382872B8AA5AEDFD75FC84D34
                                  AEF6FF0086FF0035F7AEE8EEA8ACBBFF0018E9FA678B74DD0E69651A9EAD05C5
                                  D5AC4B048EAF1C06212B3385289833463E6209DDC67071A9408F18FF00825B7F
                                  CA327F674FFB261E1AFF00D355B57BBD7847FC12DBFE5193FB3A7FD930F0D7FE
                                  9AADABDDEBE267F133E90FCF4FF82D1EB1F1357F684F82BA4FC3DF1DEBBE0D87
                                  57F0C78C74CBC8AC75ABBD3A1BBBFD58E8BE1AD16E24101C3FD9356D7ECAE779
                                  05E18A29E48834AA91C9E95FB007C7AD7FC4FE18FD95F45F115B5FEB375E31FD
                                  9FE2F149F135C78A6F26BABCBC853C3E97C97960C9E4CD239BEB6963BC926926
                                  53F6A40B1895DA5F60F8B1F193E03C3E25F0FCDE3FF107C2EB4D5DF529B47F0F
                                  CBE26B9B2B7B8B8BCB7BDB39A582C5AE48691E3BDB5B17610E76DC5AC04E2489
                                  76EBF86BE027C1F6F899A5EAFA3F82FE1A9F18FC32B087C3BA75ED9E9165FDA7
                                  E13B3FB3B795630C8A9E6DA45E45C36D854A2F9739C2ED7E74E6BC169F3FEBD5
                                  0FCBFAFEB4679AFEC89FB73F89FE3BFC448FC33E34F01685E0FBFD53FE129FEC
                                  89344F144BAEC33FFC239ADC5A2EA7F6832D8D998775CDC40F6FB04BE6446432
                                  790C8A8FC1AFFC158B5BD43E1459F8AB4BF84FFDB3FDA7FF000846BD61A5DB78
                                  9E38EFAF7C37E2DD465D3B4B994CD6F1C0BAB2CF09F3AC5E55B545652BA8BF20
                                  7D0DF0EFF632F83FF08750D1AEFC27F0A3E1AF85EEBC3B75777DA4CDA47862CA
                                  CA4D2EE2EA18EDEEA681A2894C524D0C514523260BA468AC4850073FA67C09FD
                                  9E3F68BF0F78B741B6F03FC1FF001B69167E30B9D43C4962BA169FA85A2F897C
                                  B0B7371729E5B21D40249B649181946E2AC7A8A5785F6FEBFAB0799E99F0CF51
                                  F13EABE08B29FC63A4685A0F891FCCFB658E8DABCBAB58C189182797732DB5AB
                                  C998C231CC09B599946E0A1DBE30FDA82F756F877FB7B78B7C47A3F8AFC77677
                                  1A67FC2A4FB369DFF095EA5268917F6E78BEFF0043D53FE256D39B13E7E9F045
                                  1F301F2E45F3E3D939329FBB6B84FF00865BF865FF000BB7FE1667FC2BAF027F
                                  C2C7FF00A1AFFB02D3FB6FFD47D9BFE3F3CBF3FF00D47EEBEFFF00ABF93EEF15
                                  3195981E4DF047F6FCD5BF687F8C9F11FC25E1AF869AEAC3E15FEDAB4D0F5CD5
                                  20D4AC746D52FF004ABE3A6DC5ADD5F3581B587CDBB0C6036536A0E6086779A3
                                  B7963FB337937EC8FF00B41788BF67AFF8260695F1FF00E20E97AEF88FC65F11
                                  74BF0D5E9B7B6F1AEB7E27875CBBD58D9C16B70B6525BB2E93E6DEEA44CD67A4
                                  DA4CB144AAB025C948A01F596A5FB2DFC32D67C6FE26F135DFC3AF025D7893C6
                                  9A5BE89E21D566D02D1EFB5EB078E38DECEEE631EF9E068E2890C521642B1A02
                                  30A307817F65BF865F0BBE196B1E0AF0CFC3AF027877C1BE22F3FF00B5741D33
                                  40B4B4D3353F3E25866F3EDA38C452F9912AC6FBD4EE450A72062AB9A2078BDE
                                  FEDF1E3AF14FC38F067FC211F062FF0052F899E2CD075FF108F09F8A355B8F0A
                                  29B7D16EADACAE5619AEAC4CFE65C5C5EDA3598BAB5B512DBCA6599AD18088F5
                                  9F0FFE2E7C42D67FE0A3FF0013BC0DA8DAE84BF0E3C3FE04F0DEB3A4BC5A897B
                                  E5BBBCBCD622924787EC8B8F37EC6E8CA6E5D635B1B7740CD7532C12CBF07FF6
                                  6BF1CDB47F011FC2DF03B5887C19FF0013C8FE1CB69BA5DC2E85E6163F6C1A5E
                                  D220DC6E9CF9BE5AE7ED2DCFEF0E7D0FE24F877C0563E20F0FF8DBC6163E1087
                                  54F09CEF6DA1EBFAC416EB71A34B7C52D5A3B6B9946E85AE4B4709546065DC89
                                  F3640A5A5B45BEDF7FF483C8F1AF037ED37E328BF604F19FC46F0FFC35FEDEF1
                                  C785354F152CBE0C8FC5D7DAAFF6A5DE99AE6A16D77059DFBD9BDC49E69B599A
                                  D6116AAA37C16EAB0C6014E0EFFF00E0ABDAB47F06EDBC69A6780342F14E91E2
                                  BF1445E0DF045FF867C41A97882C7C537F058DDDCEAF38163A44D7A9616D3E9F
                                  A85B41710DA5C3DD35B098C36F6D22DC57D35F0D7E0EFC3AFD94FC03A8DAF83F
                                  C2BE0AF86DE178E49756BF8746D32D747B04711A892E6558952307CB890348DF
                                  C31AE4E14633FC3FE0BF849FB46FECDFA6E83A5E93F0E7C77F086FACA0B5D3F4
                                  EB4B5B2D53C37716B6CEA218E28943DB3450BC2811546D46897182A305E3AE9F
                                  D3FF0086FCC3D4EA3E16F8EBFE168FC32F0E789BFB1F5DF0EFFC245A5DB6A7FD
                                  95ADDA7D9353D33CF8964FB3DD4393E54F1EED92264ED7561938AFCF5D0BF6D2
                                  D6FE0FDEFC20F1ECDE1FF8B3E3BF8BFF0019BC316B0EADA5DDF8DE3D37E1EE8B
                                  AA5E6BFA1E917D657162F2CF369B3E8F7D7B6D6405B69CF3EDB8956E5AE6E05D
                                  4F17E8CF85BC2DA6781BC31A7689A269D61A3E8DA3DAC5636161636E96F6B636
                                  F12048E18A3401523445555550000000302B05FE0278165F13EB9ADB782FC26D
                                  ACF89EEB4EBED62FCE916E6EB56B8D39D5F4F9AE24D9BA592D5D11A16724C451
                                  4A1520511925B81F1FC9FF000533F885FB40FEC1BA07C45F87BE10D0BC37E329
                                  3C77E05D1B56D3352F1117B18AD35C9B41BD8E386EFF00B3E4693CEB2D6ECADA
                                  6636D1B5BB4F76F1198DB426E3EEDAE4B48F809E05F0FF0080B54F0AD8782FC2
                                  765E17D72D56C752D1EDF48B78EC350B75B38AC5619A05411C918B4820B70ACA
                                  47930C71E362AA8BFE12FF008467C182D3C15A17F61695FF0008FE996E2D741B
                                  0F2A0FECDB01BA18365B263CA80794D1A61427EE8A8FBB809B4F4483A5CF8FFF
                                  00E0A1BE1CD1E5F845E39F0BF8064B08E3D1F5E87C43AE68B0DF6A76F1EADE32
                                  BF310F0DE9114F6CF0AE9B25CEB93699A95CC96B796B2C4E209A74F2F5596EAB
                                  ACF875E0DF0FFC23FD9EFC57F167C17F1AFC770783FE22697A0EAFE0FBAD7EFB
                                  5AF16C36509092DA2259EA971717B733EA53DD8824B7B636D34F149696F0470D
                                  DA0B993DDECFF673F0CD97C4DD3FC4C96BB7FB13ED571A46951C5143A66937F7
                                  92DC497FAA450A22EEBFBAFB4C8925C485DD51E611F95F6ABCFB450BAFD98B4C
                                  874FF18D868DE20F16785B49F1C5D477D7F61A2DF25A476970D334B7F359C810
                                  CD6725F8622E1A091087325CC260BC966BA92B9B4B01F91BA17C70F0DDB7823F
                                  677D462D3BE3B78F3E23EAFE18D1746D77517F897E306D46FF0051D4A4F87775
                                  771D95C45AD436D6505CDAF8918EEBA6B6B737D6B64848558D66FAC7E367C6EF
                                  1BF86BF684F01DD783F41D77C397FF00073EC9F06FC4BAF6ABA7C1E38F0F437F
                                  E253E149A251733EBDA6EB173E4CADA7AB5DC96AEF28B895D9372B1AEE7C43FF
                                  0004C9F819E0FF008D76F1EB3E3BF12E9FE30F19EAEFAA7807478756B2D217C3
                                  73D95BE985174AD3ECEDE186EADAD22D0F426105FC5796E874AB46642CF299B4
                                  7E157FC125BE0D784D62D1F45F19FC4ABFBEF05EB3E12BF9ED23F1D5CADBDADC
                                  68165A2C7A7C777A640C961234B069167248D3DAB4ADE73346F1810793AF3C5E
                                  BFD7F5D03C8C2FF8258FED23AC78E7C61A94DE2EF0EF8B2DB59FDA2ED64F8BDA
                                  26B371A0E99A36917DA65B699E1CD28470DB5BEB7AA5CC72794F6329FB432126
                                  790614A6DAFB7ABE6BFD99BFE09F3F0B7F633F891F0FFF00E11FF1678EEEBC41
                                  E1BF04DE783F47D3FC4BE37BBD5C5EE9FBF4B69E686D2E6468EDDA33616808B1
                                  8E08144DB5A2C08447F4A561369BBA00AF35FD827FE4B4FED51FF6556CFF00F5
                                  0AF0AD7A5579AFEC13FF0025A7F6A8FF00B2AB67FF00A857856BA705F1BF41A3
                                  E92A28A2BD42828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
                                  28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
                                  28A0028A28A0028A28A0028A28A0028A28A00F922DFF00E52B3F197FEC98F81B
                                  FF004E5E2DAC6FDA5BC0D7DAAF8A3C4FFF001496B7E2FB4F14F84A1D3ED60D26
                                  5B786E60B9B3BA9672892DC0104533ADC2C9099DC42D259EC764DCBBB66DFF00
                                  E52B3F197FEC98F81BFF004E5E2DAF5FAF4611E682F9FE29AFD7FA5A1E0D795A
                                  ACBD57E0D3FCD1F2B780EF7E36F8567F8537371E1AF8917B05EF88F504F16412
                                  2F8461B97D36488C56F77AC9866446BB497CA901D298A98A3903C65F6475E37F
                                  1C7C75FB57FC24FD9E7C7B7F15CFC699758D46DA1B9D2F51B6F09F85FC4B7BE1
                                  B64D72589A0B3D334FC3DDCB3698217227DF1067C99EDB0EA9FA1B4554E9B924
                                  93B5BF2D34FC34EBF2D0CE15545EA974FC24E5FAD9DEE9A4933E54F06788BE22
                                  F883E11FECCFABDE7843E2B78FB564BF5D5FC4FA96B1A7687E1DD574B1269D75
                                  6C64BEB06BA816160F78A7C8B659992385C316902F99B3FB19E9FF001FED7E3C
                                  FC579FE2E6B7A9EA1E15B9BFCF852C5FC3DA3D8E9DA7402698016775697F3DE5
                                  CAB45E56E37D6F038206D1CB2D7D25456CEDED5D55D79B4E9ADBA6DA5B4D34D4
                                  CAFF00BB54DF96BD746DEFBEB7D7BAB1F27FC44F19FC68D4FF006FFBDD03C212
                                  7C4D3E12D32C74CBC2F73A1E916FE084322DC8BA8A7BC9E15D46E25DB1C0C8B6
                                  2F27972C9FBD2A876AF75FB287887E2568DF0D277F1F687F16B57F114DAADBC1
                                  327885BC2919856411ACB35A0D2E658FEC313177C5C335DED040590E14FBB515
                                  14D7226B7BF7F5BFFC0F4BDAD72AA4B9DED6D3F4B5FF005FB8E63C3DE37D4B5A
                                  F8A5E24D124D125B6D2344B6B37B7D55CCCA2FE7984AD2C4AAF0AA1112AC277C
                                  52CA0998A9D8D1907C5BFE0A9BF0D3E21FC56FD95356D27E1E7842C7E20DFCE9
                                  2473F86AE35D8F453A8EF89921916E258DE26F226649FC9731090C487CE5D9E5
                                  CBF48514A7172564EDE7F3B8427CB2E6B5FCBE56F5FEBB1C3FC4BBDF19EA5FB3
                                  DEA971A0589D33C7571A2992DECE19E0B87B4BC3164C514930103C8AC4846940
                                  88B052E02135F1A7867C19FB57E8DFF080C1E1D97E25784F46FF0084DB50D47C
                                  56DACE87E0CD6B59D7AD25BC8258CDF18352B7B5B6B7685E6566D3D5AE032362
                                  2E10BFE81D15564AB7B65F774DEF6EF6D15EEF54B5B8B99FB1F62FD6FD7671FC
                                  9BB69A3D8F877FE15CFED1BE18F83BF1E0F83750F8A5A4F8CB5DF1625D787AEF
                                  5FB0F076A8E2C8C8892DCE9B0413DBC4F298502ECD4A78C0448B680E1C1EFEE4
                                  7C78D3FC35F05A3D467F89DAB4B0E9D08F185CF86B4FF09585FDD5F8780336A7
                                  0DEDCCD6F15B3279A5D74B9649376ED8E00407EA3A2A694791462B5E5E55AF68
                                  47952F47BBEEFC924554A9CEE52696BCCF4FEF3BBFBB65D95FAB6CF08FD923E1
                                  8F8C3E16FC60F8CF1788AF3C79AAE91AE78923D6345BFD6DF443A7CF14B6D1AB
                                  ADA0B254BA531B2796E2ED00DB1C250B132BB701F14FC65F1BF54FDBC753F0FF
                                  0081E4F891FF0008D69BA769D791BDEE87A4C1E0549244B917315CDE4D0AEA57
                                  0F88E0645B0793CB924FDE9543B57EB6A293A7EEC21776824BD5463CAAFF0085
                                  C7ED3DE9CACAF2BFC9B7776FC7EFF91F1D68FACFED23E1EF8336D7D3E95F1835
                                  DD7ACFC55A54CFA74EFE084D5AFACD5B3A9C4E63922B21A6B47C405244BFF348
                                  DEC23E6BB0F87917C7083F6B1D5A6D6A5F88537C3BD5F51D56C2D2DEE57C3034
                                  ED0ED12DECE5B3BD430FFA7BB3CED7912090CB8555F3615E256E6BF6FAFDA1BE
                                  29FC16F1AEB13F827C4DA069F65A6787ACA6D3B49BFF000BDDEABFDA9AC4F35F
                                  2C51C925A079FECE62819DE286169DDADE311302CD1C943F630FDADBE277C4BF
                                  D98B49F1D78EB5DF056A9AEC3E3D4D0B5BD3FC3DA5DDD8DA4769773C169044B0
                                  DF2C77D6B346D730DC62EA35778C91B0AC914A1D392A956515BA5F2F7A5182F9
                                  E975D939BDF6AA89C29C65A6AEDE77B4A5F774F369277472FAAF82BF691F819F
                                  B144FA0F80B4FF008CBE28F1EE99E3BBE64336ABE08B1BCD5B4B9259E4134575
                                  3432DAC16CE6449732DA3DD1943C7E5C51B2BC7F73688F72742B46BB4916EFC8
                                  43323BA3B87DA3702CA02939CF2001E800AB74538AB45C7BDBE5656D3D777E66
                                  5397334ED6B5FE7777D7D365E47C91A7EBFF00193C3BFB3E4571A17C2FF8ABA0
                                  7896D7E25DC6A93E876D7BE12967D5F47B9D527BC9C48F3DFC902C26DA628447
                                  345702754DA7CADCE712CE2FDA7A0FDA77C5D3DE4BF16E6F875703534D36DAD0
                                  7823CBB54316A06D9AD0B8170660C9A788BED6CC9BA57F3C140C53ED2A2A3D9E
                                  8D5DECD7DEA2AFEAB96EBB36DADCD1D5BF45BDFF0016EDE9ADBCD257D8F933E2
                                  F782BE2FFC69FD883E1B5E5DDAFC52D03E25F86F54D1F52D7B48D1E6F0B0D635
                                  596D6E235B87DD3B4BA660ED6B84549630708081CC55ECDFB5F697AAF89FF65E
                                  F1A68BA4787B5FF126A3E24D1AE3468ECF4A8F4E96EE3FB4C4D099BCBBEBAB5B
                                  69047BF7B23CEBB8290339C57A6D155560AA4274DE8A6DB76F3518B4BB2B4579
                                  F9930A8E338CD6F1DBEF6D5FBD9BFF003B9F995FF04C2FD97FE39FC1CFDA42EB
                                  5CF177867C69159FF615C784A1BED5745D134D8F4A83CD8A449A031EBDA94BE5
                                  2BC69E5E9D6F0C5A7C2AD33402362C936978B3FE0987AE78F351F87F33691F0C
                                  35FB7B5F1A6BD6C4FC49F85B2F8B6FEC2D7ED3AE4B1C92DC1BEB6CD8CC5E2956
                                  328A0CF711C8252BE5C75FA47453714E304FECEDF8BFCDBFBFC959FB59294E51
                                  D39AFF00E5F82B7DDE6EFC9E9FAFF8A2D7E26596852F86EDA5F0D2687F6AB9F1
                                  2457A90A7DBC4AA82CE3B2F9A40A537C9E617DAA02AFCE492BE37FF054DF869F
                                  10FE2B7ECA9AB693F0F3C2163F106FE749239FC3571AEC7A29D477C4C90C8B71
                                  2C6F137913324FE4B988486243E72ECF2E5FA428A269C95AF67BDF4BEF7ED6D3
                                  65A6C975D48A6D42574B4EDADB6B7AEBBBD7AF6D0FCE4FF82977C2DF1778D3C3
                                  1E208A287E2C68BABF8C069B7124FE1A1AEDC369570238CDC5AC579A469B7AF1
                                  442289A2DE2D5E3766F9C6E726AC6B5F0A3C65ADFECE9F0C6F7C3B69E37BBD53
                                  C3D26AD38B593C237B69AF6AF1497B240CB2DE5F4514D009BCE8A4F2265B7F31
                                  55E591B626D1FA274543A316A71D94DF4E8B95C6C9BBF47BBBF9DDEA6D0C44A3
                                  C9D5C75D7AFADADA792B75B593B1F9DD63FB38F8EBE21FEC57F117E15EA69F15
                                  2F3C77AE5C5ADBC92EBA63D2A2D3E07BC6BA8C5BCF6F6575A44B3AAB3492CD6E
                                  986322C2F340624F2723F63AF82BE2AF02FED0DF0AFC37F10FC1F1EBDADF81EE
                                  66D2EDAEB5DF8512DECDA169E2CAE2F62BCB6F12DB2AE96931BB9042EC88934F
                                  B632E91C9BD4FE94515A2BA9FB47BDEFF34ACADF8EBABD5EB7B331BFEEDD35B3
                                  BFDF269BF9691B2E9CABCD3F90FF00697BBF157C6CF8ABA2FDBFF67CFDA425D0
                                  FC2F16A56AB7BE16F1FE8DE1B9AFDE592D4452A4B69E23B5B868196091B64C57
                                  EF464C7B87CBF507C33BD9B50F87DA34B71A2EB9E1D98DA46ADA6EB37715DEA1
                                  65850364F3453CE924831F33ACD26E3CEF24935B945282E54D7709CB99A7D8F1
                                  8FF825B7FCA327F674FF00B261E1AFFD355B57BB9E457847FC12DBFE5193FB3A
                                  7FD930F0D7FE9AADABDDEBE2E7BB3E88F8D757F86FE3DD36D3E1D58F86FC09E3
                                  16D73C3F663C2DAC6A50FF0061B683A84315D28906A90DF98EE64B29540BA8E5
                                  D3434D991D582B298DB6FC5173F1FF00C451F8E742D360F8B7A02B7C45B11A1F
                                  8880F06C92AF876668D2F3ECE8CD22F9306DB8923FB4C06E8AC96D913309631F
                                  57D14295925DB5FF00C9949FC9B4F4ED295EEDB6393BB93EFF00A2715EAEDDFB
                                  2B592497E7A7867E34FED272FEDCBF03FC31E2897E3BF877C2B71E1F823F12D8
                                  D8FC3BD0F55D2F52BF89EF3CCB9D575C84B5BD809523B6FDD59972D96012D8BA
                                  67D37E2FAFC7ABCF087C7E87E1A784BC57E03F146AFE25B2BBF0EF882783C3FA
                                  BB6A36696D63673CD636B2EA6911976DA48EA97CD6EBB25427E7CC6BF5F514DC
                                  AEAD6EFF008C94ADDF4B596BB69DACEF69F3AEC97DCADE9AF5EBE6797FC317F1
                                  AE8DFB20698DE32D4F5DB8F1EDA78673AA6A0BA35A43A9BDEAC0774BF62B492E
                                  EDBED1B86EF2A069A32FC2865216BE57F841E2BFDA83C71FB34E8DADDF47FB40
                                  4526AF7365717904DA5F8234DF1BC20D948D3FD9ADAE4269D0587DA0C2025E29
                                  BF50250CA3E56AFBE2BF2AFF00E0A1DFF054FD6BF662FDA8BE2AF825BE32EADE
                                  1EB9B06D34E91A75BC9A04234C596D609805177A64D724CCEEC8A634D4816DDE
                                  6FF6747B6715094AA579412D676B765677B25D39AE976B2B760846D4D7685EF7
                                  DDDD25AFA7E6FD4FD13F167C55D7FC29F08BC43AC5BF82BC4175AD6871AC7A7E
                                  9D7F24465D7A531C450AB580BA31A349218D98C4363472394110121EFE362D1A
                                  961B588C919CE0D7C9FF00B61FED9FE20FD9D3C5FA0E8561ABF8734E7B0F0FC9
                                  A95F7887C67771E8BE18BEBA5B8D3E0F26F2F044FF00665315D4920784604CF6
                                  A9F387313753FF0004C6FDACAF3F6BCFD97F48D7B58D7FE1AF8835FB5B7B6875
                                  19BC1FE2D8FC403CC6B689CB5E7976B6CB6974CCCFBAD951950018739C07CBCE
                                  A5521B2EDEAE3D7CD7F96864B48C6FA5FF00CAFF0087F9DEECB7A4782FC45A8F
                                  EDC52EB51FC39D47C37A4E9505C4375E25975BB6B9D27C4904B042636B7B2498
                                  CB05F897E49667B78CB436A10CD32F94B1E07FC144BC37F15BC5927862CFC0DA
                                  578EB5CF0F89E2B9D4B4FF000BCDE1E8BED72C37B6B284BE6D59E3716C624976
                                  FD89D65DFF007885C57D0FE3BFEDCFF842B56FF8467FB287888DA4A34C3A9890
                                  D9ADCED3E5998464398C360B05209008046723E46F187ED61F17A7F825E1C84C
                                  B69E1BF8916BAA6A035A963F0CA369E8D6A18C3A7DCDAB5F4CB1BCC92C32B0B7
                                  BF9329112B71189559738CF9795FFCFB57F54AF76D7657BBB595ED646AD5EEDF
                                  DA76F47D35F3B593FBCE33C7FF000E7F6AFF001F781FE3F69BE27D57E236B169
                                  ACDF431F83B48F0E683E0ED392DAD7ED72068ED2F2EB5099AE216B731994DFC1
                                  6F2FCA3CBE4B29F53BBD1BF68F5FDB23E15C969E23F1747F07ED340B75F1159D
                                  DF873C37772EA57861984CDAA5DA5F4135BDC2BF9240D2ED25B72C3FB8481E47
                                  FB2E7FC1547E2678EBF664F88BE3FF001E58787F449F43B6B66D0B4FD5FC197F
                                  E16BC96495EE5416B51A86A525D1748A39228E231799F30DE14F9ABD2FEC99FB
                                  64FC59F8CDFB4947E17B9F14693AD5B47126A1AD5B47F0CAEF4D8ADAD9A39764
                                  B69732EA7E5C50E56DD1FE6D4A43713C8176468EB6FB5A54AD16AFC8AFDEE945
                                  5EFDF4926EFBBB3E9A4D67EED49CB4BFBAFC9B6AD6ECEEACAD6EA8DBF89DF0CB
                                  E377C6BF827F1C7C35AB5DFC63D3F59D42DEE0E826D5BC1D168D76A93CAD15AE
                                  94D892E956688449236A9B4F276BC4738FA56D2FF57B6FD9D85CDDBF8B2C75D8
                                  FC3C6495EF2DACAEB5C82E05BE4B491592496925D07E4A5BA3C4CE308ACA403F
                                  9B7FB25FFC1503E277873C21E2687E247C48B297C61A5F88ED22834AF8A1651F
                                  C3F4362A9791DD49F695D2462D9E748550AC12CCB2A794C53CC535FA1FFB4578
                                  FF00C47E02FD9FDB5BD36C2F26F114773A52B69FA1CD6B7135C34B7D6D1CD6D6
                                  F25E79503175778D5E6F287CC1898CF233C45192A2E9DF4D15D6FF000DEEBEF5
                                  7B755DF7D2FCB89B35AA6F4E9A49C5AFBE3757E92F92F937E11F8A3F6A8F1D7E
                                  CEDA1EB970BF1DE16D566B5B8BB82F74CF05699E338A46B3264F2ADA745B0874
                                  CF3CA663BA03515C30C018CFA77C47D77F68AB69FE2A58693A378F27BD9FC21A
                                  5DC786753D35BC2C749B6D791717B069E97532DC98642F1B7FC4C508FDD5C6C7
                                  40610DD17C7FF8EBF106F7E0EF86755D2AC358F82BA8DF6BF2DB6AB1F89F4CB0
                                  D72EEDB4D8AC2F279E68E3D3EF2E21F336C3BE36F31F6BC63CC89D37237887EC
                                  1BFB617C78FDA77E35FC46F0C78BBC51F0DF488B4FD025B8F08C7A6786756B1B
                                  E6905C858EEAED3528A15BD45468448FA717B63E70C48864859B59CD4EA4B44A
                                  EA4FD14629F4FC3FBDBDAE6715CB4D4DF4697CDCD7E5D7FB8F4B9DB7C57F857F
                                  1A7C77FB31456373A87C63BAF14F817E21C37B677164FE0F8B5CF17E9505FA49
                                  15C61D069CBB626DCAACB6AE5ADD77A1C90FDCF82B57F8DD27FC1447C456DA9E
                                  89E331F048E88AFA6EA573AA78763D263BD11DB830C7670C2FAAC8E5BCE6F3E5
                                  B98E304B279042A4AFECFF0005FE227FC2DDF83FE16F150B6FB17FC249A4DAEA
                                  7F67DFBFC8F3A259366EE338DD8CE06715D3545DD36E0D2DDDFD5C6306F4FF00
                                  0A6BCEFD3427E257FE92E673B7E2D7F874F33C7BF69AB8F1343F12BE10CBA0F8
                                  0FC4BE30B2D37C4F25FEAD77A5DDE990C7A3C074FBAB4124AB777703B8DF78AD
                                  881646D90CBC6ED8AFE25F1D353FDA7352F047C4DD33C15A77C5AD3F56B5F193
                                  DC785757DDE09325E692D652E208566768C5B25EC6306EA25BAF267872ECC25D
                                  9F67515945DBFAF38BFD2DE8DAEA69CDD6DD2DFF00A57FF25F7A4F747CC1FB3C
                                  6B9F1D749F8AFE02B4F1A68FF13753D06EBC3FA9D9F882F7527F09AD959DEA6A
                                  0EDA7DD4E2CE54B937125A215905B23DB8F3ADF11A3098A74DFB237C2FF18FC2
                                  CF8C9F1A62F11DE78F755D235DF12C7ACE89A86B6FA21D3E78A5B68D5D2D0592
                                  A5D298DA3F29C5DA01B6384A1726576F79A2AF9FDE724B74D7C9C94FF06925E5
                                  A19F2FBBC9E69FCD26BF14DDFEF0AF35FD827FE4B4FED51FF6556CFF00F50AF0
                                  AD7A5579AFEC13FF0025A7F6A8FF00B2AB67FF00A857856BA305F1BF43447D25
                                  451457A850514514005145140051451400514514005145140051451400514514
                                  00515E5FFB6EFC6BD57F66BFD8BFE2EFC45D0ADF4FBBD6FC03E0AD67C49A7C17
                                  F1BBDACD71676335C4492AA32398CBC6A182BA9209C303CD7CBBF123F6C0F8BB
                                  F06F56BCB0F17FED29FB23F856FB4ED3135ABBB7D63C037B632DAD83DCADAA5D
                                  C8B2F8A14AC0D70E9089080864654077102AA3094B603EF2A2BE37F0C7C4AFDA
                                  53C6DE1AD3F59D1BE317ECE5ABE8FABDB477B637D65F0AF54B8B6BD82450F1CB
                                  1489E262AE8EAC195949041041C1ABDFF091FED4DFF4547E007FE1A3D5FF00F9
                                  A5AD3D854EC3B33EBAA2BE45FF00848FF6A6FF00A2A3F003FF000D1EAFFF00CD
                                  2D72BF17FF00698F8DFF00B3E786A0D67C7DFB41FECABE08D1EE6E56CA1BEF10
                                  7C39BFD36DA59D95DD625926F142A972B1C8C141C908C7180697B09F60B33EE4
                                  A2BE29F891F1C7F682F837E0BBCF1278BFE39FECC9E15F0EE9DB3ED7AA6B1F0C
                                  B52B1B2B5DF22C69E64D2F89D51773BA28C919665039228F86FF001C7F682F8C
                                  9E0BB3F127843E39FECC9E2AF0EEA3BFEC9AA68FF0CB52BEB2BAD92346FE5CD1
                                  789D91B6BA3A9C138656079068F613EC1667DAD457C37F17FF00698F8DFF00B3
                                  E786A0D67C7DFB41FECABE08D1EE6E56CA1BEF107C39BFD36DA59D95DD625926
                                  F142A972B1C8C141C908C71806BAAFF848FF006A6FFA2A3F003FF0D1EAFF00FC
                                  D2D1EC27D82CCFAEA8AF917FE123FDA9BFE8A8FC00FF00C347ABFF00F34B47FC
                                  247FB537FD151F801FF868F57FFE6969FB0A9D82CCFAEA8AF837FE1B03E2EFFC
                                  2E8FF856FF00F0D29FB23FFC2C4FFA15BFE101BDFEDAFF0051F69FF8F3FF0084
                                  A3CEFF0051FBDFB9FEAFE6FBBCD771FF00091FED4DFF004547E007FE1A3D5FFF
                                  009A5A5EC27D82CCFAEA8AF8DFC31F12BF694F1B786B4FD6746F8C5FB396AFA3
                                  EAF6D1DED8DF597C2BD52E2DAF609143C72C5227898ABA3AB065652410410706
                                  AF7FC247FB537FD151F801FF00868F57FF00E6969FB0A9D82CCFAEA8AF917FE1
                                  23FDA9BFE8A8FC00FF00C347ABFF00F34B47FC247FB537FD151F801FF868F57F
                                  FE6968F6153B0599F5D515F22FFC247FB537FD151F801FF868F57FFE6968FF00
                                  848FF6A6FF00A2A3F003FF000D1EAFFF00CD2D1EC2A760B33EBAA2BE37D27E25
                                  7ED29AFDFEA76B63F18BF672BDBAD12E56CB51860F857AA492584ED0C5388A65
                                  1E26263730CF0C815B0764D1B630C09BDFF091FED4DFF4547E007FE1A3D5FF00
                                  F9A5A3D854EC1667D75457C37AB7ED31F1BF40F8B3A67806FBF683FD956CBC75
                                  ADDB35EE9DE1C9FE1CDFC7AB5FC0A2526586D4F8A04B220104C4B2A91FB9939F
                                  94E3AAFF00848FF6A6FF00A2A3F003FF000D1EAFFF00CD2D1EC27D82CC7DBFFC
                                  A567E32FFD931F037FE9CBC5B5EBF5F13F84343FDA27C49FF0515F8A92FF00C2
                                  CDF82F0EB9FF000AF3C1CD7773FF000ABF536B49ADFF00B47C4E208E387FE120
                                  0E92232CE5DCCAE1C4B18091F96CD2FB1FFC2BFF00DA63FE8ADFC0BFFC349AAF
                                  FF003495DB4EEA2958F07150B5595D9EEB457857FC2BFF00DA63FE8ADFC0BFFC
                                  349AAFFF0034947FC2BFFDA63FE8ADFC0BFF00C349AAFF00F349577F239F9577
                                  FCCF75A2BC2BFE15FF00ED31FF00456FE05FFE1A4D57FF009A4A3FE15FFED31F
                                  F456FE05FF00E1A4D57FF9A4A2FE41CABBFE67BAD15E15FF000AFF00F698FF00
                                  A2B7F02FFF000D26ABFF00CD251FF0AFFF00698FFA2B7F02FF00F0D26ABFFCD2
                                  517F20E55DFF0033DD68AF943F689F157ED31F00FC01A7EB9FF0B27E05EADF6E
                                  F13F87FC39E47FC2ACD560D9FDABACD9697E76EFF8489B3E57DB3CDDB8F9FCBD
                                  BB9776E1DD7FC2BFFDA63FE8ADFC0BFF00C349AAFF00F34945FC83915AF73DD6
                                  8AF0AFF857FF00B4C7FD15BF817FF869355FFE6928FF00857FFB4C7FD15BF817
                                  FF00869355FF00E6928BF9072AEFF99EEB457857FC2BFF00DA63FE8ADFC0BFFC
                                  349AAFFF0034947FC2BFFDA63FE8ADFC0BFF00C349AAFF00F34945FC839577FC
                                  CF75A2BC2BFE15FF00ED31FF00456FE05FFE1A4D57FF009A4A3FE15FFED31FF4
                                  56FE05FF00E1A4D57FF9A4A2FE41CABBFE674BF18BF648F09FC6AF11DE6BBA8C
                                  7359F89A4D3EDF4DB0D72D21B63A968490CEF3EEB39A589CC4D23B0F33AAB88E
                                  3057E5A8FE1FFEC8DE1DF8656BA7E99A4EA1AF47E15D23573AD69DE1D9A68A7D
                                  3EC66DAC76A178CCFE589DDAE155A53B25C15DA8AA839EFF00857FFB4C7FD15B
                                  F817FF00869355FF00E692B85F847E2AFDA63E29F8FF00E28E87FF000B27E05D
                                  8FFC2B6F13C3E1CF3FFE1566AB2FF68F99A3697AA79DB7FE1221E5E3FB4BCADB
                                  96CF93BB77CFB552B2774BFABDFF003D7D4AD5C796FA7F9E8FF0D0FABE8AF0AF
                                  F857FF00B4C7FD15BF817FF869355FFE6928FF00857FFB4C7FD15BF817FF0086
                                  9355FF00E6929DFC89E55DFF0033DD68AF0AFF00857FFB4C7FD15BF817FF0086
                                  9355FF00E6928FF857FF00B4C7FD15BF817FF869355FFE6928BF9072AEFF0099
                                  EEB457857FC2BFFDA63FE8ADFC0BFF00C349AAFF00F34947FC2BFF00DA63FE8A
                                  DFC0BFFC349AAFFF0034945FC839577FCCF75A2BC2BFE15FFED31FF456FE05FF
                                  00E1A4D57FF9A4AE17E2E78ABF698F859E3FF85DA1FF00C2C9F8177DFF000B27
                                  C4F37873CFFF008559AAC5FD9DE5E8DAA6A9E76DFF008488F999FECDF2B6E571
                                  E76EDDF26D62FE41C89F53EAFA2BC2BFE15FFED31FF456FE05FF00E1A4D57FF9
                                  A4A3FE15FF00ED31FF00456FE05FFE1A4D57FF009A4A2FE41CABBFE67BAD15E1
                                  5FF0AFFF00698FFA2B7F02FF00F0D26ABFFCD251FF000AFF00F698FF00A2B7F0
                                  2FFF000D26ABFF00CD2517F20E55DFF33DD68AF0AFF857FF00B4C7FD15BF817F
                                  F869355FFE6928FF00857FFB4C7FD15BF817FF00869355FF00E6928BF9072AEF
                                  F99EEB457857FC2BFF00DA63FE8ADFC0BFFC349AAFFF0034947FC2BFFDA63FE8
                                  ADFC0BFF00C349AAFF00F34945FC839577FCCBDFF04B6FF9464FECE9FF0064C3
                                  C35FFA6AB6AF77AF887FE09BFE06FDA1EEFF00E09E1F0165D13E28FC18D3F469
                                  7E1D7879EC2D6FBE176A779756D6E74CB731C72CE9E2089659153686758A30C4
                                  121101DA3D9FFE15F7ED37FF004577E04FFE1A2D57FF009A5AF8D925CCF53E88
                                  F77A2BC23FE15F7ED37FF4577E04FF00E1A2D57FF9A5A3FE15F7ED37FF004577
                                  E04FFE1A2D57FF009A5A9B2EE07BBD15E11FF0AFBF69BFFA2BBF027FF0D16ABF
                                  FCD2D1FF000AFBF69BFF00A2BBF027FF000D16ABFF00CD2D165DC0F77AF04F17
                                  7FC1387E1FF8D3C709AFDDEBFF001AE2BD59EE2E3CBB5F8BDE2AB78034DF7847
                                  1A6A004283B243E5A8185C6D00093FE15F7ED37FF4577E04FF00E1A2D57FF9A5
                                  A3FE15F7ED37FF004577E04FFE1A2D57FF009A5A6924EE985DDAC7A27867E03F
                                  87FC19AF786EF74A4BBB28BC29A2DDE81A7DA09CC90476D732DACAC0EFDCE4A9
                                  B38827CD80A5860FCBB6847FB2FF00842E7E17F81BC25A9D94FAD695F0F27D3A
                                  F34737770C244B9B0502DA793CBD8B232901B05766E00EDE063C3FC43E2AFDA6
                                  F41FDA6FC23F0E7FE1657C0997FE12AF0C6B9E24FED0FF008555AAAFD97FB36E
                                  F48B7F27CAFF008488EEF33FB5776EDE36F918DADBF2BDDFFC2BEFDA6FFE8AEF
                                  C09FFC345AAFFF0034B4F55677EB7F9DDCAFEBCCDBF51595ADD2D6F93566BD2D
                                  A1EBBF11FE1E691F16BC03AC78635FB537DA2EBD69258DEC0B3490349148A55B
                                  6C91B2C91B60F0E8CACA402A4100D79AF88FF622F0B6A1F0AAD3C25A36ADE2CF
                                  0CDB594B757316A36FA88D4F537B9B8043DCCD73A925D3DC4C376434E64E801C
                                  A80A333FE15F7ED37FF4577E04FF00E1A2D57FF9A5A3FE15F7ED37FF004577E0
                                  4FFE1A2D57FF009A5A9E5566AFBEFB8EFB79143E007FC13A740FD9E3C19ADE81
                                  A5F8BBC4977A5EBBF658E5B5FEC3F0E6976D0C10CF2CF24096FA76976B014B86
                                  9E513178D9D95880CBD6B47E1D7EC01E16F849AA5ADCF877C49E3BB24D928D52
                                  D6E7555D4ADF5D6647543325DC7288563F3252B15A79111329DD1B8540ADFF00
                                  857DFB4DFF00D15DF813FF00868B55FF00E6968FF857DFB4DFFD15DF813FF868
                                  B55FFE696AA4F9AFCCF7D3E56B5BD3CBBEBB87EAEFF3EFEA73BE20FF00825778
                                  06DF45974FF026B5E2BF84967A86993E8DAB5B784869CB6BAC5A4D1C31C913DB
                                  DE5A5C41065208D77DAC703E140DD8540BE83F1A3F62EF057C7FD722BFF11DEF
                                  C4759218A08960D1FE22788343B3FDCBF991BFD9AC6F6183CC57C3799B37E557
                                  9F957181FF000AFBF69BFF00A2BBF027FF000D16ABFF00CD2D1FF0AFBF69BFFA
                                  2BBF027FF0D16ABFFCD2D3949CB56FCFFAFEBBF71256492E8ADFD7DCBEE5D8D8
                                  B2FD86BE1EC3E1DB2D1F50B7F11F8B347B3D5D35BFB178C7C49A8F8B6296E120
                                  9218F3FDAB35CB2AA799E62AC654092347EA39CEF04FEC23A0FC374D49F42F15
                                  F8EB4DBCD774D934BD5EED2F2D9E5D562F985B170F03223DAC6CD142F0AC6761
                                  0243295523CF7F6A4F157ED37FB357ECC9F117E237FC2CAF813AD7FC201E18D4
                                  FC49FD9FFF000AAB55B6FB7FD8ED25B8F27CDFF8489FCBDFE5EDDDB1B6E73B4E
                                  315DDFFC2BEFDA6FFE8AEFC09FFC345AAFFF0034B49DDEADF97E16FCADF72EC3
                                  5A6DEBF3EE7B768DA3DAF87747B5D3EC2DE1B3B1B1852DEDE08502470468A155
                                  140E00000007A0AB35E11FF0AFBF69BFFA2BBF027FF0D16ABFFCD2D1FF000AFB
                                  F69BFF00A2BBF027FF000D16ABFF00CD2D27ABBB624925647BBD15E11FF0AFBF
                                  69BFFA2BBF027FF0D16ABFFCD2D1FF000AFBF69BFF00A2BBF027FF000D16ABFF
                                  00CD2D2B2EE33DDE8AF08FF857DFB4DFFD15DF813FF868B55FFE6968FF00857D
                                  FB4DFF00D15DF813FF00868B55FF00E6968B2EE07BBD79AFEC13FF0025A7F6A8
                                  FF00B2AB67FF00A857856B92FF00857DFB4DFF00D15DF813FF00868B55FF00E6
                                  96B43FE097BA7F89F4AF197ED37078C757D0B5EF1227C55B7FB65F68DA44BA4D
                                  8CF9F077860A7976D2DCDD3C788CA29CCEFB995986D0C117B306BDF7E8347D5F
                                  451457A450514514005145140051451400514514005145140051451400514514
                                  01F3FF00FC158BFE5165FB4B7FD92AF147FE9A2EABF3C3FE0B8DF0F3C75F173C
                                  69A7587C39D3BC7177E22D2BE10F8F2DC4765A0EAD71A1EB1FDA31E9B0369975
                                  716B6EF0C93C9656DAA4B6B6ED22FF00A75AE9C5F8923497F43FFE0AC5FF0028
                                  B2FDA5BFEC9578A3FF004D175572BAB0EB9935E8347CE5FF000B0FE2CFFC377F
                                  F62FD9F5CFF843FF00B4FC8FB17F62AFF617FC237FD89E7FF6BFF687959FED5F
                                  EDDFF41FB27DAB3F64FDEFD871FE995EFF00E18F10C1E2EF0D69FAADAC77D15A
                                  EA76D1DDC297B653595CA248A1D44B04CA92C2E011BA39115D0E4328208ABD45
                                  76A562CF1CFDB4FC59E2CF08F813C3D27872EFC55A368F75AE2C1E29D6BC2DA1
                                  0D735ED0F4DFB25D3C7359591B6BBF3DDEF92C20702D2E36C1733BEC4086787C
                                  03C41A878FF57FDB77F667F10F8E2EFE2AF83BC44DF0D27B6F16E9FE10F059D6
                                  3C3561ACDEDFE87249A74D7CBA7DEA4305C3DADDACCFF6B0618B4FB7759ADC4A
                                  D25C7DC545271B88F0EFF829A43777FF00F04EDF8E1A7E9FA5EB9ADEA9ADF81F
                                  57D1F4FD3F47D2AE753BDBCBABBB396DA08E382DD1E46CCB2A02C176A2EE772A
                                  8ACC3C03E2778DBE2E786BE1C7C54F1EFC2ED03C55A7E9BF123E2ADA6A26F67D
                                  12F6C75EB4D0E2F0B69B60F770E9F2E95A85E46E755D396DCAC9A4DC31824925
                                  11C7132DEC5F785149C6E33E1DF106B7E30F137EDBBFB33F8A3C47AD7C55D12F
                                  AE7E1A4F0F8853C21F0F2FAE3C349A9DF5FE872FD8E69AEF499AE2CA0BA36D75
                                  E70B99609EDA2B0B72CD68D23B4FDC7FC2DDF8DF6DFF000539FF008462F2C7EC
                                  7F09E7FDCD8FFC4AEFEE6D2FEC3FB27CF377F68834B92DEDEF86A6B2C1FE95AB
                                  4286DA2DA2C0C92C1752FD55451CA23E0FD47C21F187F6B4FD84BE3F785B55F1
                                  6FC4697E2478ABE1EAE9F3784EFF00C176FA158787BC432DB5F7DB74CD2F53B9
                                  B28EDB50D36794C76825F3AE9A2862F345E96B88E65FB17E07F8B20F1B7C26D0
                                  B50B6BBF156A31B5B080DE7897429B43D5AF5E226279AE2CE5B6B6689DD919F0
                                  2DE243B83220465AEAE8A69580F91F5BF84D07C73FF82A678BE3D61BE2359F86
                                  743F08783AEFECC9E1E9ADBC39E24D4B4AD5F56D4A20FA94B67891ECE6BBD367
                                  48ED2EE3F319A44956748A7892F7817E277C59D43E2FFC49B4F145C78E349F0E
                                  D9699E2492FE4B0F0AACABE15F22F923F0F4BA138B490EA93DE6946E2EEE22FF
                                  00898F97750C5118ED4BFD924FAAA8A5CA33E2BF1E7C7AF8A3AB7FC12FFE0BF8
                                  B3FB4FE31F863E276A973E15B4F16B687F0E24BCD703B4F041AF99B4C974BB83
                                  024708BF9D245B6446920B7F2D9D2548A6A3E34D43C7FF0010349F835E32F125
                                  DFC55B3FF850FF0017B5EB2F147F67782CCB7BAE69905B6B1A769FAA7D8C69F2
                                  4D7BF6A826B04925D2E3106DD56F644487C857B3FB8A8A397CC415F9E5E25F8F
                                  5FB42C7F01E5BDD5753F8C7A06B075CF07C7AA4FA07C384D46FF004AD4AE6F66
                                  4F15E93676FF00D9771E7E8DA7D888E7B4BFF2A7F3662105FDE93E4D7E86D14D
                                  AB8CF2AFD8F7E21F897C79F0B352B7F185BEB89E22F0A789B59F0D4D75AA68B2
                                  E992EAF6D67A84F0D8EA003451433FDA6C96D6769AD545B34934A2358C298A3F
                                  2AFDA9BE2578FF00C0BFB6EFC39B5D23C41F1567F04EB1FD996BA9683E16F071
                                  BAB4B791EFE58DAEAE7509346BBB7782412462E233A8E9D25A5B5A49347E7C93
                                  C683EAAA28B69611F15FC4DF8F5F146D3F67BFDB01342D4FE319F1678235CB89
                                  3E1BDEA7C3891EEEE51F4FB26B6B3B18DB4B30EA169FDACB7D6C6511CCEB6C56
                                  579C2B45744F157ED6FE37F853FB2E7C5EFB56A1F11AFB52F0B6B9E1FD33C23E
                                  26D6FC05716BAB6BD65AE47A4AC12F951D84503DDC57B7F796A56DEC2696D3EC
                                  D099B4FBB954C175F6A551F13F8634DF1B786B50D1B59D3EC757D1F57B692CAF
                                  AC6F605B8B6BD8245292452C6E0ABA3AB156560410482306972BEE33E00F0EFE
                                  D0B7D68FF0126F16788FE31FC59F127853E215FF0088FC577307C29D5E493C1F
                                  6D3F86F5CB3834F9A3B2D16D583C6D79638F3EDA2B99D2F23BBF221B69E148FD
                                  8FFE16EFC6FB6FF829CFFC2317963F63F84F3FEE6C7FE2577F73697F61FD93E7
                                  9BBFB441A5C96F6F7C3535960FF4AD5A1436D16D16064960BA97E8EF86FF000C
                                  7C35F06FC1767E1BF08787B43F0AF8774EDFF64D2F47B08AC6CAD77C8D23F970
                                  C4AA8BB9DDD8E00CB3313C935B9428B11E39F09FFE524FF177FEC9A7827FF4E9
                                  E2EAF7FAF00F84FF00F2927F8BBFF64D3C13FF00A74F1757BFD38EC7CFE3BF8F
                                  2F97E414514551C814572771F1CFC236DF1CAD3E1A36BD627C797BA14FE268F4
                                  5462F72BA6C3710DB3DD380088E3334E889BC8F30AC9B0379526CEB281851451
                                  408F0AFF0082897FC901F0FF00FD94EF87DFFA99E8B5EEB5E15FF0512FF9203E
                                  1FFF00B29DF0FBFF00533D16BDD6A7A97F657F5D828A28AA2028AE4FE317C6DF
                                  0EFC07F0CC1AA788EE6F923BCBA5B2B2B4D3B4CBAD5751D4AE0A3C9E4DAD9DA4
                                  72DCDC48228E5959618DCA450CB23011C6ECB7FE1A7C4BD13E2FF826CBC43E1E
                                  BDFB76977DE62A3B432412C3247234534134322ACB04F14A92452C32AAC91491
                                  BC6EAAE8CA15FA0ECED73768A28A620AF0AFD923FE4BF7ED43FF00653ACBFF00
                                  50CF0C57BAD7857EC91FF25FBF6A1FFB29D65FFA867862A5EE8B8ECFFAEA7BAD
                                  14515440514579B7877F6B8F0178AFE2E49E09B2D5AF9F5917571A7C171268D7
                                  D0E91A85E5B87371656BA93C22CAEAEE1F26E3CCB682779A3369741914DBCDE5
                                  AB8ECDEC7A4D14514C415E15FB5BFF00C97EFD97BFECA75EFF00EA19E27AF75A
                                  F0AFDADFFE4BF7ECBDFF00653AF7FF0050CF13D4CB62E1BFDFF91EEB45145510
                                  14515C9FC73F8E7E11FD9A3E11EBDE3BF1DEBD63E19F097866D4DDEA5A95DB11
                                  1C0990A000016791DD9512340CF23BA222B332A907BE88EB28A28A0414514500
                                  78C7FC12DBFE5193FB3A7FD930F0D7FE9AADABDDEBC23FE096DFF28C9FD9D3FE
                                  C98786BFF4D56D5EEF5F133F899F48145145480515C97C10F8EBE11FDA4BE1C5
                                  B78BFC09AF5878A3C2F7B7579676BAA58B17B5BB7B5BA96D27313E0092313412
                                  AAC8B949028746646563D6D300A28A2901E11F107FE526DF08BFEC9878E3FF00
                                  4EBE10AF77AF08F883FF002936F845FF0064C3C71FFA75F0857BBD53D9005145
                                  152014579AFC63FDAEFC03F00FC4F0693E27D5AFED6E9AD5750BC92D345BED42
                                  D742B367745BDD4EE2DA1921D36D098A7C5CDEBC30916D72C1F104A53D2A9D98
                                  051451480F08FF0082A4FF00CA327F68BFFB261E25FF00D355CD7BBD7847FC15
                                  27FE5193FB45FF00D930F12FFE9AAE6BDDEABEC8C28A28A91051583F133E2668
                                  9F07BC117BE22F115EFD834AB0F2D5DD619279A696491628608618D5A59E7965
                                  78E28A1895A596591238D59DD54D0F839F1BFC39F1E7C313EABE1BB9BF78ECAE
                                  9AC6F6D352D2EEB49D4B4CB808927937565771C5736D218A48A5559A342F14D0
                                  C8A0C722333B3DC0EB68A28A4015E6BFB04FFC969FDAA3FECAAD9FFEA15E15AF
                                  4AAF35FD827FE4B4FED51FF6556CFF00F50AF0AD7660BE37E8523E92A28A2BD4
                                  2828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00F9FF00
                                  FE0AC5FF0028B2FDA5BFEC9578A3FF004D175572A9FF00C158BFE5165FB4B7FD
                                  92AF147FE9A2EAAE576613A9510A28A2BB0A0A28A2800A28A2800A2BE0FF000B
                                  FF00C158BE316BFE044D56E7F65BF1569574F73A442F0DC43E2A31D80BCB4D52
                                  79C4EABE1A374CF6B2585B4121B4B6B9837EA707EFC0049F63F1E7FC1413FE15
                                  47C0AF0178BFC4DE04D734DD535FF03EA1F10FC4FE1BF3B66A5E14D2B4ED256F
                                  2FCE27489679E1BCB8D3EC7C9630C85EF7CCC04865DB1CE988FA36BE39FF0082
                                  AEF8FB45F06F8F7F675B1BED5BC70D7DE28F1CDD68FF00F08D784BE21C9E12D4
                                  BC4F6B268D7E7CB43FDA36114BB3505D2B0CF306579122425AE7CA9BD1FF0067
                                  4FF82957C23FDA5BE3178BBC15E1EF883F0E6FF58D175C1A56876FA778B6CAFA
                                  E7C5500D26CF5096EEDA146DCC91B5C5CC2DB3CC00D8CA4B021910F88BFF0005
                                  30F831F0D7E2CD8F86EFBE2AFC1C8E38EE6F74DD7DAE3E20E95697FE1ABC8065
                                  127B49A556285A39A1936B79D14C601E4BA3CD2DB8DA6B70386D4FE0DFC61BEF
                                  1DFC263F106EFE2378B24D2B43F0BC77BAAFC3AF13DBE8961A77886D2EDA5D72
                                  F353B6927B25BED36F5459A2C42DEE596186F04705ABC8A65FAABC3DAB4FAD58
                                  4935CE997DA448973710082EDE1692448E678D260629245D92AAACA80B070922
                                  8748DC346BC36B9FB5F7C2ED03E081F892FE3EF0ADE7815ADAFAEEDF5AD3B508
                                  F50B6BF4B2B7B9B9BA16C602E6E5E286CEEDDA3843BE2DA5F97E46C79CE83FF0
                                  528F0E5E78D35ED3F50F00FC71B1D2EC7ECF2E95AAC5F093C5D3C5AAC72467CC
                                  468FFB2D648678A5470CA55A331C96EE9333BCD0DB9A2EA07D1B457C3BF05FFE
                                  0B0BAAFC59FDBF07C1697E15FF00666972789B55F0EC7E22FED4D45F77D8DFC4
                                  28936C7D2E3B43E637876E3E54BD6FF5D84695EDAED20F55B3FF00829DFC36B0
                                  FD9E3E2E7C40D6F59D0ECBFE14A6A7AEE9FE26D12CF5BB5B9D4ACFEC1A9DF585
                                  A2BC6ED17953DFFD8D5ADE29766F79D1159FEF914E2C0FA368AF83FE0E7FC17D
                                  7E197C5EF0478B7516B0B1F0DEA1E0CD734AB4D42DF52F1868D35B7F64DF789C
                                  E847555B9B4B89D425B2ECB99C3858D44F6FB269219E1BA7FB8BC31E27D37C6D
                                  E1AD3F59D1B50B1D5F47D5EDA3BDB1BEB29D6E2DAF609143C72C52212AE8EAC1
                                  95949041041C1A6A49EC32F51451540145145001451450078E7C27FF009493FC
                                  5DFF00B269E09FFD3A78BABDFEBC03E13FFCA49FE2EFFD934F04FF00E9D3C5D5
                                  EFF531D8F9EC77F1E5F2FC828A28AA390F0AF1FE85E2AB9FF828D7C32D6ED3C1
                                  5AEDF783B49F02F89346D47C4915DE9EB6561777F79A3DC411BC4F72B76D85D2
                                  255668EDDD435D5BE091E7187DD68A2914DDC28A28A649E15FF0512FF9203E1F
                                  FF00B29DF0FBFF00533D16BDD6BC2BFE0A25FF002407C3FF00F653BE1F7FEA67
                                  A2D7BAD4F52FECAFEBB0514515441E33FB6D4DE32B5F01F8766F02781AFBC61A
                                  FC7AEAAFDBB4C5D224D5FC216EF677514FA9E9F1EA93C16AD77E5BB5AA179308
                                  2F9A478AE638E4B59BACFD9AB42B4F0DFC13D16CECBC15AEFC3D863F3D9B43D6
                                  EEEDAF35386469E46927BAB8B7B9BA4B89EE2467B89263712C92BCECF2B1959E
                                  BBAA295B5B95CDA5828A28A64857857EC91FF25FBF6A1FFB29D65FFA867862BD
                                  D6BC2BF648FF0092FDFB50FF00D94EB2FF00D433C3152F745C767FD753DD68A2
                                  8AA202BE6DF117823C6DF137F6D7F03EB93F80B5DF0FDBF80B53BD7BED7AEFC4
                                  906A5E19D63496B0D4A0B61A7D899CCB6FAB34B7D68D2DCB585BC891457D6CB7
                                  B340C8B75F495149AB949D828A28A64857857ED6FF00F25FBF65EFFB29D7BFFA
                                  86789EBDD6BC2BF6B7FF0092FDFB2F7FD94EBDFF00D433C4F532D8B86FF7FE47
                                  BAD1451544057CBFFF000561FD90FC5DFB5C7ECC1AD59782351B1FF849F48D0B
                                  5F5D2B47D42C45C5B6AB737DA2DEE9A046E2E2D8C17661BBB88229A5964B68C5
                                  E4CF2DB4CEB04907D414526AEACCA8C9C5DD185F0BAFF5BD57E19F876E7C4B6D
                                  F63F11DC6996D2EAB6FF00668EDBC8BB6894CC9E547717291E242C3625CCEAB8
                                  C09A5037B6ED14531051451408F18FF825B7FCA327F674FF00B261E1AFFD355B
                                  57BBD7847FC12DBFE5193FB3A7FD930F0D7FE9AADABDDEBE267F133E9028A28A
                                  903C23FE09DDA178AFC31F0235BB4F18F8275DF01EAB71E3BF15EB30D86AB77A
                                  75D4D2DA6A7AF5F6A96F206B1B9B888622BD48D94B8612C32800A6C91FDDE8A2
                                  9B777700A28A2901E11F107FE526DF08BFEC9878E3FF004EBE10AF77AF08F883
                                  FF002936F845FF0064C3C71FFA75F0857BBD53D900514515207CB9FB5F68FE28
                                  D7FE3A269ABF03BC59E3DF875A968369FF000915E785AE7C3F0DD78C1E3B8BCF
                                  2B44D45B50D42CE61A6DB891E668104A9766FDA2768E05BBB7BEFA8E8A2A9BBE
                                  80145145481E11FF000549FF009464FED17FF64C3C4BFF00A6AB9AF77AF08FF8
                                  2A4FFCA327F68BFF00B261E25FFD355CD7BBD57D91851451522307E2678835BF
                                  0AF822F751F0EF87FF00E12AD56CFCB953495BE8ECA6BE8848BE72432483CAF3
                                  FCAF30C492B4713CA11249A0466993C9BF60AF851ADFC2FF000978DE6D5741D7
                                  7C3161E27F141D5746D2BC47AB47ACF88ECAD174DD3ED186A77EB71746EE76B9
                                  B5B978DDEF2E592D5ED21DF1AC2B6F07BBD1557D2C0145145480579AFEC13FF2
                                  5A7F6A8FFB2AB67FFA857856BD2ABCD7F609FF0092D3FB547FD955B3FF00D42B
                                  C2B5D982F8DFA148FA4A8AF93FC6DF056CBF694FF82927C43D0BC4BE24F89F69
                                  A2785BE1AF842FF4DD3FC37F10F5FF000CDAC37179AA78A52E6668B4DBCB7496
                                  4912CAD54B481881028040AEC3FE1DA7F0EBFE863F8FFF00F87DBC6FFF00CB6A
                                  F50A3E80A2BE7FFF008769FC3AFF00A18FE3FF00FE1F6F1BFF00F2DABC83C15F
                                  B12F86357FDBEBE25F82AE3C63F1FE4F0CF87FE1FF0084B5BB0B3FF85E1E331F
                                  67BCBED47C4D0DD4BE60D53CC6DF1E9F66BB598AAF93950A59CB007DBF457CFF
                                  00FF000ED3F875FF00431FC7FF00FC3EDE37FF00E5B51FF0ED3F875FF431FC7F
                                  FF00C3EDE37FFE5B5007D01457CFFF00F0ED3F875FF431FC7FFF00C3EDE37FFE
                                  5B51FF000ED3F875FF00431FC7FF00FC3EDE37FF00E5B5007D01457CFF00FF00
                                  0ED3F875FF00431FC7FF00FC3EDE37FF00E5B51FF0ED3F875FF431FC7FFF00C3
                                  EDE37FFE5B5007D01457CFFF00F0ED3F875FF431FC7FFF00C3EDE37FFE5B51FF
                                  000ED3F875FF00431FC7FF00FC3EDE37FF00E5B5007D01457CFF00FF000ED3F8
                                  75FF00431FC7FF00FC3EDE37FF00E5B51FF0ED3F875FF431FC7FFF00C3EDE37F
                                  FE5B5007D01457CFFF00F0ED3F875FF431FC7FFF00C3EDE37FFE5B51FF000ED3
                                  F875FF00431FC7FF00FC3EDE37FF00E5B5001FF0562FF94597ED2DFF0064ABC5
                                  1FFA68BAAB95E09FF0535FF827C780FC17FF0004DBFDA0F58B3D7FE37CD77A4F
                                  C35F11DEC11DFF00C67F18DFDABBC7A5DCBA896DE7D4DE19A3240DD1CA8C8E32
                                  ACACA483EC3FF0EABF84FF00F412F8E3FF0087BBC6BFFCB5ADE8D550BDC699B5
                                  4562FF00C3AAFE13FF00D04BE38FFE1EEF1AFF00F2D68FF8755FC27FFA097C71
                                  FF00C3DDE35FFE5AD6DF5A5D87736A8AC5FF008755FC27FF00A097C71FFC3DDE
                                  35FF00E5AD1FF0EABF84FF00F412F8E3FF0087BBC6BFFCB5A3EB4BB05CDAAA3E
                                  27F10C1E11F0D6A1AADD477D2DAE996D25DCC9656535EDCBA46A5D845042AF2C
                                  CE403B638D19DCE02A9240AA7FF0EABF84FF00F412F8E3FF0087BBC6BFFCB5A3
                                  FE1D57F09FFE825F1C7FF0F778D7FF0096B47D69760B9F803E10FD922EFC01F1
                                  2BE19785EFFE1D7F68DF69FE07D4A0B87FF855B73FF13292DE5D1A26B9F26E7E
                                  1B4B71272C7F793457B2279D87BD85A52B7BFA17F04FE02BDCEB9FB2DE91A3D9
                                  F856C7C75A27C05D43C3F2EAFE2CF01DFC91B4FA1EAFE0FF0029A5B0BBFECFBE
                                  6486E52E26B532184C6F32CE83E6C3FDE7FF000EABF84FFF00412F8E3FF87BBC
                                  6BFF00CB5A3FE1D57F09FF00E825F1C7FF000F778D7FF96B5946AC50AE7CC3FB
                                  0DF863E2E58FED3FF1F25F10F8DFE1CEA7A3DB7C42B74D72D74EF045ED85CEA3
                                  39F086806292DA67D5A65B64556B60C8F14E58C5290E825558B73F68EFDAFBC2
                                  77DE251E18D53C7D63F0CBE1CFDA6E74ED7FC757DA89D22DB53BCB76549F41D3
                                  3526291437609659EE16559A310DCC369BAEA0BB9F4AFA0BFE1D57F09FFE825F
                                  1C7FF0F778D7FF0096B47FC3AAFE13FF00D04BE38FFE1EEF1AFF00F2D6AFEB0A
                                  D643B9F22FEDEBE27F047ED3BFF04C8F13FC3FF81BA87C1CF1CE9BE28B693C05
                                  A0E9FA64F6FAB58457A962F35A58D85BDA1310BB88C76CC85A4862B08435FC8D
                                  E559B4727C59F13FF6B0FF00859DFB4A3FC63D6FC6BAE6A7F09FC1DA9EAA35DF
                                  137832C3AD9E9575F122DECAC21D6E164B2B29E6B0D4F48B58E3678EF2E7FB6E
                                  C66B7B88A4DB33FEC6FF00C3AAFE13FF00D04BE38FFE1EEF1AFF00F2D68FF875
                                  5FC27FFA097C71FF00C3DDE35FFE5AD4BAE9BB8AE7E477C73D1F4EFD9DBF6D1F
                                  8F1F19BC1379A1E8BE22B1F0CF88E6D225BFD33C32FA945AE4563E33B817969F
                                  D9FA2DCA4B03BE997C84DD6A367A86FD3278EFD6706DE07F62F0BF8BB4DF0C7C
                                  1DFDA8FC00DF11BC557FF0DE2F0858EB9349F18BC22BE1A22F7C45AB7888EAF0
                                  04953C3CC52F982470C8F731451CF3E126554318FD0FFF008755FC27FF00A097
                                  C71FFC3DDE35FF00E5AD1FF0EABF84FF00F412F8E3FF0087BBC6BFFCB5A15648
                                  2E7E4DFEC2BE03BEF08FC07F186BAF7563A97C549F5CF0AF897C296AB3EAE75E
                                  F116B0F7BA96B93E95A74F7BA8DF2CBA35D2DEEAFA6C7AE5A9482E206D76EAE3
                                  ED36F14D733FE94FEC29A0E8BE15FD88BE0E699E1BD7BFE12AF0EE9DE07D12D7
                                  4BD6FEC3258FF6C5AA5840B0DD7D9E425E1F3502BF96C4B26EDA7915DDFF00C3
                                  AAFE13FF00D04BE38FFE1EEF1AFF00F2D68FF8755FC27FFA097C71FF00C3DDE3
                                  5FFE5AD38D78C7A0EE6D5158BFF0EABF84FF00F412F8E3FF0087BBC6BFFCB5A3
                                  FE1D57F09FFE825F1C7FF0F778D7FF0096B57F5A5D82E6D5158BFF000EABF84F
                                  FF00412F8E3FF87BBC6BFF00CB5A3FE1D57F09FF00E825F1C7FF000F778D7FF9
                                  6B47D69760B9B54562FF00C3AAFE13FF00D04BE38FFE1EEF1AFF00F2D68FF875
                                  5FC27FFA097C71FF00C3DDE35FFE5AD1F5A5D82E79B7C27FF9493FC5DFFB269E
                                  09FF00D3A78BABDFEBE5DF87FF00F04DAF86B3FF00C147FE2BE86752F8C8B63A
                                  7FC36F05DF44D1FC61F17A5CB493EA9E2C4903DC2EA6269100B78F646EEC9193
                                  2322A99652FEDFFF000EB4F859FF00416F8E9FF87C3C6BFF00CB6A4B129743CD
                                  C460E552A39A676745719FF0EB4F859FF416F8E9FF0087C3C6BFFCB6A3FE1D69
                                  F0B3FE82DF1D3FF0F878D7FF0096D4FEB4BB18FF00674BB9D9D15E1BF117F665
                                  FD967E0FF8113C53E2DF8C3E35F0BF8664D567D09357D5FF00692F1559583EA3
                                  0493C535989E5D65633711C96D728F1677AB5BCA0805180EBFC27FF04E1F82FE
                                  3DF0AE9BAEE85E29F8C9AD689AD5A457FA7EA161F1E3C67736B7F6F2A078A68A
                                  54D5CA491BA32B2B29218104120D1F5A5D83FB3A5DCF43A2B8CFF875A7C2CFFA
                                  0B7C74FF00C3E1E35FFE5B51FF000EB4F859FF00416F8E9FF87C3C6BFF00CB6A
                                  3EB4BB07F674BB9E7BFF000512FF009203E1FF00FB29DF0FBFF533D16BDD6BE5
                                  EFF8281FFC137BE1B783BE046837767A9FC667965F893E02B16177F18BC5F791
                                  88EE3C61A35BC8424DA9BA89024AC524003C4E1248D9244475F6EFF875A7C2CF
                                  FA0B7C74FF00C3E1E35FFE5B52FACABDEC3FECF95AD73B3A2B8CFF00875A7C2C
                                  FF00A0B7C74FFC3E1E35FF00E5B51FF0EB4F859FF416F8E9FF0087C3C6BFFCB6
                                  A7F5A5D85FD9D2EE7674578E6B3FB1CFECDBE1CF8CBA4FC3AD43E277C44B1F88
                                  3AF5A35FE99E18B8FDA27C5B16B3A8DBA894B4D0DA36B2269230209C96542008
                                  64E7E46C50F817FB32FECB3FB507F6A7FC2B4F8C3E35F889FD87E57F697FC231
                                  FB4978AB57FECFF377F95E77D9F597F2F7F9526DDD8DDE5BE33B4D1F5A5D83FB
                                  3A5DCF72A2B8CFF875A7C2CFFA0B7C74FF00C3E1E35FFE5B51FF000EB4F859FF
                                  00416F8E9FF87C3C6BFF00CB6A3EB4BB07F674BB9D9D7857EC91FF0025FBF6A1
                                  FF00B29D65FF00A867862BD0BFE1D69F0B3FE82DF1D3FF000F878D7FF96D5E23
                                  FB297FC137BE1B7883E3BFED336971A9FC6658B43F89367636A6DFE3178BEDE4
                                  78DBC1FE1AB826678F53569E4DF3C8049317708238C308E38D157D65761ACBE4
                                  93D4FA868AE33FE1D69F0B3FE82DF1D3FF000F878D7FF96D47FC3AD3E167FD05
                                  BE3A7FE1F0F1AFFF002DA9FD697617F674BB9D9D15E79E2CFF008270FC17F017
                                  85752D775DF14FC64D1744D16D25BFD4350BFF008F1E33B6B5B0B7890BCB34B2
                                  BEAE1238D1159999880A0124802BCC3C45F0FBF62FF087813C3BE29D5BF686D5
                                  74BF0CF8C3ED3FD83ABDDFED45E2482C35BFB34822B9FB2CEDAD88E7F2A42124
                                  F2CB6C620360F147D69760FECE9773E92A2B8CFF00875A7C2CFF00A0B7C74FFC
                                  3E1E35FF00E5B51FF0EB4F859FF416F8E9FF0087C3C6BFFCB6A3EB4BB07F674B
                                  B9D9D7857ED6FF00F25FBF65EFFB29D7BFFA86789EBD0BFE1D69F0B3FE82DF1D
                                  3FF0F878D7FF0096D5E23FB56FFC137BE1B787FE3BFECCD696FA9FC6668B5CF8
                                  937963746E3E3178BEE2448D7C1FE25B80617935366824DF0460C9094728648C
                                  B18E491193C4AEC3597C9753EA1A2B8CFF00875A7C2CFF00A0B7C74FFC3E1E35
                                  FF00E5B51FF0EB4F859FF416F8E9FF0087C3C6BFFCB6A7F5A5D85FD9D2EE7674
                                  5719FF000EB4F859FF00416F8E9FF87C3C6BFF00CB6AE7FC6BFB06FC02F86BE7
                                  7FC245E3CF8A9A07D9F4ABDD765FED2FDA07C616BE569D67E57DB2F1BCCD6062
                                  DE0F3E0F3653F247E747B88DEB93EB4BB07F674BB9EA74578E7C14FD8E7F66DF
                                  DA53C2B71AEFC3AF89DF113C7FA25A5DB584FA8786FF00689F16EAB6B0DC2A23
                                  B42D2C1ACBA0902491B15272048A718615D87FC3AD3E167FD05BE3A7FE1F0F1A
                                  FF00F2DA8FAD2EC1FD9D2EE76745719FF0EB4F859FF416F8E9FF0087C3C6BFFC
                                  B6A3FE1D69F0B3FE82DF1D3FF0F878D7FF0096D47D69760FECE97738BFF825B7
                                  FCA327F674FF00B261E1AFFD355B57BBD7CA1FF04CDFF8271FC39F1C7FC137BF
                                  67DD6AFB55F8CF1DEEB1F0D7C397D70963F18FC5F616AB24BA5DB3B08ADE0D4D
                                  21863CB1DB1C48A8830AAAAA001EDDFF000EBAF85DFF00418F8EDFF87C7C6DFF
                                  00CB6AF05E0A4DDEE7A9CA7A0D15E7DFF0EBAF85DFF418F8EDFF0087C7C6DFFC
                                  B6A3FE1D75F0BBFE831F1DBFF0F8F8DBFF0096D4BEA32EE163D068AF3EFF0087
                                  5D7C2EFF00A0C7C76FFC3E3E36FF00E5B51FF0EBAF85DFF418F8EDFF0087C7C6
                                  DFFCB6A3EA32EE163D068AF3EFF875D7C2EFFA0C7C76FF00C3E3E36FFE5B51FF
                                  000EBAF85DFF00418F8EDFF87C7C6DFF00CB6A3EA32EE16389F883FF002936F8
                                  45FF0064C3C71FFA75F0857BBD7CA1E3DFF8271FC39B4FF8290FC28D15355F8C
                                  E6CB50F86BE34BE95DFE31F8BDEE9648354F09A204B83A999A38C8B8937C68EA
                                  9211133AB345114F6EFF00875D7C2EFF00A0C7C76FFC3E3E36FF00E5B5378297
                                  70E53D068AF3EFF875D7C2EFFA0C7C76FF00C3E3E36FFE5B51FF000EBAF85DFF
                                  00418F8EDFF87C7C6DFF00CB6A5F519770B1E834579F7FC3AEBE177FD063E3B7
                                  FE1F1F1B7FF2DA8FF875D7C2EFFA0C7C76FF00C3E3E36FFE5B51F519770B1E83
                                  4579F7FC3AEBE177FD063E3B7FE1F1F1B7FF002DA8FF00875D7C2EFF00A0C7C7
                                  6FFC3E3E36FF00E5B51F519770B1C4FF00C1527FE5193FB45FFD930F12FF00E9
                                  AAE6BDDEBE50FF0082997FC138FE1CF81FFE09BDFB416B563AAFC6792F747F86
                                  BE23BEB74BEF8C7E2FBFB56922D2EE5D44B6F3EA6F0CD1E546E8E54647195656
                                  5241F6EFF875D7C2EFFA0C7C76FF00C3E3E36FFE5B53FA94AD6B858F41A2BCFB
                                  FE1D75F0BBFE831F1DBFF0F8F8DBFF0096D47FC3AEBE177FD063E3B7FE1F1F1B
                                  7FF2DA97D465DC2C7A0D15E7DFF0EBAF85DFF418F8EDFF0087C7C6DFFCB6A3FE
                                  1D75F0BBFE831F1DBFF0F8F8DBFF0096D47D465DC2C7A0D15E7DFF000EBAF85D
                                  FF00418F8EDFF87C7C6DFF00CB6A3FE1D75F0BBFE831F1DBFF000F8F8DBFF96D
                                  47D465DC2C7A0D79AFEC13FF0025A7F6A8FF00B2AB67FF00A857856ACFFC3AEB
                                  E177FD063E3B7FE1F1F1B7FF002DAB1BFE09BFF0BB4BF82FF12FF6A1F0D68B36
                                  BB71A6E9BF156D7C99359D72F75BBE6DFE0CF0BC8DE65DDECB35C4BF339C7992
                                  36D5DAAB855551BD0C3BA72E66C6958E8BE1CFFCA537E327FD92AF01FF00E9DF
                                  C675F4057CFF00F0E7FE529BF193FEC95780FF00F4EFE33AFA02BAC615F3FF00
                                  C39FF94A6FC64FFB255E03FF00D3BF8CEBE80AF9FF00E1CFFCA537E327FD92AF
                                  01FF00E9DFC67401F40515CFFC58F8A5A17C0EF859E25F1AF8A6FBFB2FC33E0F
                                  D2AEB5BD5EF3C9927FB259DB42F34F2F971AB48FB63466DA8ACC718009C0AE3F
                                  E35FED93F0F3F67AF155BE8FE2AD6350B4BB6B45D46F64B3D0EFF52B5F0FD933
                                  BA2DF6A9716D0C90E97664C53E2E6F9E0848B5B960FB6DE62801EA14579FFC1F
                                  FDA77C23F1DFC77E3DF0DF8725F104BAB7C33D55744F10A5FF0086F52D2E1B5B
                                  C68C4AB14535D411C573985A29435BBC8BE55C5BC99D93C4CFD07C52F8A5A17C
                                  17F025F7893C497DFD9FA4E9FE5ABBAC325C4D3CB2C8B1436F04312B4B3DC4D3
                                  3C71450448F2CD2CB1C71A3BBAA900E828AE3FE0A7C77F0CFED07E15B8D5BC33
                                  75A83C76376D617D67A9E9577A46A7A5DC04493C9BAB1BC8A2BAB691A2961995
                                  66890BC53C32A831CA8EDD850014579FFC2FFDA77C23F183E29F8CFC15A34BE2
                                  08FC4DE00FB3B6B367AAF86F52D236457135DC305C5BC9770451DDDBC9258DDA
                                  A4F6CD244DE4921C8209E83E2C7C52D0BE077C2CF12F8D7C537DFD97E19F07E9
                                  575ADEAF79E4C93FD92CEDA179A797CB8D5A47DB1A336D456638C004E0500741
                                  4515C7F8EFE3BF867E1AFC4CF03F84759BAD42D75BF88F777761E1F09A55DCF6
                                  B77716B6925E4B0C9751C4D6F6F27D9E19A4459E44328825F2C398D8000EC28A
                                  CFD1BC4D6FAEEA3AB5AC11EA09268B76B6770D71613DB472398229C185E4454B
                                  88F64C80C909740E248CB09229114F09F8B34BF1EF8574DD7742D4B4FD6B44D6
                                  AD22BFD3F50B0B84B9B5BFB79503C53452A129246E8CACACA4860410483401E1
                                  FF00F0562FF94597ED2DFF0064ABC51FFA68BAAFA02BE7FF00F82B17FCA2CBF6
                                  96FF00B255E28FFD345D57D01400514514005145140051451400515E3FFB4BFE
                                  DDDF0CFF00646FB5FF00C26DAA78822FECCD29F5DD53FB13C2BAB7887FB0F4E5
                                  F33FD32FFF00B3EDA7FB15BB79171B25B9F2D24FB2DC6C2DE44BB3D82800A2B8
                                  FF008FDF1DFC33FB317C1AF10F8FFC6775A858F853C29686FF0056BBB3D2AEF5
                                  492CEDD480F3182D6296631A03BDD95088D15DDCAA2330EC2800A2BCFF004FFD
                                  A77C23A8FED1D73F09C4BE20B7F1B5BE9536B6905DF86F52B5B0BEB385ACD669
                                  6D6FE5816CEEBCA6BFB45916099D91A60AC015603D02800A28AE3FE327C77F0C
                                  FC02D3B40BCF14DD6A16569E25F1069FE17B29EDF4ABBBE8C5FDFCEB6F689335
                                  BC520B78E49DE3884D36C883CB1A970CEA080761451450014514500145145001
                                  45145007CFFF000E7FE529BF193FEC95780FFF004EFE33AFA02BE2FF00897F0C
                                  7C4FF11FFE0A9BF12BFE11CF8AFE3CF863F63F855E0AFB47FC23567A25C7F696
                                  ED5FC5DB7CDFED2D3EF31E5ED6DBE57979F31B76FC2EDEC3FE198BE26FFD1D6F
                                  C79FFC137827FF0099FA00FA828AF97FFE198BE26FFD1D6FC79FFC137827FF00
                                  99FA3FE198BE26FF00D1D6FC79FF00C137827FF99FA00F983ECF1689FF000489
                                  FF00845FC2DE0BF8BFE0786D3F680F3B48B0D0BE146B10EABE1FD257E247F6FC
                                  17D69A5C9A6C856DE1D202CF1B3DABDB8745B72AD2E6DCFD9FFF0004EBF09EAB
                                  E0EFD956C20D634CD434DBBBFF0010788B578DB51B77B5D4355B7BDD76FEF2DF
                                  52BCB760A6DAF2F609E2BB9EDFCA804135D4B12DB5AAA0B68B8FFF008662F89B
                                  FF00475BF1E7FF0004DE09FF00E67E8FF8662F89BFF475BF1E7FF04DE09FFE67
                                  E803EA0A2BE5FF00F8662F89BFF475BF1E7FF04DE09FFE67E8FF008662F89BFF
                                  00475BF1E7FF0004DE09FF00E67E803A0FF82967FC9BAF873FECAAFC38FF00D4
                                  DF42AFA02BF3DFF6F2FD9C3E21E9FF00057C3A6F7F698F8D5ACC337C4AF015B8
                                  82EF49F07A246F2F8BF478E39C187438DBCC85D9664058A178904892465E36FA
                                  23FE18DBE22FFD1D8FC7FF00FC147823FF0099EA00FA028AF9FF00FE18DBE22F
                                  FD1D8FC7FF00FC147823FF0099EAE01BC35752F8EFE21785ACFF006CDF8FFACF
                                  89BE1569567ACF8A748D23C37E10D4EFF4A82EE3B996D50C16FE1A7924B8963B
                                  595D2DA30D3B298888F13445C033FC7DAC7853C41FB6D6BFE04D57C1BF13F40F
                                  0DDCF8D741F156A97367E02F11EA965F103C4B05B69474EBB3AA416B2D858697
                                  63F61D377959E2696EAC5C4E2DEDE09FFB4FCFFF00E096BE19F10EBBFB526A5E
                                  269F47F89FFD8905DFC4CB8C78D7C1D7BE188FC249ACF8D21D474E834C173676
                                  92DDC7A95A44F77726637AF6CF676E81EC84AD04FD07C38F8A5A1FC56F805E27
                                  F89DA4FEDAFF00B47A783BC1FE1FFF0084B354B9D4BC0DE1BD2EEA2D18DB4B73
                                  1EA71D9DD78563BA9ECE58A09CC33C313C739B7996367789D57BFF008C9F0D35
                                  2FD9F34ED02EBC67FB697C6FD023F1578834FF000AE8CB71A57824C9AA6A97D3
                                  AC16B690A2F874BC923BB6485042224923958E377500FAC28AF9FF00FE18DBE2
                                  2FFD1D8FC7FF00FC147823FF0099EA3FE18DBE22FF00D1D8FC7FFF00C147823F
                                  F99EA00FA02BE7FF00D8DFFE4E2BF6B1FF00B2AB63FF00A8478528FF008636F8
                                  8BFF004763F1FF00FF00051E08FF00E67ABC43F650FD93FC79AA7C79FDA6A083
                                  F69BF8DFA749A77C4AB3B7B8B8B7D2FC1ED26A8E7C1DE1A944F3093427412049
                                  12102158D364119286432492007DDF457CFF00FF000C6DF117FE8EC7E3FF00FE
                                  0A3C11FF00CCF5701F1D3C27AB7ECEBFD971F88BF6B6FDA7EE750D6BCD6B1D2F
                                  C3DE04F0D788F55B88A1D826B8165A7785A7B9FB3C4D2C0B24E63F2A37B88119
                                  C34D18600FA3FE3BEA5A5685F0CEEB53D6BC25A878DB4DD1EEECB53974CB0D2D
                                  354BA8CDBDDC3325E456A7E79A4B478D6E952157B826D87D9E3967F2A36FCE0F
                                  1DD978874BBDF03EB4D77FB47D9DA6AFF1D6EFC5D17C43D2FE15DEDEF8C2FB4B
                                  83E1FC9A3BEA3A869634596DECA4FB7CA9A64713E976C66B5B74B848A46F36F9
                                  FD83E23FC52D0FE14F8ABC31A5EADFB6BFED1EF1F8C3C3FF00F096697AC69BE0
                                  6F0DEA9A04BA3078964D4E4D56D7C2B2584167179F03CD3CD3A47047710C9232
                                  472A3B7A7E9BF023C4FABFC53D67C156FF00B5FF00C7F93C4DE1FD2AC35BBFB3
                                  FEC1F060FB3D9DF4D7B0DACBE61F0E796DBE4D3EF176AB165F272C14321600F5
                                  0FD88BC0FAAFC30FD8BFE11786B5DF0DE9FE0DD6FC3DE0AD1B4CD43C3F6172F7
                                  56BA15C43630C72D9C52BCD3BC91C2EAD1ABB4D296080991C9DC7D42BE4FF811
                                  F0D352FDA77E19DAF8CFC01FB697C6FF0015F852FAEEF6CAD355B0D2BC12F6B7
                                  8F6977359CE6273E1D0248C4F04AAB2265240A1D1991958F61FF000C6DF117FE
                                  8EC7E3FF00FE0A3C11FF00CCF5007D015F3FFED91FF2715FB277FD955BEFFD42
                                  3C5747FC31B7C45FFA3B1F8FFF00F828F047FF0033D5E21FB57FEC9FE3CD2FE3
                                  CFECCB04FF00B4DFC6FD464D47E255E5BDBDC5C697E0F5934B71E0EF12CA6784
                                  47A122190A46F09132C89B2790841208E48C03EEFA2BE7FF00F8636F88BFF476
                                  3F1FFF00F051E08FFE67A8FF008636F88BFF004763F1FF00FF00051E08FF00E6
                                  7A803E80AF8035AF02FC42FD9D7FE0B25A77C4CF12F84BFE129F0978B7C2BE32
                                  B69BC5BA1DB6B3AB5E695A7451787EE6CB4AFB0DB69971F65F2FFB32730DB35E
                                  BA5EDD5EEAB710F9135C47A7486A7F1E3C37A3F813C53E27B8FDB4FF0069F4F0
                                  FF0084B4A7F105C5F8F86FA1343AA6931C91C72EA9A611E133FDABA7C5E740F2
                                  DE587DA2DE28AE2095E458A58DDBB0F0FE7C47F0CC78B63FDB27F68FB2D2D7C4
                                  1A7F856E60D4FC19E17D3753D3B54BFBBB5B4B3B4BAB0B8F0BA5DDAC92C97D66
                                  CA2789018AEA19F3E4BAC84038FF00F82107C33F14F82BE16585C788B4BF8803
                                  EC3F0ABC0BE1596FFC6BE1D9BC3DAAD86A3A7C3A99BCD061B592DAD3CDD3EC3E
                                  D50343766091E67BFB956BDBAF2552DFEFFAF93FC77F0D352F867F133C0FE0CD
                                  77F6D2F8DFA7F8AFE255DDDD978674A7D2BC12D75ABBDA5A4979726345F0E922
                                  38A08999E46C2297890B6F96357EC3FE18DBE22FFD1D8FC7FF00FC147823FF00
                                  99EA00FA028AF9FF00FE18DBE22FFD1D8FC7FF00FC147823FF0099EA3FE18DBE
                                  22FF00D1D8FC7FFF00C147823FF99EA003FE093BFF0028B2FD9A7FEC95785FFF
                                  004D16B5F4057CFF00FF00049DFF0094597ECD3FF64ABC2FFF00A68B5AFA0280
                                  0A28A2800A28A2800A28A2803E7FF88DFF00294DF837FF0064ABC79FFA77F065
                                  7D015F3FFC46FF0094A6FC1BFF00B255E3CFFD3BF832BE80A0028A28A0028A28
                                  A0028A28A00F9FFF00E0AC5FF28B2FDA5BFEC9578A3FF4D1755F4057CFFF00F0
                                  562FF94597ED2DFF0064ABC51FFA68BAAFA02800A28A2800A28A2800A28A2800
                                  AF9FFF00637FF938AFDAC7FECAAD8FFEA11E14AFA02BE7FF00D8DFFE4E2BF6B1
                                  FF00B2AB63FF00A847852800F873FF00294DF8C9FF0064ABC07FFA77F19D7A07
                                  ED3BFB4BF85BF644F8452F8EBC6B77FD9DE19B4D5749D2AF2F9A5861874FFED0
                                  D4ADB4E8EE67925748E3B78A4BA4925766F9224918062029F3FF00873FF294DF
                                  8C9FF64ABC07FF00A77F19D73FFF000530FD8675DFF8281D8FC38F0526B3FF00
                                  08C780AD355D5AEFC61ABE9FA8470EBA2CEEBC3DAAE8E2D2C609EC6E6DA4F3D7
                                  55956596568DA18D0988348EAF1007D415F3FF00C39FF94A6FC64FFB255E03FF
                                  00D3BF8CEBD03F655D3FE23E8FFB38F82EC7E2F5CF87F50F89BA7E950DA7892F
                                  F44BA6B8B0D52F225F2DEEE326DADB679FB44C621022C4D2B46A5D503B79FF00
                                  C39FF94A6FC64FFB255E03FF00D3BF8CE800FF008296FC3EF1DFC62FD99E1F06
                                  7C3DD1FF00B5756F15F8AFC3F65A8C97296F3E9561A3AEAD6B71A9C9A95B4B77
                                  6AD79A7BD8C3716F3D9C32192E52E4C3B764923A7E707C57FD9D7F6ABFD9B7F6
                                  4EF1AF8447C38FF849BC3FAAFC2AB4FD9D6E6F34BD085F4D7BA669F79ADE9BA6
                                  789BC9B1D4AEAFAD6DCE9FAEDA5D4B041A7EA37324B637F1B41611086E65FD9F
                                  A2803E40F84FE34F8BBF087F698F8D42DFF676F881AAE93F12FE2AE9BA8586BF
                                  2788BC376DA55B68EBA4E83A35D6A1281A93DE7C8BA75E5D470ADA99254F2118
                                  42F2388BD3FF00E0A29F097C65F19FF655BFD37E1F2E9F278C747F107877C53A
                                  64379089E3B97D235DB0D55A11134F6E92C9225932246F736E8EEC8AF716E85A
                                  64F70AF0FF0011FF00C140BC03E1CD47E2CE99BF50BDF117C20F1068DE17D4B4
                                  3B636CDA86A37FACC1A7BE9296F1998048EEE7D461B58E6B96822134571BDD22
                                  85E5001F207C0BF875F1A3E31E95E28F8B3E22F04FC4FD0FC49FF0B83563E2CF
                                  01F87F5BBEF086A7E21D1BFE10DB5F0C33C092DEDBE9D2C925ED958EA904D16A
                                  3731DAC4AEB6BA8CD708EB29AA7847F6C5F0C7C33FD9635DB0F0BFC4FD4FC49E
                                  06F0FF008774DF1CE8C7C51A55EDD5E5C5ADDC306BF2DC9935AB5B29A4BEB149
                                  1A09EE4EAE58BA958F45B847B9B9FA7ED7FE0A436171E34F057869FE16FC4F83
                                  C49E2AF1AC9E00D4F4D76D14C9E0ED5174A5D6956FE45D44C5246FA4B1BD57B1
                                  7BA1B11A36DB71B6DCFD21401F2FFC2ED4BE207FC3CD7E21EBDA87C18F881A3F
                                  827C4DE15D0BC2767E28BAD4BC3EF61E6E917BE23B992E9A18B527BC16F70BA9
                                  5AAC3FE8FE6EE66F36284296AE83FE0A5BF0FBC77F18BF66787C19F0F747FED5
                                  D5BC57E2BF0FD96A325CA5BCFA55868EBAB5ADC6A726A56D2DDDAB5E69EF630D
                                  C5BCF670C864B94B930EDD9248E9F387ED37FF000587F8A5F04FE2D78A7C14BF
                                  0A7C1FA16A9E19F10585BABEAD378D3576BCD2EF3566B4D3A73FD91E17BAB48E
                                  4D56389E3B5097B318AE2511BA4935BCD6B5EA1F03FF00E0A31F163C77E0483C
                                  43AEFECD3E20D42CB5DD54691E1F4F87DE2BB3D7A6B896293584BC3A82EA49A5
                                  7F64FD9FFB2A30E97652559751B7B69238AED27B68803E6FF10FEC83FB4BF81B
                                  F625B1F0968FA1FC4FBBF14780BE1AF893E0B6931F83BC769E1A8F599ACEE6C5
                                  FC1FE2E8ADFF00B696DED6316F672ADDB79AB7A5EEDA06B69AD784F60F889F0B
                                  7E30F8CBFE0A0FF09BE226A5F0DFE27EB1A2695E35B6D6ED0C3E2DD322D27C11
                                  E1FBAF085DE953D8DEE9A7544826D52DF58BDBAB996EADEDEEDCDA4DE5C37730
                                  55B55EFF004DFDBBBE337823C2BE2DD4FC6BFB257C6FBBB4D12EEF2F34F97C37
                                  73E14BCBABDD2D504D106B14D7E598DE202F018EDCCE6E0C0B2A2C6D71F6483E
                                  B0A00F9BFF0065AF00F8CAFF00C69FB4B7877C6DA07C4FD0BC1DE28F1ACD79E1
                                  3BFD5BC642E649F4BB9D2ACED6E469B3DB6A335EE9D18BEB7BEB98A31F663025
                                  F4061589C3C50687FC12FBE10EBBFB387EC3DE00F85FE23F0FF88344D5BE18E9
                                  56DE17B8B8D4F588F55875E96DA08C4BA858CA2E679574F96632FD9E2B816F2C
                                  5122C7F66B7448E31F4051401F3FFF00C158BFE5165FB4B7FD92AF147FE9A2EA
                                  BE80AF9FFF00E0AC5FF28B2FDA5BFEC9578A3FF4D1755F405001451450014514
                                  500145145007C9FF00B66F873E21DD7C7D4D4BE1A7C26F1849E34B6F0FD9A787
                                  7E22695E2AB0B3D01AF4DCDE0FECDF12E9B2DE4335E697006472C96D793471EA
                                  97CD642DAED44AFF00387C74F807F10BF68DF8BBFB53E83F067E28FC40D7F46D
                                  274ABFF13E977DE1FF008AFACC1369BE397D36F34FB2F084327DB0DA5ADBD9DE
                                  4779A9DE5B896DD965D53458A4896D6D42CBFA7F45007E78689FB1EFC79B3FD8
                                  F7F6BCF863A80F18788B4DF1CF82BC4D61E01B6F1278CFFB7AEAEAFEEF53F165
                                  B5B42B797B7534F146DA3FFC22C02CD2A44A5998859DAF18F61FF0A6FE327FC3
                                  3DFD9BFB17E2FF00FC213FF0B03FB47FE103FF008582BFF0B0FF00E117FEC6F2
                                  3EC1FDBBFDA79FB47FC243FF00131DDFDB39FB07EE3CEC7FC4BEBEDFAF883E0F
                                  FF00C1567C69F1F3F68EF1EFC33F06FC2CF0FEA5E26D136CD6363AB7C4CF0ADA
                                  4DE1FF0021841A8DBEB50E95A9EAF7D0F953AA88E786C9F74B7B1DBCB05B881A
                                  EE600D0F0641F1CBC39FB5C7C04BEF1B7C2FF1878DAEFC15F0D6FBC17E34F1DE
                                  8F7FE1E8746D4759D524F0C4F71A8DBDBC97D6F77F638E4D32F8C805947203B0
                                  43048AC31F4FFED0BA378CBC47F00BC71A7FC3AD5B4FD07E20DFF87EFEDFC31A
                                  9DFA07B5D3B547B6916D27954C72831A4E63660639010A7E46FBA7E50F8A5FB7
                                  EFC6CB6F0C5F595AF823C3FE0FF13784BE2AC7E04F165DE89E1FD7FE2CD869BA
                                  749E145D762D423B4D3A0D3AF9F7CF756168498C246D2B312C0AE3CFF56FF82E
                                  7EA7F0DFC47F07F49F15F84FEC9A82FC3F6F137C708A6F0878AEDFFE15EDE258
                                  F872FEE16036DA6DF07FB35AEB134935BCC5562DD6AB3DDDB332ACE01E81FF00
                                  0A3FC776BFB3DF93E1FF0009FED3F63E1FB8F881FDABE27F057887E295BDD78C
                                  B50D1FFB1BECC96DA36B29AD48F6D6E3535B1BC749756824221D4541314C96D3
                                  71FF00B597ECF7FB45788744F8412F89744F187C67D6FC2769F0F353BC4F0478
                                  9ECB45D322F10691AFC1A8789AF2F6D2E6F34DB7BD8EF6DE0B516292453A432D
                                  AC8447625FCC97F43E8A00F903FE159FED0565FF000561FF008496E758F104FF
                                  00066EFE4B44D3A2866D2ADB4C1A3EC3617AB36B1088AE3FB5D24BA1716FA2DC
                                  DC947B788EA0B6EF35B5BFD7F451400514514005145140051451401F32E91FF2
                                  94DF8B9FF64ABC0BFF00A77F18D7B357CAFF00137F673D03F683FF0082A9FC50
                                  FEDED47C7B63FD8FF0BBC142DFFE11BF1C6B5E19DFE66A9E2CDDE6FF0066DDDB
                                  F9D8D836F9BBB665F6EDDED9EBFF00E1DC5F0FBFE861F8F3FF0087C3C6BFFCB5
                                  A00F79A2BC1BFE1DC5F0FBFE861F8F3FF87C3C6BFF00CB5A3FE1DC5F0FBFE861
                                  F8F3FF0087C3C6BFFCB5A00EB7C49FB26F85BC55F17E3F1C5CEABF12E2D6A2BA
                                  B7BC5B6B3F88DE21B3D1CBC010203A6437A962633E5AEF8CC052525CC8AE5DF7
                                  7A657837FC3B8BE1F7FD0C3F1E7FF0F878D7FF0096B47FC3B8BE1F7FD0C3F1E7
                                  FF000F878D7FF96B401EF3457837FC3B8BE1F7FD0C3F1E7FF0F878D7FF0096B4
                                  7FC3B8BE1F7FD0C3F1E7FF000F878D7FF96B40137FC142FF00E486F85BFECAAF
                                  C3AFFD4DB43AFA9EBE43F10FFC12EFE15F8BAC62B5D5B50F8D5A9DB41776D7F1
                                  C377F1A3C653247716D3A5C5BCC15B54204914F1452A30E51E3465219411ABFF
                                  000EF5F037FD0D3F1FFF00F0F9F8DBFF0096D401F53D7CDFA341E37F09FF00C1
                                  42FE33F8BBFE157F8C2FFC2975F0D7C3BA668BAA5B5FE8DE5F88AFF4BBAD6EEE
                                  6B3B78E4BE49A39241AC431C6F731C1117B6B8DF24682279723FE1DEBE06FF00
                                  A1A7E3FF00FE1F3F1B7FF2DA8FF877AF81BFE869F8FF00FF0087CFC6DFFCB6A0
                                  0F95FF00671FF824CF8FBE20FF00C136FC75F0C7C4BA0F8C3E1B6B7AAFC1FD0F
                                  C15A6DB6BDE3FB996EA5F13D9697AB5B5CDC4B79A6DF5D3BF86D9F50B5106972
                                  4A6D6330DE30D3A132EE9FEAFF00DB53E0A6BBE09FD913C27E10F869E0DF881F
                                  1326D1BE2078575B369278AA3D4B554B3D3BC4965AD5DCB2DF6B9A824937EEEC
                                  E48A356B8760F2C080244ACD1C1FF0EF5F037FD0D3F1FF00FF000F9F8DBFF96D
                                  47FC3BD7C0DFF434FC7FFF00C3E7E36FFE5B50063FED79F0B3E23EA1FB7D7C30
                                  F15F84FC37F17FC55E19B6FECAB4D76DEC3C6EDA1F856C224D4652F77E543AED
                                  9C8F710C733CF7114FA5EA515EC36D696C86DC99A4AFAFEBE58FF877AF81BFE8
                                  69F8FF00FF0087CFC6DFFCB6A3FE1DEBE06FFA1A7E3FFF00E1F3F1B7FF002DA8
                                  03EA7AF9FF00F637FF00938AFDAC7FECAAD8FF00EA11E14AE63FE1DEBE06FF00
                                  A1A7E3FF00FE1F3F1B7FF2DABCB7F637FD807C0DE28F8CFF00B4B4375E20F8DE
                                  1747F8956965035BFC67F185B492A1F08786A7CCCF1EA6AD3C9BA6702498BB84
                                  58E30DE5C51A2807DF35F37FEDE10F8DE7F15782A2F08FC2FF001878BF4DBEB4
                                  D4ACBC47E23F05DFE8D63E28D22C1DEC9DB4BB3B8D42FAC9ED23D41E34335D5B
                                  4AD2C49A7011A473C96F7969A1FF000ED3F875FF00431FC7FF00FC3EDE37FF00
                                  E5B571FF00193F651F811FB3E69DA05D78CFE227C6FD023F1578834FF0AE8CB7
                                  1F1E3C7264D5354BE9D60B5B48517552F248EED921410889248E5638DDD403C8
                                  3FE0A03FB2AF8DFE3DF8ABE18E95E00F825E30D0B44D23E0FF00887C2FA48B6D
                                  7346D2F40F06EADAB3E8ABA7D96AD6106A412FF4BB24D365FB65925BDFD9CB1B
                                  428905E8CA27BFFC36FF00827F597803FE0A17E36F8D0BACF8C26B4F10787F4A
                                  B4B1B39FC7DAFDDC697F1DD6BB25EF9D632DCB5A359F97A95AFD9ADCAB456EEB
                                  3B43140C77C9E61F1D3C03FB377ECD9F14F4BF0778CFC6FF00B4FE93AB6ADA54
                                  BAEC7709F133E26DDE956BA7433243737973A8C17AF676B6F6ED2C26E25B89A3
                                  4B749A2794C69223375FADFECA3F023C31E2AF1668FAAFC44F8DFA4DDF817C3F
                                  6BE2AF10497FF1E3C736B6BA4E9772F7C915DCB7126AAB0AC79D36F771DF9410
                                  1670AACA580390F077C25F899E20FF0082677C49F0DDF7813E2FF803C6DA87C4
                                  0F11F8874AD3342F106936FAEDDC17FE2CB8D6ED4A5CD9EB3044B6E61BB486EE
                                  25D46D2778E2BD8E2950BC133FBFFEC15A378A7C3BFB277852C3C6BE1CF10785
                                  7C4D67F6C86F2C35BF11CDE20BF3B6F2711DC49752DF5FC83ED11EC9C40D7D75
                                  F665996DC4F288439F20F817FB387C0CFDA2BFB523F0EF8A3F69FB6D4345F29A
                                  FB4BF10FC52F893E1CD56DE29B7886E0D96A37F05CFD9E568A758E711F9523DB
                                  CE8AE5A1902F7FFF000ED3F875FF00431FC7FF00FC3EDE37FF00E5B5007D015F
                                  3FFED91FF2715FB277FD955BEFFD423C5747FC3B4FE1D7FD0C7F1FFF00F0FB78
                                  DFFF0096D5E21FB57FFC13E3C07A17C79FD996D60D7FE37BC7AD7C4ABCB2B86B
                                  8F8CFE31B992341E0EF12CE0C2F26A6CF6F26F850192128E50C919631CB22300
                                  7DDF457CFF00FF000ED3F875FF00431FC7FF00FC3EDE37FF00E5B51FF0ED3F87
                                  5FF431FC7FFF00C3EDE37FFE5B5007CE1FB5EFC0AF8C3FB427857E38EADA5FC1
                                  8F1869DE24F13FC1FF0012FC3FB9D2EFBC63A66AF6BAEEB3A9A69D69673F87E4
                                  B8BED961A5C296B7735DEF8B4B92EC3D9CB25A5C5C44A96FA0DFF04C6D63F683
                                  F813AB5A6A969F103C03F69F8ABA178BB42D2758F891AA26BB6DA3DA5C7874EA
                                  0BAC5F69B7F71FDA5A837F64DFBD94F71777925AC72D82453DA79223B6353D53
                                  F651D1FC09E29F13DC7C45FDA7D3C3FE12D29FC41717E3E22FC5268754D26392
                                  38E5D534C22ECFF6AE9F179D03CB7961F68B78A2B88257916296376EC3C3FF00
                                  073F677F11FC331E2D8FC77FB47D9696BE20D3FC2B7306A7F16BE23E9BA9E9DA
                                  A5FDDDADA59DA5D585C6A09776B24B25F59B289E24062BA867CF92EB2100EFFF
                                  00698F875E26D1FE2B7ECAF67E10F04F8C3C63E1DF87DE3592FF005BD506B769
                                  71268D61FF0008E6ABA34735D4DA8DEA5DDDC864D52295993ED12BA5B5CB3169
                                  4C693721FF000AB3E23E89FF000561FF00849EDBC37F17F5BF873ABFFC7DEA5A
                                  8F8DDADBC33E1F9468FE5896CB4F875DF2EE2DDA486384DADC68825177797176
                                  2F7CB8A188E7FC6BF839FB3BFECF5E2AB7D1FC55E3BFDA3ED2EDAD1751BD92CF
                                  E2D7C47D4AD7C3F64CEE8B7DAA5C5B6A1243A5D99314F8B9BE782122D6E583ED
                                  B798A7A7FF00C3B4FE1D7FD0C7F1FF00FF000FB78DFF00F96D401F40515F3FFF
                                  00C3B4FE1D7FD0C7F1FF00FF000FB78DFF00F96D47FC3B4FE1D7FD0C7F1FFF00
                                  F0FB78DFFF0096D4007FC1277FE5165FB34FFD92AF0BFF00E9A2D6BE80AF9FFF
                                  00E093BFF28B2FD9A7FEC95785FF00F4D16B5F4050015E7FFB44FED21A17ECC9
                                  E1CF0E6A5AFD9F882F21F1478AF46F07D98D2B4D92F3CABCD52FA2B2B792E1C7
                                  EEEDEDD64994BCB2B2AF445DF2C914527A05787FFC1407E1378FBE357C10D1B4
                                  6F875A7783F52D6EC7C6BE1AF124F1F8935CB9D22D7ECFA4EB369AB322CB059D
                                  DB99257B18E000C60289DA4DC4C6239003DC28AF903FE0AB7FB08EBBFB647FC2
                                  05A9F853E1FF00C20F19F89BC15FDA06D27F8897B1BE956AB71F65636D2D84DA
                                  3EA51DD5BCF25B4266685ACAF234B70905DC42E2635F5FD00145145007CFFF00
                                  11BFE529BF06FF00EC9578F3FF004EFE0CAFA02BE7FF0088DFF294DF837FF64A
                                  BC79FF00A77F0657D0140051451401E1FF00B38FEDDFE1EFDA4FC55A469F65E1
                                  AF18787AD3C63E1F97C5DE0AD4F588ECBECBE37D1237B457D46D16DEE669A08C
                                  0D434F6F2AFE3B59C8BD8F11168E758BDC2BE40F84BFB37FC5FF0017FC2CF8A9
                                  A27C6CF875F083C4BACFC52F0ADE69BE22D574DF891AABFF00C24B2BC32430E8
                                  EA9FD8D049A568E91DCDD245E44B3CB6FE6C92B2DD5D5C5CDD4BD7FF00C12FFF
                                  0065AF137EC83F00B57F09F89BC35F0C3C3323F8826BFB18FC170DA2ADE5BBDB
                                  5B2F9D7EF67A56936B2DE79A9320686C2102DE2B44632488F2B807D214514500
                                  7CFF00FF000562FF0094597ED2DFF64ABC51FF00A68BAAFA02BE7FFF0082B17F
                                  CA2CBF696FFB255E28FF00D345D57D0140051451401E3FFB4BFED8567FB307DA
                                  EF353F03FC40D73C33E1FD29F5FF001578934AB3B51A5784B4C4F30C97770F73
                                  710C975B2382E247834F4BBB9448416854CF6C26F60AF9BFFE0A05FB38F8FBF6
                                  A4F0ABF84742D23E185F689A9DA1FECFF116B771736BAFFC31D6424F0C5E22D2
                                  F65BDC25D5E40970B2408B269F24325AB62ED85CE6DB90FF008611D7748FF82B
                                  0FFC2EFD23E1FF00C208742D538D6FC41A8DEC7A8789AE1868FF00625B9B28DB
                                  471736371BA2B5B52A9ABB59B5A25C3FD93ED372D22807D7F451450015F3FF00
                                  EC6FFF002715FB58FF00D955B1FF00D423C295F4057CFF00FB1BFF00C9C57ED6
                                  3FF6556C7FF508F0A5001F0E7FE529BF193FEC95780FFF004EFE33AFA02BE7FF
                                  00873FF294DF8C9FF64ABC07FF00A77F19D7D0140057CFFF000E7FE529BF193F
                                  EC95780FFF004EFE33AFA02BE7FF00873FF294DF8C9FF64ABC07FF00A77F19D0
                                  07D01451450015F9813FFC1217F6828E4D5F59D3FE20787F49D5BE22EAB7DE21
                                  F1369316B70CD61E17BCB1F1CCBE30F0E268F732684659B135D6A76F7335EC6E
                                  A8DA979E2DEE52D62B36FD3FA2803F383E08FECBBFB55C5AA693E34D7FC27E00
                                  BFF1EE8DF1AB54F1BEB10F88BC5E34BB6D56CE0F087FC227A6C96975A7585D8B
                                  8FB4DAB2DE4D34B67A6B2CF1C91AE9F0C6E853EEFF0081173E3EBCF8676B2FC4
                                  EB3F07E9DE3196EEF5EE6D3C2F79737BA65ADB9BB98D9C693DC450CB2C8B69F6
                                  712C8628C34A252A88855476145007E10FFC1613FE09D1AEE95FB7878BB5BD0F
                                  E177FC25B6DE37FF008453C4325DF873E13472D84528F14EA325F27996FE15D6
                                  DA4B85B15B79AF669EEA296E5A6766B7BEB76834B87DBFF632FF0082712685FF
                                  0004AFF17E9377F07FC1FAAFC41F8BFE20D757C25A6F893E10E9CB27863591A8
                                  EBF169BAAEA2F3E956518D2EDACE58EEA2379A64124492DCC3044FF6CB2D2E3F
                                  D6FA2803F1C3C01FB3A7C2AD07F6AAF8A97BAB7ECD7E0FF097812EFC6BA7DC5A
                                  F8635DFD8D75DF16EA11D947A168D05F4163AA6981B4EB78FEDB0EA08A618EE6
                                  13309AE51EE629D19BF63E8A2800A28A2803E7FF00F82B17FCA2CBF696FF00B2
                                  55E28FFD345D57D015F3FF00FC158BFE5165FB4B7FD92AF147FE9A2EABE80A00
                                  28A28A0028A28A0028A28A0028A28A002BF203E227C2EF8D7F1A7E387C4AD3FC
                                  75F08FE206AFF0A756F15DDEB3756FAA8D7F58D2AFF47D0BE24E8333A5BE9D75
                                  AF6A16F3FDA74686F6E52D9347B1927488C5611DCC2E55BF5FE8A00FCE0F8BDF
                                  B3D7C33FDA57F640F1069DE0DF82DE1FF841F0C3E1AFC55B1D761D1B57FD9E75
                                  6D521F1EF97A55A62F0786EDE0D3F534C5EDEAC0F2C21BCC8B499525325A4F3C
                                  35F37F8CBF617F194EF7BE3EF89BF003C61E1DD4AC6D34CBED62FF00E0E5D0BE
                                  D43E1BDEFF00C22F6566BA4785342BCD3AEED65904BA2E885B57D31A09ACA6D4
                                  61B78EFE48349BCB81FB5F450014514500145145001451450014514500145145
                                  007CBFE1EFF94AA7C65FFB25DE05FF00D3A78BEBDB2BE56F899FB38F87FF0068
                                  1FF82AA7C51FEDDD43C7961FD93F0BBC15E47FC235E38D6BC33E6799AA78B377
                                  9BFD9B776FE7E3CB5DBE6EED996DBB77B67B0FF87717C3EFFA187E3CFF00E1F0
                                  F1AFFF002D6803DE68AF06FF0087717C3EFF00A187E3CFFE1F0F1AFF00F2D68F
                                  F87717C3EFFA187E3CFF00E1F0F1AFFF002D6803DE68AF06FF0087717C3EFF00
                                  A187E3CFFE1F0F1AFF00F2D68FF87717C3EFFA187E3CFF00E1F0F1AFFF002D68
                                  03DE68AF06FF0087717C3EFF00A187E3CFFE1F0F1AFF00F2D68FF87717C3EFFA
                                  187E3CFF00E1F0F1AFFF002D6803ADF8CBFB26F85BE3BF8A20D5F5BD57E25D8D
                                  D5BDAAD9A47E1DF88DE21F0E5A94577705ADF4FBD8216932ED99190B90154B10
                                  8A07A657837FC3B8BE1F7FD0C3F1E7FF000F878D7FF96B47FC3B8BE1F7FD0C3F
                                  1E7FF0F878D7FF0096B401EF3457837FC3B8BE1F7FD0C3F1E7FF000F878D7FF9
                                  6B47FC3B8BE1F7FD0C3F1E7FF0F878D7FF0096B401EF3457837FC3B8BE1F7FD0
                                  C3F1E7FF000F878D7FF96B47FC3B8BE1F7FD0C3F1E7FF0F878D7FF0096B401EF
                                  3457837FC3B8BE1F7FD0C3F1E7FF000F878D7FF96B47FC3B8BE1F7FD0C3F1E7F
                                  F0F878D7FF0096B401EF35E4DFB0AFFC972FDAAFFECAAD97FEA13E15AE7FFE1D
                                  C5F0FBFE861F8F3FF87C3C6BFF00CB5AA1A3FF00C12E7E15787B50D56EEC2FFE
                                  3558DD6BB74B7DA94D6FF1A3C65149A85C2C115BACD332EA80C9208608220CD9
                                  21218D738450003EBCAF9FFF00E0A4DE1FF17F8ABF67FD0ACFC15E05F107C41D
                                  5ADFE2078475B9F4FD22F34DB59A1B3D2FC4161AB5CCA5AFEEADA23986C5E345
                                  572C659A20404DF22725FF000EE2F87DFF00430FC79FFC3E1E35FF00E5AD1FF0
                                  EE2F87DFF430FC79FF00C3E1E35FFE5AD0079EFF00C156BF668F887FB4B7C7DF
                                  0BDBF847E1DF8C35CB4B4F86BE2BF0ED9F88EDBC436161A069BADEB173A40B13
                                  AB59C97F14DA8E9708D36692F2D24B3BC8268E5857ECD76DBE34EC3C79FF0004
                                  F48BC1DFB477C6EF8C363A1F883E287FC24DF0FE1B1D2BC09AAFC45D61EC3C4F
                                  A9A37885EEF4DBBB5BC9DF4E1A7DC26A56B0C10CD1C96D6ACD70F1C10E4B49A5
                                  FF000EE2F87DFF00430FC79FFC3E1E35FF00E5AD1FF0EE2F87DFF430FC79FF00
                                  C3E1E35FFE5AD0071B7DF0D7E207C51FD93BE29B6A5F0EBE3FF86FE2FF00887F
                                  B26E6F35FB4D5FC3FA66AFE23960BCF3A1B1D3BEC1E221F62D1ED71223D91D46
                                  D256B6BBBA29752DF5D5CDDC9EFF00FB0568DE29F0EFEC9DE14B0F1AF873C41E
                                  15F1359FDB21BCB0D6FC4737882FCEDBC9C477125D4B7D7F20FB447B271035F5
                                  D7D99665B713CA210E7CCBFE1DC5F0FBFE861F8F3FF87C3C6BFF00CB5A3FE1DC
                                  5F0FBFE861F8F3FF0087C3C6BFFCB5A00FAB6BE7FF00DB23FE4E2BF64EFF00B2
                                  AB7DFF00A8478AEB92FF0087717C3EFF00A187E3CFFE1F0F1AFF00F2D6BC83F6
                                  89FD80BC0BA47ED11FB33DA45AEFC6B68B59F88F7B6770D3FC63F17CF2C68BE1
                                  0F124E0C323EA65E0937C280C9094728648CB18E5911803F4328AF9FFF00E1DA
                                  7F0EBFE863F8FF00FF0087DBC6FF00FCB6A3FE1DA7F0EBFE863F8FFF00F87DBC
                                  6FFF00CB6A00F983C5BF0B7E28FC5BFD87BE34E8779FB30FC40F0F7C4DF147C2
                                  AD53C11E15D322D4FC2317873C2567770259C1A068E20D5DBCAB78F7453DCDD4
                                  9142D762C37158D61D3F4E83A06FF82636B1FB41FC09D5AD354B4F881E01FB4F
                                  C55D0BC5DA1693AC7C48D5135DB6D1ED2E3C3A7505D62FB4DBFB8FED2D41BFB2
                                  6FDECA7B8BBBC92D6396C1229ED3C911DB741E26F047ECC5E16F859F147C6AFF
                                  0013BE3FEA5E19F82DAACFA278D6F346F8C7F11357FEC2BC821B79AE6278ED75
                                  196493ECF1DD44D3B44AEB06D984A50C1304D0F0FF00C1CFD9DFC47F0CC78B63
                                  F1DFED1F65A5AF8834FF000ADCC1A9FC5AF88FA6EA7A76A97F776B6967697561
                                  71A825DDAC92C97D66CA2789018AEA19F3E4BAC840343F6A0F00788B4DF8A7A5
                                  784EC7E057C40F88FF000A57C2BA7596BDA8E83AC68773AAF8DFECD35DA5BE89
                                  AC5DEB3AA5ADE4DA7DBABBCF22334FF6F7D45E39645845E417E7FC2ACF88FA27
                                  FC1587FE127B6F0DFC5FD6FE1CEAFF00F1F7A96A3E376B6F0CF87E51A3F9625B
                                  2D3E1D77CBB8B769218E136B71A20945DDE5C5D8BDF2E286239FF1AFE0E7ECEF
                                  FB3D78AADF47F1578EFF0068FB4BB6B45D46F64B3F8B5F11F52B5F0FD933BA2D
                                  F6A9716DA8490E97664C53E2E6F9E0848B5B960FB6DE629E9FFF000ED3F875FF
                                  00431FC7FF00FC3EDE37FF00E5B5007D01457CFF00FF000ED3F875FF00431FC7
                                  FF00FC3EDE37FF00E5B51FF0ED3F875FF431FC7FFF00C3EDE37FFE5B5001FF00
                                  049DFF0094597ECD3FF64ABC2FFF00A68B5AFA02BE7FFF00824EFF00CA2CBF66
                                  9FFB255E17FF00D345AD7D01400514514005145140051451401F3FFC46FF0094
                                  A6FC1BFF00B255E3CFFD3BF832BE80AF9FFE237FCA537E0DFF00D92AF1E7FE9D
                                  FC195F405001451450014514500145145007CFFF00F0562FF94597ED2DFF0064
                                  ABC51FFA68BAAFA02BE7FF00F82B17FCA2CBF696FF00B255E28FFD345D57D014
                                  0051451400514514005145140057CFFF00B1BFFC9C57ED63FF006556C7FF0050
                                  8F0A57D015F3FF00EC6FFF002715FB58FF00D955B1FF00D423C294007C39FF00
                                  94A6FC64FF00B255E03FFD3BF8CEBE80AF2FF8D7FB117C17FDA53C556FAEFC45
                                  F843F0C3C7FADDA5A2D841A87893C2B63AADD436EAEEEB0ACB3C4EE230F248C1
                                  41C03231C658D71FFF000E9DFD967FE8DA7E007FE1BCD23FF91E803E80AF9FFE
                                  1CFF00CA537E327FD92AF01FFE9DFC6747FC3A77F659FF00A369F801FF0086F3
                                  48FF00E47A3FE1D3BFB2CFFD1B4FC00FFC379A47FF0023D007D01457CFFF00F0
                                  E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE69
                                  1FFC8F401F40515F3FFF00C3A77F659FFA369F801FF86F348FFE47A3FE1D3BFB
                                  2CFF00D1B4FC00FF00C379A47FF23D007D01457CFF00FF000E9DFD967FE8DA7E
                                  007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F401F405
                                  15F3FF00FC3A77F659FF00A369F801FF0086F348FF00E47A3FE1D3BFB2CFFD1B
                                  4FC00FFC379A47FF0023D007D01457CFFF00F0E9DFD967FE8DA7E007FE1BCD23
                                  FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F401F40515F3FFF00C3A7
                                  7F659FFA369F801FF86F348FFE47A3FE1D3BFB2CFF00D1B4FC00FF00C379A47F
                                  F23D001FF0562FF94597ED2DFF0064ABC51FFA68BAAFA02BE7FF00F874EFECB3
                                  FF0046D3F003FF000DE691FF00C8F47FC3A77F659FFA369F801FF86F348FFE47
                                  A00FA028AF9FFF00E1D3BFB2CFFD1B4FC00FFC379A47FF0023D1FF000E9DFD96
                                  7FE8DA7E007FE1BCD23FF91E803E80A2BE7FFF00874EFECB3FF46D3F003FF0DE
                                  691FFC8F47FC3A77F659FF00A369F801FF0086F348FF00E47A00FA028AF9FF00
                                  FE1D3BFB2CFF00D1B4FC00FF00C379A47FF23D1FF0E9DFD967FE8DA7E007FE1B
                                  CD23FF0091E803E80A2BE7FF00F874EFECB3FF0046D3F003FF000DE691FF00C8
                                  F47FC3A77F659FFA369F801FF86F348FFE47A00FA028AF9FFF00E1D3BFB2CFFD
                                  1B4FC00FFC379A47FF0023D1FF000E9DFD967FE8DA7E007FE1BCD23FF91E803E
                                  80A2BE7FFF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3A77F659FF00A369
                                  F801FF0086F348FF00E47A00FA028AF9FF00FE1D3BFB2CFF00D1B4FC00FF00C3
                                  79A47FF23D1FF0E9DFD967FE8DA7E007FE1BCD23FF0091E803E80A2BE7FF00F8
                                  74EFECB3FF0046D3F003FF000DE691FF00C8F47FC3A77F659FFA369F801FF86F
                                  348FFE47A00FA028AF9FFF00E1D3BFB2CFFD1B4FC00FFC379A47FF0023D1FF00
                                  0E9DFD967FE8DA7E007FE1BCD23FF91E803E80A2BE7FFF00874EFECB3FF46D3F
                                  003FF0DE691FFC8F47FC3A77F659FF00A369F801FF0086F348FF00E47A00FA02
                                  8AF9FF00FE1D3BFB2CFF00D1B4FC00FF00C379A47FF23D1FF0E9DFD967FE8DA7
                                  E007FE1BCD23FF0091E8039FF0F7FCA553E32FFD92EF02FF00E9D3C5F5ED95E6
                                  7FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0
                                  DE691FFC8F401E9945799FFC3A77F659FF00A369F801FF0086F348FF00E47A3F
                                  E1D3BFB2CFFD1B4FC00FFC379A47FF0023D007A6515E67FF000E9DFD967FE8DA
                                  7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F401E9
                                  945799FF00C3A77F659FFA369F801FF86F348FFE47A3FE1D3BFB2CFF00D1B4FC
                                  00FF00C379A47FF23D007A6515E67FF0E9DFD967FE8DA7E007FE1BCD23FF0091
                                  E8FF00874EFECB3FF46D3F003FF0DE691FFC8F401E9945799FFC3A77F659FF00
                                  A369F801FF0086F348FF00E47A3FE1D3BFB2CFFD1B4FC00FFC379A47FF0023D0
                                  06F7C65F829A3FC77F0BC1A46B779E2DB1B5B7BA5BC493C3BE2AD53C39745D51
                                  D006B8D3EE2099A3C3B663672848562A4A291A1F0C7E1C69FF00093C0F65E1ED
                                  2AE35EBAB0D3FCCF2A5D6B5CBDD6EF9F7C8D21F32EEF659AE25F99C81E648DB5
                                  42AAE15540E47FE1D3BFB2CFFD1B4FC00FFC379A47FF0023D1FF000E9DFD967F
                                  E8DA7E007FE1BCD23FF91E803D328AF33FF874EFECB3FF0046D3F003FF000DE6
                                  91FF00C8F47FC3A77F659FFA369F801FF86F348FFE47A00F4CA2BCCFFE1D3BFB
                                  2CFF00D1B4FC00FF00C379A47FF23D1FF0E9DFD967FE8DA7E007FE1BCD23FF00
                                  91E803D328AF33FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3A77F659FF
                                  00A369F801FF0086F348FF00E47A00F4CA2BCCFF00E1D3BFB2CFFD1B4FC00FFC
                                  379A47FF0023D1FF000E9DFD967FE8DA7E007FE1BCD23FF91E803D328AF33FF8
                                  74EFECB3FF0046D3F003FF000DE691FF00C8F47FC3A77F659FFA369F801FF86F
                                  348FFE47A00F4CAF13FDA77FE4E6FF00652FFB2A37FF00FA84F8AABA0FF874EF
                                  ECB3FF0046D3F003FF000DE691FF00C8F47FC3A77F659FFA369F801FF86F348F
                                  FE47A00FA028AF9FFF00E1D3BFB2CFFD1B4FC00FFC379A47FF0023D1FF000E9D
                                  FD967FE8DA7E007FE1BCD23FF91E803C43E357C27F8ABE38FD9D3FE0A03E1DB0
                                  F841E306D53E2FDDDE5BF82237D5B4255F1225D78574DF0F09E36FED0C411C73
                                  D84972E2E7C97FB3CB115479B7C099EDFF0004C6D63F683F813AB5A6A969F103
                                  C03F69F8ABA178BB42D2758F891AA26BB6DA3DA5C7874EA0BAC5F69B7F71FDA5
                                  A837F64DFBD94F71777925AC72D82453DA79223B6F7FFF00874EFECB3FF46D3F
                                  003FF0DE691FFC8F47FC3A77F659FF00A369F801FF0086F348FF00E47A00E3FF
                                  00E0A05F077C65F103E013FC23F077807C61E27B4BEF0F9D3FC37E254F1B07B5
                                  D1F5416D3DA46FE2682F6EE39B54D2C096DE596275D545E85BA17166CD1C42E6
                                  87FC2ACF88FA27FC1587FE127B6F0DFC5FD6FE1CEAFF00F1F7A96A3E376B6F0C
                                  F87E51A3F9625B2D3E1D77CBB8B769218E136B71A20945DDE5C5D8BDF2E28623
                                  DFFF00C3A77F659FFA369F801FF86F348FFE47A3FE1D3BFB2CFF00D1B4FC00FF
                                  00C379A47FF23D007D01457CFF00FF000E9DFD967FE8DA7E007FE1BCD23FF91E
                                  8FF874EFECB3FF0046D3F003FF000DE691FF00C8F4007FC1277FE5165FB34FFD
                                  92AF0BFF00E9A2D6BE80AF9FFF00E1D3BFB2CFFD1B4FC00FFC379A47FF0023D1
                                  FF000E9DFD967FE8DA7E007FE1BCD23FF91E803E80A2BE7FFF00874EFECB3FF4
                                  6D3F003FF0DE691FFC8F47FC3A77F659FF00A369F801FF0086F348FF00E47A00
                                  FA028AF9FF00FE1D3BFB2CFF00D1B4FC00FF00C379A47FF23D1FF0E9DFD967FE
                                  8DA7E007FE1BCD23FF0091E803E80A2BE7FF00F874EFECB3FF0046D3F003FF00
                                  0DE691FF00C8F47FC3A77F659FFA369F801FF86F348FFE47A003E237FCA537E0
                                  DFFD92AF1E7FE9DFC195F4057CFF00FF000E9DFD967FE8DA7E007FE1BCD23FF9
                                  1E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F401F40515F3FF00FC3A77
                                  F659FF00A369F801FF0086F348FF00E47A3FE1D3BFB2CFFD1B4FC00FFC379A47
                                  FF0023D007D01457CFFF00F0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF0087
                                  4EFECB3FF46D3F003FF0DE691FFC8F401F40515F3FFF00C3A77F659FFA369F80
                                  1FF86F348FFE47A3FE1D3BFB2CFF00D1B4FC00FF00C379A47FF23D001FF0562F
                                  F94597ED2DFF0064ABC51FFA68BAAFA02BE7FF00F874EFECB3FF0046D3F003FF
                                  000DE691FF00C8F47FC3A77F659FFA369F801FF86F348FFE47A00FA028AF9FFF
                                  00E1D3BFB2CFFD1B4FC00FFC379A47FF0023D1FF000E9DFD967FE8DA7E007FE1
                                  BCD23FF91E803E80A2BE7FFF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3A
                                  77F659FF00A369F801FF0086F348FF00E47A00FA028AF9FF00FE1D3BFB2CFF00
                                  D1B4FC00FF00C379A47FF23D1FF0E9DFD967FE8DA7E007FE1BCD23FF0091E803
                                  E80AF9FF00F637FF00938AFDAC7FECAAD8FF00EA11E14A3FE1D3BFB2CFFD1B4F
                                  C00FFC379A47FF0023D7A87C14FD9EFC03FB35F856E342F875E07F07F80344BB
                                  BB6BF9F4FF000DE8D6DA55ACD70C888D33450222190A471A96232446A3385140
                                  1D85145140051451400514514005145140051451400514514005145140051451
                                  4005145140051451400514514005145140051451400514514005145140051451
                                  40051451400514514005145140051451401E5DF1A7F6E0F82DFB36F8AE1D0BE2
                                  27C5FF0085DE02D72E2D56FA2D3BC47E2AB1D2EEE5B76674599629E54731968D
                                  D4301825186720D721FF000F62FD967FE8E5BE007FE1C3D23FF922B92D33FE52
                                  AFF197FEC987817FF4E7E2EAF65AF36AE61C9370E5DBCCF4A965FCF053E6DFC8
                                  E1FF00E1EC5FB2CFFD1CB7C00FFC387A47FF002451FF000F62FD967FE8E5BE00
                                  7FE1C3D23FF922BB8A2B3FED4FEEFE3FF00D3FB2FF00BDF87FC1387FF87B17EC
                                  B3FF00472DF003FF000E1E91FF00C9147FC3D8BF659FFA396F801FF870F48FFE
                                  48AEE28A3FB53FBBF8FF00C00FECBFEF7E1FF04E1FFE1EC5FB2CFF00D1CB7C00
                                  FF00C387A47FF2451FF0F62FD967FE8E5BE007FE1C3D23FF00922BB8A28FED4F
                                  EEFE3FF003FB2FFBDF87FC1387FF0087B17ECB3FF472DF003FF0E1E91FFC9147
                                  FC3D8BF659FF00A396F801FF00870F48FF00E48AEE28A3FB53FBBF8FFC00FECB
                                  FEF7E1FF0004E1FF00E1EC5FB2CFFD1CB7C00FFC387A47FF002451FF000F62FD
                                  967FE8E5BE007FE1C3D23FF922BB8A28FED4FEEFE3FF00003FB2FF00BDF87FC1
                                  387FF87B17ECB3FF00472DF003FF000E1E91FF00C9147FC3D8BF659FFA396F80
                                  1FF870F48FFE48AEE28A3FB53FBBF8FF00C00FECBFEF7E1FF04E1FFE1EC5FB2C
                                  FF00D1CB7C00FF00C387A47FF2451FF0F62FD967FE8E5BE007FE1C3D23FF0092
                                  2BB8A28FED4FEEFE3FF003FB2FFBDF87FC1387FF0087B17ECB3FF472DF003FF0
                                  E1E91FFC9147FC3D8BF659FF00A396F801FF00870F48FF00E48AEE28A3FB53FB
                                  BF8FFC00FECBFEF7E1FF0004E1FF00E1EC5FB2CFFD1CB7C00FFC387A47FF0024
                                  51FF000F62FD967FE8E5BE007FE1C3D23FF922BB8A28FED4FEEFE3FF00003FB2
                                  FF00BDF87FC1387FF87B17ECB3FF00472DF003FF000E1E91FF00C9147FC3D8BF
                                  659FFA396F801FF870F48FFE48AEE28A3FB53FBBF8FF00C00FECBFEF7E1FF04E
                                  1FFE1EC5FB2CFF00D1CB7C00FF00C387A47FF2451FF0F62FD967FE8E5BE007FE
                                  1C3D23FF00922BB8A28FED4FEEFE3FF003FB2FFBDF87FC1387FF0087B17ECB3F
                                  F472DF003FF0E1E91FFC9147FC3D8BF659FF00A396F801FF00870F48FF00E48A
                                  EE28A3FB53FBBF8FFC00FECBFEF7E1FF0004E1FF00E1EC5FB2CFFD1CB7C00FFC
                                  387A47FF002451FF000F62FD967FE8E5BE007FE1C3D23FF922BB8A28FED4FEEF
                                  E3FF00003FB2FF00BDF87FC1387FF87B17ECB3FF00472DF003FF000E1E91FF00
                                  C9147FC3D8BF659FFA396F801FF870F48FFE48AEE28A3FB53FBBF8FF00C00FEC
                                  BFEF7E1FF04E1FFE1EC5FB2CFF00D1CB7C00FF00C387A47FF2451FF0F62FD967
                                  FE8E5BE007FE1C3D23FF00922BB8A28FED4FEEFE3FF003FB2FFBDF87FC1387FF
                                  0087B17ECB3FF472DF003FF0E1E91FFC9147FC3D8BF659FF00A396F801FF0087
                                  0F48FF00E48AEE28A3FB53FBBF8FFC00FECBFEF7E1FF0004E1FF00E1EC5FB2CF
                                  FD1CB7C00FFC387A47FF002451FF000F62FD967FE8E5BE007FE1C3D23FF922BB
                                  8A28FED4FEEFE3FF00003FB2FF00BDF87FC1387FF87B17ECB3FF00472DF003FF
                                  000E1E91FF00C9147FC3D8BF659FFA396F801FF870F48FFE48AEE28A3FB53FBB
                                  F8FF00C00FECBFEF7E1FF04E1FFE1EC5FB2CFF00D1CB7C00FF00C387A47FF245
                                  1FF0F62FD967FE8E5BE007FE1C3D23FF00922BB8A28FED4FEEFE3FF003FB2FFB
                                  DF87FC1387FF0087B17ECB3FF472DF003FF0E1E91FFC9147FC3D8BF659FF00A3
                                  96F801FF00870F48FF00E48AEE28A3FB53FBBF8FFC00FECBFEF7E1FF0004AFF0
                                  53F6DDF82FFB4A78AAE342F875F177E1878FF5BB4B46BF9F4FF0DF8AAC755BA8
                                  6DD5D11A668A095DC461E48D4B118064519CB0AF50AF96E5FF0094A6FC27FF00
                                  B255E39FFD3BF83ABEA4AF46855F69053B1E757A5ECE6E1BD828A28AD4C828A2
                                  8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
                                  8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
                                  8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
                                  8A0028A28A0028A28A00F94B4CFF0094ABFC65FF00B261E05FFD39F8BABD96BC
                                  6B4CFF0094ABFC65FF00B261E05FFD39F8BABD96BE7317FC691F4985FE0C428A
                                  28AE63A028A28A0028A28A0028A28A0028A28A0028A28A0028AFCD7FF82CE7FC
                                  2B2FF869BB1FB5FF00C209FF000B97FE144F8E7FE10AF3BEC9FF00093FF6FF00
                                  DAF46FF8477FB3B3FE93F6FF00B57F68FD87C8FDEF9BF6AF23E6F32BDDBFE1BE
                                  FC5717FC1523FE1485CF87742D3BC3927FA35AC9A86A9A7596A7AA45FD91FDA2
                                  757B38E5D416F6EE013892C0C16FA64910782E2737E0C12DA26DEC9F2A9231F6
                                  AB99A67D65457E72FF00C137BE29E992FC18FDA0FE37699A87C18FDA03E30F87
                                  EEBC57303E05D1522F16EAD6F06AFAAB58D8DC5F2DDDFDCC9697B158D9AE9F0E
                                  CC456D0DBC69F6A11A3D75BF0CFF00E0A7BE2BF883FB26D978B2EF58F84DE1BF
                                  3BC7727846FF00E20DD5EE9DA9785BC3F68BA5B6A0BA8EA16DA6EB77505AF993
                                  88B4C4824D60319AEADA72C3CF8ED18745DEC8156564DF53EEDA2BE3E1F1AFC7
                                  5A67ED57FB32788BC59F12FE1AE9FE02F1C7C3AD42C7563A4FDA0F873C4DE27B
                                  A93456B5874DBE96F1619A4B92D2C960AF0C939B6B6D402893ED05EDBADFD93F
                                  E3E7FC2EBF881FB507863C3FE21F84CFE32F03F8EE4D322BED0F4CF331E668BA
                                  79B4B8D5AD92F0CB733C12ACD612389A0F37FB21E3510188A473ECDDAFFD7629
                                  544DDBFADAE7D29457C07E08FF0082847C7C93F64BF1A7C4ED6FC37E13B96F00
                                  5ADAF85F59D3ED7C3375A7B45E29FED28E0D6AF219AE753FB2CDA2E8B1CED0CB
                                  2B5CC51DD5C697A8B9BCB2B68D253F51FEC37FB40EA1FB51FECB7E17F1C6A90E
                                  8515FEAFF6B8A56D1B55B2D4AC6E7ECF7735B0B88E4B3BABBB74F3442253025D
                                  5C7D9DA4685A695A269189537157611A8A4EC8F59A2BF2E7F6B3F8D577FB38F8
                                  835AF880FF000BFC09F10BF69AF01EA9E3CF1247A978935BB9B2D5FC1FE1CB4B
                                  2D664D1AFA282DEDA4373A0BE93E5DB32473416A752BA5491D75096E6687BBBA
                                  FDADBE3A7ED15FB1DFED55E0FB4B9D097E2B781FC31ADCBE1ED63C1DA0EA16B3
                                  5E797AC789B444B7B6B317D2DC2DFB9F0E4B2C33C770764BA8C004327D949B9B
                                  F60ED7E847B757B753F42EA878A7C476FE0FF0C6A3AB5DC77F2DAE976B2DE4D1
                                  D8D8CD7D74E91A176115BC08F34D2100ED8E24677385552481583F02BE25699F
                                  17BE11683E20D23C5DE13F1EDADEDA8493C41E18911F48D52E23262B892DB6CD
                                  3858FCE4906CF3A52854A1762A49F84BF6F1D3FC0B77FF00053CF05B78E3E1C5
                                  FF00C50F0D4BA0C9A4FF0064F8DAC2DEF3C356DAAEA7E25F03E90D79A5ADE452
                                  C9E6436BA85BBCDE528B366052264BA7D4584421CD2E565CE7CB1E647E85F85B
                                  C53A678E7C31A76B7A26A361AC68DAC5AC57D617F63709716B7D6F2A078E68A4
                                  4255E3746565652410410706BC23C5FF00F0546F841E06D3FC4F7F7F37C4A6D1
                                  BC1B75A959EB3ACD9FC2FF00145EE9162FA74D3417C4DF43A7BDB34704B6F3AB
                                  C8B2140627F9B02BE12FF8251FC76B1F835FB33FC58F8D373F0B7E0C786759F0
                                  4FC3A5D72DB4ED33C3FA3787FC57E2C483C1FE19D62F76BE9B108E0D35EEAE96
                                  E3715B872DAC5B2C91D91B44826BFF0016FC09F18BFE137F16FECE575AAEBBA3
                                  7FC2DFD52795BC37A57C44D1E5F0F7D93C511F8C756D450DFDC7831B50870FA2
                                  DF2AA0595B17916264F2EB6F6093B331F6EDA4D1FAC94579AFEC97F1D353FDA2
                                  BE0C0F116B7A0D8786759B5D7B5CF0F5FE9D63AA3EA76B0DC697ABDE69923457
                                  0F040D246EF66D229685080E015C8AF4AAE669A76674A7757414514521851451
                                  40051451400514514005145140051451401E472FFCA537E13FFD92AF1CFF00E9
                                  DFC1D5F5257CB72FFCA537E13FFD92AF1CFF00E9DFC1D5F5257D0E07F811F9FE
                                  67CF63BF8F2F97E4145145759C81451450014514500145145001451450014514
                                  5001451450014514500145145001451450014514500145145001451450014514
                                  5001451450014514500145145001451450014514500145145001451450014514
                                  5001451450014514500145145001451450014514500145145007CA5A67FCA55F
                                  E32FFD930F02FF00E9CFC5D5ECB5E35A67FCA55FE32FFD930F02FF00E9CFC5D5
                                  ECB5F398BFE348FA4C2FF062145145731D06278F7C7D63F0EF4686EEF44F33DD
                                  DD4363696D6E81E7BCB895C2A471A92013C9249215555998AAAB11C5780FF6C5
                                  F02FC4DD5FC4765A1CDE28BD93C316F3DD5C49FF00088EAF1C17D141234723D8
                                  4CF6C23D400752A3EC6D36E2576E772E76BE35F85F54D622F0CEABA35B7F685F
                                  F85B5C8753FB0F9C223790B4535ACEAACCCA9BD61B992440E76B3C6AA4AE77AF
                                  CEBAB7ECA9F192E7E1DFC5CD3B4B8FC3FE19B9F145B6DD02CF4AF8A7E2182CDA
                                  FCDC993FB4924169E6E8A1570E6CACBCE826666476C1676BA6937EF6DAFE4ADF
                                  8BF9EDEEA529A995D35CBFDDFC5BBFDCACFB2D77768BFAF2D6E56F2D63950481
                                  6550EA1E3646008CF2AC0107D880477AE6FE347C5ED1FE02FC2ED67C61AFAEAA
                                  DA36836E6E6EFF00B374CB8D46E150100910C08F21033966DBB5143331545661
                                  F3D78A7F67CF8D9AAFED09A7FC44B69AC2DA6B55D1C49A1C5F14F5DFEC84516B
                                  791EAA0588B44B49D8BC969E499625DFE49909B67277793FEC35FB357C7ED0FF
                                  0060BF8C5E13F18E83E3CFF858BE2A33697A64DF157E2F7FC2471EA104B6C216
                                  B98DECE0B94D3A15F32575B6549A466015E6650922DAA69F3B6EDCB6F9EB6D3B
                                  E8F7F5D2CAE446A3E68292F8ADF2D1B77EDB7E2B5BE87E814130B8851C670EA1
                                  867DE9F5F2AEB7FB327C67F1AFEDAFF0D3E256A1E2ED5744F0B787F478EDF57F
                                  09E85F10E783448AE8C73ACC1EC1B482356563247B65967B464D80AA02A33A9F
                                  F0514F85DF11BE2AC9F0E6C7E1F683E23D680D5EE86B6D63F12EFBC0B656968D
                                  6528492EAE6C58DDC805C790C890C32925086288CDBA251B24D6EDB56F9DB7DB
                                  5EEDA5DDDB50A726F49764EFF2BBFBBB6AFCAFA1F4B515F35FC38F81DF17BE19
                                  FC66D6B5FBC7D3BC7AC7474B6D3B52D4BE266B5A74134A96D6E9E449A1259CDA
                                  7C21A68E57378AD2CFFBC3F29C951ED73EA5E296F8C765691595AAF8397469A6
                                  BCBB78D4CAD7E668C431C4E27DDB446272E1ADF07744565C874A72824D24EF7F
                                  F82FF4B7AED7566C8CDB4DB56B7FC0FF003BFA6F6774B5BC67E2FB0F87DE0FD5
                                  75ED565920D2F45B496FAF258E092778E1890BB911C6ACEE42A9C2AA963D0024
                                  E2B3BE157C54D33E32783E2D7348B5F11DA594D23C4B1EB9E1EBFD0AF0153839
                                  B5BE8619D47A314018720914DF8CDE1CBFF187C25F12E95A658787F56BFD4B4D
                                  B8B682C35D0FFD997CCF195F26E4A06710BE76B32AB10189DAD8DA78CFD8CFE0
                                  9EA1F017E104BA35FE85E0EF088B8D52E6FADBC35E1395A5D0FC3B0C8C36DADA
                                  BB5BDB9653B4CAC44110F326930B8E4CC127CDCDD169EB7DBEED7E5ABD55EE6D
                                  AE5E5EAF5F4B6FF7E9F3D3676EFA0F889A4DCFC46BAF09ACD3FF006ED9E9D16A
                                  D242D6932C5F6696492246598AF94CDBE270515CBAFCA5940752737C73F1B740
                                  F879E35F0E7877506D625D63C552B47616FA76897BA96D0AC8AD2CED6D148B6B
                                  02B4880CD398E205802D5F1DFC48FD833E3DF8AF54F8ABFD93E293A04FE32B58
                                  EDAD7C45A77C58D622D62ED23D51AE4470A4FA6DC41A12B5B48D19FB12CCAA63
                                  1843BCBA769F083F629F88BE0CF8F5F0FBC49AB6A17F7EBE1AF010F0E5EEB97F
                                  F16B5AD57503A8046025974F1656D61A8A8F9774D32C4D231F35A2F3235CD423
                                  1708CE5E775D748C9AB7AB518ABEB77769684CE52539423E567ADB5704EFE979
                                  49DB4B46C9B773EBDAAAFAE5947AD47A6B5DDAAEA3340F731DA9957CE7891955
                                  A4099DC5433A02D8C02EA3B8AF8D7E057EC4DF1C3E197EC91E30F0A6B9E3EF14
                                  78B7C5DAD78860D5126D6BE2CEA174D7B6A0C3F68B68755B7D26D6EF498A508F
                                  88EDE29FCAC9D920DEC477DE10FD933C49A27ED27F0A7E20C9A7F932683E14BA
                                  F0E6BF6F2FC56F10EA8B60498DA0685278BCBD57255D5E4BB581C96494977890
                                  0A54E3CFCAE5A77FFB71C93D6DA735A3DEF7BA5A5E7DA4B92EA3AFFF006C95B4
                                  BEBCB79767A24DEB6FA5A82702BE69FF00828A7C2EF88DF1564F87363F0FB41F
                                  11EB406AF7435B6B1F8977DE05B2B4B46B294249757362C6EE402E3C86448619
                                  49284314466DD93E19FD95FE30689F11BC457BAAF899BC4F6779A1CF64B7ADF1
                                  0F5BD30EB65AC5618ECCE9D0C2D6DA4ED9C79BFDA766F25DFCBF732ED8C92BC6
                                  4FB276F3B2DBFAD3B372F74D24ED28A4AF7FC35B5FB7E37EE947DE3E9DF0C788
                                  ADFC5BE1FB4D4ED63BE8ADEF6212C697B653595C2A9ECF0CC892C6DFECBA823B
                                  8A96DF5CB2BBD5AE6C22BBB592FACE38E5B8B64954CB0249B846CE99CA86D8F8
                                  2473B1B1D0D7C73AD7ECA3F1FF00C47E15F86F7571AAD8DBF8A3C09E18B7B29E
                                  3B4F8C1E2382C356D56DF50B464B8BAF2EC945E23D9C5745CDCC526E92E046E9
                                  2AAACCBDCF8B7F64BF15587ED0FF00177C5FE1A0E17E24782134AB7BB93E24EB
                                  5653596A91899144769E44F6B6B1ED78D96EE10658591F6407CD909D2A42314D
                                  A77F8BF07A7FE0495FEEB5DE84C24E4ECD7F2FE36BFDD7B79EBB2573E97AE2BC
                                  27F1F740F1A5AF8D66B187C4257C03A8CFA5EAB1CBA15EC770D3C30473BFD9E0
                                  3179D72A525428D0A3ACB91E5970413C87EC17F0C3E227C1EFD9A347D07E29DC
                                  E8179E33B59EE5AEE5D175FD6B5DB464699DA2DB75AC4B2DEB9D85722472AA72
                                  1005005707F117E087C65F18782FF680D36CF4CF0769377E39D462BDF07DFE99
                                  F11757D2EEE368EDAD6D525BA9EDB4E496D5956D127D90BCEB217681CF979918
                                  94146A385EEADBF9DE3FA37A796E829C9C926D5B5FF3FF0081AF43E9CB5B95BC
                                  B58E5412059543A878D9180233CAB0041F62011DEBC47E30FECC1F093E3FE81E
                                  25D5FC5D69E22B0B7975AB3D4756D4DF5FD67C3570B3E8ECC2CC8B88E7B7916C
                                  EDE60F730A46C2D7CF91EE914CB234CDE4FE29FD93BE3BF8BBF6BDF0FF00C443
                                  ACDAE93A343269B36A3A359FC5AF117D82231FD805D469A72DAA59CEBB63BF55
                                  322279BE723B846FB9BCFF00B23FC42F8A1FF04FDF1B7C2CF1BAD9C1AFDF4FA8
                                  9D05ED3E26EBDA97990C93BDCD9C777AB496F05F6232EB0B02B3068E25277063
                                  12B4AD173BDB5DBCAEB5F3F25D6DD16F0A4E564D6F6FC53D3CB54BAE973B5B6F
                                  F8264FC06D2BFB7A3D2BE1A685E1CB0F13786352F076A5A6682D368FA64FA76A
                                  3E4FDB9459DABC76E93CE2DAD95EE9235B864B6817CDDB1205F94352D23F6435
                                  F18DD5A47FB27D99B71E3DB4F09CB636765E1A8343D4757B38F52B6B791EC06A
                                  4B6F34E916A97A45BC909BE6596393ECEDE442D17E82FC39D2B52F0EFC2CD16C
                                  AEECE18357B1D321865B53AE5CEAD1C732C601437F7118B8B81B863CF963123F
                                  DE65DC48AFCDDBBFF8256FC76D63F6CDFF00859AD6BA269B2CBAC8F10EDFF85A
                                  E2FECED64FB78BCFB073E158AF66D3567FDFFF0067FDA6389A41BFCD4930E34A
                                  32FF0068F6737EEF57E8D3EFD526B47D6FD88ACAD87F6915EF76B7756EDD1B4F
                                  6D6D6EE7D5BE32FDA1BE047FC12AFE185D785FECFA7F80BC1BE1C86E7588ACAD
                                  24861B1B5B9D42E2FAF52CA2124AA217B9962BE6863F9204F2FCB0D18F290FBA
                                  FC2BF8B5E18F8E3E04B1F13F837C43A1F8ABC3BA906FB2EA7A3EA10DFDA4E518
                                  A3859A166462AEACA70C70CA47515F30FED27FB08788FE28EB5F1775AF0FEADE
                                  23F0A7887C59E0AB4B58AF345BBD3EE3FB76F847AAA4F60E35082654836CD668
                                  B20485D54E1254CCB9F72D2BC07F113E1D7C3CF0E693A378C57C6BAA47ACDBB6
                                  B3ABF8D6DED92E4E985F3711C29A65BDAC267098588B461413B9CBE30D9F2C6D
                                  693F7AEB5F5DFBECDEFA68B6BEFA49C934E2BDDB3D3D36F9BEDAEAF76BE1EEBC
                                  67E2FB0F87DE0FD575ED565920D2F45B496FAF258E092778E1890BB911C6ACEE
                                  42A9C2AA963D0024E2BCBFC5DFB70F847C21F0B749F1849A37C459749D57507B
                                  1F21FC19A9D9EA96AB1A3BCB71269F750C57861409D6385D9CBC6B1AB97507BD
                                  F8CDE1CBFF00187C25F12E95A658787F56BFD4B4DB8B682C35D0FF00D997CCF1
                                  95F26E4A06710BE76B32AB10189DAD8DA7E4FD63F62DF11781BE07E9C2CFE1A7
                                  86FF00B56CAEF569EDFC21E0ABF80E91A0D8DC20FF00897D89BC1630B095E349
                                  1C98A153248D9DAA01AC56D36FA2BAF37DBE7E5B2BEB7E54F49DFDD51EAECFC9
                                  77F979EFA74BDBDB7C03FF000507F857F113C39E24D5ADB57F10E9161E138E29
                                  35293C45E12D63C3E57CD79238D625BFB585AE1DA489D02421D8B80B8DCCA0C1
                                  F0CBFE0A05E07F8AFE3D8FC3BA768FF142DEF2EDF16B2DF780359B682441B833
                                  CECD6C3EC2A244923C5F0B76629B9032323B7C91FB0DFF00C13B7C4BF05FF657
                                  F1EFC38B6F02F8FF00E1BD9EBF158D9799673693A74DA879B3DD0B97022D6B53
                                  912148E58DE5C5DC523FCEB0AA29083BCFD957F63BF1E7C13F8D56BE27F12780
                                  A7D467D46D996C1A0F162EAF61E179228658D6E65B3B99205B7BB92397C95160
                                  664DAF765E55329697A2B53A69C941DD72E9EBCA9DBEFBABF7566B54CC39EAB8
                                  3B2F7B992EB6B77FD7E6AD7D4EF3E087FC1627E16FC5EF03EADE24D5AC7C47F0
                                  CF41D1753B2D36EF50F1A4FA5E9D6711BB49DA299A74BD92244CDBBA10EEB207
                                  645D99615F45F8ABE28E9BE1AF01DB788A0F335BD36FA5B28ED5F4D922945D0B
                                  B9E286191199D51909991B76EFBB9233C03F9BFE1AFF008271FC6AFD8EB4FD5F
                                  FE1071E3BD51FC44973AB59C7E05F105935BE97AE140B15C5D5AF89AF2E3CA8D
                                  84D731BB5ADCCEEC823046F896693EC5FDB1FC11F14FE3278567F07687F0E3E1
                                  0F8CFC1DA9AD8CBA97FC25DE30BBB037862BA8E69AD64B28F47BC89E1758826E
                                  6979F31B2985F9AABC69AFE1F7EFD92BDFD5DDA7F9E8384E6E5AAB2D7A6BF13B
                                  7FE4AE3A6F74EF6EBE83FB41FED13A3FECDFE1DD2750D5F4DF12EADFDB9A9A68
                                  F636BA1E9726A1733DD3C52C91A6C4FBAAC6229E6362342EA646440CEBE4DF02
                                  BFE0AD7F063F69CF18F8EBC3FF000FF53F10F8A759F869612DFF00896D2D341B
                                  A4934E314C627807988BE7CDB95F0B0798184676962541C8D3BF657F1B3FC1DD
                                  0FC25A07C3FF0083FF000152CBC472DE471F816F25D534EB3825D3AEE196EBCA
                                  4B5D2592E4BCAA8863DFB58A48DBD51A33CCFEC9BFB3AFC4EFD9BBC79AF7896E
                                  BC3BE2FD5E2D67C3D2DA69DA45C78C22D5574FBA864E524FB6DC38B48AE1C092
                                  08F4F95205491967843C70EDCF9629B5BE927D37E55CBDD6F7EA9BD36EB5CF27
                                  14D2EB15F2E6F7BF0EB6696BBDD1F65E8BACDA788F47B4D42C2E21BCB1BE852E
                                  2DAE2170F1CF1BA865752382082083E86ACD733F05BE1DFF00C2A2F83FE16F0A
                                  FDA7EDBFF08DE936BA61B8D9B3CF30C4B197DBCE33B738CF19AE9AA2A28A9B50
                                  D8BA6DB8272DC28A28A82CF2397FE529BF09FF00EC9578E7FF004EFE0EAFA92B
                                  E5B97FE529BF09FF00EC9578E7FF004EFE0EAFA92BE8703FC08FCFF33E7B1DFC
                                  797CBF20A28A2BACE40A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
                                  800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
                                  800A28A2800A2BCFFF006B1F8E9FF0CBFF00B2C7C4BF897FD97FDB9FF0AEFC2B
                                  AA789FFB37ED3F66FED0FB15A4B73E479BB1FCBDFE56DDFB1B6EECED38C578A7
                                  FC3547ED27FF004453E077FE1E1D53FF0099AAA8C252D80FAAE8AF953FE1AA3F
                                  693FFA229F03BFF0F0EA9FFCCD51FF000D51FB49FF00D114F81DFF00878754FF
                                  00E66AABD8CFB0ECCFAAE8AF953FE1AA3F693FFA229F03BFF0F0EA9FFCCD51FF
                                  000D51FB49FF00D114F81DFF00878754FF00E66A8F633EC1667D57457CA9FF00
                                  0D51FB49FF00D114F81DFF00878754FF00E66A8FF86A8FDA4FFE88A7C0EFFC3C
                                  3AA7FF0033547B19F60B33EABA2BE54FF86A8FDA4FFE88A7C0EFFC3C3AA7FF00
                                  33547FC3547ED27FF4453E077FE1E1D53FF99AA3D8CFB0599F55D15F2A7FC354
                                  7ED27FF4453E077FE1E1D53FF99AA3FE1AA3F693FF00A229F03BFF000F0EA9FF
                                  00CCD51EC67D82CCFAAE8AF953FE1AA3F693FF00A229F03BFF000F0EA9FF00CC
                                  D51FF0D51FB49FFD114F81DFF878754FFE66A8F633EC1667D57457CA9FF0D51F
                                  B49FFD114F81DFF878754FFE66A8FF0086A8FDA4FF00E88A7C0EFF00C3C3AA7F
                                  F33547B19F60B33EABA2BE54FF0086A8FDA4FF00E88A7C0EFF00C3C3AA7FF335
                                  47FC3547ED27FF004453E077FE1E1D53FF0099AA3D8CFB0599F55D15F2A7FC35
                                  47ED27FF004453E077FE1E1D53FF0099AA3FE1AA3F693FFA229F03BFF0F0EA9F
                                  FCCD51EC67D82CCFAAE8AF953FE1AA3F693FFA229F03BFF0F0EA9FFCCD51FF00
                                  0D51FB49FF00D114F81DFF00878754FF00E66A8F633EC1667D57457CA9FF000D
                                  51FB49FF00D114F81DFF00878754FF00E66A8FF86A8FDA4FFE88A7C0EFFC3C3A
                                  A7FF0033547B19F60B31BA67FCA55FE32FFD930F02FF00E9CFC5D5ECB5F11F83
                                  FE2C7ED0BE22FF00828D7C56D42DFE157C1A1AC4DF0EFC1B1DD59C9F14B5216D
                                  040BA8F8A3C991271E1F2D23BB19C3A1890208E321E43232C5ECBFF0B0BF69BF
                                  FA245F027FF0EEEABFFCCD57CDE329C9569267D06166BD944F77A2BC23FE1617
                                  ED37FF00448BE04FFE1DDD57FF0099AA3FE1617ED37FF448BE04FF00E1DDD57F
                                  F99AAE6E47FD347473AFE933DDE8AF08FF008585FB4DFF00D122F813FF008777
                                  55FF00E66A8FF8585FB4DFFD122F813FF877755FFE66A8E47FD341CEBFA4CF77
                                  A2BC23FE1617ED37FF00448BE04FFE1DDD57FF0099AA3FE1617ED37FF448BE04
                                  FF00E1DDD57FF99AA391FF004D073AFE933DDE8AF973E34FED4BFB43FC0AF07D
                                  9EB7ABFC1BF831716B7BAF68DE1E8D2CFE2D6A6F20B8D5353B5D32DD886F0EA8
                                  F2D66BB8D9CE72115C8562029EB3FE1617ED37FF00448BE04FFE1DDD57FF0099
                                  AA7ECDEFFAA0F68B6FD19EEF457847FC2C2FDA6FFE8917C09FFC3BBAAFFF0033
                                  547FC2C2FDA6FF00E8917C09FF00C3BBAAFF00F3354B91FF004D073AFE933DDE
                                  8AF08FF8585FB4DFFD122F813FF877755FFE66A8FF008585FB4DFF00D122F813
                                  FF00877755FF00E66A8E47FD341CEBFA4CF77A2BC23FE1617ED37FF448BE04FF
                                  00E1DDD57FF99AA3FE1617ED37FF00448BE04FFE1DDD57FF0099AA391FF4D073
                                  AFE933DDE8AF08FF008585FB4DFF00D122F813FF00877755FF00E66AB93F873F
                                  B52FED0FF13BC61E3DD12C3E0DFC188AEBE1D6BD1787B527B8F8B5A9AC73DC49
                                  A6586A6AD095F0E92D1F93A8C0A4B053BD641B701599FB37FD341ED17F499F51
                                  D15E11FF000B0BF69BFF00A245F027FF000EEEABFF00CCD51FF0B0BF69BFFA24
                                  5F027FF0EEEABFFCCD52E47FD341CEBFA4CF77A2BC23FE1617ED37FF00448BE0
                                  4FFE1DDD57FF0099AA3FE1617ED37FF448BE04FF00E1DDD57FF99AA391FF004D
                                  073AFE933DDE8AF08FF8585FB4DFFD122F813FF877755FFE66A8FF008585FB4D
                                  FF00D122F813FF00877755FF00E66A8E47FD341CEBFA4CF77A2BC23FE1617ED3
                                  7FF448BE04FF00E1DDD57FF99AAE4FE237ED4BFB43FC31F18780B44BFF00837F
                                  0625BAF88BAF4BE1ED35EDFE2D6A6D1C1711E997FA9B34C5BC3A0AC7E4E9D3A8
                                  2A18EF68C6DC16657ECDBFF8741ED12FF8667D47457847FC2C2FDA6FFE8917C0
                                  9FFC3BBAAFFF0033547FC2C2FDA6FF00E8917C09FF00C3BBAAFF00F3354B91FF
                                  004D073AFE933DDE8AF08FF8585FB4DFFD122F813FF877755FFE66A8FF008585
                                  FB4DFF00D122F813FF00877755FF00E66A8E47FD341CEBFA4CF77A2BC23FE161
                                  7ED37FF448BE04FF00E1DDD57FF99AA3FE1617ED37FF00448BE04FFE1DDD57FF
                                  0099AA391FF4D073AFE933DDE8AF08FF008585FB4DFF00D122F813FF00877755
                                  FF00E66A8FF8585FB4DFFD122F813FF877755FFE66A8E47FD341CEBFA4CF77A2
                                  BE5CF809FB52FED0FF00B457C0BF05FC41D13E0DFC18B5D1BC75A0D8F886C21B
                                  EF8B5A9A5D436F776F1DC46B2AA7875944812450C1598020E188E6BACFF8585F
                                  B4DFFD122F813FF877755FFE66A9FB36B4FD507B44F55F933DDE8AF08FF8585F
                                  B4DFFD122F813FF877755FFE66A8FF008585FB4DFF00D122F813FF00877755FF
                                  00E66A9723FE9A0E75FD267BBD15E11FF0B0BF69BFFA245F027FF0EEEABFFCCD
                                  51FF000B0BF69BFF00A245F027FF000EEEABFF00CCD51C8FFA6839D7F499EEF4
                                  57847FC2C2FDA6FF00E8917C09FF00C3BBAAFF00F33547FC2C2FDA6FFE8917C0
                                  9FFC3BBAAFFF003354723FE9A0E75FD266DCBFF294DF84FF00F64ABC73FF00A7
                                  7F0757D495F107C19F10FC4DD7BFE0A9BF0E7FE1637847C09E15F2BE1578D3FB
                                  3FFE11BF175DEBFF006ACEAFE11F37CDF3F4DB1F2B6E23DBB7CCDDB9B3B368DD
                                  F6FD7BF82D28AFEBA9E0635DEB3FEBA0514515D4728514514005145140051451
                                  4005145140051451400514514005145140051451400514514005145140051451
                                  40051451400514514005145140051451401F3FFF00C158BFE5165FB4B7FD92AF
                                  147FE9A2EABF2E3FE0E0EFECA93E2547168DFF00083EA5E3097E0778E7FB73C3
                                  B7BFD9CBA9788F4A5974B7B5F9EE3F789FD9F2A5F6B36FE58323BE8974916D2F
                                  2BAFEA3FFC158BFE5165FB4B7FD92AF147FE9A2EAAE57561E3CC9A1A3E63F0C7
                                  ED2DA97827F6CAD3FE0D68DA0F85748F09E91731F876C7C336562D6FAA596931
                                  E843508FC4916C711A68C972A3455896D8462E80C5DEE1F64AFA3BC31E27D37C
                                  6DE1AD3F59D1B50B1D5F47D5EDA3BDB1BEB29D6E2DAF609143C72C52212AE8EA
                                  C195949041041C1ABD4576A562CF1CFDB4FE3F6A5FB3EF813C3D7963AAF857C2
                                  76BAEEB8BA56A3E2FF0014C0D3E83E0E83EC975702EEF504F6C0A4B35BC3649B
                                  AE60027D4203B9C810CBF2AFC7FF0089FA6FED37FB5CFECC1A0FC52BFF00839E
                                  14D1FC73F0F66F12EA5F0B3E2568CBAB5CDBEAD737BA3471DA886E2EED97FB49
                                  966BCB5B499AD0C9118352022984CF1C3FA1B454B8DC47CE5FF057CFF846BFE1
                                  D73F1F7FE12BFEC3FECBFF00841F54F23FB5BCAFB3FDBFECEFF60DBE67CBE7FD
                                  B3ECFE4E3E7F3BCAD9F3EDAF9FE6FDAAD3F644F809F11FC41F0734DF0ACDF0AF
                                  53F8AB6FA5784F56D396C1BC1BE1AD25BC35A7CD73776C1EFF004ED38DA3EB10
                                  5EDAB62FEDA3FB7DECBF34B719B79BF4368A1C6EEE07E797C7FF008ABA17ED47
                                  FB5CFECC1A2FC43F127C00B0F0CF8F3E1ECDE27BAF87DE308AD3C576D71A95D5
                                  EE8C90A5A4DF6E8AD6E6EE58E6BBB7B0BC8E093022D44A2DC25C3243EC7FF0DE
                                  1E298BFE0A73FF000A56E3C3FA1E9FE1D93FD1ED5EFF0053D3ECF52D4E3FEC9F
                                  ED03AB5A472DFADE5DC02612589820D35E30F04F31BE06096D53EAAA28E5607C
                                  1FA8FED3DF173F6A9FD84BE3F5EF857C61F0E57C7517C3D5D434AF0B7842D6F6
                                  6F19FC3FD5A7B6BE7B9D0F51863BD328D4A211C56F6F708B6D27DAE39D9ACC79
                                  2217FB17E07FC47D37E2D7C26D0B5FD2BC59E15F1D5ADEDB047D7BC3522BE93A
                                  9CF19314F25BED9A70A9E72483679D214DA54BB1524F574534AC33E0FD6FE08F
                                  823E347FC16D7C5EFA3EBBF0E745F167853C21E0EF106B06C74CB793C652CF6F
                                  A86ACCEB05EACEB259A496DFD976D7C1E098DC585E5BC04C2B244E7D1BC0BFB6
                                  EF897C5FF17FE24F87F50BEF03F85EC7C37A67892EA6B8BFB594B7C35FECBBE4
                                  B4B1B9D74B5CC6258355B777D52DC1FB0E2D6D650925CA93729F55514B9447C3
                                  BAAFEDF9FF00083FFC126FE037C54F0A78A7E077C3EFF84AFF00E111D1674BFB
                                  1F33C35A67DB24B7B3BFB4B4863BFB6F27FB3F75C4A6333379516993C6E176B4
                                  B11E34FDB17C4BE33D27E0D78CDBE20F81FC19E1DF879F17B5EF06FC5ABC7495
                                  74A8BFB3EDB58B0592EDFEDB1A69F05D3C56F2456F76D379771AA696DE64C615
                                  5BAFB8A8A395F700AFCF2F12FF00C156FC6F65F01E5F12DCF88FE0E7822E9B5C
                                  F07DADC5E6BFA75C4961E1A9F5BBD9ADB52F0C5E29D4602DACE890C6B7976E64
                                  8498490F65683F7B5FA1B45369BD867957EC7BFB437FC3467C2CD4AF2EEE7439
                                  FC45E11F136B3E0DF10269727EE92FF4BD427B3790C25DDEDBED0914574B6F23
                                  BBC71DD440C928C4AFE55FB537EDA7AD7C05FDB77E1CF81A6F1C7C2BF0FF0085
                                  7C67FD996FFD9F7B669A8F8967BAB8BF96DB6F91FDAB6B71141704DB416F3DBD
                                  95FAA4A2EA4B810C30EE6FAAA8A2CED611F0EF8DFF006FCFF8565F02BF6D3F13
                                  683E29F81D1F8C3E09789A6962B88EC716FA96DD274E7B58353892FC492DF492
                                  ACDA42CE258F74D62AAB0E6136F5B973FF00052BFF008453F66BF8C5AB5FF8BF
                                  E15EBBE28F851A9E8FA70D734F97EC9A2EAD6DAD5AE9973A6EA6B6AF77279303
                                  FF00691863F3AFA3B6B892C9D9EF6CA17925B5FB1AB0FE247C37D17E2E782EF3
                                  C3FE20B2FB76977DB19D16692096192391658678668D9648678A548E58A68996
                                  48A48D2446574560ACFB81F9E577FB51FC3DBEF899FB2EFC54F8BDF117F6644F
                                  8917DE2FD4A74D7B41BAD3EC27D3BC2C740F12DB410DC5D36A179B905F0D9298
                                  AE5ED16F1CC31BCCD189A5F7FF00F86F0F14C5FF000539FF00852B71E1FD0F4F
                                  F0EC9FE8F6AF7FA9E9F67A96A71FF64FF681D5AD2396FD6F2EE013092C4C1069
                                  AF18782798DF0304B6A9EFFF00083E0AF87BE05F86A7D2FC3B6D7C91DE5CB5ED
                                  E5DEA3A9DD6ABA8EA539548FCDB9BCBA925B8B871147144AD2C8E5628628D484
                                  8D157ABA4A2C0F24F833FF002927F8C1FF0064D3C11FFA74F1757D0F5F3C7C19
                                  FF009493FC60FF00B269E08FFD3A78BABE87AF8FCD3FDEA7FD743DFC17F057F5
                                  D428A28AF3CEA0A2A85C78A74CB4F13DA6892EA36116B3A85ACF7D6B60F7082E
                                  AE6DE0785279923CEE68E37B8B7576030A6788120BAE6FD00145145007847FC1
                                  45FF00E4DFFC3FFF00653FE1EFFEA69A257BBD7847FC145FFE4DFF00C3FF00F6
                                  53FE1EFF00EA69A257BBD5BF817CFF00423ED3FEBB851451505851583F133E29
                                  7867E0B7822F7C4DE31F11E85E13F0DE9BE5FDB355D66FE2B0B1B5F32458D3CC
                                  9A56544DD23A20C91967503922AFF85BC53A678E7C31A76B7A26A361AC68DAC5
                                  AC57D617F63709716B7D6F2A078E68A44255E37465656524104107069EBB8AFD
                                  0BF4514521857847EC8BFF002701FB527FD94FB2FF00D42FC2F5EEF5E11FB22F
                                  FC9C07ED49FF00653ECBFF0050BF0BD5C767FD75444B75FD743DDE8A28A82C28
                                  A2B92D23E3DF817C41F17754F87D61E34F09DEF8F743B55BED4BC356FABDBC9A
                                  BE9F6EC222B34D6AAE668E3227808665031347CFCCB97A8AE75B451452185784
                                  7ED75FF2701FB2DFFD94FBDFFD42FC515EEF5E11FB5D7FC9C07ECB7FF653EF7F
                                  F50BF1455C37FBFF002227B7DDF99EEF451454161451543C53E29D33C0DE18D4
                                  75BD6F51B0D1F46D1ED65BEBFBFBEB84B7B5B1B7890BC934B2390A91A22B3333
                                  10000493814017E8A28A0028A28A00F08FF825B7FCA327F674FF00B261E1AFFD
                                  355B57BBD7847FC12DBFE5193FB3A7FD930F0D7FE9AADABDDEAE7F13229FC082
                                  8A2A878A7C53A6781BC31A8EB7ADEA361A3E8DA3DACB7D7F7F7D7096F6B636F1
                                  217926964721523445666662000092702A0B2FD15C27C14FDA97E197ED2BFDA7
                                  FF000AE7E22F813C7FFD8BE57F687FC237AFDA6ABF60F377F95E6F9123F97BFC
                                  B936EEC6EF2DB19DA6BBBA6D35A31269EA828A28A433C8E5FF0094A6FC27FF00
                                  B255E39FFD3BF83ABEA4AF96E5FF0094A6FC27FF00B255E39FFD3BF83ABEA4AF
                                  A1C0FF00023F3FCCF9EC77F1E5F2FC828A28AEB39028A28A0028A28A0028A28A
                                  0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
                                  0028A28A0028A28A0028A28A0028A28A00F9FF00FE0AC5FF0028B2FDA5BFEC95
                                  78A3FF004D175572A9FF00C158BFE5165FB4B7FD92AF147FE9A2EAAE576613A9
                                  510A28A2BB0A0A28A2800A28A2800A2BE0FF000BFF00C1C23F077C5DE044D7ED
                                  BC3FE2A8ED65B9D22D905C6BFE1586343A95A6A977079F72DAC8B5B3758F48B9
                                  1241773433A3C902F944C8057BFDEFFC141BC01A3FC0AF879F112FC6B965E1DF
                                  887E1997C651836627BBD0F4687497D52E2FEF6085DDD608504103BC42502E6F
                                  6D2219332130A717B08F71AF98FF00E0A3DF123C45F0C358F8312E93E3FF0088
                                  DE08D1FC49E2FB9F0FEB8BE0CF0BDAF88B51BD81B44D4EFA268ED5F4DBF9D9D2
                                  7D3E119862C08A6B82E080AF17B8FC3CF8BFA6FC4AF1778EF46B182FA2BAF87D
                                  AE45E1FD45A74558E69E4D36C7520D090C4B2793A842A4B053BD6418C00CD87F
                                  177C03E08F1BFC59F87CDE2DF86D63E2DD4B4FB9B9B9F0F7886EFC3D6FA9C7E1
                                  6BD884570B899834B64F28837A4E1562DF68A8D2A4AF6D1CADEAB419E1DA9FC4
                                  6F8D7AAF8EFE135B78D353F157C2FBAD4343F0BDF5FDAF843C15FF00093E93AB
                                  EB92DDB1F10693A8CD1C1786C2D22852D62B7BAFB4DB2AFDB6794CD7420658BE
                                  AAF0F78860F13D849736D1DF471C773716845DD94D69217826785C8495558A16
                                  8D8A4806C910AC88CE8EAC4F13F89F4DF04F86B50D6759D42C748D1F48B692F6
                                  FAFAF675B7B6B282352F24B2C8E42A222A966662000092702BC0341FF82B8FEC
                                  D9ADF8D35ED124F8DBF0AF4F9B43FB3C897575E31D2C596A90CD196596DA75B8
                                  646DAE9344F13159A36883346229ADE598DB7623E8DA2BE47F855FF0597F865F
                                  17BF6D77F813A6E8BE2A87C589AE6A5E1FFB54D77A335B79F63FDA825630C57E
                                  F7A887FB22EB05ED94A892D1A411ADD40CFEE3A57ED4FE13BBF80FE2DF8937D3
                                  5F68DE13F045CF8820D62E6EED8BC96C9A25EDE59DECC2387CC674DD6533A050
                                  5D90AFC818EC02927B01E8F457CE5F0CBFE0A91F0C7E2E785F59D4347B6F1C45
                                  71E1FF0013699E18BFD3754F0CDDE937B0C9A8F8865F0FDA5C84BB5895E06BC8
                                  272DB58C912C12A491A4E8D00FA369A69EC30A28A29805145140051451401E49
                                  F067FE524FF183FEC9A7823FF4E9E2EAFA1EBE78F833FF002927F8C1FF0064D3
                                  C11FFA74F1757D0F5F179A7FBD4FFAE87BD82FE0AFEBA8514515E79D47CD7F10
                                  2CF4FD37FE0AD9F0C75587C29AEB5FDD7C30F12689A8F88ED7C297B2D8AF99A9
                                  68F75616773AA4701B74C0B2D55D229661B19CF0AD751097E94A28AA6EF6252B
                                  5C28A28A928F08FF00828BFF00C9BFF87FFECA7FC3DFFD4D344AF77AF08FF828
                                  BFFC9BFF0087FF00ECA7FC3DFF00D4D344AF77AB7F02F9FE847DA7FD770A28A2
                                  A0B3C23F6F5F1A47F0D7C25E08F1141E11D77C4DE24D27C503FE11FBFD3FC3FA
                                  B6BF6FE13BB9B4DD42DA4D52F2CB4B57BAB8812D27BB8844ABB659AE6DE3692D
                                  83FDAE0EB7F644D0BC39E1FF00803A4A785878B1B4CBCBABFD4A7B8F13E8F75A
                                  3EAFA85F5CDF5C5CDF5DDCDA5CC16F24324F792DC4DB1608A2C4A3C98D21F2D4
                                  7A55157CDEED88E5F7AE14514541615E11FB22FF00C9C07ED49FF653ECBFF50B
                                  F0BD7BBD7847EC8BFF002701FB527FD94FB2FF00D42FC2F571D9FF005D5112DD
                                  7F5D0F77A28A2A0B0AF93757B3FF0084C3F6DBF86B61E1CF0A78EF4AB3F02F8A
                                  357D535BD0B50F0A7F6778634AF3EC35B56F1259EA50C0B05E5FDE4FA8C11981
                                  6FAE3F75A9DC492D945750CD2DB7D6545546562651B851451525057847ED75FF
                                  002701FB2DFF00D94FBDFF00D42FC515EEF5E11FB5D7FC9C07ECB7FF00653EF7
                                  FF0050BF1455C37FBFF2227B7DDF99EEF4514541615F1F7FC16CFF0067BF1D7E
                                  D13FB13F8A34EF0869361E2DB5D3741D72EEF7C2F24F710CFAD5C1D26EE1B378
                                  962B7B917925B4D2FDA21B1686332DE456132DD5B9B5D93FD83455C25CB2E644
                                  CE3CD1E5660FC2DF15DDF8F3E1978735CBFD3FFB26FF0059D2EDAFAE6C76DCAF
                                  D8E59625778B17305BDC0DA58AE26B7865E3E78A36CA0DEA28A9185145148678
                                  47FC12DBFE5193FB3A7FD930F0D7FE9AADABDDEBC23FE096DFF28C9FD9D3FEC9
                                  8786BFF4D56D5EEF573F89914FE0415C27ED49F0CED3E34FECC9F117C1D7F65A
                                  EEA561E2CF0C6A7A35CD9E8935B43A9DD4573692C2F1DABDCB2DBA4EC1C88DA6
                                  611072A5C85C9AEEE8A94ECEE53D558F9E7F620F1D78BFC5BE27F18C17BAEFC4
                                  AF18F80ACED74E9347F1078FFC203C2DAECBA9BBDE0D42CC5A7D834E2D690C31
                                  E9924737D930D25DDCA89E5F2CC707D0D4514E4EEEE28AB2B0514515251E472F
                                  FCA537E13FFD92AF1CFF00E9DFC1D5F5257CB72FFCA537E13FFD92AF1CFF00E9
                                  DFC1D5F5257D0E07F811F9FE67CF63BF8F2F97E4145145759C81451450014514
                                  50014514500145145001451450014514500145145001457CBFE3FD33E207C71F
                                  DBEBC6FE0AD23E33FC40F867E19F07FC3FF0BEB76F67E18D37C3F37DAEF351D4
                                  7C470DC4B349A969B7927FABD32D5555191461CE096CD741FF000C6DF117FE8E
                                  C7E3FF00FE0A3C11FF00CCF5007D01457CFF00FF000C6DF117FE8EC7E3FF00FE
                                  0A3C11FF00CCF5798784FE10FC5AD77F6D0F1F7C3A97F6A9F8DEBA27857C15E1
                                  AF125A4E9A278285D4971A95F7882DE74918E8050C6A9A55B94010105E5CB302
                                  A1403ECFA2BE7FFF008636F88BFF004763F1FF00FF00051E08FF00E67A8FF863
                                  6F88BFF4763F1FFF00F051E08FFE67A803E80A2BE7FF00F8636F88BFF4763F1F
                                  FF00F051E08FFE67A8FF008636F88BFF004763F1FF00FF00051E08FF00E67A80
                                  3E80A2BE7FFF008636F88BFF004763F1FF00FF00051E08FF00E67A8FF8636F88
                                  BFF4763F1FFF00F051E08FFE67A803E80A2BE7FF00F8636F88BFF4763F1FFF00
                                  F051E08FFE67A8FF008636F88BFF004763F1FF00FF00051E08FF00E67A803E80
                                  A2BE7FFF008636F88BFF004763F1FF00FF00051E08FF00E67A8FF8636F88BFF4
                                  763F1FFF00F051E08FFE67A803E80A2BE7FF00F8636F88BFF4763F1FFF00F051
                                  E08FFE67A8FF008636F88BFF004763F1FF00FF00051E08FF00E67A800FF82B17
                                  FCA2CBF696FF00B255E28FFD345D55CAF04FF829AFEC9FE3CF0E7FC136FF0068
                                  3D42F3F69BF8DFAF5A587C35F11DC4FA65FE97E0F4B5D45134BB966825683428
                                  A611B80558C5246E031DAEAD861EA5FF000EECF157FD1D27C7FF00FC16F82FFF
                                  0099FADE85550BDC699D4D15CB7FC3BB3C55FF004749F1FF00FF0005BE0BFF00
                                  E67E8FF877678ABFE8E93E3FFF00E0B7C17FFCCFD747D6A03B9D4D15CB7FC3BB
                                  3C55FF004749F1FF00FF0005BE0BFF00E67E8FF877678ABFE8E93E3FFF00E0B7
                                  C17FFCCFD1F5A805CEA6A8F89FC4FA6F827C35A86B3ACEA163A468FA45B497B7
                                  D7D7B3ADBDB59411A97925964721511154B3331000049381589FF0EECF157FD1
                                  D27C7FFF00C16F82FF00F99FA3FE1DD9E2AFFA3A4F8FFF00F82DF05FFF0033F4
                                  7D6A0173F07BC11FB5478B346F12FC3DD2B5FF008DB7D75743C217675E74F8C8
                                  2EADAE75289B4C4F31E78FE2441133E5EE7610F65BC34856CA4009B2FBBFE1D7
                                  84AEFE3BDB7ECD773E7687F183C51AD7ECF7AAE8FAF43A97C45B99740D7EEAC7
                                  55F082DFC73DF59FDB619774E6F23B968E2956F427D9EE0C90F0BF725C7FC131
                                  758BBF12DA6B32FED27F1C64D62C2DA7B2B5BE7D1BC126E6DA09DA179A2493FE
                                  11EDCA9235BC0CEA0E18C11920945C171FF04C5D62EFC4B69ACCBFB49FC71935
                                  8B0B69ECAD6F9F46F049B9B6827685E68924FF00847B72A48D6F033A83863046
                                  48251718AAB142B9F1C7FC13A7F662FF00841FF6C4F8B9AA7FC33AFECE5E0EFF
                                  00846FC7296BFDB1E1ED4BCDD4BC2BE6784F476FB369ABFD8B6FBE097ED1BE43
                                  E75B61EF6EFF0076FB774FDC7C77FD973E037C6FF8FDA97C3EF0E7C28F81D27C
                                  44D63ED1AC78B3C517DE0DD1EF6F7468D8C125C491ACF03FDB35593ED96CFB64
                                  5923B65BC82E6EC32CD696B7FF0047E93FF04C5D6340BFD4EEAC7F693F8E3657
                                  5ADDCADEEA3341A37826392FE75862804B330F0F032388608630CD93B218D738
                                  50072BE3DFF8227E81F157C169E1BF147C61F88FE24F0EC7A9CDAD2697AA7843
                                  C037964B7F34934935D8864F0E3209DDEE2E19A4C6F669E52492ED9AF6F0B587
                                  747867FC14CFF665F09FC20FF824A7893E1A7C3DF86D62FA6E8FA1DD691E14B0
                                  B2D48E9A745BC9ED2E608A58A60C6EA7BBBA9277B4586212CDA84FA90B79B315
                                  DDCCABF397C65FF828378DF52FDBB74FB5D43E25D8FC33F0CD95CEACFAB49657
                                  771733D9E93A15CFC4DB3B9BBB6D1D8491DD3B5A6996724B3BEF8E2BCB7D359A
                                  D2E50A409FA01F0DFF00E089FA07C1BD26CEC3C21F187E23F856C74ED4DF5AB4
                                  B7D1FC21E01B18AD6FDED9AD5EEE358BC38A1676B77784C800731B3213B49154
                                  749FF8214783740F84DA9F806C7E28F8E6CBC0BADDCADEEA3E1C83C11F0FE3D2
                                  6FE7531112CD6A3C362291C1821219949FDCC7CFCA309D78F40B9F9E1F13340B
                                  EFD927F6F6F8D1F16B4286C751B5F06687AF789F45B5D5ED757D2EDACB5E4B3F
                                  195FECFB0EA3E218A5B94944D7CCB7963A75CD95C0935136AB6463BB9EBB9F84
                                  1F0EBC27F16BE0EFED77F0D746BEF801F1F6D7C4DA1DBF8B75AF12781F4A3A75
                                  CEA779ACEADE20BAB882E2E2D7FB6E59EEF4E1109AC02DBCB32168102312243F
                                  726A9FF044FD035CFB67DB7E30FC47BCFED0F3FED5E7F843C0327DA7CFFB7F9F
                                  BF3E1C3BBCCFED4D4F7E73BBFB46EF39F3E5DD7BE20FFC11DECBE2D586B16BE2
                                  AF8E5F157C4D6BE21B6B5B2D561D5BC2FE04BD8F5382D66927B68A7593C3AC25
                                  486696592357C84791D9402C49156885D1F939FB0BFEC9BE17D1BF669F8BBE3E
                                  D6BC07E15BFD4B41D73C3ADA95815D2EFC5C87D6A4D5751F04C9A547A3E9F1C9
                                  AC8B4D46D6CCDACA93C0FA93E991C06CE5D3A28ACBF587F614F047FC2B2FD88B
                                  E0E786FF00B5F43F107FC23FE07D134DFED4D16EBED7A6EA5E4D8411FDA2DA6C
                                  0F360936EE47C0DC8CA70334ED1BFE08EF65E1DBFD1AEB4FF8E5F156C6EBC396
                                  D6B65A4CD6FE17F0245269705B437305B45032F8741892186F6F238D530112EE
                                  755004AE0EE7863FE098BAC7827C35A7E8DA37ED27F1C748D1F48B68ECAC6C6C
                                  B46F04DBDB59411A848E28A34F0F05444550AAAA000000060538568442E8EDE8
                                  AE5BFE1DD9E2AFFA3A4F8FFF00F82DF05FFF0033F47FC3BB3C55FF004749F1FF
                                  00FF0005BE0BFF00E67EB4FAD402E7534572DFF0EECF157FD1D27C7FFF00C16F
                                  82FF00F99FA3FE1DD9E2AFFA3A4F8FFF00F82DF05FFF0033F47D6A0173A9A2B9
                                  6FF877678ABFE8E93E3FFF00E0B7C17FFCCFD1FF000EECF157FD1D27C7FF00FC
                                  16F82FFF0099FA3EB500B9C6FC19FF009493FC60FF00B269E08FFD3A78BABE87
                                  AF913E1CFEC3BE2A4FF828D7C56D261FDA4BE37DBCF69F0DFC197726A49A7784
                                  4DD5DACBA9F8AD1609036866111C461664291AB93712EF7702258FDC7FE1823C
                                  69FF004753F1FF00FF00057E0AFF00E67EBE7B19839D6AD2A916ACCF4F0F8EA7
                                  4E9A834CF4AA2BCD7FE1823C69FF004753F1FF00FF00057E0AFF00E67E8FF860
                                  8F1A7FD1D4FC7FFF00C15F82BFF99FAE6FECDABDD7F5F236FED2A5D9FF005F33
                                  D2A8AF35FF008608F1A7FD1D4FC7FF00FC15F82BFF0099FA3FE1823C69FF0047
                                  53F1FF00FF00057E0AFF00E67E8FECDABDD7F5F20FED2A5D9FF5F33D2A8AF35F
                                  F8608F1A7FD1D4FC7FFF00C15F82BFF99FA3FE1823C69FF4753F1FFF00F057E0
                                  AFFE67E8FECDABDD7F5F20FED2A5D9FF005F3392FF00828BFF00C9BFF87FFECA
                                  7FC3DFFD4D344AF77AF923FE0A03FB13F8BBC37F02741B89FF00693F8DFACA49
                                  F127C056A2DEF34EF08AC71BCDE30D1A149C187438DBCC859C4A80B142F12091
                                  248CBC6DEDBFF0C11E34FF00A3A9F8FF00FF0082BF057FF33F55FD9D5796D75F
                                  D7C85FDA34EF7B3FEBE67A5515E6BFF0C11E34FF00A3A9F8FF00FF0082BF057F
                                  F33F47FC30478D3FE8EA7E3FFF00E0AFC15FFCCFD4FF0066D5EEBFAF90FF00B4
                                  A9767FD7CCF4AA2BCD7FE1823C69FF004753F1FF00FF00057E0AFF00E67E8FF8
                                  608F1A7FD1D4FC7FFF00C15F82BFF99FA3FB36AF75FD7C83FB4A9767FD7CCF4A
                                  A2BCD7FE1823C69FF4753F1FFF00F057E0AFFE67E8FF008608F1A7FD1D4FC7FF
                                  00FC15F82BFF0099FA3FB36AF75FD7C83FB4A9767FD7CCF4AAF08FD917FE4E03
                                  F6A4FF00B29F65FF00A85F85EBADFF008608F1A7FD1D4FC7FF00FC15F82BFF00
                                  99FAF12FD94FF627F176B1F1DBF697B78BF693F8DFA7BE95F126CED66B8B7D3B
                                  C2264D51CF83FC35309E612686EA240B2AC4044B1A6C823250C864924A597554
                                  9EABFAF909E634DB5A3FEBE67D6F4579AFFC30478D3FE8EA7E3FFF00E0AFC15F
                                  FCCFD1FF000C11E34FFA3A9F8FFF00F82BF057FF0033F53FD9B57BAFEBE43FED
                                  2A5D9FF5F33D2A8AF35FF8608F1A7FD1D4FC7FFF00C15F82BFF99FA3FE1823C6
                                  9FF4753F1FFF00F057E0AFFE67E8FECDABDD7F5F20FED2A5D9FF005F33D2A8AF
                                  35FF008608F1A7FD1D4FC7FF00FC15F82BFF0099FA3FE1823C69FF004753F1FF
                                  00FF00057E0AFF00E67E8FECDABDD7F5F20FED2A5D9FF5F33D2ABC23F6BAFF00
                                  9380FD96FF00ECA7DEFF00EA17E28AEB7FE1823C69FF004753F1FF00FF00057E
                                  0AFF00E67EBC4BF6ACFD89FC5DA3FC76FD9A2DE5FDA4FE37EA0FAAFC49BCB586
                                  E2E34EF088934B71E0FF0012CC678447A1A2990AC4D1112AC89B2790841208E4
                                  8DC72EAA9EEBFAF9132CC69B5B3FEBE67D6F4579AFFC30478D3FE8EA7E3FFF00
                                  E0AFC15FFCCFD1FF000C11E34FFA3A9F8FFF00F82BF057FF0033F4BFB36AF75F
                                  D7C8AFED2A5D9FF5F33D2A8AF35FF8608F1A7FD1D4FC7FFF00C15F82BFF99FA3
                                  FE1823C69FF4753F1FFF00F057E0AFFE67E8FECDABDD7F5F20FED2A5D9FF005F
                                  33D2A8AF35FF008608F1A7FD1D4FC7FF00FC15F82BFF0099FA3FE1823C69FF00
                                  4753F1FF00FF00057E0AFF00E67E8FECDABDD7F5F20FED2A5D9FF5F33D2A8AF3
                                  5FF8608F1A7FD1D4FC7FFF00C15F82BFF99FA3FE1823C69FF4753F1FFF00F057
                                  E0AFFE67E8FECDABDD7F5F20FED2A5D9FF005F3392FF00825B7FCA327F674FFB
                                  261E1AFF00D355B57BBD7C91FF0004D0FD89FC5DE2BFF8270FECFF00AA5B7ED2
                                  7F1BF42B7D4BE1B7876EA2D36C34EF08B5AE9C8FA5DB3082233E872CC634042A
                                  996491F0A373B3658FB6FF00C30478D3FE8EA7E3FF00FE0AFC15FF00CCFD3965
                                  D55B6EEBFAF9131CC69A8A567FD7CCF4AA2BCD7FE1823C69FF004753F1FF00FF
                                  00057E0AFF00E67E8FF8608F1A7FD1D4FC7FFF00C15F82BFF99FA5FD9B57BAFE
                                  BE457F6952ECFF00AF99E954579AFF00C30478D3FE8EA7E3FF00FE0AFC15FF00
                                  CCFD1FF0C11E34FF00A3A9F8FF00FF0082BF057FF33F47F66D5EEBFAF907F695
                                  2ECFFAF99E954579AFFC30478D3FE8EA7E3FFF00E0AFC15FFCCFD1FF000C11E3
                                  4FFA3A9F8FFF00F82BF057FF0033F47F66D5EEBFAF907F6952ECFF00AF999B2F
                                  FCA537E13FFD92AF1CFF00E9DFC1D5F5257C6FE02F809AD7C0FF00F82A6FC32F
                                  ED7F8A9F103E267F69FC2AF1B793FF00093DAE8907F66F97ABF8437793FD9BA7
                                  D9E7CCDE3779BE67FAB4DBB3E6DDF6457A986A6E9D35091E5E26A2A951CE2145
                                  1456E60145145001451450014514500145145001451450014514500145145007
                                  CFFF000E7FE529BF193FEC95780FFF004EFE33AF40F8E9FB58FC2CFD97FF00B2
                                  FF00E165FC4BF007C3BFEDCF37FB37FE127F10DA691FDA1E56CF37C9FB4489E6
                                  6CF363DDB73B7CC4CE370AF3FF00873FF294DF8C9FF64ABC07FF00A77F19D701
                                  FF00055BD4AF20F16FECEA2C6F3E2FE85FD95F102F35BBFF00107C3DF02DD78A
                                  AFF41B34F0D6B7646568D34DD4204F32E350B5802CD03332CF23463F74F24401
                                  F5FD7CFF00F0E7FE529BF193FEC95780FF00F4EFE33AEC3F622F03EABF0C3F62
                                  FF00845E1AD77C37A7F8375BF0F782B46D3350F0FD85CBDD5AE85710D8C31CB6
                                  714AF34EF2470BAB46AED34A582026472771E3FE1CFF00CA537E327FD92AF01F
                                  FE9DFC67401F287C51FD97FC03FB4CFF00C1C1F72D607E085D6A5E00F0FF0082
                                  FC5FE31D3AE74EB67F184F71672788DED6E2D2EE36FB45B4905C1F0C3DCA9553
                                  3DA9B04798418B6BBD08FF00E0A39E16F157C62B5F82DFB59F8BFF006604F0FD
                                  F695E2D87C5BE1EF12D843A4793A8E8DE27B48345B89ADB52D42E123B7D4B4C9
                                  E1BFB78258D9CFD9BCF8A79626013F47E8A00FCA0F1FFC59F805F15FFE0D65D1
                                  7FE129F12FC20F12FF00C235F0560D0B48FED5D474EBCFECAF1941E116F22CED
                                  FCC66F2B588F736C893172BB8E00C9AFD3FF0085BF167C2DF1C7C0963E29F057
                                  897C3FE30F0CEA9E67D8F57D13518750B0BBF2E468A4F2E7899A37DB223A1DA4
                                  E19181E4115D051401F9C1E18F127ECB3E0EFF0082B87C79D5FC35AFFECC1E14
                                  F89BA57C3FD3AF2C75BBA8F4892E746F10C773E307D7AEA658E68276B88ADC40
                                  FA8059A298C0ABE7488BB5867FC19FF82C778CBE21FEC7BA96BB7DE3EFD9C2DB
                                  E20CDF0D7C29F1574ED42790697A1C165A9EA771A7EA9A51B7BAD5D44F79613D
                                  9496C269350B485EF350B3826167B5A47FB7FC35FB5EF837C57F1964F065ACDA
                                  8091EEEE74AD3F5992D4AE8DADEA968246BFD2ED2EB3B26BCB448D9A58C704C5
                                  7691B49269FA825A67FC62FDBA3E1FFC0EF8A72F82B574F881AA789ADF4AB5D6
                                  EE2CFC31F0FBC41E27FB259DCCD730DBCB349A6D95C471799259DD2AABB2B1F2
                                  1CE31CD007CC1E34FF00829778A53F658FD9DBE22E97F19FE00787BC3FF143C5
                                  7AA7853C4FE30F13F84E68B42D3A782D357B843084F100813CAB8D224B1675BF
                                  BA82EA49D26B79FCAD8B2E878DFF00E0AADF10FC35F1F7F678F0E5FF00C34D3F
                                  C0F69F16BC3FE1BD5B53D3BC53ABD869975F6DD5EE5ADEF34AB69AFEF6C666BC
                                  D2408E6960B6B0BF9AE4DCC10345A7B4B14D2E86BFFB6DFECE7FB57FC5DF854D
                                  E30D2BE3FF0085FE26F82BFE2B0F0F786751F07F8DBC3D7FA65E3E9B7F70D1CD
                                  6F6B0A5ADF5C35A69DAB429116B95B8582FE183CE5925493A0D7BFE0B93F013C
                                  37F14E0F095D8F8BF0EA0DE64372F27C25F1445FD9F7826D26286C6585EC05CF
                                  DA276D6B4EF2D52265FF0049803B235CDAACE017FE08FED65E3EF8F3FB4AF8FF
                                  00C1F6BE36F821E1CBBD16D3C49676DE05BDB3B9B8F1B7866E2CB528AC74BD5E
                                  F6DC5F466EF4BBD8375F604364562BDB048E79964FB41F20D1BF6B2D57C17FF0
                                  6EBEADE30F14F8DBE1878CFE20FC3CF86ABA6F8D20F19D9BEA364FACC56317DA
                                  3C37AE5AC97C263AA4A258EC678E699647BAB8DE6DC7982D4FDDFF000B7E25E9
                                  DF183C0963E22D26DBC4169A7EA3E679516B7A0DF6877E9B2468CF99677B0C37
                                  317CC848F3235DCA55972ACAC7A0A00F93FF006F0FF82816ABF003C2BE0AD77C
                                  00FE0FD7744F14F87F52F13E93A85C97BEB5F1E5C5B2593E9FE16D2658268D0E
                                  A9ACA5DCAD672A1B938B198A59DD827CBE03E1C7FC1527558BF6E4F13F81FC47
                                  F107E086BBE0EB5F8C1FF0A8ECED74781F4ED5B47B8B9F0F4BACD8CF777326A3
                                  7114B235DDB5DE8DF6716F019AEE19191D1E37B4AFBBE8A00F9FFF00E0AC5FF2
                                  8B2FDA5BFEC9578A3FF4D1755F4057CFFF00F0562FF94597ED2DFF0064ABC51F
                                  FA68BAAFA02800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
                                  8A2800A28A2800A28A2800A28A2800A28A2803E7FF00873FF294DF8C9FF64ABC
                                  07FF00A77F19D7D015F3FF00C39FF94A6FC64FFB255E03FF00D3BF8CEBE80A00
                                  28A28A0028A28A0028A28A00F9FF00FE0A59FF0026EBE1CFFB2ABF0E3FF537D0
                                  ABE80AF9FF00FE0A59FF0026EBE1CFFB2ABF0E3FF537D0ABE80A0028A28A0028
                                  A28A0028A28A002BE7FF00D8DFFE4E2BF6B1FF00B2AB63FF00A847852BE80AF9
                                  FF00F637FF00938AFDAC7FECAAD8FF00EA11E14A00FA028A28A0028A28A0028A
                                  28A002BE7FFDB23FE4E2BF64EFFB2AB7DFFA8478AEBE80AF9FFF006C8FF938AF
                                  D93BFECAADF7FEA11E2BA00FA028A28A0028A28A0028A28A0028A28A00F9FF00
                                  FE093BFF0028B2FD9A7FEC95785FFF004D16B5F4057CFF00FF00049DFF009459
                                  7ECD3FF64ABC2FFF00A68B5AFA02800A28A2800A28A2800A28A2803E7FF88DFF
                                  00294DF837FF0064ABC79FFA77F0657D015F3FFC46FF0094A6FC1BFF00B255E3
                                  CFFD3BF832BE80A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
                                  028A28A0028A28A00F9FFE1CFF00CA537E327FD92AF01FFE9DFC675F4057C81E
                                  2DF11FC53F0FFF00C1537E287FC2B4F06F803C5BE6FC2AF047F697FC24FE32BB
                                  F0EFD931ABF8BFCAF27ECFA5DFF9DBB326EDDE56CD898DFB8ECEFF00FE163FED
                                  4DFF00446FE007FE1E4D5FFF00998A00FA02BE7FF873FF00294DF8C9FF0064AB
                                  C07FFA77F19D1FF0B1FF006A6FFA237F003FF0F26AFF00FCCC57887807C7DFB4
                                  92FF00C1493E2BCB17C28F820FADBFC35F05A5DDA3FC57D516D60B71AA78B0C1
                                  24738F0E97924776B80F198904622888790CACB1007DDF457CFF00FF000B1FF6
                                  A6FF00A237F003FF000F26AFFF00CCC51FF0B1FF006A6FFA237F003FF0F26AFF
                                  00FCCC5007D015C7FC7EF06DBF8F7E0D78874DBAB2F186A71B5A1B85B1F0AF88
                                  27D0359BF78489920B6BD86EAD1E192478D5326E61460C564711B3D797FF00C2
                                  C7FDA9BFE88DFC00FF00C3C9ABFF00F3315C07ED47F11FE29FFC289D73FE1757
                                  C1BFD903FE1597FA3FF6CFFC26DF192EFF00B0BFE3E22F23ED1F6BF0C791FF00
                                  1F1E4ECDFF00F2D3CBC7CD8A00F97FC2BA67C5BD7BE366B7F06757F0B7ED7FAC
                                  7C32F037857C27ABD97832DE2F845A54D66A6FF5458819EC9EDFECB6EBFD936A
                                  2D1F4EB886F2D65B59A45920616B251FF05ECFD9BF51D63E22FECD30DB787FC4
                                  1E2BF097873553E1EB48B58B4B1F14F9F3C9A1EB5211124DE1EF106B1777062B
                                  08DEEE5B886583F7563208A59BCEBDB0F40F007EC79E16F8AFFDB5FF0008B7EC
                                  57FF0004E0F12FFC235AACFA16AFFD95E3286F3FB2B51836F9F6771E5F849BCA
                                  B88F72EF89F0EBB8640C8AF40D774DF14FED0DA3DC7C1DD4BF676FD883C71A7F
                                  C2AFECFF003FC0F75F14E6D4E1F07EEB575B0DDA7B7859859E6D4C821CC69988
                                  B04F973401F107FC1BADE08F1DEB1E2383C291CBF10341F853A8FC2AF0B5E6B7
                                  A568535BF872DA7BAD4AC75A89754915B40D2AF1BCC5B354FED2D2EF2E2EBCF8
                                  AC77DF6A50AB4961CFFC7ED17E3EF82AD7E295A787741F8BF73A87847FE161F8
                                  43C21A43783351D5AC353D1F50D62495629E093C037F6DAA7F682D8E9D34B717
                                  7AD4B25E33C924B770B5CCE57EEFF0DF80755FD9AFC2BF11B42D23F663FD843C
                                  01A25DF87D2FFC7BA7D9FC4B7D2AD66D1992F1126D5225F0AA21B3291EA0A1AE
                                  07964477201C2C95C7FC2DFD8F3C2DF1C7C0963E29F057EC57FF0004E0F18786
                                  754F33EC7ABE89E328750B0BBF2E468A4F2E78BC24D1BED911D0ED270C8C0F20
                                  8A00FBFF00E16FC34D3BE0FF00812C7C3BA4DC7882EF4FD3BCCF2A5D6F5DBED7
                                  2FDF7C8D21F32F2F669AE65F99C81E648DB542AAE155547415F2FF00C2DD37E3
                                  EFC0EF0258F85BC15FB3B7ECC1E0FF000CE97E67D8F48D13E29EA3A7D85A7992
                                  34B2797045E1658D3748EEE7681967627924D741FF000B1FF6A6FF00A237F003
                                  FF000F26AFFF00CCC5007D01457CFF00FF000B1FF6A6FF00A237F003FF000F26
                                  AFFF00CCC51FF0B1FF006A6FFA237F003FF0F26AFF00FCCC5001FF000562FF00
                                  94597ED2DFF64ABC51FF00A68BAAFA02BE10FF00829AF8FBF692BCFF00826DFE
                                  D0716BBF0A3E0869DA24BF0D7C469A85DD87C57D52F6EAD6DCE97722592281FC
                                  3B0A4B22A6E2B1B4B1862002E80EE1F77D001451450014514500145145001451
                                  4500145145001451450014514500145145001451450014514500145145007CFF
                                  00F0E7FE529BF193FEC95780FF00F4EFE33AFA02BE7FF873FF00294DF8C9FF00
                                  64ABC07FFA77F19D7D01400514514005145140051451401F3FFF00C14B3FE4DD
                                  7C39FF006557E1C7FEA6FA157D015F3FFF00C14B3FE4DD7C39FF006557E1C7FE
                                  A6FA157D0140051451400514514005145140057CFF00FB1BFF00C9C57ED63FF6
                                  556C7FF508F0A57D015F3FFEC6FF00F2715FB58FFD955B1FFD423C29401F4051
                                  451400514514005145140057CFFF00B647FC9C57EC9DFF006556FBFF00508F15
                                  D7D015F3FF00ED91FF002715FB277FD955BEFF00D423C57401F4051451400514
                                  514005145140051451401F3FFF00C1277FE5165FB34FFD92AF0BFF00E9A2D6BE
                                  80AF9FFF00E093BFF28B2FD9A7FEC95785FF00F4D16B5F405001451450014514
                                  500145145007CFFF0011BFE529BF06FF00EC9578F3FF004EFE0CAFA02BE7FF00
                                  88DFF294DF837FF64ABC79FF00A77F0657D01400514514005145140051451400
                                  5145140051451400514514005145140051451401F3FF00C39FF94A6FC64FFB25
                                  5E03FF00D3BF8CEBE80AF9FF00E1CFFCA537E327FD92AF01FF00E9DFC6759FFB
                                  4FE80FF19FF6D0F859F0C755D6FC61A6F83B57F0578AFC517B6DE1BF136A3E1B
                                  BAB9BFB0BEF0E5B5A3B5E69D3C1746348B54BD061F37CA732AB3A33C5132007D
                                  215F3FFC39FF0094A6FC64FF00B255E03FFD3BF8CEBD43F67AD374BD1BE01781
                                  ECF42F16EA1E3FD12D3C3F610E9FE27BFD51355BAF11DBADB4622BF96ED3E4B9
                                  92740B2B4CBC48642C386AF2FF00873FF294DF8C9FF64ABC07FF00A77F19D007
                                  D01451450015F2FF00FC162FF668FF0086C8FD82759F85D25A7882EF4FF1C78A
                                  FC21A56A9FD8917997F6BA73F8A34AFB6DCC7F24817C9B5134C5D919235899D8
                                  6D535EA1E25FDB77E0BF82FE32C7F0EB58F8BBF0C349F88335DDB5847E18BCF1
                                  558C1ACBDC5C88CDBC22D1A513192512C4517665C489B41DC33EA1401F961FB0
                                  EF867E2E7C02FD96FC6FAE5D68FF0013FE1CC9F17BE305BF8FFE206A1A3783A4
                                  D4BC45E1B4D6FC17A5EA97EDA4E99359DDBCD1C7E249174D286D2F1E083ED224
                                  C496F25D45E8163AFF00C79D2FF6E9F0678A350D13C61A1FC41F18FC35F86761
                                  E26F0F693E19FB6F826FAE1758D71BC4D0DD6ABE44F1DAC9A659DECF716AABA9
                                  426695A05C5EEF485FF43E8A00F9BFC2DF1F7C43E15FDBCFE38E87AE49F13F54
                                  F87DA0F82B43F10E8E8DE01BD974CB2BD8FF00B406AD6BA6DE5B5803A848D01D
                                  22516E26BA99A59A74847EEA5861F10F841F1CFE21699FF04E7F8B23E15F83BE
                                  2058FC46D2BE2078935A8ADBC49E08D67C3F32E8FABF8DB52BC37D662F74E737
                                  3711E913CB7491C16B7D224A2147B3B891D6D25FBFE8A00F1FFD82BC77E36F89
                                  3FB27785358F887F378B67FB64574EDA5EA1A6CD2C515E4F15BBCF0DF5869F38
                                  B86B7485A57FB0DAC524A6478618E178947B0567F84FC59A5F8F7C2BA6EBBA16
                                  A5A7EB5A26B56915FE9FA8585C25CDADFDBCA81E29A295094923746565652430
                                  208241AD0A0028A28A00F9FF00FE0AC5FF0028B2FDA5BFEC9578A3FF004D1755
                                  F4057CFF00FF000562FF0094597ED2DFF64ABC51FF00A68BAAFA02800A28A280
                                  0A28A2800A28A2803E4FFF0082816AFF0015742F153DD699F11FC61F083E1A47
                                  E1F223F1AF86346D0B57B5F0C6A85E7596F3C476FA9C52CC74B4074F31BE9E10
                                  443FB4A4BD9ADE048E78E87C6CFF0082C5F86FE045D7C4EB7D53E137C5FBEB9F
                                  853AADED8EA9069CBA14F35D59D968EBACDEEAD0A7F6A061A7C1633E9CCF2CC2
                                  26F3757B0B708D7129853D7FE317EC23F0CFE3DFC5397C63E28D2FC4179AB5E6
                                  956BA16A56F6DE2AD5AC34AD774EB79AE668ACF51D3ADEE63B3BFB7DD7B761A2
                                  BA865474B8951C32315AE7EE3F605D0BE27FC53F8B3E2DF8A3FF0008FF008D35
                                  0F8A1E156F86FB2C3479349FECEF0979D7B2FF006779DF689AE4DC4CD7F2FDA2
                                  E219608E6FB3DA14B785A1DCC01E41F19FFE0A4F2FC77FF827DFED2BAFFC3E1F
                                  103E0E7C4DF835E15D6B5B48757B2D1EEAFED65D366D56D965011EFEC64B7975
                                  0D0B54B3752C65DB6D2BA88D64B6B87F5FFF00878468FF00F0876EFF00840FE2
                                  07FC27FF00F095FF00C213FF000AFB1A5FF6EFF6C7F65FF6CFD9BED1F6DFECBF
                                  F904FF00A7799F6EF2FCBFDD6FFB4FFA3D7411FEC15F09E2F0E7C47D257C298D
                                  3FE2DE957BA278B22FED3BCFF89AD9DE5F6AD7F71167CDCC5BEEB5DD564DD114
                                  65FB56D5216389533F46FD8F7E0F788FE1EEADE06D3C6A17CDA0F8816FF53D4A
                                  DFC67A9CBE2AD3B596B28B6CD36B2B747548EF0E9D3C10866B9121B19A3833F6
                                  6758C8071FF0EBE38EA3F103F6E1F863ABF85FE24F883C4FF08BE35FC2AD6BC6
                                  DA5E8977A658DBD8597D967F0C2595CDAB7D8E2D417CD8754B97923BA9A4F9A5
                                  1848F6055FA03E2C7C52D0BE077C2CF12F8D7C537DFD97E19F07E9575ADEAF79
                                  E4C93FD92CEDA179A797CB8D5A47DB1A336D456638C004E057CFFF001B7F670F
                                  D9B3F666F1DF853E2C78E3C51FF0A9BFE119FB3F87FC373DDFC52D53C2DE1CD3
                                  6248EDD934BB5B017F0E9C96F226996ED259A43E54E2D03491BED26BDC2E7C59
                                  E01F8DDE15B3D0A5D4BC1FE2FD13E22F87E7BFB4D3DEE2DB50B5F13E8CC90A4F
                                  347112C9756652F2DD5D8068C8BA88138917201E5FFF000DE92D8783BCFD5FE0
                                  DFC5FF000FF8C2F7C57FF087E89E0DD460D1D355F135E0D2FF00B55A4B2B95D4
                                  1B4C7B75B24BA90CAF7A8BBEC6E21E675589FCC3F6B2FF0082872788744F8413
                                  7C1CD57C617B1F897C41F0F3C49A96B1A5E9FA7269917863C47AFC1A75B26A09
                                  A905BA11DFC46F8462C626BA865B543335BC6DFBDF6FFF008617F87F2FC2CFF8
                                  442E5FE206A5A7C7AAFF006DDA6A1A8FC41F105EEBBA55E793E4196CB569AF5B
                                  50B3CC26488ADBDC46AD1DC5C210567983E7FC64FF0082727C1EF8E7A768167A
                                  AF86750D1AD3C3369A7D869D0784FC45A9F85238ADF4E9D6E34D85D74BB8B612
                                  C7653AF9B6AB26E16AEF234223691CB0067FFC3CBBE167FC3767FC33CFF6B7FC
                                  5C0FF8F7F2FED569FF001FDFD9FF00DA9F63FB2F9FF6EFF907FF00A47DAFECDF
                                  61FF00963F6AFB4FFA3D7D015E7FFF000CC5E118BE3B7FC2C7B68BC41A6F89A4
                                  F9AED34EF126A565A56AB2FD9FECC2E2F74D8675B1BCB81008E213DC4124AA96
                                  F6EA1C0821D9E81400514514005145140051451401F3FF00C39FF94A6FC64FFB
                                  255E03FF00D3BF8CEBE80AF9FF00E1CFFCA537E327FD92AF01FF00E9DFC675F4
                                  050014515F37F8574DD57C5BFF00050BFDA03C23AC78B7C61A8785356F86BE0E
                                  BBB3D2D3547B08FC3A6EEEBC516975F6092D3C99A0925169148D71E61B80FB76
                                  CAA914091007D21457E607FC1313F6AFF1B7C09FD8DAF759F18DCF883C61E26B
                                  CF855F0F7C55A0F87F52F1ADFF0088BFE127D6BC44D7F6161236ADA8A19AC2E3
                                  54BF86DADE5B211B69FA77971CE93C82E2E4C5F4078F7E2078DBFE0975FB38FC
                                  23F08E89E15F0FFC42D26C34A96D3C63E3FF00106AF7FA0D85BEA71AC124FAAE
                                  A26CB4DD5258BEDF349A8DEDCDF5D6CB685A299EE6EF7CC86400FAFE8A28A00F
                                  9FFF00E0A59FF26EBE1CFF00B2ABF0E3FF00537D0ABE80AF9FFF00E0A59FF26E
                                  BE1CFF00B2ABF0E3FF00537D0ABE80A0028A2BE6FF00DBC3407F1A78ABC15A14
                                  5ADF8C351BED4ED3525D2BC07E18F136A3E15BAD7EFC3D908F55BCD5F4E9E2BA
                                  B3D2F4F89AE16E091244E752B70229EF058DBCC01F48515F9A1F142CFE257C08
                                  FF008280E992EA1F113C61E215F0FF0087FE12DBF89FC403C57A95A5ACDAA6AF
                                  E22D4741BB9EDBC281DB4878F545B68629C33C234F0CD776C93DCAED7FABFF00
                                  670FF8BE7FB53FC4EF8B1FEB7C3FA3E3E19784FCEFDEE3FB32EEE7FB72F60DD8
                                  7B5FB46A6DF609A2D83CDFF8466D67F32689EDFCB00FA028AF9FFF00618FDACF
                                  C6DFB4C7FC25167F103C03E1FF00861E26F0C7D916EBC370F88350D4755B3697
                                  CF0ED3A5D697631B5BF990491C37964F776774F05D086761012DF4050015F3FF
                                  00EC6FFF002715FB58FF00D955B1FF00D423C295F4057CFF00FB1BFF00C9C57E
                                  D63FF6556C7FF508F0A5007D0145145001457E607ED8B26B1F0ABE167C64FF00
                                  8473E27FC40BEF0FF8B7E0078B3E237863C55A6FC4FD5356B9F15DF6950E9175
                                  16B4B246D041A1795717DFBAB5D1B758DFC17B279A90456D6F6CFE81A078F3C6
                                  DA57ECC7F157E0AAEBBE20D1FE26F8A3E207FC2A8F0C243E2CBFF104DE0A9751
                                  F0E586A9717767AFDEF957DA97D874F9F50D643DE7D965F3627D3E060B1DA4B2
                                  007DFF00457CDFF147F687F10FECB9F1F7E1C7C30F0F7C2EF07E8DF09F52B4D3
                                  34AB1F12DD6AF7BA4E99A5BB5CB5A7F65DBC167A55CDA5BC91C62C96DA3BDBAB
                                  14BB96F60B6B66775709F4850015F3FF00ED91FF002715FB277FD955BEFF00D4
                                  23C575F4057CFF00FB647FC9C57EC9DFF6556FBFF508F15D007D014514500145
                                  7C41FF000576FDA77C6DF02BC4FF000BA0D325F881E1DF04AF8AFC337DABEA9E
                                  19F0DEA1AB4DE2195BC57A2DBB69264B182E1A0B736325FB4D14A2DA5BC966D3
                                  EDED5EE835F5B571FF0009F56F16FC3CFF0082B278C23FF8487C603C17ACFC60
                                  97C236A2F3C77AB6BB1CE66F87D078864D2468D78E6CB4FB35B9135E25FDB48D
                                  708F1A5925BA5A4CEE801FA1F457CBFF00B30788B5DF137C13F8AFFB42F86FC3
                                  BFF09A7883E2D79BE24F01E872DFC76936A5A1D9D8241A0D8A5ECC3FD1EDEFFC
                                  A935358E58E31672F882E5648FCD59A493D03F62AFDA4B58FDA83E165FEB9AFE
                                  89E1FF000CEADA7EAB269B3E91A76A1AA5C5CE9FB6186555BD8353D334CBCB3B
                                  865996410CB6A37412DBCCAEE93A9A00F60A28A2803E7FFF00824EFF00CA2CBF
                                  669FFB255E17FF00D345AD7D015F3FFF00C1277FE5165FB34FFD92AF0BFF00E9
                                  A2D6BE80A0028AF0FF00F828A7843C43E3DFD956FF0048F0B78974FF000AEB77
                                  DE20F0EA437379E2FBDF08C77E9FDBB6066D346A9648F756B25F4424B2468559
                                  D9EED14025ABE30F8A9E18D7F5E8FE187813C3567F1034DF1EF87FE355EF837C
                                  55A14BFB47F8D4691ABF9FE06BAD78469AF0DDA83DBAC29A5CCA1ACD3CBB986E
                                  624558E79679C03F4FE8AF8C1FE24DC7ED8BFB23FECC5E003ADEA1E28D4BE397
                                  87F43F18F89F55D474C834D9352F0D69F1E9BA86AD35E5844ED6A63D4259EC34
                                  B9EC63999426BD2B05B882DE646F4FFF0086B3F1B587EDD9FF000AAF57F00F87
                                  FC3FE0FBDF9B44F146A3E20D412E7C4CA34FFB4B2D942BA5B69EF70B325D466C
                                  DF534BCF22C6E2EFC8302AB3807D0145145007CFFF0011BFE529BF06FF00EC95
                                  78F3FF004EFE0CAFA02BE7FF0088DFF294DF837FF64ABC79FF00A77F0657D014
                                  0051451400514514005145140051451400514514005145140051451400514514
                                  01F3FF00C39FF94A6FC64FFB255E03FF00D3BF8CEBD43E35FECF7E01FDA53C2B
                                  6FA17C45F03F83FC7FA25A5DADFC1A7F89346B6D56D61B85474599629D1D0481
                                  249143019024619C31AF9C3C5BFB4B7877F677FF0082A6FC50FEDFD3BE206A1F
                                  DB1F0ABC11E47FC231E04D73C51E5F95ABF8BF779DFD996971E467CC5DBE6ECD
                                  F87DBBB6363BFF00F87967C3AFFA173E3FFF00E189F1BFFF002A6803E80AF9FF
                                  00E1CFFCA537E327FD92AF01FF00E9DFC6747FC3CB3E1D7FD0B9F1FF00FF000C
                                  4F8DFF00F9535E21E01FF8283780ED7FE0A49F15F586D03E379B4BEF86BE0BB3
                                  8A34F831E317BA578754F163B992DC698668E32274D923A2A485655466686508
                                  01F77D15F3FF00FC3CB3E1D7FD0B9F1FFF00F0C4F8DFFF0095347FC3CB3E1D7F
                                  D0B9F1FF00FF000C4F8DFF00F953401C7FC5AF8D565A4FFC157BE1844DE1BF89
                                  F7369A2782BC49E17BED5ACFE1E6BF79A35BDFEABA8785AE2C90EA1159B5A796
                                  D1D9DD17984BE540607133C6C315E21FB38FED1BF1C6F3C39ACE9DAE78D3E3FD
                                  C43E34D2BE235A69FE27F13FC119FED9E08BCD26FA23E1CBB86C6D347B3337DB
                                  348B97BA68AEA3916EAEACD2DA030CBE6DB3FD3FFF000F2CF875FF0042E7C7FF
                                  00FC313E37FF00E54D67F897FE0A6BE0FB5D3A36D1FC21F1BEFAECDDDB24915E
                                  7C16F1D5A46B6ED3C6B712075D125264480CAE91ED024744467895CCA801F386
                                  A5FB4AFC58B5FF00826CDE78BB53F1E7C7FF000778B741F8ABE1CD1352D56FBC
                                  17673EA5A86997FAA691637116996973E18B19EEEDC5BEA52346C7488EE4DFDB
                                  CB1A1B885144DA1FB497ED1FFB57F827F678F855ABF85B4BD43CCB9BBF10B5F6
                                  AF7DE1AD426D43504B6BF54F0C9D574CD3746D46F238F50D33CCBABF821B2D39
                                  E3990442EB4B90A5AC9E81F1AFF6B9F84BFB4A416FE1EF88BF02FC61E3FF0007
                                  5A78816E6083C49F027C6BAAAC36EBA73EDBF5B59FC38F10BC1772496C220F81
                                  6F234DE7EF636B5DFF0084FF00E0A6BE0FBCF0AE9B2EBBE10F8DFA76B72DA44F
                                  A85A587C16F1D5EDADADC140658E29DF4485E58D5F70591A28CB000944276800
                                  CFFF0084DBE23EA3FF00050EFEC7D5FC57F103C2DE19B0D571A278774EF0036A
                                  7E15F18686741DED737BAD2D9C834ED4135792E942BDF421A1D36DD3EC84DDAD
                                  C4B81FB07F84F5DFD9FF00F667F8CDE05F16789BE2FB789BC3BE2BF17EBF36B7
                                  2F84239EF2DECF53D5B52BEB2BBD25ADB4CFB0EA7712C0C97AD04115DB457576
                                  D03C318F2ECE3EBFC27FF0535F07DE78574D975DF087C6FD3B5B96D227D42D2C
                                  3E0B78EAF6D6D6E0A032C714EFA242F2C6AFB82C8D14658004A213B4173FF053
                                  5F07AF8AACE28BC21F1BDF447B49DEEEEDFE0B78E96EA0B80F088238E01A2149
                                  23746B82F21950C6628804904ACD100701A5FC7DF8B9E2CFF826DFC00F13EA92
                                  7C4FF0C788B5CB4D32DFE2BEB1A67806493C61E1D74D2EE45DCF6BA2CD613334
                                  926B50DA5BB04D3A7416B7734D1A24416EA2F2FBAFDA8BF68EF04FC6C935CF14
                                  7FC2DF49BC3BE15F873AAF88FC09A3FC327D57C269A8EA37E965E2EB6B2BEB5D
                                  366BBBDFECFB3B8B6BD852D7519DC4DE7E4DCC504D6F1FD3FF00F0F2CF875FF4
                                  2E7C7FFF00C313E37FFE54D1FF000F2CF875FF0042E7C7FF00FC313E37FF00E5
                                  4D007D01457CFF00FF000F2CF875FF0042E7C7FF00FC313E37FF00E54D1FF0F2
                                  CF875FF42E7C7FFF00C313E37FFE54D001FF000562FF0094597ED2DFF64ABC51
                                  FF00A68BAAFA02BE10FF00829AFF00C141BC07E34FF826DFED07A3D9E81F1BE1
                                  BBD5BE1AF88ECE092FFE0C78C6C2D51E4D2EE514CB713E9890C318246E925754
                                  41966655048FBBE800A28A2800A28A2800A28A2800A28A2800AFC605B9F0268F
                                  FB5AFC5DD32F745F0FFC71B9D3355D3BC1B6FE11F16FC50B8D52DB54F33C5B67
                                  A2E9D1EB292F8BFC412CD6F6536B134E05E787A1F2A76322ADA5C1589BF67EBE
                                  4F1FF0474F861178E354F12C5E20F89EBADEA377ADEA704B378A25BBB5D1EFF5
                                  2F125978956F2CACA7592CEDA4B5D4F4FB592248E1114C23C5DC778493401F28
                                  7ED21F03B51FF827C7C05B3F10CF6BF083F67FD67C4BFB405A7887C1BA6F83FC
                                  7963E1EF0E7867CFF070D12E4BDFEA7E1C96C4660B7D52EE48A4B18B787C432C
                                  B7462827F9C3E2DFC38F8ABA8F8FBC2B7FE0D8BC61E32F87DFB31F87EC7C1FE0
                                  3D6FC33A0E85F112D740BA93C27E0BD52CA7D2234D06E6EF53BC6923BBB8FB5D
                                  CC3A5DAC80D9245A8E9BE74B1B7EBF7C34FD8C2F7E15FC3DF885A769FF00183E
                                  27CDE2BF895E208BC49A9F8D2E2DF406D660B88ECB4FB1548625D3174F58FECB
                                  A6C1110D66C70F236EDE5597CC350FF8220FC0FB0D1ED97C1F6BE20F869E20F0
                                  F6950E81E0FF00137852E20B2D6FC05A62DADE5BCB69A6DC3C2F8FB47F696AB3
                                  4F3DC2CF7325C6A0F319BCDB7B37B600FAFE8A28A0028A28A0028A28A0028A28
                                  A0028A28A00F9FFE1CFF00CA537E327FD92AF01FFE9DFC675F4057CFFF000E7F
                                  E529BF193FEC95780FFF004EFE33AFA02800AF3FD4FF0064EF859ADF8EFC53E2
                                  9BCF869E00BBF1378E34A7D0BC49ABCDE1EB492FFC41A73C71C4F6779398FCCB
                                  8B768E1890C521642B120230A00F40A2803CBFC27FB14FC23F879E15D3741F0C
                                  FC39F07F84FC3BA578822F1545A3681A647A4E993EA9120586EE7B5B611C3712
                                  46521910CC8E125B6B6954096DE174D0F8E9FB277C2CFDA83FB2FF00E165FC34
                                  F007C44FEC3F37FB37FE127F0F5A6AFF00D9FE6ECF37C9FB446FE5EFF2A3DDB7
                                  1BBCB4CE768AF40A2800A28A2803E7FF00F82967FC9BAF873FECAAFC38FF00D4
                                  DF42AFA02BE7FF00F82967FC9BAF873FECAAFC38FF00D4DF42AFA02800AF3FF8
                                  E9FB277C2CFDA83FB2FF00E165FC34F007C44FEC3F37FB37FE127F0F5A6AFF00
                                  D9FE6ECF37C9FB446FE5EFF2A3DDB71BBCB4CE768AF40A2803CBFC27FB117C17
                                  F017C4CD37C6BA17C21F861A2F8C745B48AC34FD7AC3C2B636DA9D85BC5682CA
                                  2862B94884B1C6968AB6EAAAC02C404600418AEC3E16FC2DD0BE0BF812C7C37E
                                  1BB1FECFD274FF0031911A692E269E59646966B89E6959A59EE2699E49659E57
                                  796696592491DDDD98F41450079FFC0BFD93BE167ECBFF00DA9FF0AD3E1A7803
                                  E1DFF6E795FDA5FF0008C787AD348FED0F2B7F95E77D9E34F33679B26DDD9DBE
                                  63E31B8D7A051450015F3FFEC6FF00F2715FB58FFD955B1FFD423C295F4057CF
                                  FF00B1BFFC9C57ED63FF006556C7FF00508F0A5007D014514500797DD7EC45F0
                                  5EFB4EF1AD9CFF00087E184D69F12AEE3BFF001740FE15B168FC55711CED711C
                                  D7EA62C5D48B3BBCAAD36E21DD981DC49AD0F07FECABF0E3E1DFFC21D1F877C1
                                  7E1FF0EE9FF0FBEDADE1BD2F49B55B1D2B4596F322E2E20B28B6DB25C32BCEA2
                                  711F9AA977768AEAB733893D028A00F3FF001FFEC9DF0B3E2BFC53D17C75E29F
                                  869E00F12F8DBC35E47F64788755F0F5A5E6ABA5791334F07D9EE648DA58BCB9
                                  99A44D8C36BB1618249AF40A28A002BE7FFDB23FE4E2BF64EFFB2AB7DFFA8478
                                  AEBE80AF9FFF006C8FF938AFD93BFECAADF7FEA11E2BA00FA028A28A00E7FE29
                                  7C27F0B7C71F025F785BC6BE1AF0FF008C3C33AA797F6CD235BD3A1D42C2EFCB
                                  91658FCC825568DF6C888E3703864523900D71FA6FEC53F08FC39E2AF16F8874
                                  2F873E0FF0A78AFC77697965AF7893C37A647A26BFA8A5DB892E4B6A56822BB1
                                  23C8164322CA1C48AB2060EA187A851401CFFF00C2A7F0B7FC2ACFF8417FE11A
                                  F0FF00FC213FD95FD85FF08F7F6743FD95FD9DE4F91F63FB36DF2BECFE4FEEFC
                                  ADBB367CB8C7159FF053F67BF00FECD7E15B8D0BE1D781FC1FE00D12EEEDAFE7
                                  D3FC37A35B6956B35C322234CD14088864291C6A588C911A8CE1457614500145
                                  145007CFFF00F049DFF94597ECD3FF0064ABC2FF00FA68B5AFA02BE7FF00F824
                                  EFFCA2CBF669FF00B255E17FFD345AD7D014019FE2CF09E97E3DF0AEA5A16BBA
                                  669FAD689AD5A4B61A869F7F6E9736B7F6F2A14961962705248DD199595810C0
                                  904106BCBFC45FF04F6F805E2FF027877C2DAB7C0FF841AA7867C1FF0069FEC1
                                  D22EFC1BA74F61A27DA6412DCFD960684C7079B200F2796177B005B279AF60A2
                                  8039FF00F855BA137C53FF0084D5EC7CEF132E95FD890DE4D3492FD8ECCCDE74
                                  91411B318E0F3641134CD12AB4FF0066B5129716D008F9FF00F864EF859FF0BD
                                  BFE168FF00C2B4F007FC2CDFFA1BBFE11EB4FEDDFF008F7FB2FF00C7EF97E7FF
                                  00C7BFEE7EFF00FABF93EEF15E814500145145007CFF00F11BFE529BF06FFEC9
                                  578F3FF4EFE0CAFA02BE7FF88DFF00294DF837FF0064ABC79FFA77F0657D0140
                                  0514514005145140051451400514514005145140051451400514514005145140
                                  1F3FFC39FF0094A6FC64FF00B255E03FFD3BF8CEBE80AF9FFE1CFF00CA537E32
                                  7FD92AF01FFE9DFC6747EDB1F143E29F813E22FC13D03E1A6BDE00D0BFE16578
                                  AEF3C31A94FE27F0B5DEBBF67D9A1EA5AB453C2B6FA8D9631FD97244C8C5B77D
                                  A5183279456500FA02BE7FF873FF00294DF8C9FF0064ABC07FFA77F19D7A07EC
                                  9DF1D3FE1A83F658F869F12FFB2FFB0FFE16278574BF13FF0066FDA7ED3FD9FF
                                  006DB48AE7C8F3762799B3CDDBBF62EEDB9DA338AF3FF873FF00294DF8C9FF00
                                  64ABC07FFA77F19D007D015E1FFF000535F166ABE02FF826DFED07AEE85A96A1
                                  A2EB7A2FC35F11DFE9FA8585C3DB5D585C45A5DCBC53452A10F1C88EAACACA41
                                  520104115EE159FE2CF09E97E3DF0AEA5A16BBA669FAD689AD5A4B61A869F7F6
                                  E9736B7F6F2A14961962705248DD199595810C0904106803F2C3FE09B3FB477C
                                  53FD9DFC63F1E2EBE21F8AFC41F142E74FD2BE1A782BC3DA66A5E26BBB8B38FC
                                  429AA6A7E04BF9DA59D5CDB5BDE7887499EEA5B88E29267B59639DE17B82D6C3
                                  D43E2DFEDEFE21F06FC73F067C64B0D07509744F0F7C35F8943E25F85A4F1B5E
                                  A69F6C9E13F10691677D79A5DB792D6B7B7914BFDA296AF2C362F750DC209E6B
                                  60A224FB7D7F67BF00A69DE23B31E07F078B4F18DA4D61AFC0346B6F2F5CB79A
                                  7BBB89A1BA5D989E3927BFBF95964DC19EF6E5882D3396CFD6FF0064EF859E26
                                  FF008417FB47E1A780350FF855FE57FC21BF69F0F5A4BFF089795E4F97FD9DBA
                                  33F64D9F67B7DBE4ECC791163EE2E0039FF11FC57BCD33F6FAF06F81EE343CE9
                                  FADFC3FD7B5DB0D661F125D2ED96CF51D1A0BAB69F4B110B67CADF59BC376D2B
                                  CA98BA8D523591DA5F20F807F1334EFD8BBC01FB626AFABEA7F103C4BE09F823
                                  E2B9F55B7B7D57C457DE25D56DB4E83C15A06AB716D6F71A95CC92B6E9A6BA74
                                  479820798F2A0F1F47EB3FB3DF807C47F19749F88BA8781FC1F7DF10741B46B0
                                  D33C4F71A35B4BACE9D6EC250D0C376C8668E32279C15570089A4E3E76CF3FF0
                                  53F622F82FFB35F8AAE35DF875F087E1878035BBBB46B09F50F0DF856C74ABA9
                                  ADD9D1DA16960891CC65E38D8A938263538CA8A00CFF00D8ABF69BD63F6A8F85
                                  97FAD6BFE03F107C3FD5B49D564D2A7B4D474FD52D2DAFB6C30CEB7364753B1B
                                  0BC96DCACEB19796CE0FDFC3708A244459A4F903E3EFED551786BF6C9F1F2DDF
                                  8D3E2068FE3DF0BFC6AF01F81BC1D6FF006AD62CFC2B77A2EA6BE143A869DE50
                                  DBA2DFEA0F16ADAD4DB26597508E1FDF26C8ED21921FBBFE0A7ECF7E01FD9AFC
                                  2B71A17C3AF03F83FC01A25DDDB5FCFA7F86F46B6D2AD66B86444699A281110C
                                  85238D4B119223519C28AE7FE2C7EC5FF0C3E367C65F07FC45F10F8434F9BE20
                                  F806EE2BAD0BC4F6724BA76B3662313816C6EEDDE39A5B36175701ED2476B794
                                  4CFBE26CD007887C30FF00829F6BBABDF03E33F875E1FF000EE9F6DE15F1FEBB
                                  7F3E9BE368EEBECF79E0FF0010A68D7D6CAF7D6B636C2DE659A19E2BBB89E055
                                  CC8B2A44A9E7379FFED0BFB54CFF00B6BFFC1267F68EF153D8FC40F857E3DF82
                                  3A56BD215D135EF10F86A6B2D62D3C3C352B49A3924874BD426B7F26FED9CC57
                                  B67146F2AB7EEA68D219E4FAFF00FE193BE167FC2F6FF85A3FF0AD3C01FF000B
                                  37FE86EFF847AD3FB77FE3DFECBFF1FBE5F9FF00F1EFFB9FBFFEAFE4FBBC571F
                                  6DFF0004CAFD9BACFC2B79A145FB3E7C108B44D46EE0BFBBD3D3C0BA5ADADD5C
                                  4093241349108363491A5CDC2A3104A89E50080ED900F70A2B9FF85BF09FC2DF
                                  03BC0963E16F05786BC3FE0FF0CE97E67D8F48D134E874FB0B4F3246964F2E08
                                  95634DD23BB9DA0659D89E4935D05007CFFF00F0562FF94597ED2DFF0064ABC5
                                  1FFA68BAAFA02BE7FF00F82B17FCA2CBF696FF00B255E28FFD345D57D0140051
                                  4514005145140051451400514514005145140051451400514514005145140051
                                  4514005145140051451401F3FF00C39FF94A6FC64FFB255E03FF00D3BF8CEBE8
                                  0AF9FF00E1CFFCA537E327FD92AF01FF00E9DFC675F405001451450014514500
                                  145145007CFF00FF00052CFF009375F0E7FD955F871FFA9BE855F4057CFF00FF
                                  00052CFF009375F0E7FD955F871FFA9BE855F405001451450014514500145145
                                  0015F3FF00EC6FFF002715FB58FF00D955B1FF00D423C295F4057CFF00FB1BFF
                                  00C9C57ED63FF6556C7FF508F0A5007D014514500145145001451450015F3FFE
                                  D91FF2715FB277FD955BEFFD423C575F4057CFFF00B647FC9C57EC9DFF006556
                                  FBFF00508F15D007D0145145001451450014514500145145007CFF00FF00049D
                                  FF0094597ECD3FF64ABC2FFF00A68B5AFA02BE7FFF00824EFF00CA2CBF669FFB
                                  255E17FF00D345AD7D01400514514005145140051451401F3FFC46FF0094A6FC
                                  1BFF00B255E3CFFD3BF832BE80AF9FFE237FCA537E0DFF00D92AF1E7FE9DFC19
                                  5F40500145145001451450014514500145145001451450014514500145145001
                                  45145007CFFF000E7FE529BF193FEC95780FFF004EFE33AE83F6A6FD9265FDA6
                                  FC47F0FF0056B7F895F103E1D6A1F0DF55B9D6F4B97C31168F279D79358CF61E
                                  6CC350B0BB0DB2D6EEF235550ABFE92ECC1992268F9FF873FF00294DF8C9FF00
                                  64ABC07FFA77F19D7D01401CFF00C27F85BA17C0EF859E1AF05785AC7FB2FC33
                                  E0FD2AD744D22CFCE927FB259DB4290C1179923348FB63455DCECCC719249C9A
                                  F1FF00873FF294DF8C9FF64ABC07FF00A77F19D7D015F3FF00C39FF94A6FC64F
                                  FB255E03FF00D3BF8CE803E80A28A2800A28ACFF0012F89ADFC27A74775751EA
                                  12C72DDDB59AAD9D84F7B2079E78E0425214771187914BC84048903C9232468E
                                  EA01F1043FB75F8B6CFF00E0B17E3FF87B636BA84FA25CF87CF82B43D3F55B3D
                                  5A2D02EBC55A7E956DE23B3DBAB4704B656725F58EB1AA4771108659D63F0E5B
                                  4A4B096180F41F0BFF00E0AC9AAF8F7E19BF882F3E1B69FA749AD782BE1B78A7
                                  C316D0F8A1EE56FEE3C6B772E9B69697AE6C93EC91DB6A1114966896E4B5B9F3
                                  962327FA357B7FFC299F837FF091FF0065FF00C2ABF0FF00DA7FE1607FC245BF
                                  FE1006FB37FC251F61FB77F6E79FF66F2BED1E4FCBFDA7BB1E7FFA3F9FF68FDD
                                  51E00FD923E07EB7FDB5E35D1FE0EF8034ED43E2AE953AF886F2E7C0D0699AAF
                                  882CF50DB35CDBEA51CD6F1DCB79CC434F05D2EE2E089137020007CE1FB3AFC6
                                  6F16FC28FF0082777832F3C47A6EA1E27BB87E3ADCF82B575B8F891AB4F7BA3D
                                  BBFC47BAD22D3C9D52584DDEA91DAC86CA2315D7902EAD639165214981FDBFE2
                                  2FC63F88FA27FC14D7E15F80B4DB4F0FB7C32F117C3FF13EB7AC3CBA9B25FB5E
                                  595EE8B1452A43F636CF93F6D8D1545CA2CAB7F72EE15AD215B8D0F09FEC37FB
                                  3D78D3E0169BE1EB3F815F0C21F87DAB5DC5E2A83C377FF0FAD6C2D52F64B611
                                  ADDCBA6CF6C861BC10111B1962599066360B82A3D03C6DE0CF06FC61F1558E8F
                                  E26F0AE9FE23BBF065DD878AB4C9358D00DCDAE9B7A1EE12D6EED2E2688C22F2
                                  2314DCC2FE740248D9822CD19700EC28A28A0028A28A00F9FF00FE0AC5FF0028
                                  B2FDA5BFEC9578A3FF004D1755F4057CFF00FF000562FF0094597ED2DFF64ABC
                                  51FF00A68BAAFA02800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
                                  800A28A2800A28A2800A28A2800A28A2800A28A2803E7FF873FF00294DF8C9FF
                                  0064ABC07FFA77F19D7D015F3FFC39FF0094A6FC64FF00B255E03FFD3BF8CEBE
                                  80A0028A28A0028A28A0028A28A00F9FFF00E0A59FF26EBE1CFF00B2ABF0E3FF
                                  00537D0ABE80AF9FFF00E0A59FF26EBE1CFF00B2ABF0E3FF00537D0ABE80A002
                                  8A28A0028A28A0028A28A002BE7FFD8DFF00E4E2BF6B1FFB2AB63FFA847852BE
                                  80AF9FFF00637FF938AFDAC7FECAAD8FFEA11E14A00FA028A28A0028A28A0028
                                  A28A002BE7FF00DB23FE4E2BF64EFF00B2AB7DFF00A8478AEBE80AF9FF00F6C8
                                  FF00938AFD93BFECAADF7FEA11E2BA00FA028A28A0028A28A0028A28A0028A28
                                  A00F9FFF00E093BFF28B2FD9A7FEC95785FF00F4D16B5F4057CFFF00F049DFF9
                                  4597ECD3FF0064ABC2FF00FA68B5AFA02800A28A2800A28A2800A28A2803E7FF
                                  0088DFF294DF837FF64ABC79FF00A77F0657D015F3FF00C46FF94A6FC1BFFB25
                                  5E3CFF00D3BF832BE80A0028A28A0028A28A0028A28A0028A28A0028A28A0028
                                  A28A0028A28A0028A28A00F2FF008D7FB117C17FDA53C556FAEFC45F843F0C3C
                                  7FADDA5A2D841A87893C2B63AADD436EAEEEB0ACB3C4EE230F248C141C03231C
                                  658D71FF00F0E9DFD967FE8DA7E007FE1BCD23FF0091EBA0F8A5FF000509F805
                                  F03BC777DE16F1AFC70F841E0FF13697E5FDB348D6FC65A769F7F69E646B2C7E
                                  6412CCB226E8DD1C6E032AEA47041AE7FF00E1EC5FB2CFFD1CB7C00FFC387A47
                                  FF00245001FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046
                                  D3F003FF000DE691FF00C8F47FC3D8BF659FFA396F801FF870F48FFE48A3FE1E
                                  C5FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9DFD967FE8DA7E007FE1BCD
                                  23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00A3
                                  96F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF00245001
                                  FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF00
                                  0DE691FF00C8F47FC3D8BF659FFA396F801FF870F48FFE48A3FE1EC5FB2CFF00
                                  D1CB7C00FF00C387A47FF245001FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8
                                  FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00A396F801FF00
                                  870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF00245001FF000E9DFD
                                  967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00
                                  C8F47FC3D8BF659FFA396F801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF
                                  00C387A47FF245001FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFE
                                  CB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00A396F801FF00870F48FF00
                                  E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF00245001FF000E9DFD967FE8DA7E
                                  007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F47FC3D8
                                  BF659FFA396F801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47F
                                  F245001FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F
                                  003FF0DE691FFC8F47FC3D8BF659FF00A396F801FF00870F48FF00E48A3FE1EC
                                  5FB2CFFD1CB7C00FFC387A47FF00245001FF000E9DFD967FE8DA7E007FE1BCD2
                                  3FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F47FC3D8BF659FFA39
                                  6F801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47FF245001FF0
                                  E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE69
                                  1FFC8F47FC3D8BF659FF00A396F801FF00870F48FF00E48A3FE1EC5FB2CFFD1C
                                  B7C00FFC387A47FF00245001FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF8
                                  74EFECB3FF0046D3F003FF000DE691FF00C8F47FC3D8BF659FFA396F801FF870
                                  F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9DFD967FE
                                  8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC
                                  3D8BF659FF00A396F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC38
                                  7A47FF00245001FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF
                                  0046D3F003FF000DE691FF00C8F47FC3D8BF659FFA396F801FF870F48FFE48A3
                                  FE1EC5FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9DFD967FE8DA7E007FE
                                  1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF
                                  00A396F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF0024
                                  5001FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003
                                  FF000DE691FF00C8F47FC3D8BF659FFA396F801FF870F48FFE48A3FE1EC5FB2C
                                  FF00D1CB7C00FF00C387A47FF245001FF0E9DFD967FE8DA7E007FE1BCD23FF00
                                  91E8FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00A396F801
                                  FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF00245001FF000E
                                  9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691
                                  FF00C8F47FC3D8BF659FFA396F801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C
                                  00FF00C387A47FF245001FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF0087
                                  4EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00A396F801FF00870F48
                                  FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF00245001FF000E9DFD967FE8
                                  DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F47F
                                  C3D8BF659FFA396F801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387
                                  A47FF245001FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF4
                                  6D3F003FF0DE691FFC8F47FC3D8BF659FF00A396F801FF00870F48FF00E48A3F
                                  E1EC5FB2CFFD1CB7C00FFC387A47FF00245001FF000E9DFD967FE8DA7E007FE1
                                  BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F47FC3D8BF659F
                                  FA396F801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47FF24500
                                  1FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0
                                  DE691FFC8F47FC3D8BF659FF00A396F801FF00870F48FF00E48A3FE1EC5FB2CF
                                  FD1CB7C00FFC387A47FF00245001FF000E9DFD967FE8DA7E007FE1BCD23FF91E
                                  8FF874EFECB3FF0046D3F003FF000DE691FF00C8F47FC3D8BF659FFA396F801F
                                  F870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9DFD9
                                  67FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F
                                  47FC3D8BF659FF00A396F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00F
                                  FC387A47FF00245001FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFEC
                                  B3FF0046D3F003FF000DE691FF00C8F47FC3D8BF659FFA396F801FF870F48FFE
                                  48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9DFD967FE8DA7E0
                                  07FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF6
                                  59FF00A396F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF
                                  00245001FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3
                                  F003FF000DE691FF00C8F47FC3D8BF659FFA396F801FF870F48FFE48A3FE1EC5
                                  FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9DFD967FE8DA7E007FE1BCD23
                                  FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00A396
                                  F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF00245001FF
                                  000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000D
                                  E691FF00C8F47FC3D8BF659FFA396F801FF870F48FFE48A3FE1EC5FB2CFF00D1
                                  CB7C00FF00C387A47FF245001FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF
                                  00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00A396F801FF0087
                                  0F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF00245001FF000E9DFD96
                                  7FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8
                                  F47FC3D8BF659FFA396F801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00
                                  C387A47FF245001FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB
                                  3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00A396F801FF00870F48FF00E4
                                  8A3FE1EC5FB2CFFD1CB7C00FFC387A47FF00245001FF000E9DFD967FE8DA7E00
                                  7FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F47FC3D8BF
                                  659FFA396F801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47FF2
                                  45001FF0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F00
                                  3FF0DE691FFC8F47FC3D8BF659FF00A396F801FF00870F48FF00E48A3FE1EC5F
                                  B2CFFD1CB7C00FFC387A47FF00245001FF000E9DFD967FE8DA7E007FE1BCD23F
                                  F91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F47FC3D8BF659FFA396F
                                  801FF870F48FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9
                                  DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691F
                                  FC8F47FC3D8BF659FF00A396F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7
                                  C00FFC387A47FF00245001FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874
                                  EFECB3FF0046D3F003FF000DE691FF00C8F47FC3D8BF659FFA396F801FF870F4
                                  8FFE48A3FE1EC5FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9DFD967FE8D
                                  A7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D
                                  8BF659FF00A396F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A
                                  47FF00245001FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF00
                                  46D3F003FF000DE691FF00C8F47FC3D8BF659FFA396F801FF870F48FFE48A3FE
                                  1EC5FB2CFF00D1CB7C00FF00C387A47FF245001FF0E9DFD967FE8DA7E007FE1B
                                  CD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F47FC3D8BF659FF00
                                  A396F801FF00870F48FF00E48A3FE1EC5FB2CFFD1CB7C00FFC387A47FF002450
                                  0761F053F622F82FFB35F8AAE35DF875F087E1878035BBBB46B09F50F0DF856C
                                  74ABA9ADD9D1DA16960891CC65E38D8A938263538CA8AF50AF9FFF00E1EC5FB2
                                  CFFD1CB7C00FFC387A47FF002451FF000F62FD967FE8E5BE007FE1C3D23FF922
                                  803E80A2BE7FFF0087B17ECB3FF472DF003FF0E1E91FFC9147FC3D8BF659FF00
                                  A396F801FF00870F48FF00E48A00FA028AF9FF00FE1EC5FB2CFF00D1CB7C00FF
                                  00C387A47FF2451FF0F62FD967FE8E5BE007FE1C3D23FF00922803E80A2BE7FF
                                  00F87B17ECB3FF00472DF003FF000E1E91FF00C9147FC3D8BF659FFA396F801F
                                  F870F48FFE48A00FA028AF9FFF00E1EC5FB2CFFD1CB7C00FFC387A47FF002451
                                  FF000F62FD967FE8E5BE007FE1C3D23FF922803E80A2BE7FFF0087B17ECB3FF4
                                  72DF003FF0E1E91FFC9147FC3D8BF659FF00A396F801FF00870F48FF00E48A00
                                  FA028AF9FF00FE1EC5FB2CFF00D1CB7C00FF00C387A47FF2451FF0F62FD967FE
                                  8E5BE007FE1C3D23FF00922803E80A2BE7FF00F87B17ECB3FF00472DF003FF00
                                  0E1E91FF00C9147FC3D8BF659FFA396F801FF870F48FFE48A00FA028AF9FFF00
                                  E1EC5FB2CFFD1CB7C00FFC387A47FF002457A87C14FDA17C03FB4A7856E35DF8
                                  75E38F07F8FF0044B4BB6B09F50F0DEB36DAADAC370A88ED0B4B03BA0902491B
                                  15272048A71861401F9A1F0DBE13FC02F17FFC1673FE0A1FE29FDA07C35F0835
                                  4F0CF83FFE15BF95ABFC42D3B4E9EC344FB4E86D11DB3DEA98E0F3641021C15D
                                  EC231C9DA2BE90D67F67BFF8278F873E0D693F11750F03FEC6163F0FB5EBB6B0
                                  D33C4F71A3786A2D1B51B853286861BB6410C920304E0AAB920C3271F2363E4F
                                  F89905E6A3FB517FC16534DD3748F106BFAB6BFF000FFC1FA269BA6E89A45D6A
                                  D7F7D7979E11BDB5B78A3B7B68E495B74D3460B05DA8BB9DCAA2330FA43E24F8
                                  0FC33FB3C6A3E09F1B693AE7ED1F27C4BF1ADA6ABE233F11E1F85B77E2692FCC
                                  B068509D33C41A3D869A86D23B8834FD1D7CA82D34FB8D9A24CA2EADA779DE70
                                  0F5FF09FFC132BF644F1EF8574DD7742FD9F3F670D6B44D6AD22BFD3F50B0F02
                                  E8B736B7F6F2A078A68A5480A491BA32B2B29218104120D1E2CFF82657EC89E0
                                  2F0AEA5AEEBBFB3E7ECE1A2E89A2DA4B7FA86A17FE05D16DAD6C2DE242F2CD2C
                                  AF0048E3445666662028049200AF40F8196B6F63E15F85D06A1E0AD43E1AF88A
                                  1F056C5F08E953CF3E81E15409A78B8D35A4B555D35E4B77F261B76650E638EE
                                  4DB0111B915E81E2CF09E97E3DF0AEA5A16BBA669FAD689AD5A4B61A869F7F6E
                                  9736B7F6F2A14961962705248DD199595810C0904106803E30F057C27FF826E7
                                  C4AF27FE11DF0D7EC41AFF00DA355B2D0A2FECDD3BC2F75E6EA379E6FD8ECD7C
                                  B539B89FC89FCA887CF279326D076363D7FF00E1D3BFB2CFFD1B4FC00FFC379A
                                  47FF0023D7C81E23B78B56FF00826EEBFA8E9DE0BF8BFE1BF187883F68059A4D
                                  4B4DF851AC1F155BE9317C4DB8F135B5F2DA4FA6CB3496F6FA6DD5C5DC4D35BC
                                  96EB34D24255A77781BA0F8FFF00B5A7ED4DE1FF00845E171E11D1BC40BA8784
                                  FC57E2DF0E6BFADEA9E0BD5FCED627D3352587C3D2DC5A58687A84D79A7EA5A6
                                  97BABA9F4DB5B481E54D905FE9EDB6DA400FA7FF00E1D3BFB2CFFD1B4FC00FFC
                                  379A47FF0023D1FF000E9DFD967FE8DA7E007FE1BCD23FF91EB80FDAF3E2A7C4
                                  7F87BFB7D7C30B3D17C49F17EE3C05ADFF00655A6ABE1DF08F821AEECEDA5935
                                  19626BBBAD4A4D0AF6D9EDE4592217511D4F4C96CED6CA49E337125C4680FD90
                                  FE34FC7DF157EDF5F13FC35F1234FF00ECCF04D9FF006AC9A4DA3693A89B6860
                                  83518A2D266B3BD1A4C361FE93A74867BA89B57D46733BA797158086E6D5002F
                                  FC6BFD88BF61AFD9AFC2B6FAEFC45F843FB28780344BBBB5B08350F127857C3F
                                  A55ACD70C8EEB0ACB3C48864291C8C141C911B1C614D761FF0E9DFD967FE8DA7
                                  E007FE1BCD23FF0091EB9FFDBE7E2245F0B7E29FC3ED434FF0FF00C40B6F136A
                                  BA56B5A22F8F3C39E0AD63C5BFF08769334DA64D7D14765616D751B6A17525B5
                                  97D95AF21FB3C7F65B8998CA213637BEE1FB3D784FC33E02F805E07D0BC15A66
                                  A1A2F83B45F0FD858683A7DFDBDDDB5D5858456D1A5B432C57605D472244A8AC
                                  B7004AA410E0383401E5FF00F0E9DFD967FE8DA7E007FE1BCD23FF0091EB9FF1
                                  17FC13DBF62FF0878EFC3BE16D5BE07FECC1A5F89BC61F69FEC1D22EFC1BA141
                                  7FADFD9A312DCFD960684493F95190F27961B62905B039AC0F827E16F1DFC04F
                                  DA03F6BB862BBF881E22F1378F3553E3AF03C17FE18B7BAD125823F0FE976510
                                  8AEE14B1B46B8FB640D662C6EF518276B7D36DE526312CD7B37CBF61F1EFE2FF
                                  00C75F007C3B3F10E3F8FF00E18D43E157C6A6997C61E1EF85DAAEA7AEB68775
                                  E0AD6522BE115CF85EDA1BAFF8995D4F612347A2C6218CC1BD773C7793807D5F
                                  ACFEC45FB0D7873E32E93F0EB50F843FB2858FC41D7AD1AFF4CF0C5C7857C3F1
                                  6B3A8DBA894B4D0DA344269230209C9654200864E7E46C761FF0E9DFD967FE8D
                                  A7E007FE1BCD23FF0091EBC83E3E7ED07E24D1354FD8EEFBE25F817E2047E3DF
                                  0F6AB078C3E205AF837E1FEBBE24D2BC3F2DC78435FD3EE234B8D3EDEEE16D9A
                                  95DC70889679250922487319F34F41FF000BA7E3EDAFFC1587FE113BDD3FEC3F
                                  072E3F71A79FEC9D46EACF50D3BFB1FED06F3ED36FA4C96D6DA80D5966B7FF00
                                  4CD660436B0ED5D38CB35BDDCC01DFFF00C3A77F659FFA369F801FF86F348FFE
                                  47A3FE1D3BFB2CFF00D1B4FC00FF00C379A47FF23D7B07C58D435DD23E167896
                                  EBC2D6DF6DF135B695752E916FF658EEBED178B0B9813CA92E6D639332051B1E
                                  EADD5B38334409917F343E11FED89FB497C52D6FE1E783F52D5FE37F837523F1
                                  2AE3C39AA6B87E0E6A9A9DAEA7E15BCD03CD8F53B9BCBAF0D699043796FAC37D
                                  960945ADA41002B25DDADFC113CD3007D9FF00F0E9DFD967FE8DA7E007FE1BCD
                                  23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F5E61FB47FC50FDA17E
                                  10FEDA1F077C2BE1C9B50D63E1A3DA68B65A8EBF7BA35D5FB7892EA4BE92DB57
                                  3A92695A2DCC76F247662D27B790DC68B6A9717523BB5DC114B05B7D9F401F3F
                                  FF00C3A77F659FFA369F801FF86F348FFE47ACFD67FE0995FB22787351D26CF5
                                  0FD9F3F670B1BBD7AEDAC34C82E3C0BA2C526A370B04B70D0C2AD00324820827
                                  94AAE4848646C6D4623E70F801F183F682D67E1178A2E6E3C6DF1FFC4FE20F87
                                  5E2BF096A97DA96ABF0DA1D1AC3C59E1CFED268F5A8ECF4FBAF0E69F7C2E1B4F
                                  4BCB996C6D7EDB342CBA6C76B7D732CB344FD07C06FDABFE29DF7FC33D7F6BEA
                                  5F1FF53FB67C55F17F857C59FDB1F086EEC3FB5FC3C3FB57FB0F52D4B6E8D0FD
                                  8B1BFC3DB678BECB0B7DA2F3CD56FB3DC7D9803DFF00FE1D3BFB2CFF00D1B4FC
                                  00FF00C379A47FF23D73FF0014BFE09EDFB17FC0EF025F78A7C6BF03FF00660F
                                  07F8674BF2FED9ABEB7E0DD0B4FB0B4F32458A3F32796158D3748E8837119675
                                  0392051FB42781B5DF0CFF00C14D7E087C4C9355F8807C136FE15F10782EE6C3
                                  45D0A3D56C23D4F50BDD1E4B55BA1059CD796F6F32DB4D2CB76D2476D036956A
                                  1E5804D2A5DFCC1FB60FC73F8FBE38F11FED57F08357F077C40D7FC25E33F855
                                  E39B3F0CAD9F823519EDADB5186C42E956B6D3DAE9C6D57EDD692DD392FAAEA0
                                  F713C30AF97A4CCE74C201F47FC47FD88BF61AF839E2AF0C685E2EF843FB2878
                                  575BF1B5DFD83C3BA7EB1E15F0FD8DD6BF71BE24F26D2296257B8937CD0AED8C
                                  31CCB18C65867B0FF874EFECB3FF0046D3F003FF000DE691FF00C8F5F387C66F
                                  8EDE2DBCFD956DB4EF1269BF1BFC7B687E30784B53F07EB371F0AB566F116B3E
                                  1FD2B5DF0DEA7A95E6A965A7E9910B19209D7568A149ACED1EE20B189A28EE19
                                  BCE9BD03FE0A5DFB47FC74F077857E187883E07E97A847E1DD6ED2EF53D46F2F
                                  3C35AC4F750DE84B4934BB1BFD36D746D4B525B39924BE37312DAD9CCA6DA38F
                                  EDF632B2C77001E9FF00F0E9DFD967FE8DA7E007FE1BCD23FF0091EB8FD1BF62
                                  2FD86BC47F19756F875A7FC21FD942FBE20E8368B7FA9F862DFC2BE1F9759D3A
                                  DD8445669AD16233471913C043320044D1F3F3AE7EB0AFCE0FD8975FF88FF0EF
                                  F622F8AFFF0008EEBDF1FF0057F1347F10351BF961F187C336D1EF345D0F50F1
                                  96A13DE6B3A4C1268D686FF5093489E7D47ECC12F02DD2C112D9A875B29003E9
                                  FF00F874EFECB3FF0046D3F003FF000DE691FF00C8F47FC3A77F659FFA369F80
                                  1FF86F348FFE47AF00F0A7C42FDA0BE297ED09F093C1F7BE3DF8BFE05D0BC5BE
                                  15F13BEAFAA41F0BE197315A6B2A7C377F25ECFA63DA697AC6A1A54734B796F7
                                  6BE547B5A15D3EC6E67B729F7FD007C6175FB3DFFC13C6C74EF1ADE4FE07FD8C
                                  21B4F86B771D878BA77D1BC34B1F856E249DADE386FD8A62D6469D1E2559B692
                                  E8CA06E0456FFC14FD88BF61AFDA53C2B71AEFC3AF843FB2878FF44B4BB6B09F
                                  50F0DF857C3FAADAC370A88ED0B4B044E82409246C549C81229C61857E78DBFC
                                  49F1B788BF671D47E05789BE1AF88346F89BF03FF640F1478067D134AB5BFD56
                                  FF005CB9D51740D26C0DA5A359C17579FE97A45E2CF73610DE69902B5BB8D465
                                  59494FD2EFF826325BDBFC1AF1742B3FC4FD7B52FF0084D754B9D47C59E3FF00
                                  054FE13D67C62F7263BB86E5ADA78609648EDAD27B5D3165304098D24A430C50
                                  470A000D0FF874EFECB3FF0046D3F003FF000DE691FF00C8F47FC3A77F659FFA
                                  369F801FF86F348FFE47AE3FF69ED77E28788FFE0A17F0F3C01E12F883F13FC0
                                  DE07F14F82B569FC417BA3FC3D8B55D3F4EBF82EAD24D3DADF56B8D3E6B4B3BC
                                  9E35D45245BB79E230DBA22DBC371736F70703C59F143F685D67FE0A71A97808
                                  CDA8784FE13EAF692D8691AA5868D757AA2C9B44330D5229C68B73616FAA47AB
                                  89615FED0D52385ADEDC29D2E479A0B99C03D3FF00E1D3BFB2CFFD1B4FC00FFC
                                  379A47FF0023D1FF000E9DFD967FE8DA7E007FE1BCD23FF91EBC03FE09C7FB4E
                                  FED05F1BBF605F1178D6C25F107C4FF135EFC2AD23C49E14BCF1AF86E1F0E7F6
                                  AF8D2E74EBC9AF3498634834E8E6D1D245D25A1BA0A524FB75C817D308F16F9F
                                  ABFC68F8F3AA6B7F09F49D17C73F1BECBC37E26F8957DE1C8BC4DA8FC20F3F53
                                  D53C2B2E808CFA9EAF6C34A85749BCB7D7A46B4B396682CE0F2825CDC5ADFDBC
                                  72C92007D1FF00F0E9DFD967FE8DA7E007FE1BCD23FF0091EB8FD73F622FD86B
                                  C31A8EB967A97C21FD9434FBBF0C5A5DDFEB305CF857C3F149A4DBDA416B7175
                                  35C2B440C31C305F58CB233E0225E5BB310B2A163E2BFC2DF137C36FF8285FEC
                                  FBE3CD43C57F13FC41E14D23C15ADF80B5096CFC3F69A9477DAB5F5D68AD6F2E
                                  A0963A799ADA3BA16B3CF3DD2FD9ECE07D2ED9775B24D24575F9E3F07FF64FF8
                                  93F0DFF69CF1EFC5FF00893FB3FF00C40F1069FE0DD55756D374FB5F8ABE3BD7
                                  5AE7513E231A6D85C2C12584F73AB5BDBB784F40BD989DEEB6722DEFD9EED5B4
                                  DD334F00FD1EF85BFF0004F6FD8BFE38F812C7C53E0AF81FFB3078C3C33AA799
                                  F63D5F44F06E85A8585DF97234527973C50B46FB644743B49C32303C822B4359
                                  FF0082657EC89E1CD4749B3D43F67CFD9C2C6EF5EBB6B0D320B8F02E8B149A8D
                                  C2C12DC3430AB400C9208209E52AB9212191B1B5188D0FD8ABC47E1DB5F075FE
                                  B10B7C40D57C53F123C5725C789756D67E1DEB9E17FED0D6174B847989637B6C
                                  8D65A7C763636D6B048E4C67ECF0C525CDCDE49249373FFB735969D07ED77FB2
                                  3EB4DE11F106B5AB687F10352DDACE95E11BED5FFB074EBAF0DEAB612FDA2EED
                                  ADE45B2B796FAEB4A0FE6BC68DE5891B296D23C401D07FC3A77F659FFA369F80
                                  1FF86F348FFE47A3FE1D3BFB2CFF00D1B4FC00FF00C379A47FF23D7987C58FDA
                                  7FE347C2FF00F82A8783FC31FD83E30D4BE0F7896EE2D1AE9ACFC237D7DA7E9F
                                  6F369D3C91EA267B3D3EE1124FED48E1B67B8B9D4ED8450CAE1F4911AA6AF2FD
                                  5FF09FE29685F1C7E16786BC6BE16BEFED4F0CF8C34AB5D6F48BCF26483ED767
                                  730A4D04BE5C8AB226E8DD5B6BAAB0CE080722803C3FC4BFF04CAFD913C17A74
                                  779AC7ECF9FB386936935DDB58473DE7817458237B8B99E3B7B7843340019259
                                  E58A245EAEF222A82CC01E434CFD93BF605D6FC77E16F0B59FC34FD902EFC4DE
                                  38D2935DF0DE910F87BC3B25FF008834E78E4952F2CE011F99716ED1C32B8963
                                  0C8562720E1491E7FF00F07017C32F89DF117E09F811BE1A781BC41E38B9D275
                                  5BDD5EEE1D23C63E23D1E6B7974DB09B5BB106D3481B6EBCDBED26DA14799965
                                  49658A1B592DAE2F56FAD38FFD90BE0C681FB3AEA3E1CFD9F3C49E00F89FE10D
                                  07C27E20F0FEA7A9359E9BE2CF1E5978FBC41670698349BC3E233A5C5696BA5D
                                  94763A517445B4417564F098ED6C6CDC6A401F4FF8B3FE0995FB22780BC2BA96
                                  BBAEFECF9FB3868BA268B692DFEA1A85FF0081745B6B5B0B7890BCB34B2BC012
                                  38D1159999880A0124802B3FE16FFC13DBF62FF8E3E04B1F14F82BE07FECC1E3
                                  0F0CEA9E67D8F57D13C1BA16A16177E5C8D149E5CF142D1BED911D0ED270C8C0
                                  F208AEC3F6C9F883A2B7ECABAC788E7F00F8C3E2147E1CF1069D7365A059E93A
                                  AC37B3EA9A7EBB6FF64B930DBC0F7AD6705F5BC374F2C16F7024B581E58A1BB8
                                  D9525E7FF65BF89FE08F867F06B5DF1C6ABAAF8C3FB53C73E35B083C4FACF887
                                  C07ACF8524D5FC417E74CD1ECD6DB4CBDB749A1B300E9B670B28911521067B89
                                  A65B9B8700D0FF00874EFECB3FF46D3F003FF0DE691FFC8F5CFEA1FF0004F6FD
                                  8BF48F1DDB785AEBE07FECC16DE26BDF27ECFA44BE0DD092FEE3CE8EF258B640
                                  61F31B7C7A7DFBAE07CCB637246443215FA82BF203E247EC43F13BE2CFFC15EB
                                  C5FE27F117C10F1078C3E1FE8DAAEA17B1DBCBF15FC466C3C4F6163636C61B74
                                  8AFE03A74BF694F176B31AE9AD35BD848D6D736425B5B6B6D4A4D5403ECFF829
                                  FB117EC35FB4A7856E35DF875F087F650F1FE896976D613EA1E1BF0AF87F55B5
                                  86E1511DA1696089D0481248D8A939024538C30A3E35FEC45FB0D7ECD7E15B7D
                                  77E22FC21FD943C01A25DDDAD841A87893C2BE1FD2AD66B86477585659E24432
                                  148E460A0E488D8E30A68FD93FC56FA8FED2BF173E23C96BF13F58F0A789ED3C
                                  35A2699AD78A7C0FA8E8BACC571FDA5ABEED1E2D39ACAD66FECBB11A95A4A97B
                                  2DA31C5FDD99EFA64B5616BA1FB7CFC448BE16FC53F87DA869FE1FF8816DE26D
                                  574AD6B445F1E7873C15AC78B7FE10ED2669B4C9AFA28ECAC2DAEA36D42EA4B6
                                  B2FB2B5E43F678FECB7133194426C6F403A0FF00874EFECB3FF46D3F003FF0DE
                                  691FFC8F47FC3A77F659FF00A369F801FF0086F348FF00E47AF40FD9CA0F08F8
                                  33E167853C15E08D23C41A27867C2FE15D21746B3D4B48D4ACFEC7A6185E1B4B
                                  7692F63590DC471DB6D960918DCC3FBB33A21950BFA05007CFFF00F0E9DFD967
                                  FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F5F
                                  4051401F3FFF00C3A77F659FFA369F801FF86F348FFE47A3FE1D3BFB2CFF00D1
                                  B4FC00FF00C379A47FF23D7D0145007CFF00FF000E9DFD967FE8DA7E007FE1BC
                                  D23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F5F4051401F3FF00
                                  FC3A77F659FF00A369F801FF0086F348FF00E47A3FE1D3BFB2CFFD1B4FC00FFC
                                  379A47FF0023D7D0145007CFFF00F0E9DFD967FE8DA7E007FE1BCD23FF0091E8
                                  FF00874EFECB3FF46D3F003FF0DE691FFC8F5F4051401F3FFF00C3A77F659FFA
                                  369F801FF86F348FFE47A3FE1D3BFB2CFF00D1B4FC00FF00C379A47FF23D7D01
                                  45007CFF00FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046
                                  D3F003FF000DE691FF00C8F5F4051401F3FF00FC3A77F659FF00A369F801FF00
                                  86F348FF00E47A3FE1D3BFB2CFFD1B4FC00FFC379A47FF0023D7D0145007CFFF
                                  00F0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0
                                  DE691FFC8F5F4051401F3FFF00C3A77F659FFA369F801FF86F348FFE47A3FE1D
                                  3BFB2CFF00D1B4FC00FF00C379A47FF23D7D0145007CFF00FF000E9DFD967FE8
                                  DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F5F4
                                  051401F3FF00FC3A77F659FF00A369F801FF0086F348FF00E47A3FE1D3BFB2CF
                                  FD1B4FC00FFC379A47FF0023D7D0145007CFFF00F0E9DFD967FE8DA7E007FE1B
                                  CD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F5F4051401F3FFF00
                                  C3A77F659FFA369F801FF86F348FFE47A3FE1D3BFB2CFF00D1B4FC00FF00C379
                                  A47FF23D7D0145007CFF00FF000E9DFD967FE8DA7E007FE1BCD23FF91E8FF874
                                  EFECB3FF0046D3F003FF000DE691FF00C8F5F4051401F3FF00FC3A77F659FF00
                                  A369F801FF0086F348FF00E47A3FE1D3BFB2CFFD1B4FC00FFC379A47FF0023D7
                                  D0145007CFFF00F0E9DFD967FE8DA7E007FE1BCD23FF0091E8FF00874EFECB3F
                                  F46D3F003FF0DE691FFC8F5F4051401F3FFF00C3A77F659FFA369F801FF86F34
                                  8FFE47A3FE1D3BFB2CFF00D1B4FC00FF00C379A47FF23D7D0145007CFF00FF00
                                  0E9DFD967FE8DA7E007FE1BCD23FF91E8FF874EFECB3FF0046D3F003FF000DE6
                                  91FF00C8F5F4051401F3FF00FC3A77F659FF00A369F801FF0086F348FF00E47A
                                  3FE1D3BFB2CFFD1B4FC00FFC379A47FF0023D7D0145007CFFF00F0E9DFD967FE
                                  8DA7E007FE1BCD23FF0091E8FF00874EFECB3FF46D3F003FF0DE691FFC8F5F40
                                  51401F3FFF00C3A77F659FFA369F801FF86F348FFE47A3FE1D3BFB2CFF00D1B4
                                  FC00FF00C379A47FF23D7D0145007CFF00FF000E9DFD967FE8DA7E007FE1BCD2
                                  3FF91E8FF874EFECB3FF0046D3F003FF000DE691FF00C8F5F4051401F3FF00FC
                                  3A77F659FF00A369F801FF0086F348FF00E47A3FE1D3BFB2CFFD1B4FC00FFC37
                                  9A47FF0023D7D0145007CFFF00F0E9DFD967FE8DA7E007FE1BCD23FF0091EBE7
                                  0FF8377FC27A5F80BC2BFB60E85A1699A7E8BA268BFB4FF8D2C34FD3EC2DD2DA
                                  D6C2DE24B048A18A2401238D1155555400A0000002BF43EBE00FF8205FFCDEA7
                                  FD9D578E7FF6C6800FF82787FCA75FFE0A2BFF0074D7FF0051FB8AFBFEBE00FF
                                  0082787FCA75FF00E0A2BFF74D7FF51FB8AFBFE800A28A2800A28A2800AF3CD6
                                  FF006ACF00E85E05F1CF895B5EFB6E89F0D6FE5D33C4B73A6D95C6A1FD977114
                                  70C93232411BB3F9493A194A0611624DE54C526DF43AF95FE25F807C77E27F83
                                  BFB5AE8F69F0F7C42D7DF10A7B887C328D7FA581ACACFA1596902543F6BC4489
                                  2DA3CCC27F2DBC99136AB49BA25E1C757AB4A37A4AEF5E8DED16D6DE692F3BD9
                                  6A7D570A65580C7D770CC2A72453A7AFB484349558425F1A7B425295F6872F34
                                  938A67D0DF0D3E2A68BF173429750D127BB64B69CDADD5B5ED85C69F7B633055
                                  7F2E7B5B848E785CC6F1C8AB222968E58DC651D58F455E4BFB237C3DD53C05E1
                                  DF154BA8693AB68369AF6BDFDA1A669FADEA29A9EB76B6E2C6CEDD85FDE2CD70
                                  6E2669EDE76466B99CADBBDBC7B91635862C9F1AFEC8BFF0967ED1B0F8EBFB27
                                  E07CBE55FD9DE7DA752F86DF6DF118F2162195D53EDC9898797FBA93C83E5011
                                  8DAFB3E6235EBFB18CF92F26F55B7CF5D7E5B8ABE5794ACC6B61DE2B92946378
                                  4ADED1B764F91B87BB7D5A72578DD68DA699ECBAFEBF63E14D0AF754D52F6D34
                                  DD334D824BABBBBBA996182D61452CF248EC42A22A824B120000935CEFC2EF8D
                                  DE1FF8C3F6E4D1E4D5A1BBD37CB6BAB1D5F46BDD1AFA1493779729B6BC8A29BC
                                  9731CAA92ECD8ED0CAAAC5A370B53F69BF8697DF1A3F66DF885E0ED2E5B48353
                                  F16786B52D1AD25BA6658239AE2D64851A42AACC1033824852719C03D2BE79F8
                                  F7F0F7E227C58D5B5DF1969DE00F89DA25C6A93F847494D234DF165968FAD1B4
                                  D3B53D46EB5299E6B4D4D2136F3595FBDBC69F6932198EE3146112719E33155A
                                  94FDC8732B5F66EFA3EAAF6D974D6FE476F0E64196661857F59C42A551C94537
                                  384545395357719B8B926A536DA9251F67ADF9923EBEA2BE35F8B3E01FDA1354
                                  F87BA1D8E83278B74EFF0084535ED7ECA3682E6D750D4EFADC5EAB683A8AB36A
                                  D64B730C3641E3912FEE2432CA41B8B3B9CF9C9F6556D85C54AB4A49C1C6D6DF
                                  ADD74F4D99E667990D1CBE952A94F154EB39BA89A83BB8A84AC9CBA5AA2F7A36
                                  6F4DF53CF3E0D7ED4FE0AF8F7A8DC59F872FB56FB5DB7DA3F71AA6837FA3C93F
                                  D9E7FB3DCF92B790C466F227C453797BBC9774593633A83DC681AD43E24D0ACB
                                  51B74BB8EDEFE08EE624BAB596D2755750C0490CAAB246F83CA3AAB29C860082
                                  2BE4CFD9A7E06F8BF44F13F8B75ED6FC07E38D06DEF60F18CD796175E24B5975
                                  0D4DB55D67EDD6316912417F2269CEB6CB225C18E5B357B892D9CB4C6213434F
                                  E3B78E3C7DF0B3FE09D9F0AE1F1445E2DD0BC4CBFD9DA378BAF67D7ADE292D1E
                                  1B29C4975797C9A95A8F267B9821DAEBA9DA3BBDCC01DDCB3D9CFE7D2CCEB468
                                  FB4C4435B37B35DB4D76DFF06F6577F618FE07CB2B666B059462538CAA460B9A
                                  A539B49AA8DC97234A692826AD65EF422DA94B963F65573BE29F8A9A2F82FC6B
                                  E17F0FEA53DDC1A9F8CA7B8B5D242D85C4B05C4D05BBDCC91BCE886289FC98E5
                                  75595D4B889F66EDAD8E7BF64E974B9BF672F08BE8BA878B756D35EC15A3BEF1
                                  36A0FA8EAB7A4B1DF2CD725DD67DEFB996585DADDD0A35BB3406227C97E27FC3
                                  4F1F5DFEDADE0EF1249E1CF16F89B44D1BC5A97B677D61AEDBC3A4689A34BA05
                                  CE9F2452D8CB770F99769A85CCD70D32DBCB27D9A508B331516EBDB5B1552346
                                  1529C6FCCE3B5DD93DDE9E5D7D2E7CCE5990612AE618AC1E32B722A30ACD7338
                                  D3729C13508FBCEC9B9DAF1BB7CAA4A2EF667D25AFEBF63E14D0AF754D52F6D3
                                  4DD334D824BABBBBBA996182D61452CF248EC42A22A824B12000093591F0D3E2
                                  7E9BF163429751D2EDBC436B6F0CE6D99359D02FF459CB05562561BC86291930
                                  E30E14A92180395603E418FE03FC70F117EC6FF1CFC21E388BC5BE2DF1378974
                                  14B1D320B4BD82C6DF51D56459E3B8BBB5B97D5E5905A3C86DDE4B774B0B7104
                                  4563B10669A03E9DF1BBE1F7C40D7BF655F0DE9DF0FB4FF1C7876E2DB56336B1
                                  A36B3AF3EA5E22B9B1FF004A1E52DEA6AF13B3FDA5ED66057558B1046C859803
                                  6B272C730C44BDFF0064D2E5BD9A77BDDAB76E97EAECF63DCAFC1D94D16B0EF3
                                  0A739BADC9ED2328FB38C3D9C26E6D37ED1DDC9C13B461CD169CCFA4AAA69BAF
                                  D8EB1797F6F697B697571A54E2D6FA2866577B398C51CC239003947314B13ED6
                                  C1DB22374604FCF17FF0F3E226B7E2EF87171E276F89DAD5BDAE93E1F325DF87
                                  758B2D0DF4CD5A0B9697549F57B48EF12DEE2DEE53EC886187EDAA8B0DDAC223
                                  2EAF375BF01FE11DF7C1EFDA23E2CCEDA67886E74CF885AB45E25B6D5E5D6DAF
                                  74F802D959DAB599866B832C571E7477320F2A0F27ECFF00678FCD1E547045D5
                                  0C5D494D2F66D2BD9DEF75A3F2B6F6EB6D77BE8BC4AFC3D82A187AB278B8CEA4
                                  61CD15171E59353826AEE4A5F0CA5249C149B8BB271B4A5ECB457CC5FF000514
                                  F18E97E17F187C12B4BBD47C5A6EF5FF0016DC699FD85E1CF1ABF86EFB5FB77D
                                  32F0EC53F6EB38E4DB7834FC179410CEB1A1DD3F9725BBFF00873F1A8F8BBE1C
                                  3EA3AADDEABA9D8693E1F8750D574CD4D6D347B4BE82E59BC452DE5AE62FB525
                                  F5A1486D07D9A6F2655670B659F38C4B306AACE9460DF2B5B79A4F5D3CF4DFCF
                                  956A6F4383E13C0E1F1D57131A6AB464D29D97C33943DDF7BDE49C6F36D46C9D
                                  A9AAB34E07D0FA6EB50EAB797F044976AFA6CE2DA6335ACB0A3B18A39731B3A8
                                  59536C8A37C65943074277A3AA9AFEBF63E14D0AF754D52F6D34DD334D824BAB
                                  BBBBA996182D61452CF248EC42A22A824B120000935E35F0AB45F14D8CFF001D
                                  ECF5DF0D7C433A26A3AF5C5FF86D25F12C325D6A3672E9D6F14B0E9F30BF32D9
                                  6EBB82E64895DED9621770953110EB178D7807F66EF8ABE3FF00D957C5BF0BFC
                                  5365E38B07F19FC2DB481B50F10F8C3FB405AF8B17ED96F7DE6DCC57971742DE
                                  E31A7CC228835A98566568D1E496192278FAC9251A6DB6A5D1EEAF6BE9D7A3F9
                                  DAC7461784F2F9CA53AF8D84210951BFBD4DB71A8A2E6E369EB2A69BE68A4D26
                                  B979B98FB568AF3CF85BF152DE5D47C3FE0D7F0F78B745D5974193509ECF57BC
                                  8352BAD1EDE09E3B5805F5CC5737199AEBF78F0B34B21985ADD166DF13AD7A1D
                                  7A34EA29C6E8F8EC6E0AA616A7B3A9F2D9DD5DABE8DAB3B68D369AD5369A6F9D
                                  F017C59F0E7C52BCF1141E1ED5ED3577F09EAD2685AB1B62592CEFA38A2964B7
                                  2D8DACE8B3461B693B5B721C3A328E8ABC13C25E0FF13EA2DFB485BEA1E19F1C
                                  7876DFC5DAB4975A1DF697A9E9D0EA5A943FD8765A77996122DCB0B7B8F36C5D
                                  E36B9F282F9D0336089163D6FD87BC3FE2CF0BFC27D42CBC63A1F88745D4E2D5
                                  A4313EB3AE4DA9CFA8C2618489D565D4B526B540C5E2108BC9013034B84F38A2
                                  F251C55494D42707AF36B66B66D2E9D56BABFD0FA2CD321C151C3D4C461F1116
                                  E3ECBDCE6849BE7A71949A9292BF249B8B518B6BED5AD26BD96B3FC59E13D2FC
                                  7BE15D4B42D774CD3F5AD135AB496C350D3EFEDD2E6D6FEDE54292C32C4E0A49
                                  1BA332B2B0218120820D78FF00ED2DFB22FF00C2FDF1D5A6B1FD93F03EFBECD6
                                  0967E678CBE1B7FC24B7C36C923E12E3EDD6FB21FDE711EC3862EDB8EFC0F70A
                                  E9A73A929C94E364B677BDFF00C8F171B85C1D2C3D1A987AFED2724F9E3CAE3C
                                  8F4B2BBD257D76DADE673FF0B7E13F85BE077812C7C2DE0AF0D787FC1FE19D2F
                                  CCFB1E91A269D0E9F6169E648D2C9E5C112AC69BA47773B40CB3B13C926BA0AF
                                  8AB5DF83FF001AA4F84125AEA361F13B59D4FF00B5BC32FA845A3F8E16C6EF51
                                  BE82EA57F116A56B37F6841E4E977968522B7B3F321F2E4C30B3B5C79B56FE2C
                                  F807F684D53E1EE8763A0C9E2DD3BFE114D7B5FB28DA0B9B5D4353BEB717AADA
                                  0EA2ACDAB592DCC30D9078E44BFB890CB2906E2CEE73E72798F35A8937EC25B5
                                  ED67DED6DAD7EBBEC7DAC780B052A90A7FDA9412737172728D9254F9D4F494A4
                                  E2DFB9F0AF7BBA4DAFB2A8A2BE35D7FE087C4FD57E2B78D74FB1D33E2CAE81AF
                                  6BD65709AE5EF8EE5B36B7B2FF00848AC26BEB7B58E0D625510BD91BCF25E3B5
                                  B19A0B7B7584F9F24EC6BB717899D149C20E57BED7EDE49EFB1F35C3B9261B32
                                  9CE188C4C68F2F2DB9B975BC927F14E0BDD5793D5B69592BD8FB2AB92F11FC6E
                                  F0FF0084BE29E81E0DD424D5ADF5BF146E5D31BFB1AF5EC6E5D61B89DA2FB6AC
                                  46D566115ACEFE534A1F6A676E0AE7E62F097C21F8F1A5FEC5A3C39AA4BE2DBC
                                  F12595FE93214FF848FED3AADD5B9D16C5AF97ED4B7D6D3CD8D61EF5B6FF0069
                                  5A1089F24925BA259DC74579AFFC5CD57C31FB3DDEF883E1478E35DF14F83674
                                  D67C5F35ADFF0087A20F77FD8DAA69932C60EA11A177B8B98E701008C4328E56
                                  45685789E6755A56A525B6F16FED5A4B4EA96ABF23E963C118184AA3963A8D44
                                  BDA4572D6A7077549CE94BDF6D38CA4B92696CED1536DDD7B5D9FC42F057ED03
                                  A8F8DFE1EDDD84DAB7F66DA0B2F1168DAEF876EA0B5BDB3BA3736F8DB770AC57
                                  76B37D9EE53747E644E11B9208CF7B5E1FE06BDF16FF00C36CF8BF55BBF86FE2
                                  DD3FC33ADE83A5E816DAE4F7BA4B5AEFD3EE75999E768E3BD6B810CCB7B008FF
                                  0073BF24F9891819AEE3F68DD17C47E21F841A8DAF859EEC6A6D3D9BCD159DD0
                                  B4BBBDB14BA85EFADADE62C9E4DC4D68B71145279916C92446F361C79A9DB471
                                  137465392774E5A59ABD9BB593EEAC7CE66593E1A9E65470942AC553A91A4F99
                                  D484D45CE31E7E6942C972CDCAE9D9A4B5EEF5BE15FC54D17E34782A0F10787E
                                  7BB9F4C9E7B9B506EAC2E2C278E6B7B892DA78E482E11258DD268A442AE80E50
                                  D54F167C6EF0FF00837C75A6F86AE64D5AEB5BD53CA65B6D3346BDD4BEC692C8
                                  638A5BA7B68A45B485DD640B2DC18D1BC99B0C44526DF9066F833F1DB48F811E
                                  1CD37C23A578E3C1A9A37897C5179258497F67AB6B5235E6A8F7DA55FB49FDB5
                                  6F15CA430CF70934779773AC9330F36D2E936CC9ECBA37C2CD52CBFE0A35E23F
                                  184BE10F887FD89A9E83A569F69AEC7E2A45D105C5BA6A4D3996C06A019A1297
                                  56F1C6A6D182DC09E50885DA793829661899C611F66D37CB76D3B6A9B765BE8D
                                  5B5B6FAB3EA71DC219261AAE22AAC6C6A538AAEE9C23529FB4FDDD48C29A9C9B
                                  506E7197B4FDDF336A2F963DBE86AC4F19D9787165D1B54F10C5A26FD17528E4
                                  D26F35148B3617D70AF631B40EFF00EAE7956EE4B75284338B968C67CC2A7E72
                                  F0C7C38F8FD6BF163E2F9FF8482EED9F5AD27595F0B6A13C314BA1C576F303A3
                                  3FCF7D3BC6F6B6EC239122D2ADE39584CD335DBA452CA78B3F665BEF89DFB336
                                  ADA5C1A37C64D2AE2DBC69A578A2DB45F1378F1AE754786CA6B0927B7B3BD835
                                  1988496282730A5C5D009772799BA00B14B1ECF1F59C5B8527749EFE5B6C9EFF
                                  00F0D7DCF363C2596D3C453862330A6E129534DC2CF954ADCCDA94A1F0DDD9AB
                                  AB26E7ECDDA2FEA8A2AA681A94DAC6856577716177A55C5D411CD2D8DD344D3D
                                  9B32826290C4EF1975276928EEB9076B30C13F267ECFDE20BEF1A7EDE7F136D3
                                  C27E21F10EABA67847C68CBAFCD75E336D5349B7D366D0A12DA6436325DCAD05
                                  C0D64BC81D6DA2444B5B981671B1AD8F4E2317ECA54E36BF3BB79ED7BDBCADAF
                                  63C6C9B879E3E9632ABA8A0B0D4DD46F471769462A3CD7DE4E4946DCDCCCFACF
                                  5FD6A1F0DE857BA8DC25DC96F61049732A5ADACB773B2A296223862569247C0E
                                  1115998E028248156EBE41B8F84FF1ABFE1957E29E99729E38BCF176A5E1AB4B
                                  3D356D3C56B0DEDEF8A97ED1F6CD62C6E7ED682D34B9656B1923B6F32DC2C76D
                                  70BF628FCC31CDE87FB4CF82FC47F17BC49F06A4B4F0EFC4EB5D31F56926F154
                                  3A1F8C0686FA558CD612A79577F65D461F3DE3BB7B49336E67DAB6B70118EF09
                                  360B1F51C79BD9BBD968D3EB269F47B68FD0F56A709E0A9D78D178DA6D73544E
                                  51941AB42942A46C9CE3F1B72A6AED2735CA9DF43DC26D7EC6DB5DB6D2E4BDB4
                                  4D4EF2096EADED1A6513CF0C4D1ACB22267732234D0866030A654071B866DD7C
                                  C5F0FF00E1A78FB54F1D7C08F89DE33F0E78B6E7C63A3784AE7C29E2BB1B7D76
                                  DE1FB2DFDCC963BB5192DA2BB5B192D3FD1EEE47116F94F9B647C8668105BFBD
                                  FC2BF89763F17FC15078834B8AED34CBC9EE63B49675502FA18AE24852EA12AC
                                  CAF6F3AC6268640712432C4E31BB15BE1B14EAB6A71E5EA93BDED64FEF4DD9AE
                                  87939DE450C14213A155554AF19CA2E2E2AA73D48A49A6EF19461CF1934B993B
                                  A560F8B1F167C39F02FE1C6AFE2EF176AF69A178734280DCDF5F5C93B225C800
                                  0001677662AAA8A0B3B32AA82CC01E7BE28FED4FE0AF831E3AB1F0EF892FB56D
                                  3F50D42C24D55255D06FEE2C60B38A458E6B99EF2285ADE0861678CCAF2C88B0
                                  ACB1B48515D58D3FDB57C2FADF8EFF00643F899E1FF0DE8D77E20D7BC49E1ABF
                                  D1AC2C6DA7B785E59AEA07B7562F3C91C6A8864DEC4BE76A36D0CD853E37FB6A
                                  7C27F1AFED05E3AF0B4BA3F803C5ABBBC07ADE9B1DDC9ACD85BD8E8DAAEA7269
                                  C6DE2D4E05BDFF004DB483EC729BA83CABBB7955902C773CAAF363F1588A5CDE
                                  C6376946DEEC9DEEDA7B76567E5D7467B9C239064D8F741E675BD9C652ACA6FD
                                  AD2838A85384A9BB4D5ED29B945BD79B68DA5177FA475EF89763A0FC47F0F785
                                  4C57773ABF88A0BCBD892155D96D696A22135C48CCCA36096E2D62DA9BA42D72
                                  8426C595E3E8ABCC3E156817DE29F8E1E3AF19EB16577025ACE9E17F0C7DA616
                                  882E9B0471C975711C720F32379EFDE78DDC6D4B8874EB07556458E59388FD83
                                  3C09E32F879FF0955878A746F8876F68BF64FECCD57C61E273AA5F6A483CF568
                                  DE15D53508639A3023792784DB24ED71816D1AC0B9DA389A9ED23171D24DEBAE
                                  896D7D3ED6AD3D343CBC464984583AB563592A946149B8DE379CAA36E4A29C93
                                  BD24E319C63193524DB495DAFA1A8AF25FDA8BF66AFF008687FEC3FF008977C2
                                  6D43FB23ED1FF23B7813FE128F2FCDF2BFE3DFFD2EDFC8CF97F3FDFDF88FEEEC
                                  E7D0FC03E1AFF842FC0BA2E8FE5E930FF64D84167E5E9561F60B14F2E354C5BD
                                  BEF7F26118F923DEDB170BB9B193D319D475251946D15B3BEFF2E87915F0B838
                                  60A957A75F9AAC9BE6A7CAD7224DD9F36D2BAB3D36B9734DD6A1D56F2FE0892E
                                  D5F4D9C5B4C66B596147631472E636750B2A6D9146F8CB2860E84EF4755B75F2
                                  BF8F7C17F13355F82DFB4C68BA67877E2743A9EB7AB4D79E00997C610C772ED2
                                  D95AC48F6970351F32D6DE3BF827B93048D12882708B136E7B75B7F13BE06F8A
                                  6E27F83F1E87FF000BC1E3BFD7A6BFF1C5E278DA18EEAD6CEEB4E786E21BA8CD
                                  E881775C35BB6DD3A32B6C21BA7B33048D197E178FAAAF6A4DFC9FF338F6F9FA
                                  6BA23E9E3C25816E3CD8E846F7FB5076B518D5BB6AA2B5DC9D34B5FDE2704E52
                                  4D1F4ED15F36FEDA9F0BFE2ACDA1781EDBE15EA9E218B4CD020B882E52CA7FB7
                                  EADF6B55B716176ED75A9D8ADD244A975E62DD5CCF1CAF347E6DADCF2F0D4F1F
                                  78275DD1BF6BED6B5ED5ADBE21A7C33BEB09CEB1ADDE78DE4D2344F0E4434A64
                                  92E6D960D5D3108F2C295934F4963B89E6BA5BB0B146B55531D521370F66F471
                                  57E9AAD5E89E8B67A231C170AE0F11858627EBB0BCA1565C8ADED13A724A306A
                                  528AE6A89B94146526ED649BB1F4ED15F0A7EC9B17C55F8C7FB014BACF83B5DF
                                  10EFF11786BC3E6DA5D6FC49FDB7A86A7A9432B7FC2413DBCE2F99E04BAB7096
                                  F0C26F2CDE1B8865E2C1C99CFACC5E07F89971FB2AF81EC7588FC71ACDF69FAB
                                  4CFE27D2ACB528745F116A3A60FB6ADADB41751EA720478A56D39DA46D4FCD9A
                                  0B693CD964925921932A19A4AAC14E34A5671E6BF4DED6EFE7B6DB27B1DD9AF0
                                  250C0626A616AE3A97353ACE938DD29690E672B37CA927FBBD6697B4D2528ABC
                                  97D0F36BF636DAEDB69725EDA26A77904B756F68D3289E786268D6591133B991
                                  1A68433018532A038DC3269BAD43AADE5FC1125DABE9B38B698CD6B2C28EC628
                                  E5CC6CEA1654DB228DF19650C1D09DE8EABE0907C08D53C35F193E09F8E23D3F
                                  E21EBFFF0008CF84A7F096A30DFF008991F53B47B936052F7508FED496773E5A
                                  C175F6A784CAF24AD6CE91CDE4C4F09A27C21F197C4AF0EFED03E11D425F887E
                                  05B4F136BD2DD783FC433788CDCCD649258DB4626B336F7CD710C297F6F3DC0B
                                  666810C57291ED0AD2451EDF5BAD7B7B3D6FA6FF00CB7DED65AE9EA707FABD96
                                  F22A9F5B5CAA29C9BE5BA7EDFD9BE5829B94ED0B54492BB8DDE896BF43515F31
                                  587C16F8B11FEC91E24BDB6BCD5B44F8A3E2DFB0CD268D2F8A6F35BB7D074EB7
                                  9218FF00B32D6696E22FF4B7D3E39165B949E079AF67925FB5C2BE54B0FAD7EC
                                  A7A578A743F807A0DA78CE5D5A5F10DBFDA127FED38A18EEA38BED12F911BF95
                                  797A1B641E52091EEA79640A1E5732B3D6943153A93509536938DEFD37DBA3BD
                                  B5B5B438F35C830D84C2CF114B170A928D5F67C8BE2768733A8ACE5174D4AF05
                                  2526A5BAD19E875C9784FE37787FC73E3AD4BC3DA4C9AB5EDDE93E6ADC5DA68D
                                  7A34ADF148229628EFCC42D259A39098DE28E567478E55650D14817CF3FE10BF
                                  88DFF0D7DFDABE76ADFF0008CFDBFCEFB57F6AAFF647F61FF65795FD99F62F33
                                  3FDA3FDAFF00E97F69FB3E7ECDFBBFB5E3FD16B27FE09E9F0B354F84DE0FF14D
                                  96B1E10F887E15BBBCD7B51D4233E25F1526B70DD5BDCEA77F736E2155D42EC4
                                  532413442E1B6C66595B733CEC0BD66B175A559538C2CAF2BB69F4B5ADD35BE9
                                  77D34B9D73E1FCBA865957195712A7539294A3184A0ACEA39F32926F99BA7CAB
                                  9A308B69C97372AD4F4EF8C7FB447863E03DE6836FE213E21371E269E5B5D322
                                  D2BC37A8EB2F753471199E3C59C12957F292470AD82CB14AC322372BD0E8DE3A
                                  D2FC49FD92FA6DD7F69DA6B960DA9D85F59C4F7163736E3CAC38B94061F9C4D1
                                  B202E0C8BBD9032A395F1BFDB8BC0DADF8FF0053F85B1E9BE0DF1C78B34CD0BC
                                  4B3EB3AB3785F5FB7D12F6D611A55FDA46A970F7D6728779AF22388A4C18E298
                                  39195492A7C27F87BE3EF867F193E10D95F693AB5DE93A47C347F0EF8A350D1F
                                  51B7B6F0C47AA21B26B77874DF3A2D9B7ECF7C82486CD484BCB74FB8AC21878B
                                  AF1C44A0E378DD24ECFAF2DF5D9EEF55B59DF6D7A21C3F9555CA28E2A15D46BB
                                  85494A2EA53B7BBED39528E938B6A11F765773738F25D49F27D0D591E39F1D69
                                  7F0DBC2D75ACEB375F64D3ED362B32C4F2C92BBBAC71C514681A4966924648E3
                                  8A356791DD111599803F267ECE7F11BFE136FF00828178AEDBC49ABFC43B7D77
                                  4BBFD5ADB4BD05BC45BEC5208E678A3B9BCD3A0BF6290B5B246F6B2CBA659C01
                                  6E53CC9AF6E66B6B993D6BFE0A01F097C53F1ABE052689E186D58E6FC5C5F47A
                                  3CD0C3AAFEEEDE76B29ED1E59EDD04D6BA9FF675E60DCC1B92CE45DEDBBCA908
                                  E612A9869D6A51BB574977ED7EDE6BB057E0FA182CEB0B966615D469D45094E7
                                  A2514EFCDCB2BB52B24D464ED172DECB53D9740D7EC7C57A1596A9A5DEDA6A5A
                                  66A50477569776B32CD05D42EA19248DD4957465208604820822ADD792FEC4FF
                                  000F754F841F00ED3C21AA693AB68FFF0008CDFDED9D8C17BA8A6A11A591B892
                                  5B68AD67F3A5965B4821952DA17B810CCC96CACF0439083C6FF69BF855F15752
                                  F8CDF10AEBC11A4FC4EBF4F10786B52B6D2F503E31FECED3346D49B44922B696
                                  CA14D5950A1B84863F2E6D395D2E6E25B9FB5848E34ABA98DAB0C3C2AFB36DBB
                                  5D2BE9A6BD2FBE9B239F05C3382C566F89CBD63210A74F99C2A49C129A524A3A
                                  F3A8DDC5F3594A4F469293D0FAFAB92F899F1BBC3FF08351D06DB5F9356B7FF8
                                  492FE1D32CA7B7D1AF6F2D52E269E1B785279E189E2B6F3269E24533B2062C70
                                  4ED6C7CF3E04F82DF193C13F0DBE2B68315E78B67B6BDDF71E1C6BFF0014B6A1
                                  7CF9D77570F1C57335C35C26ED19348558FED16D9663B6E6CEE1E6BA8EA22FC6
                                  5D4BF646F0B7873C45F0CFC71E20F17697E34B1BE9A45D43454234CD37C4369A
                                  85BB3B4DAAC8CCEF631AC2BBE79E53340FE74ADB85C4BCF3CCAB7B3BAA524F95
                                  BF85B574EDCBA6B77D3CB53D6C3F04E5EB16A3531D4A749568D376AB4E9C9C65
                                  0E6F6A9CDB8F2C1E92DFDE5CA9DDDD7D2369F1BBC3F79F1926F00F99AB43E268
                                  6C24D4D62B8D1AF60B5BAB78CDBAC8F05DBC42DE7D8D776EAC22918A99002010
                                  40EB6BC135AD7FC67AC7ED79E03F1027C28F1C45A0E9FE1AD4746BEBE92FF44D
                                  96736A53E8B7019906A06464B7167709314463B9079426560C7DEEBBF0D5A551
                                  CD496CF4D1AD2CBBEFD55D1F299D65B43094F0D2A324DCE9DE4954854B4B9A49
                                  AF73E1BA51928CB55CD66D9CEE83F15345F127C47F10F84ED67BBFEDEF0B4167
                                  75A85BCD6171022C37625F2248E57458E746304CBBA2670AD13AB61948A3E25F
                                  C54D17E11E8516A1ADCF76A97338B5B5B6B2B0B8D42F6FA62ACFE5C16B6E924F
                                  3388D2491963462B1C5239C22330F907C2FF00053E3869507C48FB3691E2DB1F
                                  18F883C25E1CB3BFF135FEBF05FDAEBBA8D86A37926B034E45D4167B486EEDEF
                                  24FB2469FD9E9112DF35836D71ADE3CF82FE3EF157C33F80CDE23F0AFC59F186
                                  ADE10D7B55BDD68691E25B7F0F6A16564F697F6D6D13326B87CC9879F66A937D
                                  B2799A186E0CB3079E5497CC599E25D376A4F9BCD3B7C7CA935BDD47DE7656F9
                                  1F733E07C929E322A5984254AE9351A94F9DB587F6B29464DAA7184AAA74A3CD
                                  2E64DA4D396FF5FE81AD43E24D0ACB51B74BB8EDEFE08EE624BAB596D2755750
                                  C0490CAAB246F83CA3AAB29C8600822ADD7CF3FB42782BE2DEA5FB57F81F57F0
                                  D6A3AB2F816D7EC11DC43A6471C9F63717921D41AEA39751B489E19ED1A08D59
                                  ADF5078BCB99E18EDE50AF35BF865F09FC477DF1A7C58FE304F89DBF518359B3
                                  3AADB78AC45E19BEB1B9BD8DAC12DAD62BB171697D6D64B143E7C36D6FF3ADDB
                                  9965778E67ED58CA9CEE9FB37BDAFD1F9F5FF2B75BE87CC4F87304B0B1C5FD72
                                  1AC39B9134E71777EEB4DC1376B5EDEF733D21C9FBC3DC340D7EC7C57A1596A9
                                  A5DEDA6A5A66A50477569776B32CD05D42EA19248DD4957465208604820822AD
                                  D792FEC3DF0F754F837FB30F84FC0FACE93AB699A87822C21D0E69AF7514BF8F
                                  5578624125DDAC826964168F217F2639444F1A2AA79112AA20F1BF1B7882FBC4
                                  5FF0530D6BC33E0EF10F8867D7AC349F0BEB3756E9E3363A3E8308BFBA5D596E
                                  34A7BBC17B9D345A44823B494472DC5BCCC6DDA517054F1D2A7469D49C7DE959
                                  5B5DECDB4B4D76F2F3691786E15A58BCC71B85C3575ECA829494FDD69C54E308
                                  CA4D4AD14D493934E4D6D18CA564FEBEAA9A06B50F89342B2D46DD2EE3B7BF82
                                  3B9892EAD65B49D55D43012432AAC91BE0F28EAACA72180208AF04F08F80BE23
                                  597C4CF1D5CEBF0F8B752D12EAC35C4BC4B3F10AC6BE21F3AED1F458F4851729
                                  FD9F35AE9E26B69E4FF42DF71247217B82BF694E77C5FE0BF899E22FD80BE166
                                  917DE1DF89D73F113499FC3D0F886DF49F1843A76AD22DACB126A92CB7B1EA30
                                  A4C9716D1DC851E7B333DD40ECB1BA978A5E3EA59BF66F44DECF5B5B4DB777F3
                                  D53B68AEF4A7C2784954A74E58DA7EF4E9C1CB9A168A9A9DE4D39AF762E376DB
                                  8DA328F35AA49D387D3BA96BF63A3DE585BDDDEDA5ADC6AB39B5B18A69951EF2
                                  61149318E304E5DC4514AFB57276C6EDD14916EBE57D63E0D78E35DD0BE1FEB1
                                  ADF87FC71ABEA7F06BE21EAF7567636FE288E2BDF10E885750B7D36489FEDA91
                                  5C3AC371A7891B50952778E0BD57F33CF75B9FAA2BA30B5E756EE71E5DAD7BF5
                                  5E9D1DD1E467994E1B02A9AC3D7555BE752E5716938CDA56B49BB4A1CB24DA5B
                                  B4AEE2EC514515D67CF85145140051451400514514005145140057C01FF040BF
                                  F9BD4FFB3AAF1CFF00ED8D7DFF005F007FC102FF00E6F53FECEABC73FF00B634
                                  01D07ED05FF042FF000B7C71FDAC7C7FF18B49F8F3FB4FFC27F137C4CFECEFED
                                  EB5F87BE368742B0BBFB059C7676DB916D5A47DB1A123CC91B0D2C857686C573
                                  FF00F0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF
                                  000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF
                                  00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF0072514500
                                  1FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF
                                  7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF
                                  00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E
                                  0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7F
                                  F7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00
                                  FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0B
                                  FF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145
                                  001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0
                                  EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDB
                                  FF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF00
                                  0E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF
                                  7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF
                                  00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E
                                  0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF007251
                                  45001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00
                                  F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4F
                                  DBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF
                                  000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0
                                  EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDB
                                  FF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF00
                                  0E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF0072
                                  5145001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF
                                  00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD
                                  4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF007251
                                  FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00
                                  F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4F
                                  DBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF
                                  000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00
                                  725145001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBF
                                  FF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFA
                                  BD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF0072
                                  51FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF
                                  00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD
                                  4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001
                                  FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF
                                  00725145001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FD
                                  BFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BF
                                  FABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF00
                                  7251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBF
                                  FF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFA
                                  BD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF7251450
                                  01FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7
                                  FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4
                                  FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0
                                  BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF
                                  007251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FD
                                  BFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BF
                                  FABD4FDBFF00FF000EF7FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF72514
                                  5001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000E
                                  F7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7FF007251FF000E0BFF00AB
                                  D4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4FDBFFF00F0EF7FF7251FF0
                                  E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0BFFABD4FDBFF00FF000EF7
                                  FF007251FF000E0BFF00ABD4FDBFFF00F0EF7FF725145001FF000E0BFF00ABD4
                                  FDBFFF00F0EF7FF7251FF0E0BFFABD4FDBFF00FF000EF7FF00725145001FF0E0
                                  BFFABD4FDBFF00FF000EF7FF007257BFFF00C13AFF00E09D7E16FF00826BFC2C
                                  F15785BC2DE2AF881E34FF0084D3C5777E32D5F57F196A70EA3AADE6A3750DBC
                                  53C8F3C70C5BF77D9D5C970CE5DDC963900145007FFFD9}
                                mmHeight = 128323
                                mmLeft = 10583
                                mmTop = 1588
                                mmWidth = 210873
                                BandType = 7
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                  object ppLine140: TppLine
                    UserName = 'Line140'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 208492
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine157: TppLine
                    UserName = 'Line157'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 262203
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppDBCalc53: TppDBCalc
                    UserName = 'DBCalc53'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'SQTY1'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 247386
                    mmTop = 1323
                    mmWidth = 14552
                    BandType = 7
                  end
                  object ppLine101: TppLine
                    UserName = 'Line1'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 246857
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppLine116: TppLine
                    UserName = 'Line116'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 195792
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object ppDBCalc95: TppDBCalc
                    UserName = 'DBCalc95'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY10'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0;-#,0;'#39#39
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2381
                    mmLeft = 181505
                    mmTop = 1323
                    mmWidth = 14023
                    BandType = 7
                  end
                  object ppLine148: TppLine
                    UserName = 'Line148'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 5292
                    mmLeft = 277548
                    mmTop = 0
                    mmWidth = 794
                    BandType = 7
                  end
                  object g005: TppLabel
                    UserName = 'Label10'
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
                    BandType = 7
                  end
                  object p105: TppLabel
                    UserName = 'Label3'
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
                    mmLeft = 240771
                    mmTop = 1323
                    mmWidth = 5292
                    BandType = 7
                  end
                end
              end
            end
            object ppShape10: TppShape
              UserName = 'Shape10'
              mmHeight = 5292
              mmLeft = 794
              mmTop = 0
              mmWidth = 283105
              BandType = 7
            end
            object ppDBCalc43: TppDBCalc
              UserName = 'DBCalc43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY1'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 48154
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc44: TppDBCalc
              UserName = 'DBCalc44'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY2'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 62971
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc45: TppDBCalc
              UserName = 'DBCalc45'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY3'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 77788
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc46: TppDBCalc
              UserName = 'DBCalc46'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY4'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 92604
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc47: TppDBCalc
              UserName = 'DBCalc47'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY5'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 107421
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc48: TppDBCalc
              UserName = 'DBCalc48'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY6'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 122238
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc49: TppDBCalc
              UserName = 'DBCalc49'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY7'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 137054
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc50: TppDBCalc
              UserName = 'DBCalc50'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY8'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 151871
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc51: TppDBCalc
              UserName = 'DBCalc51'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY9'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 166688
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc54: TppDBCalc
              UserName = 'DBCalc54'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'OQTY'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 196321
              mmTop = 1323
              mmWidth = 11906
              BandType = 7
            end
            object ppDBCalc55: TppDBCalc
              UserName = 'DBCalc55'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TQTY'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 216694
              mmTop = 1323
              mmWidth = 6879
              BandType = 7
            end
            object ppLabel29: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total / '#32317#35336': '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 1588
              mmTop = 1323
              mmWidth = 11980
              BandType = 7
            end
            object ppLine117: TppLine
              UserName = 'Line117'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 47625
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine118: TppLine
              UserName = 'Line118'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 121709
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine119: TppLine
              UserName = 'Line119'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 106892
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine120: TppLine
              UserName = 'Line202'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 92075
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine121: TppLine
              UserName = 'Line121'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 62442
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine122: TppLine
              UserName = 'Line122'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 77258
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine123: TppLine
              UserName = 'Line123'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 136525
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine124: TppLine
              UserName = 'Line124'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 151342
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine125: TppLine
              UserName = 'Line125'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 166159
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine126: TppLine
              UserName = 'Line126'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 180975
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine127: TppLine
              UserName = 'Line127'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 262203
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine128: TppLine
              UserName = 'Line128'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 216165
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine130: TppLine
              UserName = 'Line130'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 223838
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppDBCalc56: TppDBCalc
              UserName = 'DBCalc56'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 262732
              mmTop = 1323
              mmWidth = 14552
              BandType = 7
            end
            object p007: TppLabel
              UserName = 'Label302'
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
              mmLeft = 228600
              mmTop = 1323
              mmWidth = 5292
              BandType = 7
            end
            object ppLine138: TppLine
              UserName = 'Line138'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 208492
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppDBCalc37: TppDBCalc
              UserName = 'DBCalc37'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY1'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 247386
              mmTop = 1323
              mmWidth = 14552
              BandType = 7
            end
            object ppLine182: TppLine
              UserName = 'Line1801'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 234686
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine84: TppLine
              UserName = 'Line84'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 246857
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppLine131: TppLine
              UserName = 'Line131'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 195792
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object ppDBCalc93: TppDBCalc
              UserName = 'DBCalc93'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY10'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0;'#39#39
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2381
              mmLeft = 181505
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppLine147: TppLine
              UserName = 'Line147'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 277548
              mmTop = 0
              mmWidth = 794
              BandType = 7
            end
            object g007: TppLabel
              UserName = 'Label22'
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
              mmHeight = 2381
              mmLeft = 278078
              mmTop = 1323
              mmWidth = 5292
              BandType = 7
            end
            object p107: TppLabel
              UserName = 'Label4'
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
              mmLeft = 240771
              mmTop = 1323
              mmWidth = 5292
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'WS'
            DataPipeline = ppDBPipeline2
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
              BeforePrint = ppGroupFooterBand3BeforePrint
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5292
              mmPrintPosition = 0
              object ppShape6: TppShape
                UserName = 'Shape6'
                mmHeight = 5292
                mmLeft = 794
                mmTop = 0
                mmWidth = 283105
                BandType = 5
                GroupNo = 0
              end
              object wsttl002: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Sub-total / '#23567#35336': '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2498
                mmLeft = 31485
                mmTop = 1323
                mmWidth = 15748
                BandType = 5
                GroupNo = 0
              end
              object ppLine61: TppLine
                UserName = 'Line61'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 47625
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine62: TppLine
                UserName = 'Line62'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 121709
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine63: TppLine
                UserName = 'Line63'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 106892
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine64: TppLine
                UserName = 'Line64'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 92075
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine65: TppLine
                UserName = 'Line65'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 62442
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine66: TppLine
                UserName = 'Line66'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 77258
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine67: TppLine
                UserName = 'Line67'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 136525
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine68: TppLine
                UserName = 'Line68'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 151342
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine69: TppLine
                UserName = 'Line69'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 166159
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine70: TppLine
                UserName = 'Line402'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 180975
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine71: TppLine
                UserName = 'Line71'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 262203
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine72: TppLine
                UserName = 'Line72'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 216165
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppDBText19: TppDBText
                UserName = 'DBText19'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY1'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 48154
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText20: TppDBText
                UserName = 'DBText20'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY2'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 62971
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText21: TppDBText
                UserName = 'DBText21'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY3'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 77788
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText22: TppDBText
                UserName = 'DBText201'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY4'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 92604
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText23: TppDBText
                UserName = 'DBText23'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY5'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 107421
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText24: TppDBText
                UserName = 'DBText202'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY6'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 122238
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText25: TppDBText
                UserName = 'DBText25'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY7'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 137054
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText26: TppDBText
                UserName = 'DBText26'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY8'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 151871
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText27: TppDBText
                UserName = 'DBText27'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY9'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 166688
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBText30: TppDBText
                UserName = 'DBText30'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'OQTY'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 196321
                mmTop = 1323
                mmWidth = 11906
                BandType = 5
                GroupNo = 0
              end
              object ppLine82: TppLine
                UserName = 'Line82'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 223838
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppDBText33: TppDBText
                UserName = 'DBText302'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 262732
                mmTop = 1323
                mmWidth = 14552
                BandType = 5
                GroupNo = 0
              end
              object p004: TppLabel
                UserName = 'Label403'
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
                mmLeft = 228600
                mmTop = 1323
                mmWidth = 5292
                BandType = 5
                GroupNo = 0
              end
              object ppLine137: TppLine
                UserName = 'Line137'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 208492
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppDBText29: TppDBText
                UserName = 'DBText29'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SQTY1'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 247386
                mmTop = 1323
                mmWidth = 14552
                BandType = 5
                GroupNo = 0
              end
              object ppLine181: TppLine
                UserName = 'Line181'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 234686
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppDBText31: TppDBText
                UserName = 'DBText301'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'TQTY'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 216694
                mmTop = 1323
                mmWidth = 6879
                BandType = 5
                GroupNo = 0
              end
              object ppLine73: TppLine
                UserName = 'Line73'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 246857
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppLine129: TppLine
                UserName = 'Line129'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 195792
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object ppDBText77: TppDBText
                UserName = 'DBText77'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY10'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0;-#,0;'#39#39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 181505
                mmTop = 1323
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppLine146: TppLine
                UserName = 'Line146'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5292
                mmLeft = 277548
                mmTop = 0
                mmWidth = 794
                BandType = 5
                GroupNo = 0
              end
              object g004: TppLabel
                UserName = 'Label21'
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
                mmHeight = 2381
                mmLeft = 278078
                mmTop = 1323
                mmWidth = 5292
                BandType = 5
                GroupNo = 0
              end
              object p104: TppLabel
                UserName = 'Label3'
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
                mmLeft = 240771
                mmTop = 1323
                mmWidth = 5292
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'PDN'
            DataPipeline = ppDBPipeline2
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
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'WS'
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
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 5292
          mmLeft = 794
          mmTop = 0
          mmWidth = 283105
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 48154
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 62971
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 77788
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 92604
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 107421
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 122238
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 137054
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 151871
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 166688
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc25'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 196321
          mmTop = 1323
          mmWidth = 11906
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc26'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 216694
          mmTop = 1323
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object wsttl001: TppLabel
          UserName = 'wsttl001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-total / '#23567#35336': '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2498
          mmLeft = 31485
          mmTop = 1323
          mmWidth = 15748
          BandType = 5
          GroupNo = 0
        end
        object ppLine31: TppLine
          UserName = 'Line31'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 47625
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 121709
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine33: TppLine
          UserName = 'Line33'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 106892
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine34: TppLine
          UserName = 'Line201'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 92075
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine35: TppLine
          UserName = 'Line35'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 62442
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine36: TppLine
          UserName = 'Line36'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 77258
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine37: TppLine
          UserName = 'Line37'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 136525
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine38: TppLine
          UserName = 'Line38'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 151342
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine39: TppLine
          UserName = 'Line39'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 166159
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine40: TppLine
          UserName = 'Line40'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 180975
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine42: TppLine
          UserName = 'Line42'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 216165
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine43: TppLine
          UserName = 'Line43'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 246857
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine78: TppLine
          UserName = 'Line78'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 223838
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc41'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 262732
          mmTop = 1323
          mmWidth = 14552
          BandType = 5
          GroupNo = 0
        end
        object p003: TppLabel
          UserName = 'Label402'
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
          mmLeft = 228600
          mmTop = 1323
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object ppLine136: TppLine
          UserName = 'Line136'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 208492
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 247386
          mmTop = 1323
          mmWidth = 14552
          BandType = 5
          GroupNo = 0
        end
        object ppLine172: TppLine
          UserName = 'Line172'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 262203
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine100: TppLine
          UserName = 'Line404'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 195792
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine141: TppLine
          UserName = 'Line405'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 234686
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc91: TppDBCalc
          UserName = 'DBCalc91'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 181505
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppLine145: TppLine
          UserName = 'Line145'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 277548
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object g003: TppLabel
          UserName = 'Label68'
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
          BandType = 5
          GroupNo = 0
        end
        object p103: TppLabel
          UserName = 'Label42'
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
          mmLeft = 240771
          mmTop = 1323
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'PDN'
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
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand2BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6878
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 5292
          mmLeft = 794
          mmTop = 0
          mmWidth = 283105
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc27'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 48154
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc28: TppDBCalc
          UserName = 'DBCalc28'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 62971
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc29: TppDBCalc
          UserName = 'DBCalc29'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 77788
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc30: TppDBCalc
          UserName = 'DBCalc30'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 92604
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc31: TppDBCalc
          UserName = 'DBCalc31'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 107421
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc32: TppDBCalc
          UserName = 'DBCalc32'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 122238
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc33: TppDBCalc
          UserName = 'DBCalc201'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 137054
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc34'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 151871
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc35: TppDBCalc
          UserName = 'DBCalc35'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 166688
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc38'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 196321
          mmTop = 1323
          mmWidth = 11906
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 216694
          mmTop = 1323
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object ppLabel19: TppLabel
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
          mmHeight = 2498
          mmLeft = 10848
          mmTop = 1323
          mmWidth = 36491
          BandType = 5
          GroupNo = 1
        end
        object ppLine46: TppLine
          UserName = 'Line46'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 47625
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine47: TppLine
          UserName = 'Line47'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 121709
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine48: TppLine
          UserName = 'Line48'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 106892
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine49: TppLine
          UserName = 'Line49'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 92075
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine50: TppLine
          UserName = 'Line50'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 62442
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine51: TppLine
          UserName = 'Line51'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 77258
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine52: TppLine
          UserName = 'Line52'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 136525
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine53: TppLine
          UserName = 'Line53'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 151342
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine54: TppLine
          UserName = 'Line54'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 166159
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine55: TppLine
          UserName = 'Line401'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 180975
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine57: TppLine
          UserName = 'Line57'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 216165
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine58: TppLine
          UserName = 'Line58'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 246857
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine77: TppLine
          UserName = 'Line77'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 223838
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc40'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 262732
          mmTop = 1323
          mmWidth = 14552
          BandType = 5
          GroupNo = 1
        end
        object p002: TppLabel
          UserName = 'Label45'
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
          mmLeft = 228600
          mmTop = 1323
          mmWidth = 5292
          BandType = 5
          GroupNo = 1
        end
        object ppLine135: TppLine
          UserName = 'Line135'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 208492
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc401'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 247386
          mmTop = 1323
          mmWidth = 14552
          BandType = 5
          GroupNo = 1
        end
        object ppLine171: TppLine
          UserName = 'Line171'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 262203
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine80: TppLine
          UserName = 'Line80'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 195792
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppLine81: TppLine
          UserName = 'Line81'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 234686
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc89: TppDBCalc
          UserName = 'DBCalc89'
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
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2381
          mmLeft = 181505
          mmTop = 1323
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppLine144: TppLine
          UserName = 'Line144'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 277548
          mmTop = 0
          mmWidth = 1323
          BandType = 5
          GroupNo = 1
        end
        object g002: TppLabel
          UserName = 'Label67'
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
          BandType = 5
          GroupNo = 1
        end
        object p102: TppLabel
          UserName = 'Label49'
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
          mmLeft = 240771
          mmTop = 1323
          mmWidth = 5292
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
