object frmprint1: Tfrmprint1
  Left = 197
  Top = 109
  Caption = 'frmprint1'
  ClientHeight = 33
  ClientWidth = 116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = frmprintschedule.DataSource1
    UserName = 'BDEPipeline1'
    Left = 24
    Top = 8
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 3350
    PrinterSetup.mmMarginRight = 3000
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
    Left = 56
    Top = 8
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 46038
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 22225
        mmLeft = 2646
        mmTop = 24077
        mmWidth = 279136
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 98161
        mmTop = 12171
        mmWidth = 23548
        BandType = 0
      end
      object subtitle01: TppLabel
        UserName = 'subtitle01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23526#38555#38626#24288#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 2646
        mmTop = 11906
        mmWidth = 15282
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24478' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 28310
        mmTop = 11906
        mmWidth = 3006
        BandType = 0
      end
      object dt01: TppLabel
        UserName = 'dt01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2921
        mmLeft = 36513
        mmTop = 11906
        mmWidth = 7959
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21040' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 56621
        mmTop = 11906
        mmWidth = 3006
        BandType = 0
      end
      object dt02: TppLabel
        UserName = 'dt02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2921
        mmLeft = 61383
        mmTop = 11906
        mmWidth = 7959
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#24037#31243' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 2646
        mmTop = 17198
        mmWidth = 7916
        BandType = 0
      end
      object project1: TppLabel
        UserName = 'project1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 13758
        mmTop = 17198
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 56356
        mmTop = 17198
        mmWidth = 3006
        BandType = 0
      end
      object pline: TppLabel
        UserName = 'pline'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 62177
        mmTop = 17198
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25171#21360#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2836
        mmLeft = 231246
        mmTop = 11906
        mmWidth = 10541
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
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2836
        mmLeft = 248973
        mmTop = 11906
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913#30908' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2836
        mmLeft = 231246
        mmTop = 15875
        mmWidth = 5546
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
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2836
        mmLeft = 248973
        mmTop = 15875
        mmWidth = 5207
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 4763
        mmTop = 36777
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 12435
        mmTop = 36777
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 24606
        mmTop = 36777
        mmWidth = 6816
        BandType = 0
      end
      object artno2: TppLabel
        UserName = 'artno2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#27454#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 46567
        mmTop = 36777
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33394#30908' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 69321
        mmTop = 31485
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#38913' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 79111
        mmTop = 31485
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20214#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 79111
        mmTop = 36777
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38928#35373' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 103452
        mmTop = 28575
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30452#25509' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 89165
        mmTop = 34660
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#20381'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 110861
        mmTop = 38100
        mmWidth = 6731
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23526#27841' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 276490
        mmTop = 37835
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38928#35373' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 118004
        mmTop = 36513
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22519#34892' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 133086
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#38913' ('#23526#27841')  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 175419
        mmTop = 28310
        mmWidth = 11049
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32299#21512#38283' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 159544
        mmTop = 36777
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38283#22987' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 167482
        mmTop = 38365
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20381#36650#21046#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 237332
        mmTop = 37835
        mmWidth = 8932
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
        mmHeight = 22225
        mmLeft = 9260
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 22225
        mmLeft = 21431
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 22225
        mmLeft = 44979
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 22225
        mmLeft = 62706
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 22225
        mmLeft = 68792
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 22225
        mmLeft = 88636
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 22225
        mmLeft = 93927
        mmTop = 24077
        mmWidth = 1058
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
        mmHeight = 14817
        mmLeft = 100013
        mmTop = 31485
        mmWidth = 265
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
        mmHeight = 22225
        mmLeft = 116946
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 14552
        mmLeft = 123296
        mmTop = 31485
        mmWidth = 1323
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
        mmHeight = 15346
        mmLeft = 153723
        mmTop = 30956
        mmWidth = 794
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
        mmHeight = 15610
        mmLeft = 166952
        mmTop = 30956
        mmWidth = 265
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 270405
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 235480
        mmTop = 31485
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#26178' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 167482
        mmTop = 42069
        mmWidth = 4699
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 73819
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 248444
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AV '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 276755
        mmTop = 25135
        mmWidth = 3217
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#24046' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 248973
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 203730
        mmTop = 41804
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(-)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 178330
        mmTop = 33867
        mmWidth = 1778
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 177800
        mmTop = 37835
        mmWidth = 4699
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 187590
        mmTop = 30956
        mmWidth = 265
        BandType = 0
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
        mmLeft = 194734
        mmTop = 34396
        mmWidth = 265
        BandType = 0
      end
      object ppLine43: TppLine
        UserName = 'Line43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 203200
        mmTop = 30956
        mmWidth = 265
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 188119
        mmTop = 37042
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 196321
        mmTop = 37042
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#22825')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 249503
        mmTop = 42069
        mmWidth = 3302
        BandType = 0
      end
      object ppLine51: TppLine
        UserName = 'Line501'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 228600
        mmTop = 31485
        mmWidth = 794
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label72'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 236273
        mmTop = 28575
        mmWidth = 8932
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24179#22343')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 103188
        mmTop = 41804
        mmWidth = 4826
        BandType = 0
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 171980
        mmTop = 30956
        mmWidth = 265
        BandType = 0
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 218546
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 158750
        mmTop = 30956
        mmWidth = 265
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23433#25490' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 203730
        mmTop = 33867
        mmWidth = 4699
        BandType = 0
      end
      object xdhq: TppLabel
        UserName = 'xdhq'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#20462#35330#36008#26399')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 67733
        mmTop = 20108
        mmWidth = 157427
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20214#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 63500
        mmTop = 41804
        mmWidth = 4699
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
        mmLeft = 276226
        mmTop = 31485
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38928#35373' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 270934
        mmTop = 37835
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label502'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289#25928#29575' % '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 271463
        mmTop = 28575
        mmWidth = 8932
        BandType = 0
      end
      object ppLine70: TppLine
        UserName = 'Line102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 34131
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label802'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36650' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 35719
        mmTop = 28310
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36650' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 64558
        mmTop = 31485
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' A '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 4233
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' B '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 15346
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' C '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 27517
        mmTop = 25135
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' E '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 54240
        mmTop = 25135
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' F '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 64558
        mmTop = 25135
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' G '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 70115
        mmTop = 25135
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' I '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 80963
        mmTop = 25135
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' D '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 39158
        mmTop = 25135
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' K '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 90223
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'O '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 104775
        mmTop = 25135
        mmWidth = 1820
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' P '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 112448
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36650#21046#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 140494
        mmTop = 29898
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24288#35069#20316' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 139700
        mmTop = 34131
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' S '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 119327
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 240507
        mmTop = 25135
        mmWidth = 3344
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AB '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 177536
        mmTop = 25135
        mmWidth = 3217
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' T '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 126736
        mmTop = 25135
        mmWidth = 1990
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' W '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 150019
        mmTop = 25135
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' X '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 155575
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' Y '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 161396
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' V '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 141817
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AC '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 182827
        mmTop = 25135
        mmWidth = 3344
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AD '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 189177
        mmTop = 25135
        mmWidth = 3344
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AG '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 204259
        mmTop = 25135
        mmWidth = 3429
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AI '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 214842
        mmTop = 25135
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23433#25490' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 221721
        mmTop = 41804
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label121'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AP '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 249503
        mmTop = 25135
        mmWidth = 3217
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label122'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AQ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 256382
        mmTop = 25135
        mmWidth = 3429
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 271463
        mmTop = 25135
        mmWidth = 2879
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38283#22987' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 140759
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 140759
        mmTop = 42069
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32299#21512' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 154252
        mmTop = 34660
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36913#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 154252
        mmTop = 41804
        mmWidth = 4699
        BandType = 0
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 254001
        mmTop = 31485
        mmWidth = 529
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37782#23450' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 254794
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#24046' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 254794
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#22825') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 255059
        mmTop = 42069
        mmWidth = 3768
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 35719
        mmTop = 31750
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label1001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'U '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 134144
        mmTop = 25135
        mmWidth = 1736
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36861#22238' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 188119
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label141'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20351#29992' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 196321
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label142'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35336#31639') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 111125
        mmTop = 41804
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label143'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 203730
        mmTop = 37835
        mmWidth = 4699
        BandType = 0
      end
      object ppLine68: TppLine
        UserName = 'Line402'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 182563
        mmTop = 30956
        mmWidth = 265
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AE '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 197115
        mmTop = 25135
        mmWidth = 3217
        BandType = 0
      end
      object ppLabel148: TppLabel
        UserName = 'Label148'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(+)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 183621
        mmTop = 33867
        mmWidth = 2201
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label603'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 183092
        mmTop = 37835
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22987#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 159544
        mmTop = 41804
        mmWidth = 6816
        BandType = 0
      end
      object ppLine73: TppLine
        UserName = 'Line73'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 138377
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLabel151: TppLabel
        UserName = 'Label151'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' Z '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 167482
        mmTop = 25135
        mmWidth = 1990
        BandType = 0
      end
      object ppLabel152: TppLabel
        UserName = 'Label901'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38928#35373' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 125413
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 125413
        mmTop = 42069
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32317#31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 123561
        mmTop = 28575
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label302'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 118004
        mmTop = 41804
        mmWidth = 4699
        BandType = 0
      end
      object ppLine76: TppLine
        UserName = 'Line76'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 148961
        mmTop = 30956
        mmWidth = 59796
        BandType = 0
      end
      object ppLine78: TppLine
        UserName = 'Line78'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 218811
        mmTop = 31485
        mmWidth = 41540
        BandType = 0
      end
      object ppLine79: TppLine
        UserName = 'Line79'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 27781
        mmWidth = 278871
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 132292
        mmTop = 31485
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25613#32791' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 125413
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label902'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 172509
        mmTop = 39423
        mmWidth = 4699
        BandType = 0
      end
      object ppLine80: TppLine
        UserName = 'Line80'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 177271
        mmTop = 30956
        mmWidth = 265
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 172509
        mmTop = 25135
        mmWidth = 2752
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29256#26412': 2.6.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2836
        mmLeft = 231246
        mmTop = 20108
        mmWidth = 10626
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line601'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 208757
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38750' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 214578
        mmTop = 29898
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29983' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 214578
        mmTop = 33867
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29986' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 214578
        mmTop = 38100
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#21152#27402' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 103188
        mmTop = 38100
        mmWidth = 5292
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 93927
        mmTop = 31485
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#20154' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 89165
        mmTop = 41804
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label903'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25613#32791' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 172509
        mmTop = 36248
        mmWidth = 4699
        BandType = 0
      end
      object ppLine83: TppLine
        UserName = 'Line83'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 148696
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #40778#26009' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 149225
        mmTop = 33073
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33267#32299' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 149225
        mmTop = 36248
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26178#26694' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 149225
        mmTop = 42598
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AL '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 221721
        mmTop = 25135
        mmWidth = 3048
        BandType = 0
      end
      object ppLine85: TppLine
        UserName = 'Line85'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 260351
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 22225
        mmLeft = 265378
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLine88: TppLine
        UserName = 'Line88'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 270669
        mmTop = 31485
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 261673
        mmTop = 25135
        mmWidth = 2879
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AS '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 266436
        mmTop = 25135
        mmWidth = 3217
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#38913' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 260880
        mmTop = 29633
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label120'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26178#26694' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 260880
        mmTop = 37835
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23433#25490' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 260880
        mmTop = 33602
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36650' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 266701
        mmTop = 29633
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 265907
        mmTop = 33602
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label1201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35069#20316' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 265907
        mmTop = 37835
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26178#26694' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 265907
        mmTop = 42069
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#38913' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 221721
        mmTop = 36777
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel159: TppLabel
        UserName = 'Label159'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 35719
        mmTop = 35190
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel160: TppLabel
        UserName = 'Label160'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 35719
        mmTop = 38365
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label1601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- '#21518#32180' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 37042
        mmTop = 42333
        mmWidth = 5757
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label602'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32299#21512' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 167482
        mmTop = 34660
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 40481
        mmTop = 28310
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 40481
        mmTop = 31750
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 40481
        mmTop = 35190
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel164: TppLabel
        UserName = 'Label164'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21512#21069' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 149225
        mmTop = 39423
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31665#20214#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 110861
        mmTop = 34131
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23526#27841' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 89165
        mmTop = 31485
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AM '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 230188
        mmTop = 24871
        mmWidth = 3514
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23526#27841' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 229659
        mmTop = 37835
        mmWidth = 4699
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
        mmHeight = 22225
        mmLeft = 213784
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 209815
        mmTop = 25135
        mmWidth = 3344
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32299#21512' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 209286
        mmTop = 29898
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24460#33267' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 209286
        mmTop = 33867
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20837#20489' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 209286
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label606'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26178#26694' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 209286
        mmTop = 42333
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----  '#23526#27841#34920#29694
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 123825
        mmTop = 13229
        mmWidth = 101336
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' N '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 96573
        mmTop = 25135
        mmWidth = 2117
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
        mmHeight = 14817
        mmLeft = 110331
        mmTop = 31485
        mmWidth = 265
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 103981
        mmTop = 34131
        mmWidth = 4022
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289#24179' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 94721
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  %  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 95515
        mmTop = 41804
        mmWidth = 3440
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 187855
        mmTop = 39688
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #19981#35336#20837' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 192088
        mmTop = 40217
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289#25928#29575' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 192088
        mmTop = 43127
        mmWidth = 6816
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label1401'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36861#29677
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 189707
        mmTop = 31221
        mmWidth = 10583
        BandType = 0
      end
      object ppLine52: TppLine
        UserName = 'Line41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 34396
        mmTop = 42069
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#22580#21312' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 30692
        mmTop = 17198
        mmWidth = 7916
        BandType = 0
      end
      object wks002: TppLabel
        UserName = 'wks002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 41275
        mmTop = 17198
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32317' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 133879
        mmTop = 38100
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 63500
        mmTop = 36777
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24615' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 89959
        mmTop = 38365
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34913#29575' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 94721
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 133086
        mmTop = 42069
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 214578
        mmTop = 42333
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38283#22987' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 154252
        mmTop = 38365
        mmWidth = 4699
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 4498
        mmLeft = 9260
        mmTop = 0
        mmWidth = 272521
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 59796
        mmTop = 265
        mmWidth = 3175
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = 14074287
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 265
        mmWidth = 6085
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 254001
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 159015
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 100277
        mmTop = 265
        mmWidth = 3969
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 74083
        mmTop = 265
        mmWidth = 8202
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 45244
        mmTop = 265
        mmWidth = 3175
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 9525
        mmTop = 265
        mmWidth = 2381
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 13094650
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 265
        mmWidth = 5292
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 13094650
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 260615
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 14074287
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 276490
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape102'
        Brush.Color = 14074287
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 265
        mmWidth = 17727
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
        mmHeight = 4498
        mmLeft = 2646
        mmTop = 0
        mmWidth = 265
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
        DataField = 'Pline'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 3175
        mmTop = 794
        mmWidth = 5249
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
        DataField = 'J_no'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 11906
        mmTop = 794
        mmWidth = 7747
        BandType = 4
      end
      object artno1: TppDBText
        UserName = 'artno1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cstyle'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 48683
        mmTop = 794
        mmWidth = 7874
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
        DataField = 'Acol'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 69321
        mmTop = 794
        mmWidth = 3217
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
        DataField = 'Scqty'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 85450
        mmTop = 794
        mmWidth = 2921
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
        mmLeft = 21431
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 44979
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
        mmHeight = 4498
        mmLeft = 62706
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 68792
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 88636
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 93927
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 100013
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 255853
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 270405
        mmTop = 0
        mmWidth = 265
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
        mmHeight = 4498
        mmLeft = 166952
        mmTop = 0
        mmWidth = 265
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
        mmHeight = 4498
        mmLeft = 153723
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 116946
        mmTop = 0
        mmWidth = 265
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
        mmHeight = 4498
        mmLeft = 123296
        mmTop = 0
        mmWidth = 265
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
        DataField = 'Tmu'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 104775
        mmTop = 794
        mmWidth = 5334
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
        DataField = 'JXJS'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 112184
        mmTop = 794
        mmWidth = 4360
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
        DataField = 'Zjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 134938
        mmTop = 794
        mmWidth = 3387
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
        DataField = 'Cfksrq'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 161661
        mmTop = 794
        mmWidth = 4360
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
        DataField = 'Cfwcrq'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 203730
        mmTop = 794
        mmWidth = 4360
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
        DataField = 'Yqlcrq'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'mm/dd hh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 236009
        mmTop = 794
        mmWidth = 6773
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
        DataField = 'Cfksjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 168751
        mmTop = 794
        mmWidth = 2413
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
        mmHeight = 4498
        mmLeft = 73819
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 248444
        mmTop = 0
        mmWidth = 265
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
        DataField = 'sclhjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 179885
        mmTop = 794
        mmWidth = 2413
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 187590
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 194734
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 203200
        mmTop = 0
        mmWidth = 265
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
        DataField = 'Zhjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 191559
        mmTop = 794
        mmWidth = 2413
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
        DataField = 'Bcjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 199464
        mmTop = 794
        mmWidth = 2413
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
        DataField = 'Phiszjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 119063
        mmTop = 794
        mmWidth = 3387
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Jhl'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 278067
        mmTop = 794
        mmWidth = 3133
        BandType = 4
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 228600
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tzlcrq'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 219075
        mmTop = 794
        mmWidth = 4360
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
        mmLeft = 171980
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine57: TppLine
        UserName = 'Line57'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 11377
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Flag1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 9790
        mmTop = 794
        mmWidth = 974
        BandType = 4
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 103452
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Flag2'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 100542
        mmTop = 794
        mmWidth = 2413
        BandType = 4
      end
      object ppLine56: TppLine
        UserName = 'Line301'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 161396
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 235480
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Flag3'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 159279
        mmTop = 794
        mmWidth = 1863
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
        DataField = 'Flag5'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 254530
        mmTop = 794
        mmWidth = 1143
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RQXC1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 252678
        mmTop = 794
        mmWidth = 974
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 218546
        mmTop = 0
        mmWidth = 265
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
        mmHeight = 4498
        mmLeft = 158750
        mmTop = 0
        mmWidth = 265
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
        DataField = 'qty'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 65607
        mmTop = 794
        mmWidth = 2921
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
        mmHeight = 4498
        mmLeft = 276226
        mmTop = 0
        mmWidth = 265
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
        DataField = 'ysJhl'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 272521
        mmTop = 794
        mmWidth = 3387
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
        mmHeight = 4498
        mmLeft = 34131
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 254001
        mmTop = 0
        mmWidth = 265
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
        mmHeight = 4498
        mmLeft = 182563
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine74: TppLine
        UserName = 'Line74'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 132292
        mmTop = 0
        mmWidth = 265
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
        DataField = 'qyjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 184965
        mmTop = 794
        mmWidth = 2413
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
        DataField = 'plan_date'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 138907
        mmTop = 794
        mmWidth = 4360
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText301'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qrxc'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 257557
        mmTop = 794
        mmWidth = 2540
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Zktd'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 174541
        mmTop = 794
        mmWidth = 2413
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Week'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 156634
        mmTop = 794
        mmWidth = 1947
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 138377
        mmTop = 0
        mmWidth = 265
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
        DataField = 'shjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 128513
        mmTop = 1058
        mmWidth = 3387
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
        mmHeight = 4498
        mmLeft = 144198
        mmTop = 0
        mmWidth = 265
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
        DataField = 'plan_w'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 144727
        mmTop = 794
        mmWidth = 2032
        BandType = 4
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 224367
        mmTop = 0
        mmWidth = 265
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
        DataField = 'Tz_w'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 224896
        mmTop = 794
        mmWidth = 2032
        BandType = 4
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 243682
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText401'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'yq_w'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 244211
        mmTop = 794
        mmWidth = 2032
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'HC'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2117
        mmLeft = 1609
        mmTop = 794
        mmWidth = 804
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
        mmLeft = 177271
        mmTop = 0
        mmWidth = 265
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
        mmHeight = 4498
        mmLeft = 125942
        mmTop = 0
        mmWidth = 265
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
        DataField = 'LFLAG'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 123825
        mmTop = 1058
        mmWidth = 974
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
        mmHeight = 4498
        mmLeft = 208757
        mmTop = 0
        mmWidth = 265
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
        DataField = 'nshjs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 217488
        mmTop = 794
        mmWidth = 974
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
        DataField = 'SJRS'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 90275
        mmTop = 794
        mmWidth = 3387
        BandType = 4
      end
      object ppLine84: TppLine
        UserName = 'Line84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 148696
        mmTop = 0
        mmWidth = 265
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
        DataField = 'XC1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 151427
        mmTop = 794
        mmWidth = 1947
        BandType = 4
      end
      object ppLine86: TppLine
        UserName = 'Line86'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 260351
        mmTop = 0
        mmWidth = 265
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
        mmHeight = 4498
        mmLeft = 265378
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'XC2'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 263261
        mmTop = 794
        mmWidth = 1947
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'XC3'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 268288
        mmTop = 794
        mmWidth = 1947
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'J2_JOB'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 21960
        mmTop = 794
        mmWidth = 7493
        BandType = 4
      end
      object ppLine90: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 48154
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PD8'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 229130
        mmTop = 794
        mmWidth = 3387
        BandType = 4
      end
      object ppLine91: TppLine
        UserName = 'Line91'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 213784
        mmTop = 0
        mmWidth = 265
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
        DataField = 'CKJS'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 211022
        mmTop = 794
        mmWidth = 2413
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
        DataField = 'FLAG6'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 45508
        mmTop = 794
        mmWidth = 2117
        BandType = 4
      end
      object ppLine95: TppLine
        UserName = 'Line95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 110331
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TBU'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 95388
        mmTop = 794
        mmWidth = 4360
        BandType = 4
      end
      object ppLine96: TppLine
        UserName = 'Line96'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 81756
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLAG4'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 74877
        mmTop = 794
        mmWidth = 1143
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
        DataField = 'fccs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 39158
        mmTop = 794
        mmWidth = 3387
        BandType = 4
      end
      object ppLine65: TppLine
        UserName = 'Line65'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 38629
        mmTop = 265
        mmWidth = 265
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
        DataField = 'RWO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 34660
        mmTop = 794
        mmWidth = 2413
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText501'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JHRS'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 60061
        mmTop = 794
        mmWidth = 4191
        BandType = 4
      end
      object ppLine77: TppLine
        UserName = 'Line77'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 59531
        mmTop = 0
        mmWidth = 265
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
        DataField = 'CWO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 31485
        mmTop = 794
        mmWidth = 2413
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 29633
        mmTop = 794
        mmWidth = 1588
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 16140
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 0
        mmWidth = 7673
        BandType = 7
      end
      object zphisjs: TppDBCalc
        UserName = 'zphisjs'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Phiszjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 111558
        mmTop = 1323
        mmWidth = 10880
        BandType = 7
      end
      object zzjs: TppDBCalc
        UserName = 'zzjs'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Zjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 130853
        mmTop = 1323
        mmWidth = 7408
        BandType = 7
      end
      object zsclhjs: TppDBCalc
        UserName = 'zsclhjs'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Sclhjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 171641
        mmTop = 1323
        mmWidth = 9991
        BandType = 7
      end
      object pjjhl: TppLabel
        UserName = 'pjjhl'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'pjjhl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 277813
        mmTop = 1323
        mmWidth = 3440
        BandType = 7
      end
      object xx1: TppDBCalc
        UserName = 'xx1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Zhjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 185473
        mmTop = 1323
        mmWidth = 8467
        BandType = 7
      end
      object xx2: TppDBCalc
        UserName = 'xx2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Bcjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 193410
        mmTop = 1323
        mmWidth = 8594
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
        DataField = 'Zktd'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 169207
        mmTop = 1323
        mmWidth = 8594
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'zphisjs1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Scqty'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 78719
        mmTop = 1323
        mmWidth = 9652
        BandType = 7
      end
      object pttl1: TppLabel
        UserName = 'pttl1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289#32317#25976':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 3175
        mmTop = 1323
        mmWidth = 6816
        BandType = 7
      end
      object pttl2: TppLabel
        UserName = 'pttl2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#25142#27454#34399#32317#25976':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 39158
        mmTop = 1323
        mmWidth = 13166
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'zphisjs2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'shjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 123031
        mmTop = 1323
        mmWidth = 8382
        BandType = 7
      end
      object zqyjs1: TppDBCalc
        UserName = 'zsclhjs1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qyjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0;-0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 178944
        mmTop = 1323
        mmWidth = 8382
        BandType = 7
      end
      object pttl3: TppLabel
        UserName = 'pttl3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289#32317#25976':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 11906
        mmTop = 6879
        mmWidth = 6816
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'zzkjs1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'nshjs'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 209233
        mmTop = 1323
        mmWidth = 9440
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
        DataField = 'CKJS'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2455
        mmLeft = 203994
        mmTop = 1323
        mmWidth = 9567
        BandType = 7
      end
      object avgtmu: TppLabel
        UserName = 'avgtmu'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 96573
        mmTop = 6879
        mmWidth = 5821
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH ('#21152#27402#24179#22343') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 78846
        mmTop = 6879
        mmWidth = 14139
        BandType = 7
      end
      object ppLine92: TppLine
        UserName = 'Line37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 77788
        mmTop = 5821
        mmWidth = 25929
        BandType = 7
      end
      object ppLine93: TppLine
        UserName = 'Line92'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 77788
        mmTop = 10054
        mmWidth = 25929
        BandType = 7
      end
      object pjys01: TppLabel
        UserName = 'pjys01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2455
        mmLeft = 270542
        mmTop = 1323
        mmWidth = 5419
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
