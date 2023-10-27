object frmpdnrpt7: Tfrmpdnrpt7
  Left = 193
  Top = 113
  Caption = 'frmpdnrpt7'
  ClientHeight = 52
  ClientWidth = 285
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
    CommandText = 'select * from tbl_pdn_wksum'
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
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'BCN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'RQTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'EQTY'
        DataType = ftInteger
      end
      item
        Name = 'SHPQTY'
        DataType = ftInteger
      end
      item
        Name = 'BAL1'
        DataType = ftInteger
      end
      item
        Name = 'BAL2'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'DP'
        DataType = ftFloat
      end
      item
        Name = 'STT'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'EXTM'
        DataType = ftTime
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SPQTY'
        DataType = ftInteger
      end
      item
        Name = 'WRITEOFF'
        DataType = ftInteger
      end
      item
        Name = 'VER'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'SPQTY1'
        DataType = ftInteger
      end
      item
        Name = 'WRITEOFF1'
        DataType = ftInteger
      end
      item
        Name = 'LSTQTY'
        DataType = ftInteger
      end
      item
        Name = 'LSTQTY1'
        DataType = ftInteger
      end
      item
        Name = 'SWING'
        DataType = ftInteger
      end
      item
        Name = 'MEMO1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'CAP'
        DataType = ftInteger
      end
      item
        Name = 'PVAL'
        DataType = ftFloat
      end
      item
        Name = 'EVAL'
        DataType = ftFloat
      end
      item
        Name = 'HQTY'
        DataType = ftInteger
      end
      item
        Name = 'HQTY1'
        DataType = ftInteger
      end
      item
        Name = 'PSAH'
        DataType = ftFloat
      end
      item
        Name = 'SSAH'
        DataType = ftFloat
      end
      item
        Name = 'TSAH'
        DataType = ftFloat
      end
      item
        Name = 'TMC'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 32
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 64
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 65528
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 128
    Top = 65528
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 192
    Top = 65528
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 224
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_r_tmp_sum'
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
        Name = 'ACOL'
        DataType = ftString
        Size = 3
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
        Name = 'R1T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R1T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R1T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R1T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R2T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R2T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R2T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R2T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R3T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R3T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R3T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R3T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R4T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R4T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R4T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R4T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R5T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R5T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R5T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R5T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R6T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R6T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R6T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R6T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R7T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R7T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R7T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R7T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R8T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R8T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R8T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R8T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R9T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R9T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R9T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R9T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R10T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R10T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R10T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R10T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R1QTY'
        DataType = ftInteger
      end
      item
        Name = 'R1PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R2QTY'
        DataType = ftInteger
      end
      item
        Name = 'R2PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R3QTY'
        DataType = ftInteger
      end
      item
        Name = 'R3PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R4QTY'
        DataType = ftInteger
      end
      item
        Name = 'R4PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R5QTY'
        DataType = ftInteger
      end
      item
        Name = 'R5PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R6QTY'
        DataType = ftInteger
      end
      item
        Name = 'R6PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R7QTY'
        DataType = ftInteger
      end
      item
        Name = 'R7PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R8QTY'
        DataType = ftInteger
      end
      item
        Name = 'R8PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R9QTY'
        DataType = ftInteger
      end
      item
        Name = 'R9PQTY'
        DataType = ftInteger
      end
      item
        Name = 'R10QTY'
        DataType = ftInteger
      end
      item
        Name = 'R10PQTY'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'R1PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R1AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R2PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R2AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R3PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R3AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R4PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R4AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R5PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R5AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R6PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R6AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R7PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R7AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R8PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R8AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R9PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R9AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'R10PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'R10AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'SHPQTY'
        DataType = ftInteger
      end
      item
        Name = 'SPQTY'
        DataType = ftInteger
      end
      item
        Name = 'WRITEOFF'
        DataType = ftInteger
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 256
    Top = 65528
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline3
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
    Left = 160
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline3'
    object ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 26194
        mmWidth = 284300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline1
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
          DataPipelineName = 'ppDBPipeline1'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppShape8: TppShape
              UserName = 'Shape8'
              Brush.Color = 14539518
              mmHeight = 11377
              mmLeft = 794
              mmTop = 1058
              mmWidth = 279401
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'PDN  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 2117
              mmTop = 2117
              mmWidth = 5556
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label202'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'WO Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 37306
              mmTop = 2117
              mmWidth = 8202
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label3'
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
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 48419
              mmTop = 2117
              mmWidth = 5027
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11377
              mmLeft = 53975
              mmTop = 1058
              mmWidth = 2381
              BandType = 1
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11377
              mmLeft = 258498
              mmTop = 1058
              mmWidth = 2117
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Ex-fty) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 260615
              mmTop = 8996
              mmWidth = 6615
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '(appt clr) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 37306
              mmTop = 5556
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Ttl  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 48419
              mmTop = 5556
              mmWidth = 3704
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Diff Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 259292
              mmTop = 2117
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label4'
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
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 48419
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '(PDN Vs '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 259292
              mmTop = 5556
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '(% ) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 270405
              mmTop = 5556
              mmWidth = 4498
              BandType = 1
            end
            object srwo01: TppLabel
              UserName = 'srwo01'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'RWO 1 '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2646
              mmLeft = 62177
              mmTop = 1852
              mmWidth = 7144
              BandType = 1
            end
            object ss101: TppLabel
              UserName = 'ss101'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 55563
              mmTop = 5556
              mmWidth = 5821
              BandType = 1
            end
            object ss103: TppLabel
              UserName = 'ss103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'T1 '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 74877
              mmTop = 5556
              mmWidth = 3175
              BandType = 1
            end
            object ss104: TppLabel
              UserName = 'ss104'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'T2 '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 82815
              mmTop = 5556
              mmWidth = 3175
              BandType = 1
            end
            object ss106: TppLabel
              UserName = 'ss106'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'T3 '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 90752
              mmTop = 5556
              mmWidth = 3175
              BandType = 1
            end
            object ss107: TppLabel
              UserName = 'ss107'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'AQL '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 97367
              mmTop = 5556
              mmWidth = 4763
              BandType = 1
            end
            object ss108: TppLabel
              UserName = 'ss108'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Ex-fty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 105040
              mmTop = 5556
              mmWidth = 6085
              BandType = 1
            end
            object ss111: TppLabel
              UserName = 'ss111'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 55563
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ss113: TppLabel
              UserName = 'ss113'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 74877
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ss114: TppLabel
              UserName = 'ss114'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 82815
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ss116: TppLabel
              UserName = 'ss116'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 90752
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ss117: TppLabel
              UserName = 'ss117'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 97367
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ss118: TppLabel
              UserName = 'ss118'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 105040
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ppLabel59: TppLabel
              UserName = 'Label59'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Shipped  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 147902
              mmTop = 5556
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel60: TppLabel
              UserName = 'Label60'
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
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 147902
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ppLabel63: TppLabel
              UserName = 'Label63'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '(PO) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 241830
              mmTop = 8996
              mmWidth = 5080
              BandType = 1
            end
            object ppLabel64: TppLabel
              UserName = 'Label64'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Coming Bal Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 241830
              mmTop = 5556
              mmWidth = 15346
              BandType = 1
            end
            object ppLine24: TppLine
              UserName = 'Line24'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 112184
              mmTop = 5027
              mmWidth = 146579
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label5'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 90488
              mmTop = 2117
              mmWidth = 5821
              BandType = 1
            end
            object ppLine25: TppLine
              UserName = 'Line25'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11377
              mmLeft = 111919
              mmTop = 1058
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Additional Information '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 156369
              mmTop = 2117
              mmWidth = 21167
              BandType = 1
            end
            object ppLabel66: TppLabel
              UserName = 'Label66'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 65352
              mmTop = 5556
              mmWidth = 5027
              BandType = 1
            end
            object ppLabel67: TppLabel
              UserName = 'Label67'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 65352
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ppLabel71: TppLabel
              UserName = 'Label71'
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
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 250296
              mmTop = 8996
              mmWidth = 5821
              BandType = 1
            end
            object ppLabel73: TppLabel
              UserName = 'Label73'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Manifest '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 112448
              mmTop = 5556
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Stage   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 14288
              mmTop = 2117
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Grade   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 17992
              mmTop = 2117
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '    #  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 112448
              mmTop = 8996
              mmWidth = 4763
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Ship '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 122767
              mmTop = 5556
              mmWidth = 4763
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'mode  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 122767
              mmTop = 8996
              mmWidth = 6350
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Ex-fty  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 130704
              mmTop = 5556
              mmWidth = 6615
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'date  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 130704
              mmTop = 8996
              mmWidth = 5292
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'time  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 139700
              mmTop = 8996
              mmWidth = 5292
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '( Sample Qty  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 161132
              mmTop = 5556
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label601'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Curr * '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 162190
              mmTop = 8996
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Defect Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 177800
              mmTop = 5556
              mmWidth = 10626
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label44'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Curr * '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 177800
              mmTop = 8996
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label45'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Code   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 14288
              mmTop = 5556
              mmWidth = 6879
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Accu  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 170392
              mmTop = 8996
              mmWidth = 5821
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Accu  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 184680
              mmTop = 8996
              mmWidth = 5821
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label49'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Lost Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 192352
              mmTop = 5556
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label301'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Curr * '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 192352
              mmTop = 8996
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label51'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Accu  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 199232
              mmTop = 8996
              mmWidth = 5821
              BandType = 1
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Swung  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 232834
              mmTop = 5556
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel53: TppLabel
              UserName = 'Label35'
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
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 232834
              mmTop = 8996
              mmWidth = 3969
              BandType = 1
            end
            object ppLabel55: TppLabel
              UserName = 'Label55'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'PO Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 26458
              mmTop = 2117
              mmWidth = 7535
              BandType = 1
            end
            object ppLabel57: TppLabel
              UserName = 'Label57'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '(appt clr) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 26458
              mmTop = 5556
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel61: TppLabel
              UserName = 'Label61'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Hold Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 219869
              mmTop = 5556
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel76: TppLabel
              UserName = 'Label76'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' + '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 174890
              mmTop = 5556
              mmWidth = 2381
              BandType = 1
            end
            object ppLabel78: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' + '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 190236
              mmTop = 5556
              mmWidth = 2381
              BandType = 1
            end
            object ppLabel80: TppLabel
              UserName = 'Label802'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = ' = '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 202671
              mmTop = 5556
              mmWidth = 2381
              BandType = 1
            end
            object ppLabel83: TppLabel
              UserName = 'Label83'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Others Qty ) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 206111
              mmTop = 5556
              mmWidth = 12171
              BandType = 1
            end
            object ppLabel92: TppLabel
              UserName = 'Label92'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Curr * '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 206111
              mmTop = 8996
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel93: TppLabel
              UserName = 'Label93'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Accu  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 212990
              mmTop = 8996
              mmWidth = 5821
              BandType = 1
            end
            object ppLabel62: TppLabel
              UserName = 'Label62'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Curr * '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 219869
              mmTop = 8996
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel111: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Accu  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 226748
              mmTop = 8996
              mmWidth = 5821
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppShape10: TppShape
              UserName = 'Shape10'
              Brush.Color = clMoneyGreen
              Pen.Style = psClear
              mmHeight = 4233
              mmLeft = 45508
              mmTop = 0
              mmWidth = 8467
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
              DataField = 'PDN'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 2117
              mmTop = 794
              mmWidth = 11599
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
              DataField = 'QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 38365
              mmTop = 794
              mmWidth = 5927
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
              DataField = 'SQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 48282
              mmTop = 794
              mmWidth = 4741
              BandType = 4
            end
            object sdd01: TppDBText
              UserName = 'sdd01'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DIFF'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 261811
              mmTop = 794
              mmWidth = 5461
              BandType = 4
            end
            object sdbcn: TppLabel
              UserName = 'sdbcn'
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
              Transparent = True
              mmHeight = 2381
              mmLeft = 112713
              mmTop = 794
              mmWidth = 5556
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
              DataField = 'RQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 55827
              mmTop = 794
              mmWidth = 5927
              BandType = 4
            end
            object st1001: TppDBText
              UserName = 'st1001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 73025
              mmTop = 794
              mmWidth = 5927
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
              DataField = 'SQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 65215
              mmTop = 794
              mmWidth = 4741
              BandType = 4
            end
            object st2001: TppDBText
              UserName = 'st2001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 82149
              mmTop = 794
              mmWidth = 4741
              BandType = 4
            end
            object saq001: TppDBText
              UserName = 'saq001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'AQQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 101051
              mmTop = 794
              mmWidth = 1185
              BandType = 4
            end
            object st3001: TppDBText
              UserName = 'st3001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T3QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 93642
              mmTop = 794
              mmWidth = 1185
              BandType = 4
            end
            object st4001: TppDBText
              UserName = 'st4001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'EQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 110046
              mmTop = 794
              mmWidth = 1185
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText101'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SHPQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 152802
              mmTop = 794
              mmWidth = 1185
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BAL1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 242359
              mmTop = 794
              mmWidth = 4741
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BAL2'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 252413
              mmTop = 794
              mmWidth = 4741
              BandType = 4
            end
            object sdp01: TppLabel
              UserName = 'sdp01'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sdp01'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 270405
              mmTop = 794
              mmWidth = 5821
              BandType = 4
            end
            object grade001: TppLabel
              UserName = 'grade001'
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
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2381
              mmLeft = 17992
              mmTop = 794
              mmWidth = 7673
              BandType = 4
            end
            object shpm001: TppLabel
              UserName = 'shpm001'
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
              Transparent = True
              mmHeight = 2381
              mmLeft = 122767
              mmTop = 794
              mmWidth = 5556
              BandType = 4
            end
            object exfty003: TppLabel
              UserName = 'exfty003'
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
              Transparent = True
              mmHeight = 2381
              mmLeft = 130704
              mmTop = 794
              mmWidth = 7938
              BandType = 4
            end
            object extm002: TppLabel
              UserName = 'extm002'
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
              Transparent = True
              mmHeight = 2381
              mmLeft = 139700
              mmTop = 794
              mmWidth = 7938
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
              DataField = 'SPQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 173705
              mmTop = 794
              mmWidth = 1185
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'WRITEOFF'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 180584
              mmTop = 794
              mmWidth = 1185
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VER'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 15610
              mmTop = 794
              mmWidth = 1185
              BandType = 4
            end
            object stt001: TppLabel
              UserName = 'stt001'
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
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 14288
              mmTop = 794
              mmWidth = 5821
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
              DataField = 'SPQTY1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 165767
              mmTop = 794
              mmWidth = 1185
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'WRITEOFF1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 188521
              mmTop = 794
              mmWidth = 1185
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
              DataField = 'LSTQTY1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 195400
              mmTop = 794
              mmWidth = 1185
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
              DataField = 'LSTQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 203338
              mmTop = 794
              mmWidth = 1185
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
              DataField = 'SWING'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 237861
              mmTop = 794
              mmWidth = 1185
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
              DataField = 'QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 28734
              mmTop = 794
              mmWidth = 5927
              BandType = 4
            end
            object ppLabel74: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'n.a. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 221721
              mmTop = 794
              mmWidth = 4233
              BandType = 4
            end
            object oth003: TppLabel
              UserName = 'oth003'
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
              mmLeft = 207169
              mmTop = 794
              mmWidth = 4233
              BandType = 4
            end
            object oth005: TppLabel
              UserName = 'oth005'
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
              mmLeft = 211667
              mmTop = 794
              mmWidth = 6615
              BandType = 4
            end
            object ppLabel113: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'n.a. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 227807
              mmTop = 794
              mmWidth = 4233
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            BeforePrint = ppSummaryBand1BeforePrint
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppShape9: TppShape
              UserName = 'Shape9'
              Brush.Color = 14539518
              mmHeight = 5027
              mmLeft = 794
              mmTop = 0
              mmWidth = 279401
              BandType = 7
            end
            object ppShape11: TppShape
              UserName = 'Shape101'
              Brush.Color = clMoneyGreen
              Pen.Style = psClear
              mmHeight = 4498
              mmLeft = 45508
              mmTop = 265
              mmWidth = 8467
              BandType = 7
            end
            object ppLabel96: TppLabel
              UserName = 'Label96'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Grand total: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2582
              mmLeft = 2117
              mmTop = 1323
              mmWidth = 12658
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
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 33602
              mmTop = 1323
              mmWidth = 10075
              BandType = 7
            end
            object sbq01: TppDBCalc
              UserName = 'sbq01'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 41540
              mmTop = 1323
              mmWidth = 11472
              BandType = 7
            end
            object sbd01: TppDBCalc
              UserName = 'sbd01'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DIFF'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 256382
              mmTop = 1323
              mmWidth = 10456
              BandType = 7
            end
            object sb103: TppDBCalc
              UserName = 'sb103'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 66146
              mmTop = 1323
              mmWidth = 12573
              BandType = 7
            end
            object sb104: TppDBCalc
              UserName = 'sb104'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 74083
              mmTop = 1323
              mmWidth = 12573
              BandType = 7
            end
            object sb106: TppDBCalc
              UserName = 'sb106'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'T3QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 82021
              mmTop = 1323
              mmWidth = 12573
              BandType = 7
            end
            object sb108: TppDBCalc
              UserName = 'sb108'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'EQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 99748
              mmTop = 1323
              mmWidth = 11472
              BandType = 7
            end
            object sb101: TppDBCalc
              UserName = 'sb101'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 50006
              mmTop = 1323
              mmWidth = 11599
              BandType = 7
            end
            object sbp01: TppLabel
              UserName = 'sbp01'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sbp01'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 2381
              mmLeft = 270405
              mmTop = 1323
              mmWidth = 5821
              BandType = 7
            end
            object sb107: TppDBCalc
              UserName = 'sb107'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'AQQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 88900
              mmTop = 1323
              mmWidth = 13123
              BandType = 7
            end
            object sb102: TppDBCalc
              UserName = 'sb102'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 58473
              mmTop = 1323
              mmWidth = 11472
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
              DataField = 'SHPQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 139594
              mmTop = 1323
              mmWidth = 14393
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BAL1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 236241
              mmTop = 1323
              mmWidth = 10880
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
              DataField = 'BAL2'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 246328
              mmTop = 1323
              mmWidth = 10880
              BandType = 7
            end
            object grade002: TppLabel
              UserName = 'grade002'
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
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2381
              mmLeft = 17992
              mmTop = 1323
              mmWidth = 7673
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
              DataField = 'SPQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 162021
              mmTop = 1323
              mmWidth = 12869
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
              DataField = 'WRITEOFF'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 165101
              mmTop = 1323
              mmWidth = 16933
              BandType = 7
            end
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SPQTY1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 152897
              mmTop = 1323
              mmWidth = 14055
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
              DataField = 'WRITEOFF1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 171852
              mmTop = 1323
              mmWidth = 18119
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
              DataField = 'LSTQTY1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 181431
              mmTop = 1323
              mmWidth = 15155
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'LSTQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 190554
              mmTop = 1323
              mmWidth = 13970
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
              DataField = 'SWING'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 225955
              mmTop = 1323
              mmWidth = 12996
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc12'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 24585
              mmTop = 1323
              mmWidth = 10075
              BandType = 7
            end
            object ppLabel75: TppLabel
              UserName = 'Label75'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'n.a. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2381
              mmLeft = 225161
              mmTop = 1323
              mmWidth = 4233
              BandType = 7
            end
            object oth004: TppLabel
              UserName = 'oth004'
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
              mmLeft = 204788
              mmTop = 1323
              mmWidth = 6615
              BandType = 7
            end
            object oth006: TppLabel
              UserName = 'oth006'
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
              mmLeft = 211667
              mmTop = 1323
              mmWidth = 6615
              BandType = 7
            end
          end
        end
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5556
        mmLeft = 3704
        mmTop = 18785
        mmWidth = 263261
        BandType = 1
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
        mmLeft = 37571
        mmTop = 18785
        mmWidth = 2910
        BandType = 1
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
        mmLeft = 75142
        mmTop = 18785
        mmWidth = 2910
        BandType = 1
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
        mmLeft = 156104
        mmTop = 18785
        mmWidth = 2910
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vendor: PH Garment   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 20108
        mmWidth = 28840
        BandType = 1
      end
      object x001: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contact: Samuel Leung   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 20108
        mmWidth = 32015
        BandType = 1
      end
      object x002: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telephone:  852 - 2610 3340  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 76729
        mmTop = 20108
        mmWidth = 37835
        BandType = 1
      end
      object x005: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fax: 852 - 2494 3500   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 20108
        mmWidth = 29369
        BandType = 1
      end
      object x003: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Email: Samuel Leung@phgmt.com.hk   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 157427
        mmTop = 20108
        mmWidth = 50271
        BandType = 1
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
        mmLeft = 119856
        mmTop = 18785
        mmWidth = 2910
        BandType = 1
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
        mmLeft = 211403
        mmTop = 18785
        mmWidth = 2910
        BandType = 1
      end
      object x004: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Submission Date:  2007-09-11 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 212990
        mmTop = 20108
        mmWidth = 39158
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 33867
        mmTop = 14552
        mmWidth = 6085
        BandType = 1
      end
      object pdn001: TppLabel
        UserName = 'pdn001'
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
        mmHeight = 3704
        mmLeft = 42333
        mmTop = 14552
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 77523
        mmTop = 14552
        mmWidth = 15875
        BandType = 1
      end
      object exfty001: TppLabel
        UserName = 'exfty001'
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
        mmHeight = 3704
        mmLeft = 104246
        mmTop = 14552
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
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
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169334
        mmTop = 14552
        mmWidth = 8202
        BandType = 1
      end
      object week01: TppLabel
        UserName = 'week01'
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
        mmLeft = 179123
        mmTop = 14552
        mmWidth = 8202
        BandType = 1
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 14552
        mmWidth = 11906
        BandType = 1
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 14552
        mmWidth = 7673
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'From  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 94986
        mmTop = 14552
        mmWidth = 8202
        BandType = 1
      end
      object exfty002: TppLabel
        UserName = 'exfty002'
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
        mmLeft = 130440
        mmTop = 14552
        mmWidth = 10054
        BandType = 1
      end
      object ppLabel13: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 124090
        mmTop = 14552
        mmWidth = 5027
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dispatch Plan Summary '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7408
        mmLeft = 60061
        mmTop = 4498
        mmWidth = 77523
        BandType = 1
      end
      object xxx001: TppLabel
        UserName = 'xxx001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - STIRLING PAUL/ANDREW'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 138113
        mmTop = 5556
        mmWidth = 114565
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = clMoneyGreen
        Pen.Style = psClear
        mmHeight = 4498
        mmLeft = 153988
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clMoneyGreen
        Pen.Style = psClear
        mmHeight = 4498
        mmLeft = 78317
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clMoneyGreen
        Pen.Style = psClear
        mmHeight = 4498
        mmLeft = 41010
        mmTop = 0
        mmWidth = 13229
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
        DataField = 'CUSTPO'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 14552
        mmTop = 794
        mmWidth = 7408
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup7
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 41275
        mmTop = 794
        mmWidth = 7112
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
        DataField = 'CNAME'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 87048
        mmTop = 794
        mmWidth = 12404
        BandType = 4
      end
      object y004: TppDBText
        UserName = 'y004'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEST'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 162719
        mmTop = 794
        mmWidth = 11345
        BandType = 4
      end
      object y001: TppDBText
        UserName = 'y001'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BOX'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 137319
        mmTop = 794
        mmWidth = 1185
        BandType = 4
      end
      object y002: TppDBText
        UserName = 'y002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WGHT'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#0.00;-#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 147902
        mmTop = 794
        mmWidth = 4149
        BandType = 4
      end
      object y003: TppDBText
        UserName = 'y003'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CBM'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#0.00;-#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 157427
        mmTop = 794
        mmWidth = 4149
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 55298
        mmTop = 794
        mmWidth = 3768
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText14'
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
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 2117
        mmTop = 794
        mmWidth = 10118
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 29369
        mmTop = 794
        mmWidth = 9229
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
        DataField = 'POQTY'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup11
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 64823
        mmTop = 794
        mmWidth = 4741
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
        DataField = 'SQTY'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 81227
        mmTop = 794
        mmWidth = 4741
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
        DataField = 'POQTY'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 72496
        mmTop = 794
        mmWidth = 4741
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
        DataField = 'SHPQTY'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup11
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 2498
        mmLeft = 109273
        mmTop = 794
        mmWidth = 1185
        BandType = 4
      end
      object com001: TppLabel
        UserName = 'com001'
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
        mmHeight = 2371
        mmLeft = 120650
        mmTop = 794
        mmWidth = 7662
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
        mmHeight = 4233
        mmLeft = 185209
        mmTop = 0
        mmWidth = 1058
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
        mmHeight = 4233
        mmLeft = 275961
        mmTop = 0
        mmWidth = 265
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
        mmHeight = 4233
        mmLeft = 228336
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object swing001: TppLabel
        UserName = 'swing001'
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
        mmLeft = 218546
        mmTop = 794
        mmWidth = 8996
        BandType = 4
      end
      object oth001: TppLabel
        UserName = 'oth001'
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
        mmHeight = 2498
        mmLeft = 113506
        mmTop = 794
        mmWidth = 6519
        BandType = 4
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'n.a. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 213519
        mmTop = 794
        mmWidth = 4233
        BandType = 4
      end
      object ppLabel99: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'n.a. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 179652
        mmTop = 794
        mmWidth = 4233
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel37: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 207963
        mmTop = 265
        mmWidth = 10848
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'yyyy/MM/dd hh:nn:ss'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 220398
        mmTop = 265
        mmWidth = 19579
        BandType = 8
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 247386
        mmTop = 265
        mmWidth = 5546
        BandType = 8
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 255853
        mmTop = 265
        mmWidth = 11113
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup4: TppGroup
      BreakName = 'MEMO1'
      DataPipeline = ppDBPipeline3
      OutlineSettings.CreateNode = True
      NewPage = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand4BeforePrint
        mmBottomOffset = 0
        mmHeight = 14023
        mmPrintPosition = 0
        object title001: TppLabel
          UserName = 'title001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Dispatch Plan '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 6615
          mmLeft = 61119
          mmTop = 6615
          mmWidth = 68792
          BandType = 3
          GroupNo = 0
        end
        object title002: TppLabel
          UserName = 'title002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = ' - Preliminary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 130440
          mmTop = 7408
          mmWidth = 104246
          BandType = 3
          GroupNo = 0
        end
        object pdn002: TppLabel
          UserName = 'pdn002'
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
          Transparent = True
          mmHeight = 3175
          mmLeft = 237861
          mmTop = 8731
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline3
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'SEQ1'
      DataPipeline = ppDBPipeline3
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand5BeforePrint
        mmBottomOffset = 0
        mmHeight = 16404
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape6'
          mmHeight = 8731
          mmLeft = 1323
          mmTop = 6879
          mmWidth = 274903
          BandType = 3
          GroupNo = 1
        end
        object ppLabel109: TppLabel
          UserName = 'Label109'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Actual Ex-fty date / time :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 2117
          mmTop = 8202
          mmWidth = 23548
          BandType = 3
          GroupNo = 1
        end
        object exdttm002: TppLabel
          UserName = 'exdttm002'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 27517
          mmTop = 8202
          mmWidth = 27252
          BandType = 3
          GroupNo = 1
        end
        object ppLabel90: TppLabel
          UserName = 'Label86'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'By truck or Container :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 56886
          mmTop = 8202
          mmWidth = 21167
          BandType = 3
          GroupNo = 1
        end
        object truck001: TppLabel
          UserName = 'truck001'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 79640
          mmTop = 8202
          mmWidth = 20638
          BandType = 3
          GroupNo = 1
        end
        object ppLabel89: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cargo indoor date / time :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 109009
          mmTop = 8202
          mmWidth = 24077
          BandType = 3
          GroupNo = 1
        end
        object indttm001: TppLabel
          UserName = 'indttm001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '                                             '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 133615
          mmTop = 8202
          mmWidth = 26723
          BandType = 3
          GroupNo = 1
        end
        object ppLabel94: TppLabel
          UserName = 'Label90'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'On board date :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 2117
          mmTop = 11906
          mmWidth = 14817
          BandType = 3
          GroupNo = 1
        end
        object ppLabel98: TppLabel
          UserName = 'Label902'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Vessel / Airflight : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 56886
          mmTop = 11906
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel101: TppLabel
          UserName = 'Label97'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Port of loading : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 109009
          mmTop = 11906
          mmWidth = 15610
          BandType = 3
          GroupNo = 1
        end
        object ondt001: TppLabel
          UserName = 'ondt001'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 27517
          mmTop = 11906
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
        end
        object vess001: TppLabel
          UserName = 'vess001'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 79640
          mmTop = 11906
          mmWidth = 26194
          BandType = 3
          GroupNo = 1
        end
        object lport001: TppLabel
          UserName = 'lport001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '                                             '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 133615
          mmTop = 11906
          mmWidth = 26723
          BandType = 3
          GroupNo = 1
        end
        object ppLabel123: TppLabel
          UserName = 'Label123'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Manifest '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 1852
          mmTop = 2646
          mmWidth = 8731
          BandType = 3
          GroupNo = 1
        end
        object voyn001: TppLabel
          UserName = 'voyn001'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 12435
          mmTop = 2646
          mmWidth = 7938
          BandType = 3
          GroupNo = 1
        end
        object ppLabel125: TppLabel
          UserName = 'Label125'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ship mode '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 40746
          mmTop = 2646
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object ppLabel127: TppLabel
          UserName = 'Label127'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ex-fty Date / Time '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 88900
          mmTop = 2646
          mmWidth = 17463
          BandType = 3
          GroupNo = 1
        end
        object exdt001: TppLabel
          UserName = 'exdt001'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 107421
          mmTop = 2646
          mmWidth = 11642
          BandType = 3
          GroupNo = 1
        end
        object ppLabel129: TppLabel
          UserName = 'Label129'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '/ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 120121
          mmTop = 2646
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object exdt002: TppLabel
          UserName = 'exdt002'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 123031
          mmTop = 2646
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 1323
          mmTop = 11113
          mmWidth = 161396
          BandType = 3
          GroupNo = 1
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 56092
          mmTop = 7144
          mmWidth = 2381
          BandType = 3
          GroupNo = 1
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 108215
          mmTop = 7144
          mmWidth = 2381
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
          mmHeight = 8202
          mmLeft = 162454
          mmTop = 7144
          mmWidth = 2381
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Manifest Notepad - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 162984
          mmTop = 7938
          mmWidth = 18584
          BandType = 3
          GroupNo = 1
        end
        object shipmode001: TppLabel
          UserName = 'Label23'
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
          Transparent = True
          mmHeight = 2371
          mmLeft = 53975
          mmTop = 2646
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object rair001: TppLabel
          UserName = 'rair001'
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
          Transparent = True
          mmHeight = 2498
          mmLeft = 163248
          mmTop = 11906
          mmWidth = 6689
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'SEQ1'
      DataPipeline = ppDBPipeline3
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 13229
        mmPrintPosition = 0
        object ppShape16: TppShape
          UserName = 'Shape16'
          Brush.Color = 14539518
          mmHeight = 12171
          mmLeft = 1323
          mmTop = 1058
          mmWidth = 274903
          BandType = 3
          GroupNo = 1
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = clMoneyGreen
          Pen.Style = psClear
          mmHeight = 3704
          mmLeft = 153988
          mmTop = 9260
          mmWidth = 8467
          BandType = 3
          GroupNo = 3
        end
        object ppLabel77: TppLabel
          UserName = 'Label72'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust PO# '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 14552
          mmTop = 2646
          mmWidth = 9790
          BandType = 3
          GroupNo = 1
        end
        object ppLabel79: TppLabel
          UserName = 'Label74'
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
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 41275
          mmTop = 2646
          mmWidth = 10319
          BandType = 3
          GroupNo = 1
        end
        object ppLabel81: TppLabel
          UserName = 'Label701'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(if available) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 87048
          mmTop = 9525
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppLabel82: TppLabel
          UserName = 'Label78'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust Clr Name   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 87048
          mmTop = 6085
          mmWidth = 15610
          BandType = 3
          GroupNo = 1
        end
        object ppLabel84: TppLabel
          UserName = 'Label80'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cartons   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 130440
          mmTop = 6085
          mmWidth = 9260
          BandType = 3
          GroupNo = 1
        end
        object ppLabel85: TppLabel
          UserName = 'Label81'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Weight(kgs)  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 140759
          mmTop = 6085
          mmWidth = 12700
          BandType = 3
          GroupNo = 1
        end
        object ppLabel86: TppLabel
          UserName = 'Label801'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'CBMs   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 154252
          mmTop = 6085
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object ppLabel103: TppLabel
          UserName = 'Label103'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Booking Information'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 134409
          mmTop = 2646
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
        end
        object ppLabel104: TppLabel
          UserName = 'Label112'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Style '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 54769
          mmTop = 2646
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object ppLabel105: TppLabel
          UserName = 'Label113'
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
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 54769
          mmTop = 6085
          mmWidth = 3344
          BandType = 3
          GroupNo = 1
        end
        object ppLabel106: TppLabel
          UserName = 'Label114'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Project  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 2117
          mmTop = 2646
          mmWidth = 7673
          BandType = 3
          GroupNo = 1
        end
        object ppLabel107: TppLabel
          UserName = 'Label115'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'WO #  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 29369
          mmTop = 2646
          mmWidth = 6615
          BandType = 3
          GroupNo = 1
        end
        object ppLabel108: TppLabel
          UserName = 'Label98'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Destination  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 162719
          mmTop = 6085
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
        end
        object cpo001: TppLabel
          UserName = 'cpo001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(by PO) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 155046
          mmTop = 2646
          mmWidth = 7938
          BandType = 3
          GroupNo = 1
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'PO Qty  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 61913
          mmTop = 2646
          mmWidth = 8202
          BandType = 3
          GroupNo = 1
        end
        object ppLabel91: TppLabel
          UserName = 'Label91'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(appt clr) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 61913
          mmTop = 6085
          mmWidth = 8996
          BandType = 3
          GroupNo = 1
        end
        object ppLabel112: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 80963
          mmTop = 6085
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppLabel114: TppLabel
          UserName = 'Label6'
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
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 80963
          mmTop = 2646
          mmWidth = 5027
          BandType = 3
          GroupNo = 1
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 86519
          mmTop = 1058
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 185209
          mmTop = 1058
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 129646
          mmTop = 1058
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 129646
          mmTop = 8996
          mmWidth = 98954
          BandType = 3
          GroupNo = 1
        end
        object box001: TppLabel
          UserName = 'box001'
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
          mmLeft = 130704
          mmTop = 9790
          mmWidth = 7673
          BandType = 3
          GroupNo = 1
        end
        object wght001: TppLabel
          UserName = 'wght001'
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
          mmLeft = 144198
          mmTop = 9790
          mmWidth = 7938
          BandType = 3
          GroupNo = 1
        end
        object cbm001: TppLabel
          UserName = 'cbm001'
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
          mmLeft = 154252
          mmTop = 9790
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object y005: TppLabel
          UserName = 'y005'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 162719
          mmTop = 9790
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppLabel87: TppLabel
          UserName = 'Label87'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'WO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 73025
          mmTop = 2646
          mmWidth = 4233
          BandType = 3
          GroupNo = 1
        end
        object ppLabel88: TppLabel
          UserName = 'Label88'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 72761
          mmTop = 6085
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppLabel97: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Additional Information   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 96838
          mmTop = 2646
          mmWidth = 22490
          BandType = 3
          GroupNo = 1
        end
        object ppLabel100: TppLabel
          UserName = 'Label100'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Shipped   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 102394
          mmTop = 6085
          mmWidth = 9525
          BandType = 3
          GroupNo = 1
        end
        object ppLabel110: TppLabel
          UserName = 'Label110'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 102394
          mmTop = 9525
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Customer instruction / comments: - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 187061
          mmTop = 2646
          mmWidth = 33338
          BandType = 3
          GroupNo = 1
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 86519
          mmTop = 5292
          mmWidth = 189707
          BandType = 3
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(appt clr) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 72231
          mmTop = 9260
          mmWidth = 8996
          BandType = 3
          GroupNo = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label1001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Other o/s '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 120386
          mmTop = 6085
          mmWidth = 9356
          BandType = 3
          GroupNo = 1
        end
        object ppLabel5: TppLabel
          UserName = 'Label1101'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Shpt Qty  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 120386
          mmTop = 9525
          mmWidth = 9440
          BandType = 3
          GroupNo = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label16'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Air CC '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 186002
          mmTop = 9790
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label17'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Air PP '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 195263
          mmTop = 9790
          mmWidth = 6615
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Boat '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 205052
          mmTop = 9790
          mmWidth = 5027
          BandType = 3
          GroupNo = 1
        end
        object ppLabel10: TppLabel
          UserName = 'Label102'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Delay '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 221192
          mmTop = 9790
          mmWidth = 6054
          BandType = 3
          GroupNo = 1
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 194205
          mmTop = 8996
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 203200
          mmTop = 8996
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 211138
          mmTop = 8996
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 228336
          mmTop = 5292
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Comments '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 229130
          mmTop = 10054
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object ppLabel14: TppLabel
          UserName = 'Label24'
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
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 203994
          mmTop = 6085
          mmWidth = 3969
          BandType = 3
          GroupNo = 3
        end
        object ppLine26: TppLine
          UserName = 'Line26'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 219869
          mmTop = 8996
          mmWidth = 3175
          BandType = 3
          GroupNo = 3
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Hold '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 212990
          mmTop = 9790
          mmWidth = 4995
          BandType = 3
          GroupNo = 3
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
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
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 54769
          mmTop = 9260
          mmWidth = 5673
          BandType = 3
          GroupNo = 3
        end
        object ppLabel68: TppLabel
          UserName = 'Label1002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Others   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 111919
          mmTop = 6085
          mmWidth = 8170
          BandType = 3
          GroupNo = 3
        end
        object ppLabel69: TppLabel
          UserName = 'Label1102'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Qty  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 111919
          mmTop = 9525
          mmWidth = 4498
          BandType = 3
          GroupNo = 3
        end
        object ppLabel95: TppLabel
          UserName = 'Label95'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'ETA  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 179652
          mmTop = 6085
          mmWidth = 5292
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppShape17: TppShape
          UserName = 'Shape17'
          mmHeight = 4498
          mmLeft = 1323
          mmTop = 0
          mmWidth = 274903
          BandType = 5
          GroupNo = 1
        end
        object ppShape7: TppShape
          UserName = 'Shape7'
          Brush.Color = clMoneyGreen
          Pen.Style = psClear
          mmHeight = 3969
          mmLeft = 78317
          mmTop = 265
          mmWidth = 8467
          BandType = 5
          GroupNo = 3
        end
        object ppLabel102: TppLabel
          UserName = 'Label99'
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
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 53181
          mmTop = 1058
          mmWidth = 6615
          BandType = 5
          GroupNo = 1
        end
        object sum001: TppLabel
          UserName = 'sum001'
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
          Transparent = True
          mmHeight = 2381
          mmLeft = 5821
          mmTop = 5821
          mmWidth = 6615
          BandType = 5
          GroupNo = 1
        end
        object sqty001: TppDBCalc
          UserName = 'sqty001'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SQTY'
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 2498
          mmLeft = 74613
          mmTop = 1058
          mmWidth = 11472
          BandType = 5
          GroupNo = 1
        end
        object poqty001: TppLabel
          UserName = 'poqty001'
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
          mmLeft = 60854
          mmTop = 1058
          mmWidth = 8731
          BandType = 5
          GroupNo = 1
        end
        object s001: TppLabel
          UserName = 's001'
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
          mmLeft = 105834
          mmTop = 1058
          mmWidth = 4498
          BandType = 5
          GroupNo = 1
        end
        object poqty002: TppLabel
          UserName = 'poqty002'
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
          mmLeft = 68527
          mmTop = 1058
          mmWidth = 8731
          BandType = 5
          GroupNo = 1
        end
        object com002: TppLabel
          UserName = 'com002'
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
          mmHeight = 2371
          mmLeft = 120650
          mmTop = 1058
          mmWidth = 7662
          BandType = 5
          GroupNo = 1
        end
        object swing002: TppLabel
          UserName = 'swing002'
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
          mmLeft = 218546
          mmTop = 1058
          mmWidth = 8996
          BandType = 5
          GroupNo = 3
        end
        object oth002: TppLabel
          UserName = 'oth002'
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
          mmHeight = 2498
          mmLeft = 113506
          mmTop = 1058
          mmWidth = 6519
          BandType = 5
          GroupNo = 3
        end
        object ppLabel72: TppLabel
          UserName = 'Label14'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'n.a. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 213519
          mmTop = 1058
          mmWidth = 4233
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'J_NO'
      DataPipeline = ppDBPipeline3
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'J2_JOB'
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
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'ACOL'
      DataPipeline = ppDBPipeline3
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group11'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      object ppGroupHeaderBand11: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'RWO'
      DataPipeline = ppDBPipeline3
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
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
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline3'
    Left = 64
    Top = 24
  end
  object DataSource3: TDataSource
    DataSet = Query5
    OnDataChange = DataSource3DataChange
    Left = 32
    Top = 24
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_pack'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'CUSTPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CNAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'BOX'
        DataType = ftInteger
      end
      item
        Name = 'WGHT'
        DataType = ftFloat
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'EXTM'
        DataType = ftTime
      end
      item
        Name = 'TRUCK'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INDT'
        DataType = ftDate
      end
      item
        Name = 'INTM'
        DataType = ftTime
      end
      item
        Name = 'ONDT'
        DataType = ftDate
      end
      item
        Name = 'SHPM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VESS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'LPORT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DEST'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VOYN'
        DataType = ftString
        Size = 20
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
        Name = 'ACOL'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'POQTY'
        DataType = ftInteger
      end
      item
        Name = 'AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'DP'
        DataType = ftFloat
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SHPQTY'
        DataType = ftInteger
      end
      item
        Name = 'SPQTY'
        DataType = ftInteger
      end
      item
        Name = 'WRITEOFF'
        DataType = ftInteger
      end
      item
        Name = 'BAL'
        DataType = ftInteger
      end
      item
        Name = 'MEMO1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LQCDT'
        DataType = ftDate
      end
      item
        Name = 'FQCDT'
        DataType = ftDate
      end
      item
        Name = 'FQCDT1'
        DataType = ftDate
      end
      item
        Name = 'QCRST'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CNPH'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RAIR'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Top = 24
  end
end
