object frmwfsum: Tfrmwfsum
  Left = 192
  Top = 114
  Width = 337
  Height = 178
  Caption = 'frmwfsum'
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
    CommandText = 'select * from tbl_wf_ratio_01'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'PTYPE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SWF'
        DataType = ftFloat
      end
      item
        Name = 'MWF_LB'
        DataType = ftFloat
      end
      item
        Name = 'MWF_BN'
        DataType = ftFloat
      end
      item
        Name = 'MWF_TTL'
        DataType = ftFloat
      end
      item
        Name = 'FLOATER'
        DataType = ftFloat
      end
      item
        Name = 'WF_TTL'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
    Top = 8
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 40
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 72
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 8
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 136
    Top = 8
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    Left = 168
    Top = 8
    Version = '6.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 152929
      mmPrintPosition = 0
      object rpttitle: TppLabel
        UserName = 'rpttitle'
        AutoSize = False
        Caption = 'LWPM - Workforce Summary Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 35719
        mmTop = 11377
        mmWidth = 109802
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 157692
        mmTop = 16669
        mmWidth = 13494
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 16669
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 157692
        mmTop = 20902
        mmWidth = 6615
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 20902
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 20638
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText11'
        AutoSize = True
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
        mmLeft = 17463
        mmTop = 20638
        mmWidth = 3641
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 45508
        mmLeft = 5027
        mmTop = 39952
        mmWidth = 183621
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Line '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 42598
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Bra '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 58738
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Brief '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 65088
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Small Bra '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 72231
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'SWF '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 85725
        mmTop = 42598
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'MWF '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 98954
        mmTop = 42598
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Fill LB Gap '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 98954
        mmTop = 47096
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'MWF '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 42598
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'Fill on-site BN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 47096
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'and Absence '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 51594
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'MWF '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142346
        mmTop = 42598
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label102'
        Caption = 'Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142346
        mmTop = 47096
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Floater  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 42598
        mmWidth = 10319
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 56092
        mmWidth = 183357
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 45244
        mmLeft = 80433
        mmTop = 39952
        mmWidth = 4233
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 45244
        mmLeft = 97367
        mmTop = 39952
        mmWidth = 4233
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 45244
        mmLeft = 115888
        mmTop = 39952
        mmWidth = 4233
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 45244
        mmLeft = 139171
        mmTop = 39952
        mmWidth = 4233
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 45244
        mmLeft = 155575
        mmTop = 39952
        mmWidth = 4233
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 45244
        mmLeft = 171450
        mmTop = 39952
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Total  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175948
        mmTop = 42598
        mmWidth = 7938
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 80433
        mmTop = 63500
        mmWidth = 107950
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 80433
        mmTop = 70644
        mmWidth = 108215
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 80433
        mmTop = 77523
        mmWidth = 108215
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 1852
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Visible = False
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 11377
        mmTop = 0
        mmWidth = 25665
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
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 232
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = Query5
    Left = 264
    Top = 8
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 296
    Top = 8
  end
end
