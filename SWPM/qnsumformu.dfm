object frmqnsum: Tfrmqnsum
  Left = 192
  Top = 114
  Caption = 'frmqnsum'
  ClientHeight = 181
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 16
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object ComboBox2: TComboBox
    Left = 168
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object DateEdit1: TDateEdit
    Left = 16
    Top = 56
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object DateEdit2: TDateEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object ComboBox3: TComboBox
    Left = 16
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 144
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from line_shjs'
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'DATE1'
        DataType = ftDate
      end
      item
        Name = 'SHJS'
        DataType = ftFloat
      end
      item
        Name = 'ZKTD'
        DataType = ftFloat
      end
      item
        Name = 'SCLHJS'
        DataType = ftFloat
      end
      item
        Name = 'QYJS'
        DataType = ftFloat
      end
      item
        Name = 'FLAG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SJRS'
        DataType = ftFloat
      end
      item
        Name = 'SJYC'
        DataType = ftFloat
      end
      item
        Name = 'SJRS1'
        DataType = ftFloat
      end
      item
        Name = 'SJRS2'
        DataType = ftFloat
      end
      item
        Name = 'PQTY'
        DataType = ftFloat
      end
      item
        Name = 'AQTY'
        DataType = ftFloat
      end
      item
        Name = 'DIFF'
        DataType = ftFloat
      end
      item
        Name = 'AQTY1'
        DataType = ftFloat
      end
      item
        Name = 'EOT'
        DataType = ftFloat
      end
      item
        Name = 'EFF1'
        DataType = ftFloat
      end
      item
        Name = 'EFF2'
        DataType = ftFloat
      end
      item
        Name = 'XJS'
        DataType = ftFloat
      end
      item
        Name = 'PSECT'
        DataType = ftFloat
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LSTR'
        DataType = ftFloat
      end
      item
        Name = 'KSJS'
        DataType = ftFloat
      end
      item
        Name = 'ZHJS'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT1'
        DataType = ftDate
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'DBXL'
        DataType = ftFloat
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FCCS'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'FLAG3'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAGS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'LST'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DFLAG'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'MARKS'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'DSECT'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG1'
        DataType = ftFloat
      end
      item
        Name = 'TRS'
        DataType = ftFloat
      end
      item
        Name = 'CEOT'
        DataType = ftFloat
      end
      item
        Name = 'PQTY1'
        DataType = ftFloat
      end
      item
        Name = 'MPSECT'
        DataType = ftFloat
      end
      item
        Name = 'PEFF'
        DataType = ftFloat
      end
      item
        Name = 'LST1'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KSJS1'
        DataType = ftFloat
      end
      item
        Name = 'MWFLB'
        DataType = ftFloat
      end
      item
        Name = 'MWFS'
        DataType = ftFloat
      end
      item
        Name = 'MWFA'
        DataType = ftFloat
      end
      item
        Name = 'MWFAC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBN'
        DataType = ftFloat
      end
      item
        Name = 'GSDMBN'
        DataType = ftFloat
      end
      item
        Name = 'RFIDP'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MWFSC'
        DataType = ftFloat
      end
      item
        Name = 'MWFLBC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBNC'
        DataType = ftFloat
      end
      item
        Name = 'PRJ1'
        DataType = ftFloat
      end
      item
        Name = 'PRJ2'
        DataType = ftFloat
      end
      item
        Name = 'PRJ3'
        DataType = ftFloat
      end
      item
        Name = 'PRJ4'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
    Top = 112
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 112
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 40
    Top = 112
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 72
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 112
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 136
    Top = 112
  end
  object ppReport1: TppReport
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
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
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
    Left = 168
    Top = 112
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object rpttitle: TppLabel
        UserName = 'rpttitle'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LWPM - Workshop Delivery Dashboard (On-time / Lock Diff)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 2646
        mmTop = 4763
        mmWidth = 255323
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 248709
        mmTop = 10054
        mmWidth = 13494
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
        mmLeft = 264055
        mmTop = 10054
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 248709
        mmTop = 14288
        mmWidth = 6604
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
        mmLeft = 264055
        mmTop = 14288
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 14023
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tplant'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 14023
        mmTop = 14023
        mmWidth = 3641
        BandType = 0
      end
      object wks001: TppLabel
        UserName = 'wks001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 26723
        mmTop = 14023
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'As at Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 59267
        mmTop = 14023
        mmWidth = 15346
        BandType = 0
      end
      object date001: TppLabel
        UserName = 'date001'
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
        Transparent = True
        mmHeight = 3704
        mmLeft = 77258
        mmTop = 14023
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 105834
        mmTop = 14023
        mmWidth = 8996
        BandType = 0
      end
      object wk01: TppLabel
        UserName = 'wk01'
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
        Transparent = True
        mmHeight = 3704
        mmLeft = 116152
        mmTop = 14023
        mmWidth = 26194
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object avg007: TppLabel
        UserName = 'avg007'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 252942
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object avg008: TppLabel
        UserName = 'avg008'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 263261
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object chase003: TppLabel
        UserName = 'chase003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 175948
        mmTop = 794
        mmWidth = 22225
        BandType = 4
      end
      object chase004: TppLabel
        UserName = 'chase004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 109802
        mmTop = 794
        mmWidth = 9260
        BandType = 4
      end
      object chase005: TppLabel
        UserName = 'chase005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 121444
        mmTop = 794
        mmWidth = 8731
        BandType = 4
      end
      object next001: TppLabel
        UserName = 'next001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 199496
        mmTop = 794
        mmWidth = 11377
        BandType = 4
      end
      object next002: TppLabel
        UserName = 'next002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 212725
        mmTop = 794
        mmWidth = 12435
        BandType = 4
      end
      object next004: TppLabel
        UserName = 'next004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 228336
        mmTop = 794
        mmWidth = 18256
        BandType = 4
      end
      object chase006: TppLabel
        UserName = 'chase006'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 165629
        mmTop = 794
        mmWidth = 8731
        BandType = 4
      end
      object line002: TppDBText
        UserName = 'line002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PLINE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 2117
        mmTop = 794
        mmWidth = 6435
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 30692
        mmTop = 794
        mmWidth = 9694
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 47361
        mmTop = 794
        mmWidth = 9102
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
        DataField = 'RWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 59531
        mmTop = 794
        mmWidth = 2963
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 57150
        mmTop = 794
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText301'
        HyperlinkColor = clBlue
        AutoSize = True
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
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 26194
        mmTop = 794
        mmWidth = 2709
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
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 11906
        mmTop = 794
        mmWidth = 9906
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 64558
        mmTop = 794
        mmWidth = 1852
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
        DataField = 'FCCS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 66940
        mmTop = 794
        mmWidth = 2963
        BandType = 4
      end
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 75142
        mmTop = 792
        mmWidth = 3175
        BandType = 4
      end
      object title002: TppLabel
        UserName = 'title002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 78846
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object qnorg001: TppLabel
        UserName = 'qnorg001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 135467
        mmTop = 794
        mmWidth = 15081
        BandType = 4
      end
      object rwo001: TppLabel
        UserName = 'rwo001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 150548
        mmTop = 794
        mmWidth = 14552
        BandType = 4
      end
      object ct001: TppLabel
        UserName = 'ct001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 271728
        mmTop = 794
        mmWidth = 8467
        BandType = 4
      end
      object acol001: TppLabel
        UserName = 'acol001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 87577
        mmTop = 794
        mmWidth = 6085
        BandType = 4
      end
      object phase001: TppLabel
        UserName = 'phase001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 248973
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object start001: TppLabel
        UserName = 'start001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2646
        mmLeft = 95250
        mmTop = 794
        mmWidth = 12435
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 2646
        mmWidth = 284300
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
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '11.07'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PLINE'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 2117
              mmTop = 794
              mmWidth = 6435
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText302'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CSTYLE'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 26194
              mmTop = 794
              mmWidth = 11769
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'J2_JOB'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 38629
              mmTop = 794
              mmWidth = 9102
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
              DataField = 'RWO'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 50800
              mmTop = 794
              mmWidth = 2963
              BandType = 4
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' - '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2646
              mmLeft = 48419
              mmTop = 794
              mmWidth = 1852
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
              DataField = 'FLAG6'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 22490
              mmTop = 794
              mmWidth = 2709
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
              DataField = 'J_NO'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 8996
              mmTop = 794
              mmWidth = 9991
              BandType = 4
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' - '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2646
              mmLeft = 55298
              mmTop = 794
              mmWidth = 1852
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
              DataField = 'FCCS'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 57679
              mmTop = 794
              mmWidth = 2963
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
              DataField = 'PDN1'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 77258
              mmTop = 794
              mmWidth = 13208
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText101'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'EXFTY1'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'yy-MM-dd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 92340
              mmTop = 794
              mmWidth = 8551
              BandType = 4
            end
            object sx01: TppLabel
              UserName = 'sx01'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' / '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2646
              mmLeft = 101336
              mmTop = 794
              mmWidth = 1852
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'EXTM1'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'hh:nn'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 103717
              mmTop = 794
              mmWidth = 5461
              BandType = 4
            end
            object qty01: TppDBText
              UserName = 'qty01'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY1'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 110596
              mmTop = 794
              mmWidth = 4741
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText102'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PDN2'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 117740
              mmTop = 794
              mmWidth = 13208
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'EXFTY2'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'yy-MM-dd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 132821
              mmTop = 794
              mmWidth = 8551
              BandType = 4
            end
            object sx02: TppLabel
              UserName = 'sx02'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' / '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2646
              mmLeft = 141817
              mmTop = 794
              mmWidth = 1852
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
              DataField = 'EXTM2'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'hh:nn'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 144198
              mmTop = 794
              mmWidth = 7070
              BandType = 4
            end
            object qty02: TppDBText
              UserName = 'qty02'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY2'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 151077
              mmTop = 794
              mmWidth = 4741
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText103'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PDN3'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 159279
              mmTop = 794
              mmWidth = 5630
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
              DataField = 'EXFTY3'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'yy-MM-dd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 174361
              mmTop = 794
              mmWidth = 8043
              BandType = 4
            end
            object sx03: TppLabel
              UserName = 'sx03'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' / '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2646
              mmLeft = 183357
              mmTop = 794
              mmWidth = 1852
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
              DataField = 'EXTM3'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'hh:nn'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 185738
              mmTop = 794
              mmWidth = 7070
              BandType = 4
            end
            object qty03: TppDBText
              UserName = 'qty03'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY3'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 192617
              mmTop = 794
              mmWidth = 6985
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
              DataField = 'PDN4'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 200555
              mmTop = 794
              mmWidth = 5630
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
              DataField = 'EXFTY4'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'yy-MM-dd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 215636
              mmTop = 794
              mmWidth = 8043
              BandType = 4
            end
            object sx04: TppLabel
              UserName = 'sx04'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' / '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2646
              mmLeft = 224632
              mmTop = 794
              mmWidth = 1852
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText201'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'EXTM4'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'hh:nn'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 227013
              mmTop = 794
              mmWidth = 7070
              BandType = 4
            end
            object qty04: TppDBText
              UserName = 'qty04'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY4'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 233892
              mmTop = 794
              mmWidth = 6985
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
              DataField = 'PDN5'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 241300
              mmTop = 794
              mmWidth = 5630
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
              DataField = 'EXFTY5'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'yy-MM-dd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 256382
              mmTop = 794
              mmWidth = 8043
              BandType = 4
            end
            object sx05: TppLabel
              UserName = 'sx05'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' / '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2646
              mmLeft = 265378
              mmTop = 794
              mmWidth = 1852
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
              DataField = 'EXTM5'
              DataPipeline = ppDBPipeline2
              DisplayFormat = 'hh:nn'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 267759
              mmTop = 794
              mmWidth = 7070
              BandType = 4
            end
            object qty05: TppDBText
              UserName = 'qty05'
              HyperlinkColor = clBlue
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY5'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 274638
              mmTop = 794
              mmWidth = 6985
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText104'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BAL'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 75364
              mmTop = 794
              mmWidth = 1185
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
              DataField = 'BAL2'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 66432
              mmTop = 794
              mmWidth = 4741
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 17727
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 7938
              mmLeft = 1323
              mmTop = 1058
              mmWidth = 280988
              BandType = 7
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
                'k;}{\f2\fnil\fcharset0 Arial;}}'#13#10'{\colortbl ;\red0\green0\blue0;' +
                '}'#13#10'\viewkind4\uc1\pard\sl240\slmult1\cf1\lang1028\f0\fs12 TIP\pa' +
                'r'#13#10'\cf0\f1\'#39'd6\cf1\f2       PDN Qty (swung*) is included the qty' +
                ' swung from previous PDNs\f0\par'#13#10'\cf0\par'#13#10'\pard\par'#13#10'}'#13#10#0
              mmHeight = 6879
              mmLeft = 1852
              mmTop = 1588
              mmWidth = 279930
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeftMargin = 794
            end
            object ppSubReport2: TppSubReport
              UserName = 'SubReport2'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4763
              mmLeft = 0
              mmTop = 11642
              mmWidth = 284300
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
                PrinterSetup.mmPaperHeight = 210000
                PrinterSetup.mmPaperWidth = 297000
                PrinterSetup.PaperSize = 9
                Units = utMillimeters
                Version = '11.07'
                mmColumnWidth = 0
                DataPipelineName = 'ppDBPipeline3'
                object ppTitleBand2: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 17463
                  mmPrintPosition = 0
                  object ppShape6: TppShape
                    UserName = 'Shape6'
                    mmHeight = 11642
                    mmLeft = 1323
                    mmTop = 6085
                    mmWidth = 280988
                    BandType = 1
                  end
                  object ppLabel57: TppLabel
                    UserName = 'Label57'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Style Sewed Qty / eff (style dependent) : -  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 1323
                    mmTop = 1852
                    mmWidth = 56886
                    BandType = 1
                  end
                  object ppLabel58: TppLabel
                    UserName = 'Label58'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Cust Code  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 8202
                    mmTop = 10319
                    mmWidth = 11906
                    BandType = 1
                  end
                  object ppLabel59: TppLabel
                    UserName = 'Label59'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Sewn Qty   '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 76994
                    mmTop = 10319
                    mmWidth = 11377
                    BandType = 1
                  end
                  object ppLabel60: TppLabel
                    UserName = 'Label60'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Default  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 261409
                    mmTop = 10319
                    mmWidth = 8467
                    BandType = 1
                  end
                  object ppLabel61: TppLabel
                    UserName = 'Label603'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Curr  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 272786
                    mmTop = 10319
                    mmWidth = 5556
                    BandType = 1
                  end
                  object ppLabel62: TppLabel
                    UserName = 'Label62'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Opt %   '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 265113
                    mmTop = 6879
                    mmWidth = 7832
                    BandType = 1
                  end
                  object ppLabel63: TppLabel
                    UserName = 'Label63'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Cust Style  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 32544
                    mmTop = 10319
                    mmWidth = 11642
                    BandType = 1
                  end
                  object ppLabel64: TppLabel
                    UserName = 'Label604'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '[As at date]  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 264848
                    mmTop = 14288
                    mmWidth = 12700
                    BandType = 1
                  end
                  object ppLabel78: TppLabel
                    UserName = 'Label78'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Ex-fty Date  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 141288
                    mmTop = 6879
                    mmWidth = 11642
                    BandType = 1
                  end
                  object ppLabel79: TppLabel
                    UserName = 'Label79'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Curr Diff '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 107156
                    mmTop = 10319
                    mmWidth = 9260
                    BandType = 1
                  end
                  object ppLabel80: TppLabel
                    UserName = 'Label80'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Locked Diff '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 130969
                    mmTop = 10319
                    mmWidth = 11906
                    BandType = 1
                  end
                  object ppLabel81: TppLabel
                    UserName = 'Label81'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'QN Org.  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 158221
                    mmTop = 10319
                    mmWidth = 8996
                    BandType = 1
                  end
                  object ppLabel82: TppLabel
                    UserName = 'Label82'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'RWO '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 184944
                    mmTop = 10319
                    mmWidth = 6085
                    BandType = 1
                  end
                  object ppLabel67: TppLabel
                    UserName = 'Label67'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'from '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 101865
                    mmTop = 14288
                    mmWidth = 5292
                    BandType = 1
                  end
                  object ppLabel74: TppLabel
                    UserName = 'Label74'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'to '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 112448
                    mmTop = 14288
                    mmWidth = 2646
                    BandType = 1
                  end
                  object ppLabel86: TppLabel
                    UserName = 'Label86'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'from '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 126736
                    mmTop = 14288
                    mmWidth = 5292
                    BandType = 1
                  end
                  object ppLabel87: TppLabel
                    UserName = 'Label87'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'to '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 139700
                    mmTop = 14288
                    mmWidth = 2646
                    BandType = 1
                  end
                  object ppLabel88: TppLabel
                    UserName = 'Label88'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'from '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 152400
                    mmTop = 14288
                    mmWidth = 5292
                    BandType = 1
                  end
                  object ppLabel89: TppLabel
                    UserName = 'Label89'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'to '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 166159
                    mmTop = 14288
                    mmWidth = 2646
                    BandType = 1
                  end
                  object ppLabel90: TppLabel
                    UserName = 'Label90'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'from '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 177007
                    mmTop = 14288
                    mmWidth = 5292
                    BandType = 1
                  end
                  object ppLabel91: TppLabel
                    UserName = 'Label91'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'to '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 190765
                    mmTop = 14288
                    mmWidth = 2646
                    BandType = 1
                  end
                  object ppLine26: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 11642
                    mmLeft = 25665
                    mmTop = 6085
                    mmWidth = 3175
                    BandType = 1
                  end
                  object ppLine28: TppLine
                    UserName = 'Line28'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 11642
                    mmLeft = 53181
                    mmTop = 6085
                    mmWidth = 3175
                    BandType = 1
                  end
                  object ppLine29: TppLine
                    UserName = 'Line29'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 11642
                    mmLeft = 75406
                    mmTop = 6085
                    mmWidth = 3175
                    BandType = 1
                  end
                  object ppLine30: TppLine
                    UserName = 'Line30'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 11642
                    mmLeft = 89429
                    mmTop = 6085
                    mmWidth = 3175
                    BandType = 1
                  end
                  object ppLine31: TppLine
                    UserName = 'Line301'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 11642
                    mmLeft = 99219
                    mmTop = 6085
                    mmWidth = 3175
                    BandType = 1
                  end
                  object ppLine32: TppLine
                    UserName = 'Line32'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 11642
                    mmLeft = 200819
                    mmTop = 6085
                    mmWidth = 3175
                    BandType = 1
                  end
                  object ppLine33: TppLine
                    UserName = 'Line33'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 11642
                    mmLeft = 257705
                    mmTop = 6085
                    mmWidth = 3175
                    BandType = 1
                  end
                  object ppLine34: TppLine
                    UserName = 'Line34'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Weight = 0.750000000000000000
                    mmHeight = 529
                    mmLeft = 99219
                    mmTop = 9790
                    mmWidth = 101600
                    BandType = 1
                  end
                  object ppLine35: TppLine
                    UserName = 'Line35'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 257969
                    mmTop = 9790
                    mmWidth = 24077
                    BandType = 1
                  end
                  object ppLine36: TppLine
                    UserName = 'Line36'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 7938
                    mmLeft = 124354
                    mmTop = 9790
                    mmWidth = 2117
                    BandType = 1
                  end
                  object ppLine37: TppLine
                    UserName = 'Line37'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 7938
                    mmLeft = 150548
                    mmTop = 9790
                    mmWidth = 2117
                    BandType = 1
                  end
                  object ppLine38: TppLine
                    UserName = 'Line38'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 7938
                    mmLeft = 175419
                    mmTop = 9790
                    mmWidth = 1588
                    BandType = 1
                  end
                end
                object ppDetailBand3: TppDetailBand
                  BeforePrint = ppDetailBand3BeforePrint
                  mmBottomOffset = 0
                  mmHeight = 3969
                  mmPrintPosition = 0
                  object ppDBText21: TppDBText
                    UserName = 'DBText21'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'J_NO'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2646
                    mmLeft = 8202
                    mmTop = 794
                    mmWidth = 5556
                    BandType = 4
                  end
                  object a0002: TppLabel
                    UserName = 'a0002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'a0002'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 262467
                    mmTop = 794
                    mmWidth = 5821
                    BandType = 4
                  end
                  object a0003: TppLabel
                    UserName = 'a0003'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'a0003'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 272786
                    mmTop = 794
                    mmWidth = 5821
                    BandType = 4
                  end
                  object ppLine20: TppLine
                    UserName = 'Line20'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 4233
                    mmLeft = 1323
                    mmTop = 0
                    mmWidth = 1323
                    BandType = 4
                  end
                  object ppLine21: TppLine
                    UserName = 'Line201'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Position = lpLeft
                    Weight = 0.750000000000000000
                    mmHeight = 4233
                    mmLeft = 282046
                    mmTop = 0
                    mmWidth = 265
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
                    DataField = 'CSTYLE'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2582
                    mmLeft = 32544
                    mmTop = 794
                    mmWidth = 8382
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
                    DataField = 'QTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#0,0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2582
                    mmLeft = 82381
                    mmTop = 794
                    mmWidth = 4403
                    BandType = 4
                  end
                  object a0004: TppLabel
                    UserName = 'a0004'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'a0004'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 101865
                    mmTop = 794
                    mmWidth = 3440
                    BandType = 4
                  end
                  object a0008: TppLabel
                    UserName = 'a0008'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '99/99/99'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 152400
                    mmTop = 794
                    mmWidth = 8202
                    BandType = 4
                  end
                  object a0005: TppLabel
                    UserName = 'a0005'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'a0004'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 112448
                    mmTop = 794
                    mmWidth = 3440
                    BandType = 4
                  end
                  object a0006: TppLabel
                    UserName = 'a0006'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'a0004'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 126736
                    mmTop = 794
                    mmWidth = 3440
                    BandType = 4
                  end
                  object a0007: TppLabel
                    UserName = 'a0007'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'a0004'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 139700
                    mmTop = 794
                    mmWidth = 3440
                    BandType = 4
                  end
                  object a0009: TppLabel
                    UserName = 'a0009'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '99/99/99'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 166159
                    mmTop = 794
                    mmWidth = 8202
                    BandType = 4
                  end
                  object a0010: TppLabel
                    UserName = 'a0010'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '99/99/99'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 177007
                    mmTop = 794
                    mmWidth = 8202
                    BandType = 4
                  end
                  object a0011: TppLabel
                    UserName = 'a0011'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '99/99/99'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 190765
                    mmTop = 794
                    mmWidth = 8202
                    BandType = 4
                  end
                  object ppDBText34: TppDBText
                    UserName = 'DBText34'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'FLAG6'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2582
                    mmLeft = 27517
                    mmTop = 794
                    mmWidth = 6943
                    BandType = 4
                  end
                end
                object ppSummaryBand3: TppSummaryBand
                  BeforePrint = ppSummaryBand3BeforePrint
                  PrintHeight = phDynamic
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 14552
                  mmPrintPosition = 0
                  object ppLine19: TppLine
                    UserName = 'Line19'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 1323
                    mmTop = 0
                    mmWidth = 280988
                    BandType = 7
                  end
                  object b0002: TppLabel
                    UserName = 'b0002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'a0002'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 262467
                    mmTop = 794
                    mmWidth = 5821
                    BandType = 7
                  end
                  object b0003: TppLabel
                    UserName = 'b0003'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'a0003'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 2381
                    mmLeft = 272786
                    mmTop = 794
                    mmWidth = 5821
                    BandType = 7
                  end
                  object ppDBCalc1: TppDBCalc
                    UserName = 'DBCalc1'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTY'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#0,0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2582
                    mmLeft = 76411
                    mmTop = 794
                    mmWidth = 10372
                    BandType = 7
                  end
                  object b0001: TppLabel
                    UserName = 'b0001'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 8202
                    mmTop = 794
                    mmWidth = 11642
                    BandType = 7
                  end
                  object ppLabel65: TppLabel
                    UserName = 'Label65'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'TTL =   '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2646
                    mmLeft = 67998
                    mmTop = 794
                    mmWidth = 7673
                    BandType = 7
                  end
                  object ppSubReport3: TppSubReport
                    UserName = 'SubReport3'
                    ExpandAll = False
                    KeepTogether = True
                    NewPrintJob = False
                    OutlineSettings.CreateNode = True
                    TraverseAllData = False
                    Visible = False
                    DataPipelineName = 'ppDBPipeline4'
                    mmHeight = 5027
                    mmLeft = 0
                    mmTop = 7408
                    mmWidth = 284300
                    BandType = 7
                    mmBottomOffset = 0
                    mmOverFlowOffset = 0
                    mmStopPosition = 0
                    object ppChildReport3: TppChildReport
                      AutoStop = False
                      DataPipeline = ppDBPipeline4
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
                      PrinterSetup.mmPaperHeight = 210000
                      PrinterSetup.mmPaperWidth = 297000
                      PrinterSetup.PaperSize = 9
                      Units = utMillimeters
                      Version = '11.07'
                      mmColumnWidth = 0
                      DataPipelineName = 'ppDBPipeline4'
                      object ppTitleBand3: TppTitleBand
                        mmBottomOffset = 0
                        mmHeight = 15875
                        mmPrintPosition = 0
                        object ppShape7: TppShape
                          UserName = 'Shape7'
                          mmHeight = 10054
                          mmLeft = 10319
                          mmTop = 6085
                          mmWidth = 265113
                          BandType = 1
                        end
                        object ppLabel66: TppLabel
                          UserName = 'Label66'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Style Sewed Qty / eff (style dependent) : -  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2582
                          mmLeft = 1588
                          mmTop = 1852
                          mmWidth = 42884
                          BandType = 1
                        end
                        object ppLabel68: TppLabel
                          UserName = 'Label68'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Sewn Qty   '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 76994
                          mmTop = 10319
                          mmWidth = 11377
                          BandType = 1
                        end
                        object ppLabel69: TppLabel
                          UserName = 'Label605'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Default  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 252942
                          mmTop = 9790
                          mmWidth = 8467
                          BandType = 1
                        end
                        object ppLabel70: TppLabel
                          UserName = 'Label70'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Opt %   '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2582
                          mmLeft = 256646
                          mmTop = 6879
                          mmWidth = 7832
                          BandType = 1
                        end
                        object ppLabel71: TppLabel
                          UserName = 'Label71'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Cust Style  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 32015
                          mmTop = 10319
                          mmWidth = 11642
                          BandType = 1
                        end
                        object ppLabel72: TppLabel
                          UserName = 'Label72'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = '[As at date]  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 256382
                          mmTop = 12700
                          mmWidth = 12700
                          BandType = 1
                        end
                        object ppLabel73: TppLabel
                          UserName = 'Label73'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Curr  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 264319
                          mmTop = 9790
                          mmWidth = 5556
                          BandType = 1
                        end
                        object ppLabel75: TppLabel
                          UserName = 'Label75'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Ex-fty Date  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 132027
                          mmTop = 6879
                          mmWidth = 11642
                          BandType = 1
                        end
                        object ppLabel76: TppLabel
                          UserName = 'Label76'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Curr Diff '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 104511
                          mmTop = 10319
                          mmWidth = 9260
                          BandType = 1
                        end
                        object ppLabel83: TppLabel
                          UserName = 'Label801'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Locked Diff '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 123031
                          mmTop = 10319
                          mmWidth = 11906
                          BandType = 1
                        end
                        object ppLabel84: TppLabel
                          UserName = 'Label84'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'QN Org.  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 147373
                          mmTop = 10319
                          mmWidth = 8996
                          BandType = 1
                        end
                        object ppLabel85: TppLabel
                          UserName = 'Label85'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'RWO '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 177007
                          mmTop = 10319
                          mmWidth = 6085
                          BandType = 1
                        end
                      end
                      object ppDetailBand4: TppDetailBand
                        BeforePrint = ppDetailBand4BeforePrint
                        mmBottomOffset = 0
                        mmHeight = 3969
                        mmPrintPosition = 0
                        object a002: TppLabel
                          UserName = 'a002'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'a0002'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 254001
                          mmTop = 794
                          mmWidth = 5821
                          BandType = 4
                        end
                        object ppLine22: TppLine
                          UserName = 'Line202'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 4233
                          mmLeft = 10319
                          mmTop = 0
                          mmWidth = 4763
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
                          DataField = 'CSTYLE'
                          DataPipeline = ppDBPipeline4
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2582
                          mmLeft = 32015
                          mmTop = 794
                          mmWidth = 8382
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
                          DataField = 'QTY'
                          DataPipeline = ppDBPipeline4
                          DisplayFormat = '#0,0'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2582
                          mmLeft = 82381
                          mmTop = 794
                          mmWidth = 4403
                          BandType = 4
                        end
                        object a003: TppLabel
                          UserName = 'a003'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'a0003'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clGreen
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 264319
                          mmTop = 794
                          mmWidth = 5821
                          BandType = 4
                        end
                        object ppLine23: TppLine
                          UserName = 'Line23'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Position = lpLeft
                          Weight = 0.750000000000000000
                          mmHeight = 4233
                          mmLeft = 275167
                          mmTop = 0
                          mmWidth = 265
                          BandType = 4
                        end
                        object a004: TppLabel
                          UserName = 'a004'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'a0004'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 107686
                          mmTop = 794
                          mmWidth = 3440
                          BandType = 4
                        end
                        object a008: TppLabel
                          UserName = 'a008'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = '99/99/99'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 146315
                          mmTop = 794
                          mmWidth = 8202
                          BandType = 4
                        end
                        object a005: TppLabel
                          UserName = 'a005'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'a0004'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 115623
                          mmTop = 794
                          mmWidth = 3440
                          BandType = 4
                        end
                        object a006: TppLabel
                          UserName = 'a006'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'a0004'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 127000
                          mmTop = 794
                          mmWidth = 3440
                          BandType = 4
                        end
                        object a007: TppLabel
                          UserName = 'a007'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'a0004'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 134938
                          mmTop = 794
                          mmWidth = 3440
                          BandType = 4
                        end
                        object a009: TppLabel
                          UserName = 'a009'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = '99/99/99'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 158486
                          mmTop = 794
                          mmWidth = 8202
                          BandType = 4
                        end
                        object a010: TppLabel
                          UserName = 'a00101'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = '99/99/99'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 174361
                          mmTop = 794
                          mmWidth = 8202
                          BandType = 4
                        end
                        object a011: TppLabel
                          UserName = 'a011'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = '99/99/99'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 186532
                          mmTop = 794
                          mmWidth = 8202
                          BandType = 4
                        end
                        object ppLabel100: TppLabel
                          UserName = 'Label100'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'from '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 101865
                          mmTop = 794
                          mmWidth = 5292
                          BandType = 4
                        end
                        object ppLabel101: TppLabel
                          UserName = 'Label1'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'to '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 112448
                          mmTop = 794
                          mmWidth = 2646
                          BandType = 4
                        end
                        object ppLabel102: TppLabel
                          UserName = 'Label102'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'from '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 121179
                          mmTop = 794
                          mmWidth = 5292
                          BandType = 4
                        end
                        object ppLabel103: TppLabel
                          UserName = 'Label103'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'to '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 131763
                          mmTop = 794
                          mmWidth = 2646
                          BandType = 4
                        end
                        object ppLabel104: TppLabel
                          UserName = 'Label104'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'from '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 140494
                          mmTop = 794
                          mmWidth = 5292
                          BandType = 4
                        end
                        object ppLabel105: TppLabel
                          UserName = 'Label105'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'to '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 155311
                          mmTop = 794
                          mmWidth = 2646
                          BandType = 4
                        end
                        object ppLabel106: TppLabel
                          UserName = 'Label901'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'from '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 168540
                          mmTop = 794
                          mmWidth = 5292
                          BandType = 4
                        end
                        object ppLabel107: TppLabel
                          UserName = 'Label107'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'to '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 183357
                          mmTop = 794
                          mmWidth = 2646
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
                          DataField = 'FLAG6'
                          DataPipeline = ppDBPipeline4
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2582
                          mmLeft = 27517
                          mmTop = 794
                          mmWidth = 6943
                          BandType = 4
                        end
                      end
                      object ppSummaryBand4: TppSummaryBand
                        BeforePrint = ppSummaryBand4BeforePrint
                        AlignToBottom = False
                        mmBottomOffset = 0
                        mmHeight = 4763
                        mmPrintPosition = 0
                        object ppLine24: TppLine
                          UserName = 'Line24'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Weight = 0.750000000000000000
                          mmHeight = 265
                          mmLeft = 10319
                          mmTop = 0
                          mmWidth = 265113
                          BandType = 7
                        end
                        object b002: TppLabel
                          UserName = 'b002'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'a0002'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 254001
                          mmTop = 794
                          mmWidth = 5821
                          BandType = 7
                        end
                        object ppDBCalc2: TppDBCalc
                          UserName = 'DBCalc2'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'QTY'
                          DataPipeline = ppDBPipeline4
                          DisplayFormat = '#0,0'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2582
                          mmLeft = 76412
                          mmTop = 794
                          mmWidth = 10372
                          BandType = 7
                        end
                        object b001: TppLabel
                          UserName = 'b001'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'b001'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2582
                          mmLeft = 11906
                          mmTop = 794
                          mmWidth = 4868
                          BandType = 7
                        end
                        object ppLabel77: TppLabel
                          UserName = 'Label77'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'TTL =   '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 66411
                          mmTop = 794
                          mmWidth = 7673
                          BandType = 7
                        end
                        object b003: TppLabel
                          UserName = 'b003'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'a0003'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clGreen
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2381
                          mmLeft = 264319
                          mmTop = 794
                          mmWidth = 5821
                          BandType = 7
                        end
                      end
                    end
                  end
                end
              end
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'TM'
            DataPipeline = ppDBPipeline2
            KeepTogether = True
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group6'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand6: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand6BeforePrint
              mmBottomOffset = 0
              mmHeight = 16404
              mmPrintPosition = 0
              object ppShape3: TppShape
                UserName = 'Shape3'
                mmHeight = 10054
                mmLeft = 1323
                mmTop = 6350
                mmWidth = 280988
                BandType = 3
                GroupNo = 0
              end
              object ppLabel42: TppLabel
                UserName = 'Label42'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Line '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 2117
                mmTop = 7938
                mmWidth = 4763
                BandType = 3
                GroupNo = 0
              end
              object ppLabel43: TppLabel
                UserName = 'Label43'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Project '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 8996
                mmTop = 7938
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel44: TppLabel
                UserName = 'Label101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Cust Style '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 25135
                mmTop = 7938
                mmWidth = 10319
                BandType = 3
                GroupNo = 0
              end
              object ppLabel45: TppLabel
                UserName = 'Label45'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'QN # '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 50536
                mmTop = 7938
                mmWidth = 5292
                BandType = 3
                GroupNo = 0
              end
              object ppLine15: TppLine
                UserName = 'Line15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 9790
                mmLeft = 8202
                mmTop = 6350
                mmWidth = 2381
                BandType = 3
                GroupNo = 0
              end
              object ppLine16: TppLine
                UserName = 'Line16'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 9790
                mmLeft = 21696
                mmTop = 6350
                mmWidth = 2381
                BandType = 3
                GroupNo = 0
              end
              object ppLine25: TppLine
                UserName = 'Line25'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 9790
                mmLeft = 71173
                mmTop = 6350
                mmWidth = 2381
                BandType = 3
                GroupNo = 0
              end
              object ppLine27: TppLine
                UserName = 'Line27'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 9790
                mmLeft = 38100
                mmTop = 6350
                mmWidth = 2381
                BandType = 3
                GroupNo = 0
              end
              object ppLabel41: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN information : - '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 1323
                mmTop = 1323
                mmWidth = 26723
                BandType = 3
                GroupNo = 0
              end
              object ppLabel48: TppLabel
                UserName = 'Label48'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 71702
                mmTop = 7144
                mmWidth = 5038
                BandType = 3
                GroupNo = 0
              end
              object ppLabel50: TppLabel
                UserName = 'Label50'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Bal '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 71702
                mmTop = 12965
                mmWidth = 3895
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
                mmHeight = 9790
                mmLeft = 76994
                mmTop = 6350
                mmWidth = 2381
                BandType = 3
                GroupNo = 0
              end
              object ppLabel51: TppLabel
                UserName = 'Label51'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 71702
                mmTop = 10054
                mmWidth = 4106
                BandType = 3
                GroupNo = 0
              end
              object x0001: TppLabel
                UserName = 'x0001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 77523
                mmTop = 7938
                mmWidth = 5038
                BandType = 3
                GroupNo = 0
              end
              object x0003: TppLabel
                UserName = 'x0003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty date/time '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 92340
                mmTop = 7938
                mmWidth = 16404
                BandType = 3
                GroupNo = 0
              end
              object x0004: TppLabel
                UserName = 'x0004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 111125
                mmTop = 7144
                mmWidth = 5027
                BandType = 3
                GroupNo = 0
              end
              object x0005: TppLabel
                UserName = 'x0005'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 111125
                mmTop = 10054
                mmWidth = 4233
                BandType = 3
                GroupNo = 0
              end
              object x1001: TppLabel
                UserName = 'x1001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 117740
                mmTop = 7938
                mmWidth = 5038
                BandType = 3
                GroupNo = 0
              end
              object x1003: TppLabel
                UserName = 'x1003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty date/time '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 132821
                mmTop = 7938
                mmWidth = 16404
                BandType = 3
                GroupNo = 0
              end
              object x1004: TppLabel
                UserName = 'x1004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 152665
                mmTop = 7144
                mmWidth = 5027
                BandType = 3
                GroupNo = 0
              end
              object x1005: TppLabel
                UserName = 'x1005'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 152665
                mmTop = 10054
                mmWidth = 4233
                BandType = 3
                GroupNo = 0
              end
              object x2001: TppLabel
                UserName = 'x2001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 159279
                mmTop = 7938
                mmWidth = 5038
                BandType = 3
                GroupNo = 0
              end
              object x2003: TppLabel
                UserName = 'x2003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty date/time '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 174361
                mmTop = 7938
                mmWidth = 16404
                BandType = 3
                GroupNo = 0
              end
              object x2004: TppLabel
                UserName = 'x2004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 193675
                mmTop = 7144
                mmWidth = 5027
                BandType = 3
                GroupNo = 0
              end
              object x2005: TppLabel
                UserName = 'x2005'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 193675
                mmTop = 10054
                mmWidth = 4233
                BandType = 3
                GroupNo = 0
              end
              object x3001: TppLabel
                UserName = 'Label601'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 200555
                mmTop = 7938
                mmWidth = 5038
                BandType = 3
                GroupNo = 0
              end
              object x3003: TppLabel
                UserName = 'x3003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty date/time '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 215636
                mmTop = 7938
                mmWidth = 16404
                BandType = 3
                GroupNo = 0
              end
              object x3004: TppLabel
                UserName = 'x3004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 235215
                mmTop = 7144
                mmWidth = 5027
                BandType = 3
                GroupNo = 0
              end
              object x3005: TppLabel
                UserName = 'x3005'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 235215
                mmTop = 10054
                mmWidth = 4233
                BandType = 3
                GroupNo = 0
              end
              object x4001: TppLabel
                UserName = 'x4001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 241300
                mmTop = 7938
                mmWidth = 5038
                BandType = 3
                GroupNo = 0
              end
              object x4003: TppLabel
                UserName = 'x4003'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty date/time '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 256382
                mmTop = 7938
                mmWidth = 16404
                BandType = 3
                GroupNo = 0
              end
              object x4004: TppLabel
                UserName = 'x4004'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 275696
                mmTop = 7144
                mmWidth = 5027
                BandType = 3
                GroupNo = 0
              end
              object x4005: TppLabel
                UserName = 'x4005'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 275696
                mmTop = 10054
                mmWidth = 4233
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
                Caption = 'Manifest #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 77523
                mmTop = 11113
                mmWidth = 11557
                BandType = 3
                GroupNo = 0
              end
              object x1002: TppLabel
                UserName = 'x1002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Manifest #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 117740
                mmTop = 11113
                mmWidth = 11557
                BandType = 3
                GroupNo = 0
              end
              object x2002: TppLabel
                UserName = 'Label602'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Manifest #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 159279
                mmTop = 11113
                mmWidth = 11557
                BandType = 3
                GroupNo = 0
              end
              object x3002: TppLabel
                UserName = 'x3002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Manifest #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 200555
                mmTop = 11113
                mmWidth = 11557
                BandType = 3
                GroupNo = 0
              end
              object x4002: TppLabel
                UserName = 'x4002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Manifest #  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 241300
                mmTop = 11113
                mmWidth = 11557
                BandType = 3
                GroupNo = 0
              end
              object x0006: TppLabel
                UserName = 'x0006'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '(Swung*) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 108479
                mmTop = 12965
                mmWidth = 9737
                BandType = 3
                GroupNo = 0
              end
              object x1006: TppLabel
                UserName = 'x1006'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '(Swung*) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 150019
                mmTop = 12965
                mmWidth = 9737
                BandType = 3
                GroupNo = 0
              end
              object x2006: TppLabel
                UserName = 'x2006'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '(Swung*) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 191030
                mmTop = 12965
                mmWidth = 9737
                BandType = 3
                GroupNo = 0
              end
              object x3006: TppLabel
                UserName = 'x3006'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '(Swung*) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 232569
                mmTop = 12965
                mmWidth = 9737
                BandType = 3
                GroupNo = 0
              end
              object x4006: TppLabel
                UserName = 'x4006'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '(Swung*) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 273051
                mmTop = 12965
                mmWidth = 9737
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
                mmHeight = 9790
                mmLeft = 64823
                mmTop = 6350
                mmWidth = 2381
                BandType = 3
                GroupNo = 0
              end
              object ppLabel53: TppLabel
                UserName = 'Label53'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Com-'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 65352
                mmTop = 7144
                mmWidth = 5419
                BandType = 3
                GroupNo = 0
              end
              object ppLabel54: TppLabel
                UserName = 'Label54'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Bal '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2646
                mmLeft = 65352
                mmTop = 12965
                mmWidth = 3969
                BandType = 3
                GroupNo = 0
              end
              object ppLabel55: TppLabel
                UserName = 'Label55'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'ing '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2582
                mmLeft = 65352
                mmTop = 10054
                mmWidth = 3768
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              PrintHeight = phDynamic
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'PLINE'
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
          object ppGroup5: TppGroup
            BreakName = 'SEQ'
            DataPipeline = ppDBPipeline2
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group5'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'TPLANT'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10848
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          mmHeight = 10848
          mmLeft = 1323
          mmTop = 0
          mmWidth = 280988
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Line '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 2910
          mmTop = 794
          mmWidth = 4763
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Project '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 11906
          mmTop = 794
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust Style '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 30427
          mmTop = 794
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'QN # '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 58208
          mmTop = 794
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'QN Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 76465
          mmTop = 794
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label14'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Clr '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 88371
          mmTop = 794
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label16'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ex-fty Date  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 123561
          mmTop = 794
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label17'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Past Gr '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 167217
          mmTop = 794
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Curr Diff '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 110331
          mmTop = 4233
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Locked Diff '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 120650
          mmTop = 4233
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label21'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'QN Org.  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 135467
          mmTop = 4233
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RWO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 150548
          mmTop = 4233
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Curr last sect '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 177271
          mmTop = 794
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label23'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'end time/date '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 177271
          mmTop = 4233
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label24'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Next day QN GA '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 216430
          mmTop = 794
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Opt %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2582
          mmLeft = 255588
          mmTop = 794
          mmWidth = 6054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sewing CT '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 270934
          mmTop = 794
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Default O/P '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 199496
          mmTop = 4233
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Projected '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 214842
          mmTop = 4233
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Projected Used '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 228336
          mmTop = 4233
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Default '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 251090
          mmTop = 4233
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label301'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Curr '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 263261
          mmTop = 4233
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label302'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(Working '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 271463
          mmTop = 4233
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Days) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 273315
          mmTop = 7408
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'O/P (GC) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 215107
          mmTop = 7408
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel35: TppLabel
          UserName = 'Label35'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'CsT Sect Hr '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 229130
          mmTop = 7408
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(GA) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 201877
          mmTop = 7408
          mmWidth = 5027
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
          mmLeft = 8996
          mmTop = 265
          mmWidth = 2381
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
          mmLeft = 25665
          mmTop = 265
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 248180
          mmTop = 265
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 270405
          mmTop = 265
          mmWidth = 2381
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
          mmLeft = 198702
          mmTop = 265
          mmWidth = 2381
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
          mmLeft = 175419
          mmTop = 265
          mmWidth = 2381
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
          mmLeft = 94986
          mmTop = 265
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 166688
          mmTop = 265
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 109538
          mmTop = 3704
          mmWidth = 57150
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line101'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 198967
          mmTop = 3704
          mmWidth = 71438
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
          mmLeft = 74083
          mmTop = 265
          mmWidth = 2381
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
          mmLeft = 86784
          mmTop = 265
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 46831
          mmTop = 265
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Code '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 87842
          mmTop = 4233
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label31'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 167217
          mmTop = 7408
          mmWidth = 4233
          BandType = 3
          GroupNo = 0
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sect Hr '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 167217
          mmTop = 4233
          mmWidth = 7673
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
          mmLeft = 109538
          mmTop = 529
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RWO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 97102
          mmTop = 794
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'start date '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 97102
          mmTop = 7408
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Fty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 98425
          mmTop = 4233
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label303'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '[As at date]  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 253471
          mmTop = 7408
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand3BeforePrint
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 32015
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 15081
          mmLeft = 1323
          mmTop = 0
          mmWidth = 280988
          BandType = 5
          GroupNo = 0
        end
        object total001: TppLabel
          UserName = 'total001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2910
          mmLeft = 13494
          mmTop = 1852
          mmWidth = 9260
          BandType = 5
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 1852
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'W/Ave:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 6085
          mmWidth = 8467
          BandType = 5
          GroupNo = 0
        end
        object x002: TppLabel
          UserName = 'x002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 255853
          mmTop = 6085
          mmWidth = 3969
          BandType = 5
          GroupNo = 0
        end
        object x003: TppLabel
          UserName = 'x003'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 266171
          mmTop = 6085
          mmWidth = 3969
          BandType = 5
          GroupNo = 0
        end
        object peff001: TppLabel
          UserName = 'peff001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 13494
          mmTop = 10848
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
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
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 51065
          mmTop = 10848
          mmWidth = 4763
          BandType = 5
          GroupNo = 0
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          StretchWithParent = True
          mmHeight = 14288
          mmLeft = 1323
          mmTop = 17198
          mmWidth = 280988
          BandType = 5
          GroupNo = 0
        end
        object ppMemo3: TppMemo
          UserName = 'Memo3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Memo3'
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Stretch = True
          Transparent = True
          mmHeight = 12435
          mmLeft = 2117
          mmTop = 17992
          mmWidth = 279401
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PLINE'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
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
        Visible = False
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        Visible = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_deldashboard'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FCCS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PDN1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SEQ01'
        DataType = ftInteger
      end
      item
        Name = 'EXFTY1'
        DataType = ftDate
      end
      item
        Name = 'EXTM1'
        DataType = ftTime
      end
      item
        Name = 'SQTY1'
        DataType = ftInteger
      end
      item
        Name = 'PDN2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SEQ02'
        DataType = ftInteger
      end
      item
        Name = 'EXFTY2'
        DataType = ftDate
      end
      item
        Name = 'EXTM2'
        DataType = ftTime
      end
      item
        Name = 'SQTY2'
        DataType = ftInteger
      end
      item
        Name = 'PDN3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SEQ03'
        DataType = ftInteger
      end
      item
        Name = 'EXFTY3'
        DataType = ftDate
      end
      item
        Name = 'EXTM3'
        DataType = ftTime
      end
      item
        Name = 'SQTY3'
        DataType = ftInteger
      end
      item
        Name = 'PDN4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SEQ04'
        DataType = ftInteger
      end
      item
        Name = 'EXFTY4'
        DataType = ftDate
      end
      item
        Name = 'EXTM4'
        DataType = ftTime
      end
      item
        Name = 'SQTY4'
        DataType = ftInteger
      end
      item
        Name = 'PDN5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SEQ05'
        DataType = ftInteger
      end
      item
        Name = 'EXFTY5'
        DataType = ftDate
      end
      item
        Name = 'EXTM5'
        DataType = ftTime
      end
      item
        Name = 'SQTY5'
        DataType = ftInteger
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'BAL'
        DataType = ftInteger
      end
      item
        Name = 'TEQTY'
        DataType = ftInteger
      end
      item
        Name = 'BAL2'
        DataType = ftInteger
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 232
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = Query5
    Left = 264
    Top = 112
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 296
    Top = 112
  end
  object Query6: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from line_shjs where j_no='#39'ETAA-122'#39
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'DATE1'
        DataType = ftDate
      end
      item
        Name = 'SHJS'
        DataType = ftFloat
      end
      item
        Name = 'ZKTD'
        DataType = ftFloat
      end
      item
        Name = 'SCLHJS'
        DataType = ftFloat
      end
      item
        Name = 'QYJS'
        DataType = ftFloat
      end
      item
        Name = 'FLAG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SJRS'
        DataType = ftFloat
      end
      item
        Name = 'SJYC'
        DataType = ftFloat
      end
      item
        Name = 'SJRS1'
        DataType = ftFloat
      end
      item
        Name = 'SJRS2'
        DataType = ftFloat
      end
      item
        Name = 'PQTY'
        DataType = ftFloat
      end
      item
        Name = 'AQTY'
        DataType = ftFloat
      end
      item
        Name = 'DIFF'
        DataType = ftFloat
      end
      item
        Name = 'AQTY1'
        DataType = ftFloat
      end
      item
        Name = 'EOT'
        DataType = ftFloat
      end
      item
        Name = 'EFF1'
        DataType = ftFloat
      end
      item
        Name = 'EFF2'
        DataType = ftFloat
      end
      item
        Name = 'XJS'
        DataType = ftFloat
      end
      item
        Name = 'PSECT'
        DataType = ftFloat
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LSTR'
        DataType = ftFloat
      end
      item
        Name = 'KSJS'
        DataType = ftFloat
      end
      item
        Name = 'ZHJS'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT1'
        DataType = ftDate
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'DBXL'
        DataType = ftFloat
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FCCS'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'FLAG3'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAGS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'LST'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DFLAG'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'MARKS'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'DSECT'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG1'
        DataType = ftFloat
      end
      item
        Name = 'TRS'
        DataType = ftFloat
      end
      item
        Name = 'CEOT'
        DataType = ftFloat
      end
      item
        Name = 'PQTY1'
        DataType = ftFloat
      end
      item
        Name = 'MPSECT'
        DataType = ftFloat
      end
      item
        Name = 'PEFF'
        DataType = ftFloat
      end
      item
        Name = 'LST1'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KSJS1'
        DataType = ftFloat
      end
      item
        Name = 'MWFLB'
        DataType = ftFloat
      end
      item
        Name = 'MWFS'
        DataType = ftFloat
      end
      item
        Name = 'MWFA'
        DataType = ftFloat
      end
      item
        Name = 'MWFAC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBN'
        DataType = ftFloat
      end
      item
        Name = 'GSDMBN'
        DataType = ftFloat
      end
      item
        Name = 'RFIDP'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MWFSC'
        DataType = ftFloat
      end
      item
        Name = 'MWFLBC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBNC'
        DataType = ftFloat
      end
      item
        Name = 'PRJ1'
        DataType = ftFloat
      end
      item
        Name = 'PRJ2'
        DataType = ftFloat
      end
      item
        Name = 'PRJ3'
        DataType = ftFloat
      end
      item
        Name = 'PRJ4'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
    Top = 144
  end
  object DataSource3: TDataSource
    DataSet = Query6
    Left = 40
    Top = 144
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline3'
    Left = 72
    Top = 144
  end
  object Query7: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from line_shjs where j_no='#39'ETAA-122'#39
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'DATE1'
        DataType = ftDate
      end
      item
        Name = 'SHJS'
        DataType = ftFloat
      end
      item
        Name = 'ZKTD'
        DataType = ftFloat
      end
      item
        Name = 'SCLHJS'
        DataType = ftFloat
      end
      item
        Name = 'QYJS'
        DataType = ftFloat
      end
      item
        Name = 'FLAG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SJRS'
        DataType = ftFloat
      end
      item
        Name = 'SJYC'
        DataType = ftFloat
      end
      item
        Name = 'SJRS1'
        DataType = ftFloat
      end
      item
        Name = 'SJRS2'
        DataType = ftFloat
      end
      item
        Name = 'PQTY'
        DataType = ftFloat
      end
      item
        Name = 'AQTY'
        DataType = ftFloat
      end
      item
        Name = 'DIFF'
        DataType = ftFloat
      end
      item
        Name = 'AQTY1'
        DataType = ftFloat
      end
      item
        Name = 'EOT'
        DataType = ftFloat
      end
      item
        Name = 'EFF1'
        DataType = ftFloat
      end
      item
        Name = 'EFF2'
        DataType = ftFloat
      end
      item
        Name = 'XJS'
        DataType = ftFloat
      end
      item
        Name = 'PSECT'
        DataType = ftFloat
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LSTR'
        DataType = ftFloat
      end
      item
        Name = 'KSJS'
        DataType = ftFloat
      end
      item
        Name = 'ZHJS'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT1'
        DataType = ftDate
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'DBXL'
        DataType = ftFloat
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FCCS'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'FLAG3'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAGS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'LST'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DFLAG'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'MARKS'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'DSECT'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG1'
        DataType = ftFloat
      end
      item
        Name = 'TRS'
        DataType = ftFloat
      end
      item
        Name = 'CEOT'
        DataType = ftFloat
      end
      item
        Name = 'PQTY1'
        DataType = ftFloat
      end
      item
        Name = 'MPSECT'
        DataType = ftFloat
      end
      item
        Name = 'PEFF'
        DataType = ftFloat
      end
      item
        Name = 'LST1'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KSJS1'
        DataType = ftFloat
      end
      item
        Name = 'MWFLB'
        DataType = ftFloat
      end
      item
        Name = 'MWFS'
        DataType = ftFloat
      end
      item
        Name = 'MWFA'
        DataType = ftFloat
      end
      item
        Name = 'MWFAC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBN'
        DataType = ftFloat
      end
      item
        Name = 'GSDMBN'
        DataType = ftFloat
      end
      item
        Name = 'RFIDP'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MWFSC'
        DataType = ftFloat
      end
      item
        Name = 'MWFLBC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBNC'
        DataType = ftFloat
      end
      item
        Name = 'PRJ1'
        DataType = ftFloat
      end
      item
        Name = 'PRJ2'
        DataType = ftFloat
      end
      item
        Name = 'PRJ3'
        DataType = ftFloat
      end
      item
        Name = 'PRJ4'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 104
    Top = 144
  end
  object DataSource4: TDataSource
    DataSet = Query7
    Left = 136
    Top = 144
  end
  object ppDBPipeline4: TppDBPipeline
    DataSource = DataSource4
    UserName = 'DBPipeline4'
    Left = 168
    Top = 144
  end
end
