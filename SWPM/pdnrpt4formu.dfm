object frmpdnrpt4: Tfrmpdnrpt4
  Left = 193
  Top = 114
  Caption = 'frmpdnrpt4'
  ClientHeight = 57
  ClientWidth = 301
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
    CommandText = 'select * from tbl_pdn_r_tmp'
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
        Name = 'J_NO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ORDLINE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ACOL'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'DID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
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
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'SEQ1'
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
        Name = 'SHPQTY'
        DataType = ftInteger
      end
      item
        Name = 'LSTQTY'
        DataType = ftInteger
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
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ORDLINE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ACOL'
        Attributes = [faRequired]
        DataType = ftWideString
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
        DataType = ftWideString
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
        DataType = ftWideString
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
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline3'
    Left = 64
    Top = 24
  end
  object DataSource3: TDataSource
    DataSet = Query5
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Top = 24
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
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN Manifest acted performance - RWO (by Color) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 3704
        mmTop = 5027
        mmWidth = 182563
        BandType = 0
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
        BandType = 0
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
        BandType = 0
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
        mmLeft = 73554
        mmTop = 14552
        mmWidth = 15875
        BandType = 0
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
        mmLeft = 100542
        mmTop = 14552
        mmWidth = 9525
        BandType = 0
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
        mmLeft = 143669
        mmTop = 14552
        mmWidth = 8202
        BandType = 0
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
        mmLeft = 153459
        mmTop = 14552
        mmWidth = 8202
        BandType = 0
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 14552
        mmWidth = 7673
        BandType = 0
      end
      object from001: TppLabel
        UserName = 'from001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'From   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 14552
        mmWidth = 8996
        BandType = 0
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
        mmLeft = 125413
        mmTop = 14552
        mmWidth = 1588
        BandType = 0
      end
      object to001: TppLabel
        UserName = 'to001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 116152
        mmTop = 14552
        mmWidth = 5821
        BandType = 0
      end
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 201348
        mmTop = 14552
        mmWidth = 14023
        BandType = 0
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 216694
        mmTop = 14552
        mmWidth = 25929
        BandType = 0
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 247386
        mmTop = 14552
        mmWidth = 7144
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
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 14552
        mmWidth = 11113
        BandType = 0
      end
      object title002: TppLabel
        UserName = 'title002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- with SKU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 186796
        mmTop = 5556
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171715
        mmTop = 14552
        mmWidth = 10319
        BandType = 0
      end
      object ver001: TppLabel
        UserName = 'ver001'
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
        mmLeft = 183621
        mmTop = 14552
        mmWidth = 8467
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
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
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 2117
        mmTop = 794
        mmWidth = 11769
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 14288
        mmTop = 794
        mmWidth = 9229
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
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup11
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 54113
        mmTop = 794
        mmWidth = 4741
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
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 62199
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
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 249068
        mmTop = 794
        mmWidth = 5461
        BandType = 4
      end
      object sd103: TppLabel
        UserName = 'sd103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 86519
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd104: TppLabel
        UserName = 'sd104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 136261
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd106: TppLabel
        UserName = 'sd106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 143404
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd108: TppLabel
        UserName = 'sd108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1008'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 159544
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd101: TppLabel
        UserName = 'sd101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 69321
        mmTop = 794
        mmWidth = 5556
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
        mmHeight = 2381
        mmLeft = 257705
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sd107: TppLabel
        UserName = 'sd107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'd1004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 150813
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object cstyle001: TppDBText
        UserName = 'cstyle001'
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
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 30427
        mmTop = 794
        mmWidth = 7112
        BandType = 4
      end
      object sd102: TppLabel
        UserName = 'sd102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'q0101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 78317
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object sd013: TppLabel
        UserName = 'sd013'
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
        mmLeft = 238390
        mmTop = 794
        mmWidth = 5821
        BandType = 4
      end
      object sdpo: TppLabel
        UserName = 'sdpo'
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
        mmLeft = 166159
        mmTop = 794
        mmWidth = 15875
        BandType = 4
      end
      object sdcolor: TppLabel
        UserName = 'sdcolor'
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
        mmLeft = 183092
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object acol001: TppLabel
        UserName = 'acol001'
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
        mmLeft = 43127
        mmTop = 794
        mmWidth = 7408
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
        DataField = 'RWO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 24342
        mmTop = 794
        mmWidth = 2963
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
        DataField = 'SHPQTY'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 201877
        mmTop = 794
        mmWidth = 1058
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
        DataField = 'SPQTY'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 208492
        mmTop = 794
        mmWidth = 1058
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
        DataField = 'WRITEOFF'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 215900
        mmTop = 794
        mmWidth = 1058
        BandType = 4
      end
      object lst01: TppLabel
        UserName = 'lst01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 222780
        mmTop = 794
        mmWidth = 1058
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
        mmHeight = 2381
        mmLeft = 225425
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
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
          object ppTitleBand1: TppTitleBand
            BeforePrint = ppTitleBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 20373
            mmPrintPosition = 0
            object ppLabel34: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Shipping information (apply to by WO only) : -   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 1323
              mmTop = 1852
              mmWidth = 64220
              BandType = 1
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
              mmLeft = 1323
              mmTop = 7144
              mmWidth = 8731
              BandType = 1
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
              mmLeft = 11906
              mmTop = 7144
              mmWidth = 7938
              BandType = 1
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
              mmLeft = 40217
              mmTop = 7144
              mmWidth = 10583
              BandType = 1
            end
            object shipmode001: TppLabel
              UserName = 'shipmode001'
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
              mmLeft = 52388
              mmTop = 7144
              mmWidth = 15081
              BandType = 1
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
              mmLeft = 88371
              mmTop = 7144
              mmWidth = 17463
              BandType = 1
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
              mmLeft = 106892
              mmTop = 7144
              mmWidth = 11642
              BandType = 1
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
              mmLeft = 119592
              mmTop = 7144
              mmWidth = 1058
              BandType = 1
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
              mmLeft = 122502
              mmTop = 7144
              mmWidth = 7408
              BandType = 1
            end
            object ppShape6: TppShape
              UserName = 'Shape6'
              mmHeight = 8731
              mmLeft = 794
              mmTop = 11377
              mmWidth = 274903
              BandType = 1
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
              mmLeft = 1588
              mmTop = 12700
              mmWidth = 23548
              BandType = 1
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
              mmLeft = 26988
              mmTop = 12700
              mmWidth = 27252
              BandType = 1
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
              mmLeft = 57679
              mmTop = 12700
              mmWidth = 21167
              BandType = 1
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
              mmLeft = 80433
              mmTop = 12700
              mmWidth = 20638
              BandType = 1
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
              mmLeft = 112448
              mmTop = 12700
              mmWidth = 24077
              BandType = 1
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
              mmLeft = 137054
              mmTop = 12700
              mmWidth = 26723
              BandType = 1
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
              mmLeft = 1588
              mmTop = 16404
              mmWidth = 14817
              BandType = 1
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
              mmLeft = 57679
              mmTop = 16404
              mmWidth = 17198
              BandType = 1
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
              mmLeft = 112448
              mmTop = 16404
              mmWidth = 15610
              BandType = 1
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
              mmLeft = 26988
              mmTop = 16404
              mmWidth = 19844
              BandType = 1
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
              mmLeft = 80433
              mmTop = 16404
              mmWidth = 26194
              BandType = 1
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
              mmLeft = 137054
              mmTop = 16404
              mmWidth = 26723
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 794
              mmTop = 15610
              mmWidth = 170657
              BandType = 1
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
              mmLeft = 56886
              mmTop = 11642
              mmWidth = 2381
              BandType = 1
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
              mmLeft = 111654
              mmTop = 11642
              mmWidth = 2381
              BandType = 1
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
              mmLeft = 171450
              mmTop = 11642
              mmWidth = 2381
              BandType = 1
            end
            object ppLabel147: TppLabel
              UserName = 'Label147'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Manifest Notepad :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 172244
              mmTop = 12700
              mmWidth = 17865
              BandType = 1
            end
            object mnotepad001: TppLabel
              UserName = 'mnotepad001'
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
              mmLeft = 172244
              mmTop = 16404
              mmWidth = 26723
              BandType = 1
            end
          end
          object ppHeaderBand3: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
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
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 117740
              mmTop = 529
              mmWidth = 8805
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
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 29898
              mmTop = 529
              mmWidth = 8213
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
              mmLeft = 131234
              mmTop = 529
              mmWidth = 7578
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
              mmLeft = 225425
              mmTop = 529
              mmWidth = 5630
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
              mmLeft = 197962
              mmTop = 529
              mmWidth = 4445
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
              mmLeft = 208238
              mmTop = 529
              mmWidth = 6604
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
              mmLeft = 219711
              mmTop = 529
              mmWidth = 4657
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
              mmLeft = 64072
              mmTop = 529
              mmWidth = 5757
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
              mmLeft = 42598
              mmTop = 529
              mmWidth = 5757
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
              mmLeft = 1588
              mmTop = 529
              mmWidth = 5419
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
              mmLeft = 13758
              mmTop = 529
              mmWidth = 7535
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
              ResetGroup = ppGroup12
              SuppressRepeatedValues = True
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 52652
              mmTop = 529
              mmWidth = 7408
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText201'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'AQQTY'
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
              mmLeft = 83080
              mmTop = 529
              mmWidth = 7408
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
              DataField = 'T4QTY'
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
              mmLeft = 96309
              mmTop = 529
              mmWidth = 6858
              BandType = 4
            end
            object myCheckBox1: TmyCheckBox
              UserName = 'CheckBox1'
              Checked = False
              CheckBoxColor = clBlack
              Transparent = True
              mmHeight = 3440
              mmLeft = 108215
              mmTop = 0
              mmWidth = 2910
              BandType = 4
            end
            object x001: TppDBText
              UserName = 'x001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DIFF'
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
              mmLeft = 257991
              mmTop = 529
              mmWidth = 4741
              BandType = 4
            end
            object vdp001: TppLabel
              UserName = 'vdp001'
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
              mmLeft = 264319
              mmTop = 529
              mmWidth = 10054
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
              DataField = 'RWO'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 23813
              mmTop = 529
              mmWidth = 5292
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
              DataField = 'QTY'
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
              mmLeft = 73164
              mmTop = 529
              mmWidth = 4360
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
              DataField = 'WRITEOFF'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup12
              SuppressRepeatedValues = True
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 166423
              mmTop = 529
              mmWidth = 11218
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
              DataField = 'SPQTY'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup12
              SuppressRepeatedValues = True
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 159015
              mmTop = 529
              mmWidth = 7154
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
              ResetGroup = ppGroup12
              SuppressRepeatedValues = True
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 147373
              mmTop = 529
              mmWidth = 8678
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
              DataField = 'Bal'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ResetGroup = ppGroup12
              SuppressRepeatedValues = True
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 188205
              mmTop = 529
              mmWidth = 3090
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            NewPage = True
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
          end
          object ppGroup15: TppGroup
            BreakName = 'SEQ1'
            DataPipeline = ppDBPipeline3
            OutlineSettings.CreateNode = True
            NewFile = False
            StartOnOddPage = False
            UserName = 'Group10'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline3'
            object ppGroupHeaderBand15: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand15BeforePrint
              mmBottomOffset = 0
              mmHeight = 12171
              mmPrintPosition = 0
              object ppShape16: TppShape
                UserName = 'Shape16'
                Brush.Color = 14539518
                mmHeight = 12171
                mmLeft = 794
                mmTop = 0
                mmWidth = 275167
                BandType = 3
                GroupNo = 0
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
                mmLeft = 117740
                mmTop = 5027
                mmWidth = 9790
                BandType = 3
                GroupNo = 0
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
                mmLeft = 29898
                mmTop = 1588
                mmWidth = 10319
                BandType = 3
                GroupNo = 0
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
                mmLeft = 131234
                mmTop = 8467
                mmWidth = 12171
                BandType = 3
                GroupNo = 0
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
                mmLeft = 131234
                mmTop = 5027
                mmWidth = 15610
                BandType = 3
                GroupNo = 0
              end
              object ppLabel83: TppLabel
                UserName = 'Label79'
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
                mmLeft = 64294
                mmTop = 8467
                mmWidth = 4498
                BandType = 3
                GroupNo = 0
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
                mmLeft = 193146
                mmTop = 5027
                mmWidth = 9260
                BandType = 3
                GroupNo = 0
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
                mmLeft = 203465
                mmTop = 5027
                mmWidth = 12700
                BandType = 3
                GroupNo = 0
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
                mmLeft = 216959
                mmTop = 5027
                mmWidth = 7408
                BandType = 3
                GroupNo = 0
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
                mmLeft = 201348
                mmTop = 1588
                mmWidth = 19050
                BandType = 3
                GroupNo = 0
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
                mmLeft = 42598
                mmTop = 1588
                mmWidth = 5292
                BandType = 3
                GroupNo = 0
              end
              object ppLabel105: TppLabel
                UserName = 'Label113'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Clr Code '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 42598
                mmTop = 5027
                mmWidth = 8996
                BandType = 3
                GroupNo = 0
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
                mmLeft = 1588
                mmTop = 1588
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
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
                mmLeft = 13758
                mmTop = 1588
                mmWidth = 6615
                BandType = 3
                GroupNo = 0
              end
              object ppLabel116: TppLabel
                UserName = 'Label116'
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
                mmLeft = 64294
                mmTop = 1588
                mmWidth = 5027
                BandType = 3
                GroupNo = 0
              end
              object ppLabel117: TppLabel
                UserName = 'Label117'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'ttl   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 64294
                mmTop = 5027
                mmWidth = 3440
                BandType = 3
                GroupNo = 0
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
                mmLeft = 225425
                mmTop = 5027
                mmWidth = 11906
                BandType = 3
                GroupNo = 0
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
                mmLeft = 221986
                mmTop = 1588
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
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
                mmHeight = 2498
                mmLeft = 52388
                mmTop = 1588
                mmWidth = 8128
                BandType = 3
                GroupNo = 0
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
                mmLeft = 52388
                mmTop = 5027
                mmWidth = 8996
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
                mmHeight = 11906
                mmLeft = 70115
                mmTop = 0
                mmWidth = 3969
                BandType = 3
                GroupNo = 0
              end
              object ppLabel92: TppLabel
                UserName = 'Label92'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Curr* '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 84402
                mmTop = 5027
                mmWidth = 5546
                BandType = 3
                GroupNo = 0
              end
              object ppLabel93: TppLabel
                UserName = 'Label93'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'AQL Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 84402
                mmTop = 8467
                mmWidth = 8721
                BandType = 3
                GroupNo = 0
              end
              object ppLabel95: TppLabel
                UserName = 'Label95'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Curr* '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 94721
                mmTop = 5027
                mmWidth = 5546
                BandType = 3
                GroupNo = 0
              end
              object ppLabel99: TppLabel
                UserName = 'Label2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 94192
                mmTop = 8467
                mmWidth = 9864
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
                mmHeight = 11906
                mmLeft = 104246
                mmTop = 0
                mmWidth = 3969
                BandType = 3
                GroupNo = 0
              end
              object ppLabel115: TppLabel
                UserName = 'Label7'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Cast Label '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 104775
                mmTop = 5027
                mmWidth = 10848
                BandType = 3
                GroupNo = 0
              end
              object ppLabel119: TppLabel
                UserName = 'Label119'
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
                mmLeft = 104775
                mmTop = 8467
                mmWidth = 12171
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
                mmHeight = 11906
                mmLeft = 252413
                mmTop = 0
                mmWidth = 3969
                BandType = 3
                GroupNo = 0
              end
              object ppLabel120: TppLabel
                UserName = 'Label120'
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
                mmHeight = 2381
                mmLeft = 253207
                mmTop = 1588
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel121: TppLabel
                UserName = 'Label121'
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
                mmHeight = 2381
                mmLeft = 253207
                mmTop = 5027
                mmWidth = 8731
                BandType = 3
                GroupNo = 0
              end
              object ppLabel122: TppLabel
                UserName = 'Label122'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '(%) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 264319
                mmTop = 5027
                mmWidth = 3704
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
                mmHeight = 11906
                mmLeft = 192352
                mmTop = 0
                mmWidth = 3969
                BandType = 3
                GroupNo = 0
              end
              object ppLine11: TppLine
                UserName = 'Line11'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 70379
                mmTop = 4233
                mmWidth = 182034
                BandType = 3
                GroupNo = 0
              end
              object ppLine12: TppLine
                UserName = 'Line12'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 192352
                mmTop = 7938
                mmWidth = 60061
                BandType = 3
                GroupNo = 0
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
                mmLeft = 192882
                mmTop = 8731
                mmWidth = 9525
                BandType = 3
                GroupNo = 0
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
                mmLeft = 206905
                mmTop = 8731
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
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
                mmLeft = 216959
                mmTop = 8731
                mmWidth = 7408
                BandType = 3
                GroupNo = 0
              end
              object ppLabel75: TppLabel
                UserName = 'Label75'
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
                mmHeight = 2381
                mmLeft = 253207
                mmTop = 8467
                mmWidth = 6615
                BandType = 3
                GroupNo = 0
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
                mmLeft = 225425
                mmTop = 8731
                mmWidth = 4498
                BandType = 3
                GroupNo = 0
              end
              object ppLabel87: TppLabel
                UserName = 'Label87'
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
                mmHeight = 2498
                mmLeft = 71967
                mmTop = 5027
                mmWidth = 5884
                BandType = 3
                GroupNo = 0
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
                mmLeft = 71967
                mmTop = 8467
                mmWidth = 4498
                BandType = 3
                GroupNo = 0
              end
              object ppLabel80: TppLabel
                UserName = 'Label802'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 81492
                mmTop = 1588
                mmWidth = 6477
                BandType = 3
                GroupNo = 0
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
                mmLeft = 130175
                mmTop = 1588
                mmWidth = 22490
                BandType = 3
                GroupNo = 0
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
                mmHeight = 2498
                mmLeft = 147902
                mmTop = 5027
                mmWidth = 9610
                BandType = 3
                GroupNo = 0
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
                mmHeight = 2498
                mmLeft = 147902
                mmTop = 8467
                mmWidth = 4487
                BandType = 3
                GroupNo = 0
              end
              object ppLabel111: TppLabel
                UserName = 'Label1001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Short Ship Qty  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 160338
                mmTop = 5027
                mmWidth = 15028
                BandType = 3
                GroupNo = 0
              end
              object ppLabel124: TppLabel
                UserName = 'Label1101'
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
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 160338
                mmTop = 8467
                mmWidth = 5334
                BandType = 3
                GroupNo = 0
              end
              object ppLabel126: TppLabel
                UserName = 'Label1102'
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
                mmHeight = 2498
                mmLeft = 170657
                mmTop = 8467
                mmWidth = 5884
                BandType = 3
                GroupNo = 0
              end
              object ppLabel130: TppLabel
                UserName = 'Label130'
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
                mmHeight = 2498
                mmLeft = 23813
                mmTop = 1588
                mmWidth = 5884
                BandType = 3
                GroupNo = 0
              end
              object ppLabel132: TppLabel
                UserName = 'Label132'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Coming Bal   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 179388
                mmTop = 5027
                mmWidth = 12742
                BandType = 3
                GroupNo = 0
              end
              object ppLabel133: TppLabel
                UserName = 'Label133'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Qty PO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 179388
                mmTop = 8467
                mmWidth = 7535
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand15: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand15BeforePrint
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 9525
              mmPrintPosition = 0
              object ppShape17: TppShape
                UserName = 'Shape17'
                mmHeight = 4498
                mmLeft = 794
                mmTop = 0
                mmWidth = 275167
                BandType = 5
                GroupNo = 0
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
                mmLeft = 40481
                mmTop = 1058
                mmWidth = 6615
                BandType = 5
                GroupNo = 0
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
                mmLeft = 5292
                mmTop = 5292
                mmWidth = 6615
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc5: TppDBCalc
                UserName = 'DBCalc5'
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
                ResetGroup = ppGroup15
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline3'
                mmHeight = 2498
                mmLeft = 58378
                mmTop = 1058
                mmWidth = 11472
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
                DataField = 'AQQTY'
                DataPipeline = ppDBPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup15
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline3'
                mmHeight = 2498
                mmLeft = 77364
                mmTop = 1058
                mmWidth = 13123
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc11: TppDBCalc
                UserName = 'DBCalc11'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'T4QTY'
                DataPipeline = ppDBPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup15
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline3'
                mmHeight = 2498
                mmLeft = 90615
                mmTop = 1058
                mmWidth = 12573
                BandType = 5
                GroupNo = 0
              end
              object x002: TppDBCalc
                UserName = 'x002'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'DIFF'
                DataPipeline = ppDBPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup15
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline3'
                mmHeight = 2498
                mmLeft = 252275
                mmTop = 1058
                mmWidth = 10456
                BandType = 5
                GroupNo = 0
              end
              object vdp002: TppLabel
                UserName = 'vdp002'
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
                mmLeft = 264319
                mmTop = 1058
                mmWidth = 10054
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc8: TppDBCalc
                UserName = 'DBCalc8'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'QTY'
                DataPipeline = ppDBPipeline3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ResetGroup = ppGroup15
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline3'
                mmHeight = 2498
                mmLeft = 67448
                mmTop = 1058
                mmWidth = 10075
                BandType = 5
                GroupNo = 0
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
                mmHeight = 2498
                mmLeft = 51297
                mmTop = 1058
                mmWidth = 8763
                BandType = 5
                GroupNo = 0
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
                mmHeight = 2498
                mmLeft = 151490
                mmTop = 1058
                mmWidth = 4614
                BandType = 5
                GroupNo = 0
              end
              object s002: TppLabel
                UserName = 's002'
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
                mmLeft = 161544
                mmTop = 1058
                mmWidth = 4614
                BandType = 5
                GroupNo = 0
              end
              object s003: TppLabel
                UserName = 's003'
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
                mmLeft = 172922
                mmTop = 1058
                mmWidth = 4614
                BandType = 5
                GroupNo = 0
              end
              object s004: TppLabel
                UserName = 's004'
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
                mmLeft = 186680
                mmTop = 1058
                mmWidth = 4614
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object ppGroup10: TppGroup
            BreakName = 'J2_JOB'
            DataPipeline = ppDBPipeline3
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group101'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline3'
            object ppGroupHeaderBand10: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand10: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup12: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline3
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group12'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline3'
            object ppGroupHeaderBand12: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand12: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
    end
    object ppSummaryBand2: TppSummaryBand
      NewPage = True
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1588
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
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
          Version = '11.07'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppHeaderBand2: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            BeforePrint = ppDetailBand3BeforePrint
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
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
              Font.Style = []
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 1323
              mmTop = 529
              mmWidth = 9991
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
              DataField = 'J2_JOB'
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
              mmLeft = 13494
              mmTop = 529
              mmWidth = 9229
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
              mmLeft = 52261
              mmTop = 529
              mmWidth = 4741
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
              mmLeft = 62717
              mmTop = 529
              mmWidth = 3556
              BandType = 4
            end
            object dd001: TppDBText
              UserName = 'dd001'
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
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 249312
              mmTop = 529
              mmWidth = 4276
              BandType = 4
            end
            object d1003: TppLabel
              UserName = 'd1003'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1003'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 90488
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d1004: TppLabel
              UserName = 'd1004'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 97367
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d1006: TppLabel
              UserName = 'd1006'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1006'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 105040
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d1008: TppLabel
              UserName = 'd1008'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1008'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 121709
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d2003: TppLabel
              UserName = 'd2003'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 153194
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2004: TppLabel
              UserName = 'd2004'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 160338
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2006: TppLabel
              UserName = 'd2006'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 167217
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2008: TppLabel
              UserName = 'd2008'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 183357
              mmTop = 529
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
              DataField = 'PSIZ'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 45773
              mmTop = 529
              mmWidth = 3768
              BandType = 4
            end
            object d1001: TppLabel
              UserName = 'd1001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 76465
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d1002: TppLabel
              UserName = 'd1002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 68527
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2002: TppLabel
              UserName = 'd2002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 130704
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2001: TppLabel
              UserName = 'd2001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 138642
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object dp001: TppLabel
              UserName = 'dp001'
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
              mmLeft = 256382
              mmTop = 529
              mmWidth = 6615
              BandType = 4
            end
            object d1007: TppLabel
              UserName = 'd1007'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'd1004'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2381
              mmLeft = 112977
              mmTop = 529
              mmWidth = 5821
              BandType = 4
            end
            object d2007: TppLabel
              UserName = 'd2007'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0201'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 174096
              mmTop = 529
              mmWidth = 5556
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
              Font.Size = 6
              Font.Style = []
              SuppressRepeatedValues = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 24606
              mmTop = 529
              mmWidth = 8932
              BandType = 4
            end
            object acol002: TppLabel
              UserName = 'acol002'
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
              mmLeft = 38365
              mmTop = 529
              mmWidth = 7493
              BandType = 4
            end
            object v002: TppLabel
              UserName = 'v002'
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
              mmLeft = 223044
              mmTop = 529
              mmWidth = 4498
              BandType = 4
            end
            object v003: TppLabel
              UserName = 'v003'
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
              mmLeft = 232305
              mmTop = 529
              mmWidth = 3979
              BandType = 4
            end
            object v004: TppLabel
              UserName = 'v004'
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
              mmLeft = 240242
              mmTop = 529
              mmWidth = 3979
              BandType = 4
            end
            object v001: TppLabel
              UserName = 'v001'
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
              mmLeft = 205582
              mmTop = 529
              mmWidth = 4614
              BandType = 4
            end
            object v005: TppLabel
              UserName = 'v005'
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
              mmLeft = 215107
              mmTop = 529
              mmWidth = 4614
              BandType = 4
            end
            object d1005: TppLabel
              UserName = 'd1005'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 83079
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object d2005: TppLabel
              UserName = 'd2005'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 145521
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
            object v008: TppLabel
              UserName = 'v008'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 195263
              mmTop = 529
              mmWidth = 5556
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            BeforePrint = ppSummaryBand3BeforePrint
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 9790
            mmPrintPosition = 0
            object ppShape5: TppShape
              UserName = 'Shape5'
              Brush.Color = 14539518
              mmHeight = 5027
              mmLeft = 794
              mmTop = 265
              mmWidth = 267494
              BandType = 7
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
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
              mmLeft = 1323
              mmTop = 1588
              mmWidth = 12658
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
              DataField = 'QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 46831
              mmTop = 1588
              mmWidth = 10075
              BandType = 7
            end
            object tbq001: TppDBCalc
              UserName = 'tbq001'
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
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 54769
              mmTop = 1588
              mmWidth = 11472
              BandType = 7
            end
            object tbd001: TppDBCalc
              UserName = 'tbd001'
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
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 242888
              mmTop = 1588
              mmWidth = 10456
              BandType = 7
            end
            object tb1003: TppDBCalc
              UserName = 'tb1003'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1T1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 81027
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb1004: TppDBCalc
              UserName = 'tb1004'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1T2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 87906
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb1006: TppDBCalc
              UserName = 'tb1006'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1T3QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 95578
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb1008: TppDBCalc
              UserName = 'tb1008'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1T4QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 112247
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb2003: TppDBCalc
              UserName = 'tb2003'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2T1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 143468
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb2004: TppDBCalc
              UserName = 'tb2004'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2T2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 150612
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb2006: TppDBCalc
              UserName = 'tb2006'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2T3QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 157491
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb2008: TppDBCalc
              UserName = 'tb2008'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2T4QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 173631
              mmTop = 1588
              mmWidth = 15282
              BandType = 7
            end
            object tb1001: TppDBCalc
              UserName = 'tb1001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 69236
              mmTop = 1588
              mmWidth = 12785
              BandType = 7
            end
            object tb1002: TppDBCalc
              UserName = 'tb1002'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1PQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 59902
              mmTop = 1588
              mmWidth = 14182
              BandType = 7
            end
            object tb2001: TppDBCalc
              UserName = 'tb2001'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2QTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 131414
              mmTop = 1588
              mmWidth = 12785
              BandType = 7
            end
            object tb2002: TppDBCalc
              UserName = 'tb2002'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2PQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 122079
              mmTop = 1588
              mmWidth = 14182
              BandType = 7
            end
            object tbp001: TppLabel
              UserName = 'tbp001'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'tbp001'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 256382
              mmTop = 1588
              mmWidth = 6519
              BandType = 7
            end
            object tb1007: TppDBCalc
              UserName = 'tb1007'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1AQQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 102965
              mmTop = 1588
              mmWidth = 15833
              BandType = 7
            end
            object tb2007: TppDBCalc
              UserName = 'tb2007'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2AQQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 163820
              mmTop = 1588
              mmWidth = 15833
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
              DataField = 'SPQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 214674
              mmTop = 1588
              mmWidth = 12869
              BandType = 7
            end
            object ppDBCalc13: TppDBCalc
              UserName = 'DBCalc13'
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
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 219340
              mmTop = 1588
              mmWidth = 16933
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc17'
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
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 230188
              mmTop = 1588
              mmWidth = 13970
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc15'
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
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 195686
              mmTop = 1588
              mmWidth = 14393
              BandType = 7
            end
            object v007: TppLabel
              UserName = 'v007'
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
              mmLeft = 214842
              mmTop = 1588
              mmWidth = 4614
              BandType = 7
            end
            object tb1005: TppDBCalc
              UserName = 'tb1005'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R1PKQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 73057
              mmTop = 1588
              mmWidth = 15579
              BandType = 7
            end
            object tb2005: TppDBCalc
              UserName = 'tb2005'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'R2PKQTY'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 135498
              mmTop = 1588
              mmWidth = 15579
              BandType = 7
            end
            object v010: TppLabel
              UserName = 'v010'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'q0401'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2646
              mmLeft = 195263
              mmTop = 1588
              mmWidth = 5556
              BandType = 7
            end
            object sum002: TppLabel
              UserName = 'sum002'
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
              mmLeft = 5556
              mmTop = 6085
              mmWidth = 7493
              BandType = 7
            end
          end
          object ppGroup8: TppGroup
            BreakName = 'SEQ1'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewPage = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group8'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand8: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand8BeforePrint
              mmBottomOffset = 0
              mmHeight = 10848
              mmPrintPosition = 0
              object ppLabel48: TppLabel
                UserName = 'Label48'
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
                mmLeft = 1323
                mmTop = 7408
                mmWidth = 8731
                BandType = 3
                GroupNo = 0
              end
              object bcn001: TppLabel
                UserName = 'bcn001'
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
                mmLeft = 11906
                mmTop = 7408
                mmWidth = 8731
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
                Caption = 'Ship mode '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 40217
                mmTop = 7408
                mmWidth = 10583
                BandType = 3
                GroupNo = 0
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
                mmLeft = 52388
                mmTop = 7408
                mmWidth = 8731
                BandType = 3
                GroupNo = 0
              end
              object ppLabel52: TppLabel
                UserName = 'Label52'
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
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 88371
                mmTop = 7408
                mmWidth = 11642
                BandType = 3
                GroupNo = 0
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
                mmLeft = 101600
                mmTop = 7408
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
              end
              object ppLabel55: TppLabel
                UserName = 'Label501'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Time '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 121179
                mmTop = 7408
                mmWidth = 5292
                BandType = 3
                GroupNo = 0
              end
              object extm001: TppLabel
                UserName = 'extm001'
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
                mmLeft = 128588
                mmTop = 7408
                mmWidth = 7938
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
                Caption = 
                  'Transit flow details - WO dependent (appoint clr) with SKU : -  ' +
                  ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3387
                mmLeft = 1323
                mmTop = 1852
                mmWidth = 84709
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand8: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup9: TppGroup
            BreakName = 'SEQ'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group9'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand9: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand9: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'J_NO'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group5'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
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
          object ppGroup6: TppGroup
            BreakName = 'J2_JOB'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group6'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand6: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand6BeforePrint
              mmBottomOffset = 0
              mmHeight = 11377
              mmPrintPosition = 0
              object ppShape1: TppShape
                UserName = 'Shape1'
                Brush.Color = 14539518
                mmHeight = 11377
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 3
                GroupNo = 3
              end
              object ppLabel2: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Project # '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 1058
                mmWidth = 8467
                BandType = 3
                GroupNo = 3
              end
              object ppLabel3: TppLabel
                UserName = 'Label2'
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
                mmHeight = 2646
                mmLeft = 13494
                mmTop = 1058
                mmWidth = 6085
                BandType = 3
                GroupNo = 3
              end
              object ppLabel5: TppLabel
                UserName = 'Label5'
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
                mmLeft = 52917
                mmTop = 1058
                mmWidth = 4233
                BandType = 3
                GroupNo = 3
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
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
                mmHeight = 2646
                mmLeft = 38365
                mmTop = 4498
                mmWidth = 3440
                BandType = 3
                GroupNo = 3
              end
              object ppLabel7: TppLabel
                UserName = 'Label7'
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
                mmHeight = 2646
                mmLeft = 38365
                mmTop = 7938
                mmWidth = 5292
                BandType = 3
                GroupNo = 3
              end
              object ppLabel8: TppLabel
                UserName = 'Label8'
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
                mmLeft = 61648
                mmTop = 1058
                mmWidth = 5027
                BandType = 3
                GroupNo = 3
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 11377
                mmLeft = 67204
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 3
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 11377
                mmLeft = 245005
                mmTop = 0
                mmWidth = 2117
                BandType = 3
                GroupNo = 3
              end
              object ppLabel12: TppLabel
                UserName = 'Label102'
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
                mmHeight = 2381
                mmLeft = 247121
                mmTop = 7938
                mmWidth = 6615
                BandType = 3
                GroupNo = 3
              end
              object ppLabel14: TppLabel
                UserName = 'Label14'
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
                mmHeight = 2646
                mmLeft = 52917
                mmTop = 4498
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel15: TppLabel
                UserName = 'Label15'
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
                mmLeft = 61648
                mmTop = 4498
                mmWidth = 3704
                BandType = 3
                GroupNo = 3
              end
              object ppLabel16: TppLabel
                UserName = 'Label16'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Size '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 45773
                mmTop = 1058
                mmWidth = 4498
                BandType = 3
                GroupNo = 3
              end
              object ppLabel9: TppLabel
                UserName = 'Label9'
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
                mmHeight = 2381
                mmLeft = 245798
                mmTop = 1058
                mmWidth = 7673
                BandType = 3
                GroupNo = 3
              end
              object ppLabel10: TppLabel
                UserName = 'Label10'
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
                mmLeft = 61648
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel11: TppLabel
                UserName = 'Label17'
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
                mmHeight = 2381
                mmLeft = 245798
                mmTop = 4498
                mmWidth = 8731
                BandType = 3
                GroupNo = 3
              end
              object ppLabel39: TppLabel
                UserName = 'Label39'
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
                mmHeight = 2381
                mmLeft = 256382
                mmTop = 4498
                mmWidth = 4498
                BandType = 3
                GroupNo = 3
              end
              object s1001: TppLabel
                UserName = 's1001'
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
                mmHeight = 2381
                mmLeft = 76200
                mmTop = 4498
                mmWidth = 5821
                BandType = 3
                GroupNo = 3
              end
              object s1002: TppLabel
                UserName = 's1002'
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
                mmLeft = 69056
                mmTop = 4498
                mmWidth = 5027
                BandType = 3
                GroupNo = 3
              end
              object s1003: TppLabel
                UserName = 's1003'
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
                mmHeight = 2381
                mmLeft = 92340
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s1004: TppLabel
                UserName = 's1004'
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
                mmHeight = 2381
                mmLeft = 99219
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s1006: TppLabel
                UserName = 's1006'
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
                mmHeight = 2381
                mmLeft = 106892
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s1007: TppLabel
                UserName = 's1007'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Curr* '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112448
                mmTop = 4498
                mmWidth = 5556
                BandType = 3
                GroupNo = 3
              end
              object s1008: TppLabel
                UserName = 's1008'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Curr* '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 120915
                mmTop = 4498
                mmWidth = 5556
                BandType = 3
                GroupNo = 3
              end
              object s2001: TppLabel
                UserName = 's2001'
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
                mmHeight = 2381
                mmLeft = 138377
                mmTop = 4498
                mmWidth = 5821
                BandType = 3
                GroupNo = 3
              end
              object s2002: TppLabel
                UserName = 's2002'
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
                mmLeft = 131234
                mmTop = 4498
                mmWidth = 5027
                BandType = 3
                GroupNo = 3
              end
              object s2003: TppLabel
                UserName = 's2003'
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
                mmHeight = 2381
                mmLeft = 154782
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s2004: TppLabel
                UserName = 's2004'
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
                mmHeight = 2381
                mmLeft = 161925
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s2006: TppLabel
                UserName = 's2006'
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
                mmHeight = 2381
                mmLeft = 168805
                mmTop = 4498
                mmWidth = 3175
                BandType = 3
                GroupNo = 3
              end
              object s2007: TppLabel
                UserName = 's2007'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Curr* '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 173567
                mmTop = 4498
                mmWidth = 5556
                BandType = 3
                GroupNo = 3
              end
              object s2008: TppLabel
                UserName = 's2008'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Curr* '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 182034
                mmTop = 4498
                mmWidth = 5556
                BandType = 3
                GroupNo = 3
              end
              object s1101: TppLabel
                UserName = 's1101'
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
                mmLeft = 76200
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1102: TppLabel
                UserName = 's1102'
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
                mmLeft = 69056
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1103: TppLabel
                UserName = 's1103'
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
                mmLeft = 92340
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1104: TppLabel
                UserName = 's1104'
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
                mmLeft = 99219
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1106: TppLabel
                UserName = 's1106'
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
                mmLeft = 106892
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s1107: TppLabel
                UserName = 's1107'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'AQL Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 112448
                mmTop = 7938
                mmWidth = 8731
                BandType = 3
                GroupNo = 3
              end
              object s1108: TppLabel
                UserName = 's1108'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 120915
                mmTop = 7938
                mmWidth = 9790
                BandType = 3
                GroupNo = 3
              end
              object s2101: TppLabel
                UserName = 's2101'
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
                mmLeft = 138377
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2102: TppLabel
                UserName = 's2102'
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
                mmLeft = 131234
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2103: TppLabel
                UserName = 's2103'
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
                mmLeft = 154782
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2104: TppLabel
                UserName = 's2104'
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
                mmLeft = 161925
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2106: TppLabel
                UserName = 's2106'
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
                mmLeft = 168805
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2107: TppLabel
                UserName = 's2107'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'AQL Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 173567
                mmTop = 7938
                mmWidth = 8731
                BandType = 3
                GroupNo = 3
              end
              object s2108: TppLabel
                UserName = 's2108'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 182034
                mmTop = 7938
                mmWidth = 9790
                BandType = 3
                GroupNo = 3
              end
              object ppLabel4: TppLabel
                UserName = 'Label4'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Cust Style   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 24606
                mmTop = 1058
                mmWidth = 11377
                BandType = 3
                GroupNo = 3
              end
              object ppLabel118: TppLabel
                UserName = 'Label118'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Style   '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 38365
                mmTop = 1058
                mmWidth = 6615
                BandType = 3
                GroupNo = 3
              end
              object ppLabel136: TppLabel
                UserName = 'Label136'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Sample '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 220928
                mmTop = 4498
                mmWidth = 7673
                BandType = 3
                GroupNo = 3
              end
              object ppLabel137: TppLabel
                UserName = 'Label137'
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
                mmLeft = 220928
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel138: TppLabel
                UserName = 'Label138'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Defect '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 229923
                mmTop = 4498
                mmWidth = 6731
                BandType = 3
                GroupNo = 3
              end
              object ppLabel139: TppLabel
                UserName = 'Label139'
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
                mmLeft = 229923
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel140: TppLabel
                UserName = 'Label140'
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
                mmLeft = 239713
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel141: TppLabel
                UserName = 'Label141'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Lost '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 239713
                mmTop = 4498
                mmWidth = 4498
                BandType = 3
                GroupNo = 3
              end
              object ppLine17: TppLine
                UserName = 'Line17'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 11377
                mmLeft = 220398
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 3
              end
              object ppLabel32: TppLabel
                UserName = 'Label32'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Curr* Short Ship Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 222515
                mmTop = 1058
                mmWidth = 19981
                BandType = 3
                GroupNo = 3
              end
              object ppLine18: TppLine
                UserName = 'Line18'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 11377
                mmLeft = 191559
                mmTop = 0
                mmWidth = 1852
                BandType = 3
                GroupNo = 3
              end
              object ppLabel51: TppLabel
                UserName = 'Label51'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Shipped '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 202407
                mmTop = 4498
                mmWidth = 8467
                BandType = 3
                GroupNo = 3
              end
              object ppLabel113: TppLabel
                UserName = 'Label3'
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
                mmLeft = 202407
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel134: TppLabel
                UserName = 'Label134'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Coming '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 211932
                mmTop = 4498
                mmWidth = 7938
                BandType = 3
                GroupNo = 3
              end
              object ppLabel135: TppLabel
                UserName = 'Label135'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Bal Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 211932
                mmTop = 7938
                mmWidth = 7673
                BandType = 3
                GroupNo = 3
              end
              object s1005: TppLabel
                UserName = 's1005'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Picked '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 83344
                mmTop = 4498
                mmWidth = 6879
                BandType = 3
                GroupNo = 3
              end
              object s1105: TppLabel
                UserName = 's1105'
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
                mmLeft = 83344
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object s2005: TppLabel
                UserName = 's2005'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Picked '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 145786
                mmTop = 4498
                mmWidth = 6879
                BandType = 3
                GroupNo = 3
              end
              object s2105: TppLabel
                UserName = 's2105'
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
                mmLeft = 145786
                mmTop = 7938
                mmWidth = 3969
                BandType = 3
                GroupNo = 3
              end
              object ppLabel114: TppLabel
                UserName = 'Label12'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ttl Curr* '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 4498
                mmWidth = 8467
                BandType = 3
                GroupNo = 3
              end
              object ppLabel142: TppLabel
                UserName = 'Label142'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Ex-fty Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 192088
                mmTop = 7938
                mmWidth = 9790
                BandType = 3
                GroupNo = 3
              end
              object r001: TppLabel
                UserName = 'r001'
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
                mmHeight = 2646
                mmLeft = 76994
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 3
              end
              object r002: TppLabel
                UserName = 'r002'
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
                mmHeight = 2646
                mmLeft = 138907
                mmTop = 1058
                mmWidth = 7144
                BandType = 3
                GroupNo = 3
              end
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand6BeforePrint
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppShape2: TppShape
                UserName = 'Shape2'
                mmHeight = 5027
                mmLeft = 794
                mmTop = 0
                mmWidth = 267494
                BandType = 5
                GroupNo = 3
              end
              object ppLabel13: TppLabel
                UserName = 'Label11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Sub total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2646
                mmLeft = 1323
                mmTop = 1323
                mmWidth = 8731
                BandType = 5
                GroupNo = 3
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
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 46810
                mmTop = 1323
                mmWidth = 10075
                BandType = 5
                GroupNo = 3
              end
              object bq001: TppDBCalc
                UserName = 'bq001'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 54674
                mmTop = 1323
                mmWidth = 11472
                BandType = 5
                GroupNo = 3
              end
              object bd001: TppDBCalc
                UserName = 'bd001'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 243015
                mmTop = 1323
                mmWidth = 10456
                BandType = 5
                GroupNo = 3
              end
              object b1003: TppDBCalc
                UserName = 'b1003'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 81027
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b1004: TppDBCalc
                UserName = 'b1004'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87906
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b1006: TppDBCalc
                UserName = 'b1006'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 95579
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b1008: TppDBCalc
                UserName = 'b1008'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 112247
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b2003: TppDBCalc
                UserName = 'b2003'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 143469
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b2004: TppDBCalc
                UserName = 'b2004'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 150612
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b2006: TppDBCalc
                UserName = 'b2006'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 157491
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b2008: TppDBCalc
                UserName = 'b2008'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 173631
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 3
              end
              object b1001: TppDBCalc
                UserName = 'b1001'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 69236
                mmTop = 1323
                mmWidth = 12785
                BandType = 5
                GroupNo = 3
              end
              object b1002: TppDBCalc
                UserName = 'b1002'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 59901
                mmTop = 1323
                mmWidth = 14182
                BandType = 5
                GroupNo = 3
              end
              object b2001: TppDBCalc
                UserName = 'b2001'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131414
                mmTop = 1323
                mmWidth = 12785
                BandType = 5
                GroupNo = 3
              end
              object b2002: TppDBCalc
                UserName = 'b2002'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 122079
                mmTop = 1323
                mmWidth = 14182
                BandType = 5
                GroupNo = 3
              end
              object bp001: TppLabel
                UserName = 'bp001'
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
                mmLeft = 256382
                mmTop = 1323
                mmWidth = 6615
                BandType = 5
                GroupNo = 3
              end
              object b1007: TppDBCalc
                UserName = 'b1007'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102966
                mmTop = 1323
                mmWidth = 15833
                BandType = 5
                GroupNo = 3
              end
              object b2007: TppDBCalc
                UserName = 'b2007'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 163819
                mmTop = 1323
                mmWidth = 15833
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc2'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 214673
                mmTop = 1323
                mmWidth = 12869
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc7: TppDBCalc
                UserName = 'DBCalc7'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219340
                mmTop = 1323
                mmWidth = 16933
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc16: TppDBCalc
                UserName = 'DBCalc16'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 230241
                mmTop = 1323
                mmWidth = 13970
                BandType = 5
                GroupNo = 3
              end
              object ppDBCalc14: TppDBCalc
                UserName = 'DBCalc14'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 195687
                mmTop = 1323
                mmWidth = 14393
                BandType = 5
                GroupNo = 3
              end
              object v006: TppLabel
                UserName = 'v006'
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
                mmLeft = 214842
                mmTop = 1323
                mmWidth = 4614
                BandType = 5
                GroupNo = 3
              end
              object b1005: TppDBCalc
                UserName = 'b1005'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1PKQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 73057
                mmTop = 1323
                mmWidth = 15579
                BandType = 5
                GroupNo = 3
              end
              object b2005: TppDBCalc
                UserName = 'b2005'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2PKQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 135499
                mmTop = 1323
                mmWidth = 15579
                BandType = 5
                GroupNo = 3
              end
              object v009: TppLabel
                UserName = 'v009'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'q0401'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 195263
                mmTop = 1323
                mmWidth = 5556
                BandType = 5
                GroupNo = 3
              end
            end
          end
          object ppGroup7: TppGroup
            BreakName = 'ACOL'
            DataPipeline = ppDBPipeline1
            OutlineSettings.CreateNode = True
            NewFile = False
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group7'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline1'
            object ppGroupHeaderBand7: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand7BeforePrint
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object rwo001: TppLabel
                UserName = 'rwo001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 76994
                mmTop = 1058
                mmWidth = 7662
                BandType = 3
                GroupNo = 4
              end
              object rwo002: TppLabel
                UserName = 'rwo002'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'RWO 1 '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 138907
                mmTop = 1058
                mmWidth = 7662
                BandType = 3
                GroupNo = 4
              end
            end
            object ppGroupFooterBand7: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand7BeforePrint
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
              object ppShape7: TppShape
                UserName = 'Shape7'
                mmHeight = 5027
                mmLeft = 3704
                mmTop = 0
                mmWidth = 263526
                BandType = 5
                GroupNo = 4
              end
              object ppLabel148: TppLabel
                UserName = 'Label148'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Sub-sub total (clr dependent): '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 5027
                mmTop = 1323
                mmWidth = 28744
                BandType = 5
                GroupNo = 4
              end
              object ppDBCalc19: TppDBCalc
                UserName = 'DBCalc19'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 46831
                mmTop = 1323
                mmWidth = 10075
                BandType = 5
                GroupNo = 4
              end
              object bq011: TppDBCalc
                UserName = 'bq011'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 54769
                mmTop = 1323
                mmWidth = 11472
                BandType = 5
                GroupNo = 4
              end
              object bd011: TppDBCalc
                UserName = 'bd011'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 242888
                mmTop = 1323
                mmWidth = 10456
                BandType = 5
                GroupNo = 4
              end
              object b1013: TppDBCalc
                UserName = 'b1013'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 80963
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 4
              end
              object b1014: TppDBCalc
                UserName = 'b1014'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 87842
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 4
              end
              object b1016: TppDBCalc
                UserName = 'b1016'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 95515
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 4
              end
              object b1018: TppDBCalc
                UserName = 'b1018'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 112184
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 4
              end
              object b2013: TppDBCalc
                UserName = 'b2013'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 143404
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 4
              end
              object b2014: TppDBCalc
                UserName = 'b2014'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 150548
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 4
              end
              object b2016: TppDBCalc
                UserName = 'b2016'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T3QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 157427
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 4
              end
              object b2018: TppDBCalc
                UserName = 'b2018'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2T4QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 173567
                mmTop = 1323
                mmWidth = 15282
                BandType = 5
                GroupNo = 4
              end
              object b1011: TppDBCalc
                UserName = 'b1011'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 69321
                mmTop = 1323
                mmWidth = 12785
                BandType = 5
                GroupNo = 4
              end
              object b1012: TppDBCalc
                UserName = 'b1012'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 59796
                mmTop = 1323
                mmWidth = 14182
                BandType = 5
                GroupNo = 4
              end
              object b2011: TppDBCalc
                UserName = 'b2011'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2QTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 131498
                mmTop = 1323
                mmWidth = 12785
                BandType = 5
                GroupNo = 4
              end
              object b2012: TppDBCalc
                UserName = 'b2012'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2PQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 121973
                mmTop = 1323
                mmWidth = 14182
                BandType = 5
                GroupNo = 4
              end
              object bp011: TppLabel
                UserName = 'bp011'
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
                mmLeft = 256382
                mmTop = 1323
                mmWidth = 5927
                BandType = 5
                GroupNo = 4
              end
              object b1017: TppDBCalc
                UserName = 'b1017'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 102923
                mmTop = 1323
                mmWidth = 15833
                BandType = 5
                GroupNo = 4
              end
              object b2017: TppDBCalc
                UserName = 'b2017'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2AQQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 163777
                mmTop = 1323
                mmWidth = 15833
                BandType = 5
                GroupNo = 4
              end
              object ppDBCalc36: TppDBCalc
                UserName = 'DBCalc36'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 214578
                mmTop = 1323
                mmWidth = 12869
                BandType = 5
                GroupNo = 4
              end
              object ppDBCalc37: TppDBCalc
                UserName = 'DBCalc37'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 219340
                mmTop = 1323
                mmWidth = 16933
                BandType = 5
                GroupNo = 4
              end
              object ppDBCalc38: TppDBCalc
                UserName = 'DBCalc38'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 230188
                mmTop = 1323
                mmWidth = 13970
                BandType = 5
                GroupNo = 4
              end
              object ppDBCalc39: TppDBCalc
                UserName = 'DBCalc39'
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
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 195792
                mmTop = 1323
                mmWidth = 14393
                BandType = 5
                GroupNo = 4
              end
              object v016: TppLabel
                UserName = 'v016'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'v016'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2498
                mmLeft = 214842
                mmTop = 1323
                mmWidth = 4614
                BandType = 5
                GroupNo = 4
              end
              object b1015: TppDBCalc
                UserName = 'b1015'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R1PKQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 73025
                mmTop = 1323
                mmWidth = 15579
                BandType = 5
                GroupNo = 4
              end
              object b2015: TppDBCalc
                UserName = 'b2015'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'R2PKQTY'
                DataPipeline = ppDBPipeline1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                ResetGroup = ppGroup7
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline1'
                mmHeight = 2498
                mmLeft = 135467
                mmTop = 1323
                mmWidth = 15579
                BandType = 5
                GroupNo = 4
              end
              object v019: TppLabel
                UserName = 'v019'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'q0401'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 195263
                mmTop = 1323
                mmWidth = 5556
                BandType = 5
                GroupNo = 4
              end
            end
          end
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'SEQ'
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
        BeforePrint = ppGroupHeaderBand4BeforePrint
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppLabel26: TppLabel
          UserName = 'Label18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Transit flow Summary : - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 1323
          mmTop = 1852
          mmWidth = 33867
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
          Caption = 'Manifest '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 1323
          mmTop = 6879
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
        end
        object bcn002: TppLabel
          UserName = 'bcn002'
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
          mmLeft = 11906
          mmTop = 6879
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppLabel74: TppLabel
          UserName = 'Label502'
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
          mmLeft = 40217
          mmTop = 6879
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object shpm002: TppLabel
          UserName = 'shpm002'
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
          mmLeft = 52388
          mmTop = 6879
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ex-fty Date /Time '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 88371
          mmTop = 6879
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object exfty004: TppLabel
          UserName = 'exfty004'
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
          mmLeft = 106098
          mmTop = 6879
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
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
          mmLeft = 116417
          mmTop = 6879
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
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
          mmLeft = 119327
          mmTop = 6879
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand4BeforePrint
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 50271
        mmPrintPosition = 0
        object ppLabel30: TppLabel
          UserName = 'Label30'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Notepad: - <Fty> '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
        object ppMemo1: TppMemo
          UserName = 'Memo1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 17992
          mmLeft = 1323
          mmTop = 7144
          mmWidth = 263790
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label301'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Notepad: - <Head office> '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 26723
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppMemo2: TppMemo
          UserName = 'Memo2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Stretch = True
          Transparent = True
          mmHeight = 15875
          mmLeft = 1323
          mmTop = 31750
          mmWidth = 263790
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
      BreakName = 'SEQ1'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = 14539518
          mmHeight = 14552
          mmLeft = 794
          mmTop = 1588
          mmWidth = 267494
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Project # '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 2117
          mmTop = 2646
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label2'
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
          mmHeight = 2646
          mmLeft = 14288
          mmTop = 2646
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'WO Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 51858
          mmTop = 2646
          mmWidth = 7673
          BandType = 3
          GroupNo = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
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
          mmLeft = 43127
          mmTop = 2646
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Color '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 43127
          mmTop = 6085
          mmWidth = 5715
          BandType = 3
          GroupNo = 1
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
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
          mmLeft = 62442
          mmTop = 2646
          mmWidth = 5027
          BandType = 3
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 67998
          mmTop = 1588
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 245798
          mmTop = 1588
          mmWidth = 2117
          BandType = 3
          GroupNo = 1
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
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
          mmHeight = 2498
          mmLeft = 247915
          mmTop = 9525
          mmWidth = 6562
          BandType = 3
          GroupNo = 1
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
          mmLeft = 62442
          mmTop = 6085
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'PDN GA '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 251355
          mmTop = 2646
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel41: TppLabel
          UserName = 'Label101'
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
          mmLeft = 62442
          mmTop = 9525
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '    vs   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 246592
          mmTop = 6085
          mmWidth = 6265
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 257705
          mmTop = 6085
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
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
          mmLeft = 72231
          mmTop = 2646
          mmWidth = 7144
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 70908
          mmTop = 6085
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 88371
          mmTop = 6085
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ss104: TppLabel
          UserName = 'ss104'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'T2 Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 126736
          mmTop = 6085
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 145257
          mmTop = 6085
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ss107: TppLabel
          UserName = 'ss107'
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
          mmLeft = 151871
          mmTop = 9525
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 159544
          mmTop = 6085
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 70908
          mmTop = 9525
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 88371
          mmTop = 9525
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ss114: TppLabel
          UserName = 'ss114'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 138113
          mmTop = 9525
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 145257
          mmTop = 9525
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 159544
          mmTop = 9525
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
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
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 30427
          mmTop = 2646
          mmWidth = 10848
          BandType = 3
          GroupNo = 1
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
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
          mmLeft = 166159
          mmTop = 6085
          mmWidth = 9790
          BandType = 3
          GroupNo = 1
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cust Clr '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 182563
          mmTop = 6085
          mmWidth = 8202
          BandType = 3
          GroupNo = 1
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 182563
          mmTop = 9525
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 68263
          mmTop = 5556
          mmWidth = 126471
          BandType = 3
          GroupNo = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'RWO Flow  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 107686
          mmTop = 2646
          mmWidth = 11642
          BandType = 3
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 158486
          mmTop = 1588
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Short Shpt Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 211403
          mmTop = 2646
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Picked '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 79375
          mmTop = 6085
          mmWidth = 6985
          BandType = 3
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 79375
          mmTop = 9525
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(by color) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 51858
          mmTop = 6085
          mmWidth = 9525
          BandType = 3
          GroupNo = 1
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
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
          mmLeft = 182563
          mmTop = 12965
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppLabel128: TppLabel
          UserName = 'Label128'
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
          mmHeight = 2498
          mmLeft = 24342
          mmTop = 2646
          mmWidth = 5884
          BandType = 3
          GroupNo = 1
        end
        object ppLabel71: TppLabel
          UserName = 'Label71'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '-ing Shpt '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 235215
          mmTop = 9525
          mmWidth = 9144
          BandType = 3
          GroupNo = 1
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Outstand '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 235215
          mmTop = 6085
          mmWidth = 9260
          BandType = 3
          GroupNo = 1
        end
        object ppLabel143: TppLabel
          UserName = 'Label143'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Pass '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 151871
          mmTop = 6085
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
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
          mmLeft = 194998
          mmTop = 6085
          mmWidth = 8996
          BandType = 3
          GroupNo = 1
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
          mmLeft = 194998
          mmTop = 9525
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 227013
          mmTop = 6085
          mmWidth = 2910
          BandType = 3
          GroupNo = 1
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Smpl '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 204788
          mmTop = 6085
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object ppLabel69: TppLabel
          UserName = 'Label69'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Defect '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 211403
          mmTop = 6085
          mmWidth = 6615
          BandType = 3
          GroupNo = 1
        end
        object ppLabel144: TppLabel
          UserName = 'Label144'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Lost '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 219605
          mmTop = 6085
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppLabel150: TppLabel
          UserName = 'Label150'
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
          mmHeight = 2498
          mmLeft = 247915
          mmTop = 12965
          mmWidth = 3895
          BandType = 3
          GroupNo = 1
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
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
          mmLeft = 43127
          mmTop = 9525
          mmWidth = 5673
          BandType = 3
          GroupNo = 1
        end
        object ppLabel68: TppLabel
          UserName = 'Label68'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- for ref '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 51858
          mmTop = 9525
          mmWidth = 7493
          BandType = 3
          GroupNo = 1
        end
        object ppLabel72: TppLabel
          UserName = 'Label5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Non Shpt Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 232834
          mmTop = 2646
          mmWidth = 13335
          BandType = 3
          GroupNo = 1
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '(RWO Qty) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 233363
          mmTop = 12965
          mmWidth = 11113
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
          mmHeight = 14552
          mmLeft = 232305
          mmTop = 1588
          mmWidth = 1852
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
          mmHeight = 14552
          mmLeft = 194469
          mmTop = 1588
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine21: TppLine
          UserName = 'Line201'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 203994
          mmTop = 1588
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 203994
          mmTop = 5556
          mmWidth = 64294
          BandType = 3
          GroupNo = 1
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'This PDN Shipping figure '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 165365
          mmTop = 2646
          mmWidth = 24606
          BandType = 3
          GroupNo = 1
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
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
          mmHeight = 2498
          mmLeft = 118269
          mmTop = 9525
          mmWidth = 3090
          BandType = 3
          GroupNo = 1
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
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
          mmHeight = 2381
          mmLeft = 123825
          mmTop = 9525
          mmWidth = 3175
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
          Caption = 'T2 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 130440
          mmTop = 9525
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppLabel131: TppLabel
          UserName = 'Label131'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'SL '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 118269
          mmTop = 12965
          mmWidth = 3090
          BandType = 3
          GroupNo = 1
        end
        object ppLabel145: TppLabel
          UserName = 'Label702'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'GG '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 123825
          mmTop = 12965
          mmWidth = 3895
          BandType = 3
          GroupNo = 1
        end
        object ppLabel146: TppLabel
          UserName = 'Label146'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'SC '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 130440
          mmTop = 12965
          mmWidth = 3514
          BandType = 3
          GroupNo = 1
        end
        object ppLine23: TppLine
          UserName = 'Line23'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 92604
          mmTop = 5556
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine24: TppLine
          UserName = 'Line24'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 117475
          mmTop = 5556
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 143669
          mmTop = 5556
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppLabel149: TppLabel
          UserName = 'Label149'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sewn Qty '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 100542
          mmTop = 6085
          mmWidth = 9790
          BandType = 3
          GroupNo = 1
        end
        object ppLabel151: TppLabel
          UserName = 'Label151'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 110861
          mmTop = 9525
          mmWidth = 3006
          BandType = 3
          GroupNo = 1
        end
        object ppLabel152: TppLabel
          UserName = 'Label152'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'SL+GG '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 93927
          mmTop = 9525
          mmWidth = 7705
          BandType = 3
          GroupNo = 1
        end
        object ppLabel153: TppLabel
          UserName = 'Label703'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'SC '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 104775
          mmTop = 9525
          mmWidth = 3440
          BandType = 3
          GroupNo = 1
        end
        object ppLine26: TppLine
          UserName = 'Line26'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 92604
          mmTop = 8996
          mmWidth = 51329
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          Brush.Color = 14539518
          mmHeight = 5027
          mmLeft = 794
          mmTop = 0
          mmWidth = 267494
          BandType = 5
          GroupNo = 1
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
          BandType = 5
          GroupNo = 1
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
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 55468
          mmTop = 1323
          mmWidth = 11472
          BandType = 5
          GroupNo = 1
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
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 244475
          mmTop = 1323
          mmWidth = 10456
          BandType = 5
          GroupNo = 1
        end
        object sb103: TppDBCalc
          UserName = 'sb103'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1T1QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 77058
          mmTop = 1323
          mmWidth = 15282
          BandType = 5
          GroupNo = 1
        end
        object sb104: TppDBCalc
          UserName = 'sb104'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1T2QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 126800
          mmTop = 1323
          mmWidth = 15282
          BandType = 5
          GroupNo = 1
        end
        object sb106: TppDBCalc
          UserName = 'sb106'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1T3QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 133943
          mmTop = 1323
          mmWidth = 15282
          BandType = 5
          GroupNo = 1
        end
        object sb108: TppDBCalc
          UserName = 'sb108'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1T4QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 150083
          mmTop = 1323
          mmWidth = 15282
          BandType = 5
          GroupNo = 1
        end
        object sb101: TppDBCalc
          UserName = 'sb101'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1QTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 61828
          mmTop = 1323
          mmWidth = 12785
          BandType = 5
          GroupNo = 1
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
          mmHeight = 2381
          mmLeft = 257705
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object sb107: TppDBCalc
          UserName = 'sb107'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1AQQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 140801
          mmTop = 1323
          mmWidth = 15833
          BandType = 5
          GroupNo = 1
        end
        object sb102: TppDBCalc
          UserName = 'sb102'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'R1PKQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 68295
          mmTop = 1323
          mmWidth = 15579
          BandType = 5
          GroupNo = 1
        end
        object sb013: TppLabel
          UserName = 'sb013'
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
          mmLeft = 238390
          mmTop = 1323
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object ttl001: TppLabel
          UserName = 'ttl001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand total: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 1323
          mmTop = 6350
          mmWidth = 11642
          BandType = 5
          GroupNo = 1
        end
        object woqty001: TppLabel
          UserName = 'woqty001'
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
          mmLeft = 50006
          mmTop = 1323
          mmWidth = 8996
          BandType = 5
          GroupNo = 1
        end
        object sb010: TppDBCalc
          UserName = 'sb010'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SHPQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 188808
          mmTop = 1323
          mmWidth = 14393
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'sb0101'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SPQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 196681
          mmTop = 1323
          mmWidth = 12869
          BandType = 5
          GroupNo = 1
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
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2498
          mmLeft = 200026
          mmTop = 1323
          mmWidth = 16933
          BandType = 5
          GroupNo = 1
        end
        object lst03: TppLabel
          UserName = 'lst03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2381
          mmLeft = 222780
          mmTop = 1323
          mmWidth = 1058
          BandType = 5
          GroupNo = 1
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
          mmLeft = 225425
          mmTop = 1323
          mmWidth = 6615
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'J2_JOB'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
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
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group11'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
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
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
