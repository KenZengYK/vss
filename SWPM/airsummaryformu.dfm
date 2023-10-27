object frmairsummary: Tfrmairsummary
  Left = 192
  Top = 114
  Caption = 'frmairsummary'
  ClientHeight = 77
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 56
    Width = 3
    Height = 13
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_airsummary'
    FieldDefs = <
      item
        Name = 'TM'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'VOYN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'RCODE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RDESC'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'T4QTY'
        DataType = ftFloat
      end
      item
        Name = 'TTLCOST'
        DataType = ftFloat
      end
      item
        Name = 'BCOST'
        DataType = ftFloat
      end
      item
        Name = 'FCOST'
        DataType = ftFloat
      end
      item
        Name = 'VCOST'
        DataType = ftFloat
      end
      item
        Name = 'HKCOST'
        DataType = ftFloat
      end
      item
        Name = 'DEBIT_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FACTORY_ACTCOST'
        DataType = ftFloat
      end
      item
        Name = 'SUPPLIER_ACTCOST'
        DataType = ftFloat
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'MTH'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'AFRNO'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'OCOST'
        DataType = ftFloat
      end
      item
        Name = 'BUYER_ACTCOST'
        DataType = ftFloat
      end
      item
        Name = 'SL02'
        DataType = ftFloat
      end
      item
        Name = 'KB02'
        DataType = ftFloat
      end
      item
        Name = 'FJ02'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 24
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_airsummary'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_airsummary'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_airsummary'
    FieldDefs = <
      item
        Name = 'TM'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'VOYN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'RCODE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RDESC'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'T4QTY'
        DataType = ftFloat
      end
      item
        Name = 'TTLCOST'
        DataType = ftFloat
      end
      item
        Name = 'BCOST'
        DataType = ftFloat
      end
      item
        Name = 'FCOST'
        DataType = ftFloat
      end
      item
        Name = 'VCOST'
        DataType = ftFloat
      end
      item
        Name = 'HKCOST'
        DataType = ftFloat
      end
      item
        Name = 'DEBIT_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FACTORY_ACTCOST'
        DataType = ftFloat
      end
      item
        Name = 'SUPPLIER_ACTCOST'
        DataType = ftFloat
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'MTH'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'AFRNO'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'OCOST'
        DataType = ftFloat
      end
      item
        Name = 'BUYER_ACTCOST'
        DataType = ftFloat
      end
      item
        Name = 'SL02'
        DataType = ftFloat
      end
      item
        Name = 'KB02'
        DataType = ftFloat
      end
      item
        Name = 'FJ02'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 120
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 184
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
    Left = 216
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Summary of Air-freight Prepaid   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 36513
        mmTop = 5821
        mmWidth = 99219
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 7938
        mmLeft = 6085
        mmTop = 22225
        mmWidth = 271728
        BandType = 0
      end
      object f001: TppLabel
        UserName = 'f001'
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
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 17198
        mmWidth = 10848
        BandType = 0
      end
      object w001: TppLabel
        UserName = 'w001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 59267
        mmTop = 17198
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 6879
        mmTop = 23019
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 50536
        mmTop = 23019
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 63500
        mmTop = 23019
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 187590
        mmTop = 17198
        mmWidth = 15346
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
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
        mmHeight = 3440
        mmLeft = 204788
        mmTop = 17198
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 226484
        mmTop = 17198
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 236803
        mmTop = 17198
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Manifest # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 35719
        mmTop = 23019
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipped   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 125413
        mmTop = 23019
        mmWidth = 11007
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Air Freight Cost  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 139171
        mmTop = 23019
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sea Freight  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 160602
        mmTop = 23019
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Deduction(if any)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 160602
        mmTop = 26458
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Air Freight Cost  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 183621
        mmTop = 23019
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Other Handling  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 204788
        mmTop = 23019
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Air Freight   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 225161
        mmTop = 23019
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Debit Note #   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 259821
        mmTop = 23019
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reason   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 247121
        mmTop = 23019
        mmWidth = 10456
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AR # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 23019
        mmTop = 23019
        mmWidth = 6138
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '-  Cost and Delivery Performance Analysis Report   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 135996
        mmTop = 6879
        mmWidth = 103452
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '        Cost           '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 204788
        mmTop = 26458
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    (Net Cost)       '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 183621
        mmTop = 26458
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '        Cost           '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 225161
        mmTop = 26458
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 247121
        mmTop = 26458
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SO Delivery    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 78581
        mmTop = 23019
        mmWidth = 15706
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '       Date        '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 78581
        mmTop = 26458
        mmWidth = 15325
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Departure    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 96044
        mmTop = 23019
        mmWidth = 13547
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '     Date       '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 96044
        mmTop = 26458
        mmWidth = 13293
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'delay    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 111919
        mmTop = 26458
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Days of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 111919
        mmTop = 23019
        mmWidth = 9567
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    Qty    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 125413
        mmTop = 26458
        mmWidth = 9144
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 6879
        mmTop = 794
        mmWidth = 13039
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
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 132494
        mmTop = 794
        mmWidth = 2709
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VOYN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 37835
        mmTop = 794
        mmWidth = 3387
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
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 50536
        mmTop = 794
        mmWidth = 12277
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 63500
        mmTop = 794
        mmWidth = 8932
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
        DataField = 'TTLCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 149976
        mmTop = 794
        mmWidth = 7451
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
        DataField = 'BCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 175706
        mmTop = 794
        mmWidth = 4741
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 139171
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 160602
        mmTop = 794
        mmWidth = 5556
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
        DataField = 'AFRNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 23019
        mmTop = 794
        mmWidth = 8128
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 204788
        mmTop = 794
        mmWidth = 5556
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
        DataField = 'OCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0.00;-#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 215064
        mmTop = 794
        mmWidth = 7451
        BandType = 4
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 183621
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object a0001: TppLabel
        UserName = 'a0001'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 194998
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 225161
        mmTop = 529
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 237596
        mmTop = 529
        mmWidth = 6879
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
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 78846
        mmTop = 794
        mmWidth = 6773
        BandType = 4
      end
      object a0004: TppLabel
        UserName = 'a0004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'a0004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 94192
        mmTop = 794
        mmWidth = 6773
        BandType = 4
      end
      object a0005: TppLabel
        UserName = 'a0005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'a0005'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 113612
        mmTop = 794
        mmWidth = 6773
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5556
        mmLeft = 115888
        mmTop = 0
        mmWidth = 131763
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2921
        mmLeft = 120429
        mmTop = 1323
        mmWidth = 14774
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTLCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 141510
        mmTop = 1323
        mmWidth = 15917
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 167026
        mmTop = 1323
        mmWidth = 13420
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 15610
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
            mmHeight = 10054
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              mmHeight = 7938
              mmLeft = 6085
              mmTop = 2116
              mmWidth = 228071
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Group By Month '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 6879
              mmTop = 2646
              mmWidth = 18330
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Customer '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 50536
              mmTop = 2646
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label102'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Air Freight Cost  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 103188
              mmTop = 2646
              mmWidth = 18256
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Sea Freight  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 127794
              mmTop = 2646
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Deduction(if any)   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 127794
              mmTop = 6350
              mmWidth = 20373
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Claim back  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 175419
              mmTop = 2646
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Claim back  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 196057
              mmTop = 2646
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label39'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Air Freight Loss '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 214842
              mmTop = 2646
              mmWidth = 17780
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'in PH - HK   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 217753
              mmTop = 6350
              mmWidth = 13758
              BandType = 1
            end
            object ppLabel107: TppLabel
              UserName = 'Label107'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Factory'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 175419
              mmTop = 6350
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel109: TppLabel
              UserName = 'Label109'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '   Supplier  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 196057
              mmTop = 6350
              mmWidth = 12435
              BandType = 1
            end
            object ppLabel119: TppLabel
              UserName = 'Label119'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Customer    '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 152665
              mmTop = 2646
              mmWidth = 13335
              BandType = 1
            end
            object ppLabel120: TppLabel
              UserName = 'Label120'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Share / Refund  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 152665
              mmTop = 6350
              mmWidth = 17780
              BandType = 1
            end
          end
          object ppHeaderBand2: TppHeaderBand
            Visible = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'MTH'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 6879
              mmTop = 794
              mmWidth = 8932
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
              DataField = 'CUST'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2879
              mmLeft = 50536
              mmTop = 794
              mmWidth = 7578
              BandType = 4
            end
            object ppLabel41: TppLabel
              UserName = 'Label204'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 102659
              mmTop = 794
              mmWidth = 5556
              BandType = 4
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 127794
              mmTop = 794
              mmWidth = 5556
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
              DataField = 'BCOST'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#0.00;-#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2498
              mmLeft = 141944
              mmTop = 794
              mmWidth = 4149
              BandType = 4
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 174361
              mmTop = 794
              mmWidth = 5556
              BandType = 4
            end
            object ppLabel44: TppLabel
              UserName = 'Label44'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 794
              mmWidth = 5556
              BandType = 4
            end
            object ppLabel45: TppLabel
              UserName = 'Label301'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 214578
              mmTop = 794
              mmWidth = 5556
              BandType = 4
            end
            object sa003: TppLabel
              UserName = 'sa003'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sa003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2582
              mmLeft = 227171
              mmTop = 794
              mmWidth = 5927
              BandType = 4
            end
            object sa001: TppLabel
              UserName = 'sa001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sa001'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2582
              mmLeft = 186796
              mmTop = 794
              mmWidth = 5927
              BandType = 4
            end
            object sa002: TppLabel
              UserName = 'sa002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sa002'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2582
              mmLeft = 206640
              mmTop = 794
              mmWidth = 5927
              BandType = 4
            end
            object ppLabel121: TppLabel
              UserName = 'Label121'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 153459
              mmTop = 794
              mmWidth = 5556
              BandType = 4
            end
            object sa007: TppLabel
              UserName = 'sa007'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sa001'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2582
              mmLeft = 164729
              mmTop = 794
              mmWidth = 5927
              BandType = 4
            end
            object ppShape10: TppShape
              UserName = 'Shape10'
              mmHeight = 4233
              mmLeft = 173832
              mmTop = 4233
              mmWidth = 60061
              BandType = 4
            end
            object ftycost002: TppLabel
              UserName = 'ftycost002'
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
              mmHeight = 2582
              mmLeft = 174890
              mmTop = 5027
              mmWidth = 10541
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            BeforePrint = ppSummaryBand2BeforePrint
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 32279
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 5556
              mmLeft = 101071
              mmTop = 1323
              mmWidth = 132821
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TTLCOST'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 106532
              mmTop = 2646
              mmWidth = 15917
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BCOST'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2582
              mmLeft = 132556
              mmTop = 2646
              mmWidth = 13420
              BandType = 7
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total:  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 68263
              mmTop = 2646
              mmWidth = 7408
              BandType = 7
            end
            object sa004: TppLabel
              UserName = 'sa004'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sa004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2582
              mmLeft = 186796
              mmTop = 2646
              mmWidth = 5927
              BandType = 7
            end
            object sa005: TppLabel
              UserName = 'sa005'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sa005'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2582
              mmLeft = 206640
              mmTop = 2646
              mmWidth = 5927
              BandType = 7
            end
            object sa006: TppLabel
              UserName = 'sa006'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sa006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2582
              mmLeft = 227171
              mmTop = 2646
              mmWidth = 5927
              BandType = 7
            end
            object ppLabel51: TppLabel
              UserName = 'Label51'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 102659
              mmTop = 2646
              mmWidth = 5556
              BandType = 7
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 127794
              mmTop = 2646
              mmWidth = 5556
              BandType = 7
            end
            object ppLabel53: TppLabel
              UserName = 'Label53'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 174361
              mmTop = 2646
              mmWidth = 5556
              BandType = 7
            end
            object ppLabel54: TppLabel
              UserName = 'Label54'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 2646
              mmWidth = 5556
              BandType = 7
            end
            object ppLabel55: TppLabel
              UserName = 'Label55'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 214578
              mmTop = 2646
              mmWidth = 5556
              BandType = 7
            end
            object ppSubReport2: TppSubReport
              UserName = 'SubReport2'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 13494
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
                  mmHeight = 9525
                  mmPrintPosition = 0
                  object ppShape5: TppShape
                    UserName = 'Shape5'
                    mmHeight = 7938
                    mmLeft = 6085
                    mmTop = 1587
                    mmWidth = 228071
                    BandType = 1
                  end
                  object ppLabel46: TppLabel
                    UserName = 'Label46'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Group By Customer  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2879
                    mmLeft = 6879
                    mmTop = 2117
                    mmWidth = 22902
                    BandType = 1
                  end
                  object ppLabel49: TppLabel
                    UserName = 'Label49'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Air Freight Cost  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 103188
                    mmTop = 2117
                    mmWidth = 18256
                    BandType = 1
                  end
                  object ppLabel50: TppLabel
                    UserName = 'Label50'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Sea Freight  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 128588
                    mmTop = 2117
                    mmWidth = 14023
                    BandType = 1
                  end
                  object ppLabel56: TppLabel
                    UserName = 'Label56'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Deduction(if any)   '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 128588
                    mmTop = 5821
                    mmWidth = 20373
                    BandType = 1
                  end
                  object ppLabel57: TppLabel
                    UserName = 'Label57'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Customer    '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 152665
                    mmTop = 2117
                    mmWidth = 13229
                    BandType = 1
                  end
                  object ppLabel58: TppLabel
                    UserName = 'Label1201'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Share / Refund  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 152665
                    mmTop = 5821
                    mmWidth = 17727
                    BandType = 1
                  end
                  object ppLabel59: TppLabel
                    UserName = 'Label59'
                    HyperlinkColor = clBlue
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Factory'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 175419
                    mmTop = 5821
                    mmWidth = 13494
                    BandType = 1
                  end
                  object ppLabel60: TppLabel
                    UserName = 'Label60'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Claim back  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 175419
                    mmTop = 2117
                    mmWidth = 13494
                    BandType = 1
                  end
                  object ppLabel122: TppLabel
                    UserName = 'Label122'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = '   Supplier  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 196057
                    mmTop = 5821
                    mmWidth = 12435
                    BandType = 1
                  end
                  object ppLabel124: TppLabel
                    UserName = 'Label124'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Claim back  '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 196057
                    mmTop = 2117
                    mmWidth = 13494
                    BandType = 1
                  end
                  object ppLabel125: TppLabel
                    UserName = 'Label401'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'in PH - HK   '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 217753
                    mmTop = 5821
                    mmWidth = 13758
                    BandType = 1
                  end
                  object ppLabel126: TppLabel
                    UserName = 'Label126'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Air Freight Loss '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 214842
                    mmTop = 2117
                    mmWidth = 17727
                    BandType = 1
                  end
                end
                object ppHeaderBand3: TppHeaderBand
                  Visible = False
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand3: TppDetailBand
                  BeforePrint = ppDetailBand3BeforePrint
                  mmBottomOffset = 0
                  mmHeight = 8467
                  mmPrintPosition = 0
                  object ppDBText16: TppDBText
                    UserName = 'DBText16'
                    HyperlinkColor = clBlue
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'CUST'
                    DataPipeline = ppDBPipeline3
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2879
                    mmLeft = 6879
                    mmTop = 794
                    mmWidth = 7578
                    BandType = 4
                  end
                  object ppLabel61: TppLabel
                    UserName = 'Label61'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'HK$ '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 102659
                    mmTop = 794
                    mmWidth = 5556
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
                    DataField = 'TTLCOST'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2498
                    mmLeft = 114205
                    mmTop = 794
                    mmWidth = 8297
                    BandType = 4
                  end
                  object ppLabel62: TppLabel
                    UserName = 'Label62'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'HK$ '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 128588
                    mmTop = 794
                    mmWidth = 5556
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
                    DataField = 'BCOST'
                    DataPipeline = ppDBPipeline3
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline3'
                    mmHeight = 2498
                    mmLeft = 142737
                    mmTop = 794
                    mmWidth = 4149
                    BandType = 4
                  end
                  object ppLabel63: TppLabel
                    UserName = 'Label63'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'HK$ '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 173038
                    mmTop = 794
                    mmWidth = 5556
                    BandType = 4
                  end
                  object ppLabel64: TppLabel
                    UserName = 'Label64'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'HK$ '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 194469
                    mmTop = 794
                    mmWidth = 5556
                    BandType = 4
                  end
                  object ppLabel65: TppLabel
                    UserName = 'Label65'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'HK$ '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 214842
                    mmTop = 794
                    mmWidth = 5556
                    BandType = 4
                  end
                  object sb003: TppLabel
                    UserName = 'sb003'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'sa003'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 227436
                    mmTop = 794
                    mmWidth = 5927
                    BandType = 4
                  end
                  object sb001: TppLabel
                    UserName = 'sb001'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'sa001'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 186267
                    mmTop = 794
                    mmWidth = 5927
                    BandType = 4
                  end
                  object sb002: TppLabel
                    UserName = 'sb002'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'sa002'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 206905
                    mmTop = 794
                    mmWidth = 5927
                    BandType = 4
                  end
                  object ppLabel132: TppLabel
                    UserName = 'Label132'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'HK$ '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = []
                    Transparent = True
                    mmHeight = 2910
                    mmLeft = 153459
                    mmTop = 794
                    mmWidth = 5556
                    BandType = 4
                  end
                  object sb007: TppLabel
                    UserName = 'sb007'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'sa001'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 164729
                    mmTop = 794
                    mmWidth = 5927
                    BandType = 4
                  end
                  object ppShape12: TppShape
                    UserName = 'Shape102'
                    mmHeight = 4233
                    mmLeft = 173832
                    mmTop = 3969
                    mmWidth = 60061
                    BandType = 4
                  end
                  object ftycost003: TppLabel
                    UserName = 'ftycost003'
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
                    mmHeight = 2582
                    mmLeft = 174890
                    mmTop = 4763
                    mmWidth = 10541
                    BandType = 4
                  end
                end
                object ppSummaryBand3: TppSummaryBand
                  NewPage = True
                  PrintHeight = phDynamic
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 10319
                  mmPrintPosition = 0
                  object ppSubReport3: TppSubReport
                    UserName = 'SubReport3'
                    ExpandAll = False
                    NewPrintJob = False
                    OutlineSettings.CreateNode = True
                    TraverseAllData = False
                    DataPipelineName = 'ppDBPipeline4'
                    mmHeight = 5027
                    mmLeft = 0
                    mmTop = 1852
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
                        mmHeight = 8996
                        mmPrintPosition = 0
                        object ppShape7: TppShape
                          UserName = 'Shape7'
                          mmHeight = 7938
                          mmLeft = 6085
                          mmTop = 1058
                          mmWidth = 228071
                          BandType = 1
                        end
                        object ppLabel48: TppLabel
                          UserName = 'Label48'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Group By Reason Code  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2879
                          mmLeft = 6879
                          mmTop = 1588
                          mmWidth = 27220
                          BandType = 1
                        end
                        object ppLabel78: TppLabel
                          UserName = 'Label78'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Air Freight Cost  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 103188
                          mmTop = 1588
                          mmWidth = 18256
                          BandType = 1
                        end
                        object ppLabel79: TppLabel
                          UserName = 'Label501'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Sea Freight  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 128588
                          mmTop = 1588
                          mmWidth = 14023
                          BandType = 1
                        end
                        object ppLabel80: TppLabel
                          UserName = 'Label80'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Deduction(if any)   '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 128588
                          mmTop = 5292
                          mmWidth = 20373
                          BandType = 1
                        end
                        object ppLabel81: TppLabel
                          UserName = 'Label81'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Customer    '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 152665
                          mmTop = 1588
                          mmWidth = 13229
                          BandType = 1
                        end
                        object ppLabel82: TppLabel
                          UserName = 'Label82'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Share / Refund  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 152665
                          mmTop = 5292
                          mmWidth = 17727
                          BandType = 1
                        end
                        object ppLabel83: TppLabel
                          UserName = 'Label83'
                          HyperlinkColor = clBlue
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Factory'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          TextAlignment = taCentered
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 175419
                          mmTop = 5292
                          mmWidth = 13494
                          BandType = 1
                        end
                        object ppLabel84: TppLabel
                          UserName = 'Label601'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Claim back  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 175419
                          mmTop = 1588
                          mmWidth = 13494
                          BandType = 1
                        end
                        object ppLabel127: TppLabel
                          UserName = 'Label127'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = '   Supplier  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 196057
                          mmTop = 5292
                          mmWidth = 12435
                          BandType = 1
                        end
                        object ppLabel128: TppLabel
                          UserName = 'Label128'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Claim back  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 196057
                          mmTop = 1588
                          mmWidth = 13494
                          BandType = 1
                        end
                        object ppLabel129: TppLabel
                          UserName = 'Label129'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'in PH - HK   '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 217753
                          mmTop = 5292
                          mmWidth = 13758
                          BandType = 1
                        end
                        object ppLabel130: TppLabel
                          UserName = 'Label130'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Air Freight Loss '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 214842
                          mmTop = 1588
                          mmWidth = 17727
                          BandType = 1
                        end
                      end
                      object ppHeaderBand4: TppHeaderBand
                        Visible = False
                        mmBottomOffset = 0
                        mmHeight = 0
                        mmPrintPosition = 0
                      end
                      object ppDetailBand4: TppDetailBand
                        BeforePrint = ppDetailBand4BeforePrint
                        mmBottomOffset = 0
                        mmHeight = 8731
                        mmPrintPosition = 0
                        object ppDBText17: TppDBText
                          UserName = 'DBText17'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'RCODE'
                          DataPipeline = ppDBPipeline4
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2879
                          mmLeft = 6879
                          mmTop = 794
                          mmWidth = 4360
                          BandType = 4
                        end
                        object ppLabel85: TppLabel
                          UserName = 'Label85'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 102659
                          mmTop = 794
                          mmWidth = 5556
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
                          DataField = 'TTLCOST'
                          DataPipeline = ppDBPipeline4
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2498
                          mmLeft = 114205
                          mmTop = 794
                          mmWidth = 8297
                          BandType = 4
                        end
                        object ppLabel86: TppLabel
                          UserName = 'Label86'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 128588
                          mmTop = 794
                          mmWidth = 5556
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
                          DataField = 'BCOST'
                          DataPipeline = ppDBPipeline4
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2498
                          mmLeft = 142737
                          mmTop = 794
                          mmWidth = 4149
                          BandType = 4
                        end
                        object ppLabel87: TppLabel
                          UserName = 'Label87'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 174096
                          mmTop = 794
                          mmWidth = 5556
                          BandType = 4
                        end
                        object ppLabel88: TppLabel
                          UserName = 'Label88'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 195527
                          mmTop = 794
                          mmWidth = 5556
                          BandType = 4
                        end
                        object ppLabel89: TppLabel
                          UserName = 'Label89'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 214842
                          mmTop = 794
                          mmWidth = 5556
                          BandType = 4
                        end
                        object sc003: TppLabel
                          UserName = 'sc003'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa003'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2582
                          mmLeft = 227436
                          mmTop = 794
                          mmWidth = 5927
                          BandType = 4
                        end
                        object sc001: TppLabel
                          UserName = 'sc001'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa001'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2582
                          mmLeft = 187061
                          mmTop = 794
                          mmWidth = 5927
                          BandType = 4
                        end
                        object sc002: TppLabel
                          UserName = 'sc002'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa002'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2582
                          mmLeft = 207169
                          mmTop = 794
                          mmWidth = 5927
                          BandType = 4
                        end
                        object ppLabel131: TppLabel
                          UserName = 'Label131'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 153459
                          mmTop = 794
                          mmWidth = 5556
                          BandType = 4
                        end
                        object sc007: TppLabel
                          UserName = 'sc007'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa001'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2582
                          mmLeft = 164729
                          mmTop = 794
                          mmWidth = 5927
                          BandType = 4
                        end
                        object ppShape14: TppShape
                          UserName = 'Shape14'
                          mmHeight = 4233
                          mmLeft = 173832
                          mmTop = 4233
                          mmWidth = 60061
                          BandType = 4
                        end
                        object ftycost004: TppLabel
                          UserName = 'ftycost004'
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
                          mmHeight = 2582
                          mmLeft = 174890
                          mmTop = 5027
                          mmWidth = 10541
                          BandType = 4
                        end
                      end
                      object ppSummaryBand4: TppSummaryBand
                        BeforePrint = ppSummaryBand4BeforePrint
                        PrintHeight = phDynamic
                        AlignToBottom = False
                        mmBottomOffset = 0
                        mmHeight = 23813
                        mmPrintPosition = 0
                        object ppShape8: TppShape
                          UserName = 'Shape8'
                          mmHeight = 5556
                          mmLeft = 101071
                          mmTop = 1323
                          mmWidth = 132821
                          BandType = 7
                        end
                        object ppDBCalc11: TppDBCalc
                          UserName = 'DBCalc11'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'TTLCOST'
                          DataPipeline = ppDBPipeline4
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2582
                          mmLeft = 106585
                          mmTop = 2646
                          mmWidth = 15917
                          BandType = 7
                        end
                        object ppDBCalc12: TppDBCalc
                          UserName = 'DBCalc101'
                          HyperlinkColor = clBlue
                          AutoSize = True
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'BCOST'
                          DataPipeline = ppDBPipeline4
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'ppDBPipeline4'
                          mmHeight = 2582
                          mmLeft = 133424
                          mmTop = 2646
                          mmWidth = 13420
                          BandType = 7
                        end
                        object ppLabel93: TppLabel
                          UserName = 'Label93'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Total:  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 68263
                          mmTop = 2646
                          mmWidth = 7408
                          BandType = 7
                        end
                        object sc004: TppLabel
                          UserName = 'sc004'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa004'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 187061
                          mmTop = 2646
                          mmWidth = 5821
                          BandType = 7
                        end
                        object sc005: TppLabel
                          UserName = 'sc005'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa005'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 207169
                          mmTop = 2646
                          mmWidth = 5821
                          BandType = 7
                        end
                        object sc006: TppLabel
                          UserName = 'sc006'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa006'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 227542
                          mmTop = 2646
                          mmWidth = 5821
                          BandType = 7
                        end
                        object ppLabel97: TppLabel
                          UserName = 'Label97'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 102659
                          mmTop = 2646
                          mmWidth = 5556
                          BandType = 7
                        end
                        object ppLabel98: TppLabel
                          UserName = 'Label98'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 128588
                          mmTop = 2646
                          mmWidth = 5556
                          BandType = 7
                        end
                        object ppLabel99: TppLabel
                          UserName = 'Label99'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 174096
                          mmTop = 2646
                          mmWidth = 5556
                          BandType = 7
                        end
                        object ppLabel100: TppLabel
                          UserName = 'Label100'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 195527
                          mmTop = 2646
                          mmWidth = 5556
                          BandType = 7
                        end
                        object ppLabel101: TppLabel
                          UserName = 'Label1'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 214842
                          mmTop = 2646
                          mmWidth = 5556
                          BandType = 7
                        end
                        object ppSubReport4: TppSubReport
                          UserName = 'SubReport4'
                          ExpandAll = False
                          NewPrintJob = False
                          OutlineSettings.CreateNode = True
                          TraverseAllData = False
                          DataPipelineName = 'ppDBPipeline5'
                          mmHeight = 5027
                          mmLeft = 0
                          mmTop = 18785
                          mmWidth = 284300
                          BandType = 7
                          mmBottomOffset = 0
                          mmOverFlowOffset = 0
                          mmStopPosition = 0
                          object ppChildReport4: TppChildReport
                            AutoStop = False
                            DataPipeline = ppDBPipeline5
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
                            DataPipelineName = 'ppDBPipeline5'
                            object ppTitleBand4: TppTitleBand
                              mmBottomOffset = 0
                              mmHeight = 6085
                              mmPrintPosition = 0
                              object ppLabel102: TppLabel
                                UserName = 'Label1'
                                HyperlinkColor = clBlue
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Caption = 'By Reason Code  '
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = [fsUnderline]
                                Transparent = True
                                mmHeight = 2879
                                mmLeft = 6879
                                mmTop = 1323
                                mmWidth = 19770
                                BandType = 1
                              end
                              object ppLabel103: TppLabel
                                UserName = 'Label103'
                                HyperlinkColor = clBlue
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Caption = '(Reason Code & Explanation)    '
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = [fsUnderline]
                                Transparent = True
                                mmHeight = 2879
                                mmLeft = 30163
                                mmTop = 1323
                                mmWidth = 35010
                                BandType = 1
                              end
                            end
                            object ppDetailBand5: TppDetailBand
                              PrintHeight = phDynamic
                              mmBottomOffset = 0
                              mmHeight = 12435
                              mmPrintPosition = 0
                              object ppDBText22: TppDBText
                                UserName = 'DBText22'
                                HyperlinkColor = clBlue
                                AutoSize = True
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                DataField = 'RCODE'
                                DataPipeline = ppDBPipeline5
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline5'
                                mmHeight = 2879
                                mmLeft = 6879
                                mmTop = 794
                                mmWidth = 4487
                                BandType = 4
                              end
                              object ppLabel104: TppLabel
                                UserName = 'Label104'
                                HyperlinkColor = clBlue
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                Caption = '  =  '
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                Transparent = True
                                mmHeight = 2910
                                mmLeft = 16404
                                mmTop = 794
                                mmWidth = 4233
                                BandType = 4
                              end
                              object ppDBMemo1: TppDBMemo
                                UserName = 'DBMemo1'
                                Border.BorderPositions = []
                                Border.Color = clBlack
                                Border.Style = psSolid
                                Border.Visible = False
                                CharWrap = False
                                DataField = 'RDESC'
                                DataPipeline = ppDBPipeline5
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clBlack
                                Font.Name = 'Arial'
                                Font.Size = 7
                                Font.Style = []
                                Stretch = True
                                Transparent = True
                                DataPipelineName = 'ppDBPipeline5'
                                mmHeight = 10583
                                mmLeft = 30163
                                mmTop = 794
                                mmWidth = 250032
                                BandType = 4
                                mmBottomOffset = 0
                                mmOverFlowOffset = 0
                                mmStopPosition = 0
                                mmLeading = 0
                              end
                            end
                            object ppSummaryBand5: TppSummaryBand
                              AlignToBottom = False
                              mmBottomOffset = 0
                              mmHeight = 0
                              mmPrintPosition = 0
                            end
                          end
                        end
                        object ppLabel133: TppLabel
                          UserName = 'Label133'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'HK$ '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 153459
                          mmTop = 2646
                          mmWidth = 5556
                          BandType = 7
                        end
                        object sc008: TppLabel
                          UserName = 'sc008'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa004'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 164836
                          mmTop = 2646
                          mmWidth = 5821
                          BandType = 7
                        end
                        object ppShape15: TppShape
                          UserName = 'Shape15'
                          mmHeight = 4233
                          mmLeft = 173832
                          mmTop = 7408
                          mmWidth = 60061
                          BandType = 7
                        end
                        object ftycost0004: TppLabel
                          UserName = 'ftycost0004'
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
                          mmHeight = 2582
                          mmLeft = 174890
                          mmTop = 8202
                          mmWidth = 11726
                          BandType = 7
                        end
                        object ppLabel134: TppLabel
                          UserName = 'Label134'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Air Cost Share (%):  '
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 7
                          Font.Style = []
                          Transparent = True
                          mmHeight = 2910
                          mmLeft = 150548
                          mmTop = 13229
                          mmWidth = 22490
                          BandType = 7
                        end
                        object sd004: TppLabel
                          UserName = 'sd004'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa004'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 187061
                          mmTop = 13229
                          mmWidth = 5821
                          BandType = 7
                        end
                        object sd005: TppLabel
                          UserName = 'sd005'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa005'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 207169
                          mmTop = 13229
                          mmWidth = 5821
                          BandType = 7
                        end
                        object sd006: TppLabel
                          UserName = 'sd006'
                          HyperlinkColor = clBlue
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'sa006'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 6
                          Font.Style = [fsBold]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 2646
                          mmLeft = 227542
                          mmTop = 13229
                          mmWidth = 5821
                          BandType = 7
                        end
                      end
                    end
                  end
                end
                object ppGroup2: TppGroup
                  BreakName = 'TM'
                  DataPipeline = ppDBPipeline3
                  OutlineSettings.CreateNode = True
                  NewFile = False
                  ReprintOnSubsequentPage = False
                  StartOnOddPage = False
                  UserName = 'Group2'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'ppDBPipeline3'
                  object ppGroupHeaderBand2: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                  object ppGroupFooterBand2: TppGroupFooterBand
                    BeforePrint = ppGroupFooterBand2BeforePrint
                    HideWhenOneDetail = False
                    mmBottomOffset = 0
                    mmHeight = 12171
                    mmPrintPosition = 0
                    object ppShape6: TppShape
                      UserName = 'Shape6'
                      mmHeight = 5556
                      mmLeft = 101071
                      mmTop = 1323
                      mmWidth = 132821
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppDBCalc7: TppDBCalc
                      UserName = 'DBCalc7'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'TTLCOST'
                      DataPipeline = ppDBPipeline3
                      DisplayFormat = '#,0.00;-#,0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsBold]
                      ResetGroup = ppGroup2
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2582
                      mmLeft = 106532
                      mmTop = 2646
                      mmWidth = 15917
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppDBCalc10: TppDBCalc
                      UserName = 'DBCalc10'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'BCOST'
                      DataPipeline = ppDBPipeline3
                      DisplayFormat = '#,0.00;-#,0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsBold]
                      ResetGroup = ppGroup2
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppDBPipeline3'
                      mmHeight = 2582
                      mmLeft = 133350
                      mmTop = 2646
                      mmWidth = 13420
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppLabel69: TppLabel
                      UserName = 'Label69'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Total:  '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 68263
                      mmTop = 2646
                      mmWidth = 7408
                      BandType = 5
                      GroupNo = 0
                    end
                    object sb004: TppLabel
                      UserName = 'sb004'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'sa004'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2582
                      mmLeft = 186267
                      mmTop = 2646
                      mmWidth = 5927
                      BandType = 5
                      GroupNo = 0
                    end
                    object sb005: TppLabel
                      UserName = 'sb005'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'sa005'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2582
                      mmLeft = 206905
                      mmTop = 2646
                      mmWidth = 5927
                      BandType = 5
                      GroupNo = 0
                    end
                    object sb006: TppLabel
                      UserName = 'sb006'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'sa006'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2582
                      mmLeft = 227436
                      mmTop = 2646
                      mmWidth = 5927
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppLabel73: TppLabel
                      UserName = 'Label73'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'HK$ '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 102659
                      mmTop = 2646
                      mmWidth = 5556
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppLabel74: TppLabel
                      UserName = 'Label74'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'HK$ '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 128588
                      mmTop = 2646
                      mmWidth = 5556
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppLabel75: TppLabel
                      UserName = 'Label75'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'HK$ '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 173038
                      mmTop = 2646
                      mmWidth = 5556
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppLabel76: TppLabel
                      UserName = 'Label76'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'HK$ '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 194469
                      mmTop = 2646
                      mmWidth = 5556
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppLabel77: TppLabel
                      UserName = 'Label77'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'HK$ '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 214842
                      mmTop = 2646
                      mmWidth = 5556
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppLabel135: TppLabel
                      UserName = 'Label135'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'HK$ '
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 153459
                      mmTop = 2646
                      mmWidth = 5556
                      BandType = 5
                      GroupNo = 0
                    end
                    object sb008: TppLabel
                      UserName = 'sb008'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'sa004'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Arial'
                      Font.Size = 6
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2582
                      mmLeft = 164729
                      mmTop = 2646
                      mmWidth = 5927
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppShape13: TppShape
                      UserName = 'Shape13'
                      mmHeight = 4233
                      mmLeft = 173832
                      mmTop = 7408
                      mmWidth = 60061
                      BandType = 5
                      GroupNo = 0
                    end
                    object ftycost0003: TppLabel
                      UserName = 'ftycost0003'
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
                      mmHeight = 2582
                      mmLeft = 174890
                      mmTop = 8202
                      mmWidth = 11726
                      BandType = 5
                      GroupNo = 0
                    end
                  end
                end
              end
            end
            object ppLabel123: TppLabel
              UserName = 'Label123'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HK$ '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 153459
              mmTop = 2646
              mmWidth = 5556
              BandType = 7
            end
            object sa008: TppLabel
              UserName = 'sa008'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sa004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2582
              mmLeft = 164729
              mmTop = 2646
              mmWidth = 5927
              BandType = 7
            end
            object ppShape11: TppShape
              UserName = 'Shape101'
              mmHeight = 4233
              mmLeft = 173832
              mmTop = 7408
              mmWidth = 60061
              BandType = 7
            end
            object ftycost0002: TppLabel
              UserName = 'ftycost0002'
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
              mmHeight = 2582
              mmLeft = 174890
              mmTop = 8202
              mmWidth = 11726
              BandType = 7
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TTLCOST'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 2498
              mmLeft = 33243
              mmTop = 29898
              mmWidth = 8297
              BandType = 7
            end
          end
        end
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SUMMARY '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 6350
        mmTop = 11113
        mmWidth = 15346
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 104246
        mmTop = 1323
        mmWidth = 7408
        BandType = 7
      end
      object x004: TppLabel
        UserName = 'x004'
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
        mmHeight = 2921
        mmLeft = 196586
        mmTop = 1323
        mmWidth = 5292
        BandType = 7
      end
      object x005: TppLabel
        UserName = 'x005'
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
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 206640
        mmTop = 1588
        mmWidth = 5292
        BandType = 7
      end
      object x006: TppLabel
        UserName = 'x006'
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
        mmHeight = 2921
        mmLeft = 239184
        mmTop = 1323
        mmWidth = 5292
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label203'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 139171
        mmTop = 1323
        mmWidth = 5556
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 160602
        mmTop = 1323
        mmWidth = 5556
        BandType = 7
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 183621
        mmTop = 1323
        mmWidth = 5556
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 204788
        mmTop = 1323
        mmWidth = 5556
        BandType = 7
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 225161
        mmTop = 1323
        mmWidth = 5556
        BandType = 7
      end
      object w0002: TppLabel
        UserName = 'w0002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 11113
        mmWidth = 7408
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2582
        mmLeft = 208968
        mmTop = 1323
        mmWidth = 13547
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CUST'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel68: TppLabel
          UserName = 'Label68'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Customer :  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 6350
          mmTop = 1058
          mmWidth = 16595
          BandType = 3
          GroupNo = 0
        end
        object ppDBText24: TppDBText
          UserName = 'DBText24'
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
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 25135
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1588
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 8202
          mmTop = 0
          mmWidth = 271728
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'SEQ'
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
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'SEQ1'
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
        mmHeight = 1852
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 22225
        mmPrintPosition = 0
        object ppShape9: TppShape
          UserName = 'Shape9'
          mmHeight = 16404
          mmLeft = 182563
          mmTop = 5027
          mmWidth = 95779
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'T4QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2921
          mmLeft = 120429
          mmTop = 1058
          mmWidth = 14774
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TTLCOST'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2582
          mmLeft = 141510
          mmTop = 1058
          mmWidth = 15917
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BCOST'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2582
          mmLeft = 167026
          mmTop = 1058
          mmWidth = 13420
          BandType = 5
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'FACTORY_ACTCOST'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 194427
          mmTop = 9790
          mmWidth = 7451
          BandType = 5
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'DEBIT_NO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 259821
          mmTop = 1058
          mmWidth = 12361
          BandType = 5
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'RCODE'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 247121
          mmTop = 1058
          mmWidth = 4487
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 6085
          mmTop = 0
          mmWidth = 271728
          BandType = 5
          GroupNo = 0
        end
        object x001: TppLabel
          UserName = 'x001'
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
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 196586
          mmTop = 17727
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label202'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 139171
          mmTop = 1058
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 160602
          mmTop = 1058
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 183621
          mmTop = 9790
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 183621
          mmTop = 17727
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object ppLabel72: TppLabel
          UserName = 'Label302'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 183621
          mmTop = 1058
          mmWidth = 5556
          BandType = 5
          GroupNo = 2
        end
        object x0001: TppLabel
          UserName = 'x0001'
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
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 194998
          mmTop = 1058
          mmWidth = 6879
          BandType = 5
          GroupNo = 2
        end
        object ppDBText25: TppDBText
          UserName = 'DBText25'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BUYER_ACTCOST'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 197137
          mmTop = 5821
          mmWidth = 4741
          BandType = 5
          GroupNo = 2
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 183621
          mmTop = 5821
          mmWidth = 5556
          BandType = 5
          GroupNo = 2
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SUPPLIER_ACTCOST'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 197136
          mmTop = 13758
          mmWidth = 4741
          BandType = 5
          GroupNo = 2
        end
        object ppLabel90: TppLabel
          UserName = 'Label90'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 183621
          mmTop = 13758
          mmWidth = 5556
          BandType = 5
          GroupNo = 2
        end
        object ppLabel91: TppLabel
          UserName = 'Label91'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 225161
          mmTop = 1058
          mmWidth = 5556
          BandType = 5
          GroupNo = 2
        end
        object x00001: TppLabel
          UserName = 'x00001'
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
          mmHeight = 2921
          mmLeft = 236262
          mmTop = 1058
          mmWidth = 8213
          BandType = 5
          GroupNo = 2
        end
        object ppLabel92: TppLabel
          UserName = 'Label92'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Customer Share / Refund   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 203465
          mmTop = 5821
          mmWidth = 29633
          BandType = 5
          GroupNo = 2
        end
        object ppLabel94: TppLabel
          UserName = 'Label94'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Claim back Factory   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 203465
          mmTop = 9790
          mmWidth = 23019
          BandType = 5
          GroupNo = 2
        end
        object ppLabel95: TppLabel
          UserName = 'Label95'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Claim back Supplier   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 203465
          mmTop = 13758
          mmWidth = 23813
          BandType = 5
          GroupNo = 2
        end
        object ppLabel96: TppLabel
          UserName = 'Label96'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Air Freight Loss in PH - HK    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 203465
          mmTop = 17727
          mmWidth = 32015
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OCOST'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#0.00;-#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2582
          mmLeft = 208968
          mmTop = 1058
          mmWidth = 13547
          BandType = 5
          GroupNo = 2
        end
        object ppLabel105: TppLabel
          UserName = 'Label105'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'HK$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 204788
          mmTop = 1058
          mmWidth = 5556
          BandType = 5
          GroupNo = 2
        end
        object ftycost001: TppLabel
          UserName = 'ftycost001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2921
          mmLeft = 228336
          mmTop = 9790
          mmWidth = 23029
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 248
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 280
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_airsummary'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VOYN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'RCODE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RDESC'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'T4QTY'
        DataType = ftFloat
      end
      item
        Name = 'TTLCOST'
        DataType = ftFloat
      end
      item
        Name = 'BCOST'
        DataType = ftFloat
      end
      item
        Name = 'FCOST'
        DataType = ftFloat
      end
      item
        Name = 'VCOST'
        DataType = ftFloat
      end
      item
        Name = 'HKCOST'
        DataType = ftFloat
      end
      item
        Name = 'DEBIT_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FACTORY_ACTCOST'
        DataType = ftFloat
      end
      item
        Name = 'SUPPLIER_ACTCOST'
        DataType = ftFloat
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MTH'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AFRNO'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 152
    Top = 32
  end
  object query6: TClientDataSet
    Aggregates = <>
    FieldDefs = <
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
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'CFMTM'
        DataType = ftDateTime
      end
      item
        Name = 'SHPD'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'OSQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25AQQTY'
        DataType = ftInteger
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
    Left = 248
    Top = 32
  end
  object query7: TClientDataSet
    Aggregates = <>
    FieldDefs = <
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
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'CFMTM'
        DataType = ftDateTime
      end
      item
        Name = 'SHPD'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'OSQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25AQQTY'
        DataType = ftInteger
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
    Left = 280
    Top = 32
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 24
    Top = 32
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline3'
    Left = 56
    Top = 32
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 88
    Top = 32
  end
  object ppDBPipeline4: TppDBPipeline
    DataSource = DataSource4
    UserName = 'DBPipeline4'
    Left = 120
    Top = 32
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 184
    Top = 32
  end
  object ppDBPipeline5: TppDBPipeline
    DataSource = DataSource5
    UserName = 'DBPipeline5'
    Left = 216
    Top = 32
  end
end
