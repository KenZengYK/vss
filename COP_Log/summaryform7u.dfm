object frmsummary7: Tfrmsummary7
  Left = 192
  Top = 114
  Caption = 'frmsummary7'
  ClientHeight = 36
  ClientWidth = 215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_aql_s0 where f_year(dt)=2014 and wk=11'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'PONO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'AUD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FTY'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACOL1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL3'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL4'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL5'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL7'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY1'
        DataType = ftInteger
      end
      item
        Name = 'COL1'
        DataType = ftInteger
      end
      item
        Name = 'CASE1'
        DataType = ftInteger
      end
      item
        Name = 'SIZE1'
        DataType = ftInteger
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'BRAND'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'REMARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'SQTY1'
        DataType = ftInteger
      end
      item
        Name = 'RQTY1'
        DataType = ftInteger
      end
      item
        Name = 'REMARKS1'
        DataType = ftString
        Size = 250
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
        Name = 'MEMO1'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'ACL1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL7'
        DataType = ftString
        Size = 20
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
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'RPT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL8'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL9'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL10'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL11'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL12'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACL8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL10'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL11'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL12'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CASE2'
        DataType = ftInteger
      end
      item
        Name = 'CQTY'
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'HUN_CHECK'
        DataType = ftBoolean
      end
      item
        Name = 'RANGE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FLAG60'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ENDLINE'
        DataType = ftBoolean
      end
      item
        Name = 'QR'
        DataType = ftInteger
      end
      item
        Name = 'QR1'
        DataType = ftInteger
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'WS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DAILYAQL'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT4'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT5'
        DataType = ftBoolean
      end
      item
        Name = 'AUDITR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DAILYAQL1'
        DataType = ftBoolean
      end
      item
        Name = 'ACC'
        DataType = ftBoolean
      end
      item
        Name = 'CUR'
        DataType = ftBoolean
      end
      item
        Name = 'PST'
        DataType = ftBoolean
      end
      item
        Name = 'DELLOT'
        DataType = ftInteger
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
        Name = 'AQL_LEVEL'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'LOC'
        DataType = ftString
        Size = 10
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
    Left = 16
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 48
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 80
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 112
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 144
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
    Left = 176
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37571
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 33023
        Pen.Style = psClear
        mmHeight = 4763
        mmLeft = 140494
        mmTop = 17992
        mmWidth = 16140
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 15081
        mmLeft = 1323
        mmTop = 22490
        mmWidth = 280459
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 12615935
        Pen.Style = psClear
        mmHeight = 10848
        mmLeft = 155046
        mmTop = 26723
        mmWidth = 14552
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 12615935
        Pen.Style = psClear
        mmHeight = 14817
        mmLeft = 109802
        mmTop = 22754
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Audit '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 1852
        mmTop = 23283
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 53446
        mmTop = 23283
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Brand: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 39423
        mmTop = 18785
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QA  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 100013
        mmTop = 23283
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipment '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 110331
        mmTop = 23283
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 156104
        mmTop = 27252
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sample  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 170127
        mmTop = 27252
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Garments '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 156104
        mmTop = 30427
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label401'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Garments '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 170127
        mmTop = 30427
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weekly Off-line AQL Audit Performance Report Summary    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 23019
        mmTop = 7938
        mmWidth = 231511
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 18521
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3683
        mmLeft = 13229
        mmTop = 17992
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date From: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 88900
        mmTop = 18785
        mmWidth = 12965
        BandType = 0
      end
      object dt001: TppLabel
        UserName = 'dt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2008/10/10 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 103452
        mmTop = 18785
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 119592
        mmTop = 18785
        mmWidth = 4233
        BandType = 0
      end
      object dt002: TppLabel
        UserName = 'dt002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2008/10/10 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 125413
        mmTop = 18785
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 75671
        mmTop = 23283
        mmWidth = 4233
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 9525
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 204259
        mmTop = 26988
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Defective '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 204259
        mmTop = 30163
        mmWidth = 10848
        BandType = 0
      end
      object x0001: TppLabel
        UserName = 'x0001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pass   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 271992
        mmTop = 23283
        mmWidth = 7408
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 98690
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 109538
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 181769
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 201877
        mmTop = 22490
        mmWidth = 2646
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
        mmHeight = 10848
        mmLeft = 217488
        mmTop = 26723
        mmWidth = 2646
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
        mmHeight = 14817
        mmLeft = 62442
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 215636
        mmTop = 14552
        mmWidth = 12965
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
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 230717
        mmTop = 14552
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 255059
        mmTop = 14552
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
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 264584
        mmTop = 14552
        mmWidth = 6085
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 230453
        mmTop = 22754
        mmWidth = 2646
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 269611
        mmTop = 22754
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ACC '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 218017
        mmTop = 27252
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'REJ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 224632
        mmTop = 27252
        mmWidth = 5292
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BRAND'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2921
        mmLeft = 49477
        mmTop = 18785
        mmWidth = 8721
        BandType = 0
      end
      object week001: TppLabel
        UserName = 'week001'
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
        mmLeft = 141288
        mmTop = 18785
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty being '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 110331
        mmTop = 26723
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Audit '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 110331
        mmTop = 30163
        mmWidth = 6350
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 121973
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Max '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 124354
        mmTop = 23283
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shpt '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 123296
        mmTop = 33602
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' in '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 124354
        mmTop = 30163
        mmWidth = 3175
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 131234
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Max '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 133350
        mmTop = 23283
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' in '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 133350
        mmTop = 30163
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shpt '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 132292
        mmTop = 33602
        mmWidth = 5821
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 139436
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Auditor '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 143404
        mmTop = 23283
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '# SKU'#39's '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 142082
        mmTop = 33602
        mmWidth = 9525
        BandType = 0
      end
      object ppLine52: TppLine
        UserName = 'Line52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 155046
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Garment Construction/MSR '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 155575
        mmTop = 23283
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AQL 2.5 Level II  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 182563
        mmTop = 23283
        mmWidth = 18785
        BandType = 0
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 155046
        mmTop = 26458
        mmWidth = 114829
        BandType = 0
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 192088
        mmTop = 26458
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Garment   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 212461
        mmTop = 23283
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ACC '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 184680
        mmTop = 27252
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'REJ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 194734
        mmTop = 27252
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Casing   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 238390
        mmTop = 23283
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ACC '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 243153
        mmTop = 27252
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'REJ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 250032
        mmTop = 27252
        mmWidth = 5292
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 249503
        mmTop = 26458
        mmWidth = 2646
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 224103
        mmTop = 26723
        mmWidth = 2646
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 169334
        mmTop = 26458
        mmWidth = 2646
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 33023
        mmHeight = 4763
        mmLeft = 201877
        mmTop = 17992
        mmWidth = 79904
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Result  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 238655
        mmTop = 18785
        mmWidth = 8731
        BandType = 0
      end
      object ppLine65: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 202142
        mmTop = 33338
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Major '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 202671
        mmTop = 33867
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Minor '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 210344
        mmTop = 33867
        mmWidth = 6615
        BandType = 0
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 242359
        mmTop = 26458
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 231246
        mmTop = 27252
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Defective '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 231246
        mmTop = 30427
        mmWidth = 10848
        BandType = 0
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
        mmLeft = 209550
        mmTop = 33338
        mmWidth = 2646
        BandType = 0
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 230453
        mmTop = 33602
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Major '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 233098
        mmTop = 34131
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Colors '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 123296
        mmTop = 26723
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sizes '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 132292
        mmTop = 26723
        mmWidth = 6615
        BandType = 0
      end
      object ppLine78: TppLine
        UserName = 'Line78'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 255853
        mmTop = 22754
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AQL Report '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 256382
        mmTop = 23283
        mmWidth = 13494
        BandType = 0
      end
      object ppLine79: TppLine
        UserName = 'Line79'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 262996
        mmTop = 26458
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(pass)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 184680
        mmTop = 30427
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(pass)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 218017
        mmTop = 30427
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(pass)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 243153
        mmTop = 30427
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label502'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ACC '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 256646
        mmTop = 27252
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(pass)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 256646
        mmTop = 30427
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'REJ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 263526
        mmTop = 27252
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Auditor '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 100013
        mmTop = 26723
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Yield   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 271992
        mmTop = 26723
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 1852
        mmTop = 27252
        mmWidth = 5821
        BandType = 0
      end
      object ppLine102: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 51594
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 45244
        mmTop = 23283
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Type '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 45244
        mmTop = 26988
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sample Size '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 140229
        mmTop = 26723
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Worksheet '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 140759
        mmTop = 30163
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Assembly '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 10054
        mmTop = 23283
        mmWidth = 11261
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 10054
        mmTop = 27252
        mmWidth = 5292
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 21960
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 22490
        mmTop = 23283
        mmWidth = 11980
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO #   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 35719
        mmTop = 23283
        mmWidth = 8424
        BandType = 0
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 34660
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 44450
        mmTop = 22490
        mmWidth = 2646
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 0
        mmWidth = 280459
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 12615935
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 155046
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 12615935
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 265
        mmWidth = 12435
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
        DataField = 'DT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 2117
        mmTop = 794
        mmWidth = 3302
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2371
        mmLeft = 52123
        mmTop = 794
        mmWidth = 8213
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AUD'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2921
        mmLeft = 99484
        mmTop = 794
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'COL1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 122767
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SIZE1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 132027
        mmTop = 794
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 156104
        mmTop = 794
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 170127
        mmTop = 794
        mmWidth = 11113
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
        DataField = 'PONO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2371
        mmLeft = 63236
        mmTop = 794
        mmWidth = 6350
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 9525
        mmTop = 0
        mmWidth = 2646
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
        mmHeight = 4498
        mmLeft = 62442
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 98690
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 109538
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 155046
        mmTop = 0
        mmWidth = 2646
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
        mmHeight = 4498
        mmLeft = 201877
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 181769
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 217488
        mmTop = 265
        mmWidth = 2646
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
        mmHeight = 4498
        mmLeft = 224103
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object audit001: TppLabel
        UserName = 'audit001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1st '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 270405
        mmTop = 794
        mmWidth = 10583
        BandType = 4
      end
      object def001: TppLabel
        UserName = 'def001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 202671
        mmTop = 794
        mmWidth = 6350
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 230453
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 269611
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object x001: TppLabel
        UserName = 'x001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' X '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 219605
        mmTop = 794
        mmWidth = 2910
        BandType = 4
      end
      object x002: TppLabel
        UserName = 'x002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' X '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 225955
        mmTop = 794
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 111125
        mmTop = 794
        mmWidth = 10319
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
        mmHeight = 4498
        mmLeft = 121973
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line48'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 131234
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line50'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 139436
        mmTop = 0
        mmWidth = 2646
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
        mmHeight = 4498
        mmLeft = 192088
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SQTY1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 183357
        mmTop = 794
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RQTY1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 193411
        mmTop = 794
        mmWidth = 7673
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
        mmHeight = 4498
        mmLeft = 249503
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ttl001: TppLabel
        UserName = 'ttl001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 140759
        mmTop = 794
        mmWidth = 13229
        BandType = 4
      end
      object y001: TppLabel
        UserName = 'y001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' X '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 244475
        mmTop = 794
        mmWidth = 2910
        BandType = 4
      end
      object y002: TppLabel
        UserName = 'y002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' X '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 251090
        mmTop = 794
        mmWidth = 2910
        BandType = 4
      end
      object ppLine67: TppLine
        UserName = 'Line401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 242359
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine71: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 209550
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object def003: TppLabel
        UserName = 'def003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 210344
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object def005: TppLabel
        UserName = 'def005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 231775
        mmTop = 794
        mmWidth = 9525
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 169334
        mmTop = 0
        mmWidth = 2646
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
        mmHeight = 4498
        mmLeft = 255853
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine81: TppLine
        UserName = 'Line81'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 262996
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object y003: TppLabel
        UserName = 'y003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' X '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 258234
        mmTop = 794
        mmWidth = 2910
        BandType = 4
      end
      object y004: TppLabel
        UserName = 'y004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' X '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 264848
        mmTop = 794
        mmWidth = 2910
        BandType = 4
      end
      object ppLine103: TppLine
        UserName = 'Line33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 51594
        mmTop = 0
        mmWidth = 2646
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
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2371
        mmLeft = 46038
        mmTop = 794
        mmWidth = 6604
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText201'
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
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2371
        mmLeft = 10054
        mmTop = 794
        mmWidth = 6604
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
        mmHeight = 4498
        mmLeft = 21960
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 34660
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 44450
        mmTop = 0
        mmWidth = 2646
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
        DataField = 'CUST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2371
        mmLeft = 23548
        mmTop = 794
        mmWidth = 6604
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2371
        mmLeft = 35190
        mmTop = 794
        mmWidth = 6604
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5292
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 280459
        BandType = 7
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        Brush.Color = 12615935
        Pen.Style = psClear
        mmHeight = 4763
        mmLeft = 155046
        mmTop = 2117
        mmWidth = 14552
        BandType = 7
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Color = 12615935
        Pen.Style = psClear
        mmHeight = 4763
        mmLeft = 109802
        mmTop = 2117
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
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
        mmLeft = 1852
        mmTop = 2910
        mmWidth = 7408
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
        DataField = 'SEQ'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 55298
        mmTop = 14817
        mmWidth = 15409
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
        mmHeight = 5027
        mmLeft = 9525
        mmTop = 1852
        mmWidth = 2646
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
        mmHeight = 5027
        mmLeft = 169334
        mmTop = 1852
        mmWidth = 2646
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
        mmHeight = 5027
        mmLeft = 181769
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 98690
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 201877
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 217488
        mmTop = 2117
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 156104
        mmTop = 2910
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 170127
        mmTop = 2910
        mmWidth = 11113
        BandType = 7
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 62442
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine35: TppLine
        UserName = 'Line301'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 109538
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine36: TppLine
        UserName = 'Line302'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 155046
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 224103
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object def002: TppLabel
        UserName = 'def002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 202407
        mmTop = 2910
        mmWidth = 6615
        BandType = 7
      end
      object fpy001: TppLabel
        UserName = 'fpy001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 270140
        mmTop = 2910
        mmWidth = 11113
        BandType = 7
      end
      object ppLine42: TppLine
        UserName = 'Line42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 230453
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine43: TppLine
        UserName = 'Line43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 269611
        mmTop = 1852
        mmWidth = 2646
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
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 224896
        mmTop = 2910
        mmWidth = 5292
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 110596
        mmTop = 2910
        mmWidth = 10848
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line303'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 121973
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 131234
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine51: TppLine
        UserName = 'Line51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 139436
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 192088
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 249503
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object x003: TppLabel
        UserName = 'x003'
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
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 218017
        mmTop = 2910
        mmWidth = 5292
        BandType = 7
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 242359
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine72: TppLine
        UserName = 'Line72'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 209550
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object def004: TppLabel
        UserName = 'def004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 210080
        mmTop = 2910
        mmWidth = 6879
        BandType = 7
      end
      object def006: TppLabel
        UserName = 'def006'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 231511
        mmTop = 2910
        mmWidth = 9790
        BandType = 7
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory Representative:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 21696
        mmTop = 10054
        mmWidth = 31665
        BandType = 7
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '# of AQL Defect Report = '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21696
        mmTop = 14817
        mmWidth = 32808
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DPM :    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 196057
        mmTop = 10054
        mmWidth = 11113
        BandType = 7
      end
      object dx001: TppLabel
        UserName = 'dx001'
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
        mmLeft = 211932
        mmTop = 10054
        mmWidth = 13758
        BandType = 7
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(DPM= # of major defective divided by Sample Garment)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 193411
        mmTop = 14817
        mmWidth = 54504
        BandType = 7
      end
      object ppLine82: TppLine
        UserName = 'Line82'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 255853
        mmTop = 1852
        mmWidth = 2646
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
        mmHeight = 5027
        mmLeft = 262996
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object style001: TppLabel
        UserName = 'style001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 52388
        mmTop = 2910
        mmWidth = 9790
        BandType = 7
      end
      object po001: TppLabel
        UserName = 'po001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 70115
        mmTop = 2910
        mmWidth = 22490
        BandType = 7
      end
      object adt001: TppLabel
        UserName = 'adt001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 99484
        mmTop = 2910
        mmWidth = 8996
        BandType = 7
      end
      object acc001: TppLabel
        UserName = 'acc001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 256646
        mmTop = 2910
        mmWidth = 5821
        BandType = 7
      end
      object rej001: TppLabel
        UserName = 'rej001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 263790
        mmTop = 2910
        mmWidth = 5821
        BandType = 7
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
        mmLeft = 51594
        mmTop = 2117
        mmWidth = 2646
        BandType = 7
      end
      object ppLine45: TppLine
        UserName = 'Line45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 21960
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 34660
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 44450
        mmTop = 1852
        mmWidth = 2646
        BandType = 7
      end
      object rep001: TppLabel
        UserName = 'rep001'
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
        mmHeight = 3260
        mmLeft = 54504
        mmTop = 10054
        mmWidth = 9737
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'WS'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel87: TppLabel
          UserName = 'Label87'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ws  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 2381
          mmTop = 529
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
        end
        object ppDBText21: TppDBText
          UserName = 'DBText101'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WS'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2910
          mmLeft = 8467
          mmTop = 529
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppShape20: TppShape
          UserName = 'Shape20'
          mmHeight = 5292
          mmLeft = 1323
          mmTop = 0
          mmWidth = 280459
          BandType = 5
          GroupNo = 0
        end
        object ppShape23: TppShape
          UserName = 'Shape23'
          Brush.Color = 12615935
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 155046
          mmTop = 265
          mmWidth = 14552
          BandType = 5
          GroupNo = 0
        end
        object ppShape24: TppShape
          UserName = 'Shape102'
          Brush.Color = 12615935
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 109802
          mmTop = 265
          mmWidth = 12435
          BandType = 5
          GroupNo = 0
        end
        object ppLabel88: TppLabel
          UserName = 'Label88'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'sub-ttl:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 1852
          mmTop = 1058
          mmWidth = 8731
          BandType = 5
          GroupNo = 0
        end
        object ppLine105: TppLine
          UserName = 'Line105'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 9525
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine106: TppLine
          UserName = 'Line106'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 169334
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine107: TppLine
          UserName = 'Line107'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 181769
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine108: TppLine
          UserName = 'Line304'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 98690
          mmTop = 0
          mmWidth = 2646
          BandType = 5
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
          mmLeft = 201877
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine110: TppLine
          UserName = 'Line110'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 217488
          mmTop = 265
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTY'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2910
          mmLeft = 156104
          mmTop = 1058
          mmWidth = 12435
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTY1'
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 170127
          mmTop = 1058
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppLine111: TppLine
          UserName = 'Line111'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 62442
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine112: TppLine
          UserName = 'Line112'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 109538
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine113: TppLine
          UserName = 'Line113'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 155046
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine114: TppLine
          UserName = 'Line114'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 224103
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object def02: TppLabel
          UserName = 'def02'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 202407
          mmTop = 1058
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
        end
        object fpy01: TppLabel
          UserName = 'fpy01'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fpy01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 270140
          mmTop = 1058
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppLine115: TppLine
          UserName = 'Line115'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 230453
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine116: TppLine
          UserName = 'Line116'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 269611
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object x04: TppLabel
          UserName = 'x04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 2910
          mmLeft = 226219
          mmTop = 1058
          mmWidth = 3969
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTY'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2910
          mmLeft = 110596
          mmTop = 1058
          mmWidth = 10848
          BandType = 5
          GroupNo = 0
        end
        object ppLine117: TppLine
          UserName = 'Line117'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 121973
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine119: TppLine
          UserName = 'Line119'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 131234
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine120: TppLine
          UserName = 'Line120'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 139436
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine124: TppLine
          UserName = 'Line124'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 192088
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine125: TppLine
          UserName = 'Line125'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 249503
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object x03: TppLabel
          UserName = 'x03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 2910
          mmLeft = 219340
          mmTop = 1058
          mmWidth = 3969
          BandType = 5
          GroupNo = 0
        end
        object ppLine126: TppLine
          UserName = 'Line126'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 242359
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine127: TppLine
          UserName = 'Line127'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 209550
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object def04: TppLabel
          UserName = 'def04'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 210080
          mmTop = 1058
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object def06: TppLabel
          UserName = 'def06'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'def06'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 231511
          mmTop = 1058
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
        end
        object ppLine128: TppLine
          UserName = 'Line128'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 255853
          mmTop = 0
          mmWidth = 2646
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
          mmHeight = 5027
          mmLeft = 262996
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object style01: TppLabel
          UserName = 'style01'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'style01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 52388
          mmTop = 1058
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
        end
        object po01: TppLabel
          UserName = 'po01'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'po01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 70115
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object adt01: TppLabel
          UserName = 'adt01'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'adt01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 99484
          mmTop = 1058
          mmWidth = 8996
          BandType = 5
          GroupNo = 0
        end
        object acc01: TppLabel
          UserName = 'acc01'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'acc01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 256646
          mmTop = 1058
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object rej01: TppLabel
          UserName = 'rej01'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'rej01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 263790
          mmTop = 1058
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object ppLine130: TppLine
          UserName = 'Line130'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 51594
          mmTop = 265
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SEQ'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          Visible = False
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 183621
          mmTop = 1323
          mmWidth = 15409
          BandType = 5
          GroupNo = 0
        end
        object ppLine44: TppLine
          UserName = 'Line44'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 21960
          mmTop = 265
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine57: TppLine
          UserName = 'Line57'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 34660
          mmTop = 265
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine59: TppLine
          UserName = 'Line59'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5027
          mmLeft = 44450
          mmTop = 265
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SEQ'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          Visible = False
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3175
          mmLeft = 23813
          mmTop = 794
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
