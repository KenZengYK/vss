object frmprint: Tfrmprint
  Left = 197
  Top = 109
  Caption = 'frmprint'
  ClientHeight = 33
  ClientWidth = 129
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
    Left = 8
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
    PrinterSetup.mmMarginRight = 2000
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
    Left = 40
    Top = 8
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 46038
      mmPrintPosition = 0
      object ppLabel59: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' ----  QN halt and re-active'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 98954
        mmTop = 13229
        mmWidth = 160867
        BandType = 0
      end
      object xx03: TppLabel
        UserName = 'xx03'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- QN transfer / SQN (keep/jump)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 187325
        mmTop = 13494
        mmWidth = 71438
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 22225
        mmLeft = 3440
        mmTop = 24342
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
        mmLeft = 72496
        mmTop = 12171
        mmWidth = 26194
        BandType = 0
      end
      object subtitle01: TppLabel
        UserName = 'subtitle01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36650#21046#21934#38626#24288#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 3440
        mmTop = 11906
        mmWidth = 17738
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
        mmLeft = 29104
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
        mmLeft = 37306
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
        mmLeft = 57415
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
        mmLeft = 62177
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
        mmLeft = 3440
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
        mmLeft = 15346
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
        mmLeft = 59531
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
        mmLeft = 65088
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
        mmLeft = 260086
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
        mmHeight = 2910
        mmLeft = 273580
        mmTop = 11906
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913#30908': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2836
        mmLeft = 260086
        mmTop = 15875
        mmWidth = 6223
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
        mmHeight = 2910
        mmLeft = 273580
        mmTop = 15875
        mmWidth = 5292
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
        mmLeft = 5556
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
        mmLeft = 12171
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
        mmLeft = 24342
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
        mmHeight = 2381
        mmLeft = 46831
        mmTop = 36777
        mmWidth = 15346
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
        mmLeft = 70644
        mmTop = 36777
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
        mmLeft = 79904
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
        mmLeft = 79904
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
        mmLeft = 101071
        mmTop = 28840
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
        mmLeft = 89429
        mmTop = 34131
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
        mmLeft = 111654
        mmTop = 38629
        mmWidth = 6731
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
        mmLeft = 118798
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
        mmLeft = 133879
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
        Caption = #25976#38913'('#23526#27841') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 184255
        mmTop = 28840
        mmWidth = 10118
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
        mmLeft = 173302
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
        Caption = #22987' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 181769
        mmTop = 36248
        mmWidth = 2582
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
        mmLeft = 237067
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
        mmLeft = 10054
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
        mmLeft = 45244
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
        mmLeft = 70115
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
        mmLeft = 88900
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
        mmHeight = 14817
        mmLeft = 94192
        mmTop = 31485
        mmWidth = 265
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
        mmLeft = 101071
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
        mmLeft = 117475
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 15081
        mmLeft = 180711
        mmTop = 31485
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
        mmLeft = 271198
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
        mmHeight = 14288
        mmLeft = 235215
        mmTop = 32015
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
        Caption = #26178' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 181769
        mmTop = 42598
        mmWidth = 2582
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
        mmLeft = 75142
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26178#38553' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 215371
        mmTop = 36777
        mmWidth = 4699
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
        mmHeight = 14023
        mmLeft = 247915
        mmTop = 32015
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
        mmLeft = 277548
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
        mmLeft = 205317
        mmTop = 41804
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
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
        mmLeft = 215371
        mmTop = 31485
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
        mmHeight = 15081
        mmLeft = 190500
        mmTop = 31485
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
        mmHeight = 4763
        mmLeft = 197644
        mmTop = 34925
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
        mmHeight = 15081
        mmLeft = 204788
        mmTop = 31485
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
        mmLeft = 191030
        mmTop = 37306
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
        Caption = #31680#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 198702
        mmTop = 37306
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
        Caption = '('#22825') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 249503
        mmTop = 42069
        mmWidth = 3768
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line50'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 219869
        mmTop = 24077
        mmWidth = 265
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
        mmHeight = 21960
        mmLeft = 224896
        mmTop = 24342
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
        mmLeft = 238919
        mmTop = 29104
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
        mmLeft = 103981
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
        mmHeight = 15081
        mmLeft = 185473
        mmTop = 31485
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
        mmLeft = 214842
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
        mmHeight = 15081
        mmLeft = 172244
        mmTop = 31485
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
        mmLeft = 205317
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
        mmLeft = 72496
        mmTop = 20108
        mmWidth = 154252
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
        mmLeft = 64294
        mmTop = 36777
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
        mmHeight = 14288
        mmLeft = 277019
        mmTop = 32015
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
        mmLeft = 271728
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
        Caption = #25289#25928#29575'% '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 272521
        mmTop = 29104
        mmWidth = 8467
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
        mmLeft = 33867
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
        mmLeft = 34925
        mmTop = 29104
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
        Caption = #36650#21046#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 63236
        mmTop = 31485
        mmWidth = 6816
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
        mmLeft = 5027
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
        mmLeft = 16140
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
        mmLeft = 26988
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
        mmLeft = 54504
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
        mmLeft = 66146
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
        mmLeft = 71438
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
        mmLeft = 81492
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
        mmLeft = 38629
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
        Caption = ' J '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 91017
        mmTop = 25135
        mmWidth = 1820
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' O '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 105040
        mmTop = 25135
        mmWidth = 2286
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
        mmLeft = 112977
        mmTop = 25135
        mmWidth = 2074
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36650#21046#21934#24288#35069#20316#38283#22987#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 28840
        mmWidth = 21960
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
        mmLeft = 120386
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
        mmLeft = 240242
        mmTop = 25135
        mmWidth = 3344
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
        mmLeft = 128059
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
        mmLeft = 168011
        mmTop = 25135
        mmWidth = 2582
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
        mmLeft = 175684
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
        mmLeft = 152136
        mmTop = 25135
        mmWidth = 2074
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
        mmLeft = 191823
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
        mmLeft = 205582
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
        mmLeft = 211403
        mmTop = 25135
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AK '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 220663
        mmTop = 25135
        mmWidth = 3217
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
        mmLeft = 228071
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
        Caption = ' AO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 249767
        mmTop = 25135
        mmWidth = 3429
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
        mmLeft = 257176
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
        mmLeft = 272257
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
        Caption = #20381#36650#21046#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 139965
        mmTop = 38100
        mmWidth = 8932
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
        mmHeight = 14288
        mmLeft = 254530
        mmTop = 32015
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
        mmLeft = 255588
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
        mmLeft = 255588
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
        mmLeft = 255853
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
        mmLeft = 34925
        mmTop = 32544
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
        Caption = ' U '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 134938
        mmTop = 25135
        mmWidth = 2201
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
        mmLeft = 191294
        mmTop = 34660
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
        mmLeft = 198967
        mmTop = 34660
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
        mmLeft = 111654
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
        mmLeft = 205317
        mmTop = 37835
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label144'
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
        mmLeft = 220398
        mmTop = 39423
        mmWidth = 4699
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
        mmLeft = 199761
        mmTop = 25135
        mmWidth = 3217
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
        mmLeft = 173302
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
        mmLeft = 139171
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
        mmLeft = 181769
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
        mmLeft = 127000
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
        mmLeft = 127000
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
        mmLeft = 124354
        mmTop = 28840
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
        mmLeft = 118798
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
        mmLeft = 88900
        mmTop = 31485
        mmWidth = 121444
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
        mmLeft = 225161
        mmTop = 32015
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
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
        mmLeft = 220398
        mmTop = 32808
        mmWidth = 4699
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
        mmLeft = 3440
        mmTop = 28310
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
        mmLeft = 133086
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
        mmLeft = 127000
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
        mmLeft = 186002
        mmTop = 39423
        mmWidth = 4699
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
        mmLeft = 186267
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
        mmLeft = 260086
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
        mmLeft = 210344
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' AJ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 215900
        mmTop = 25135
        mmWidth = 2963
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
        mmLeft = 211138
        mmTop = 29633
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
        Caption = #29986' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 211138
        mmTop = 37571
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
        Caption = #26085' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 211138
        mmTop = 41804
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
        mmLeft = 103981
        mmTop = 38100
        mmWidth = 5292
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
        mmLeft = 89429
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
        mmLeft = 186002
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
        mmHeight = 14817
        mmLeft = 149490
        mmTop = 31485
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
        mmLeft = 167746
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
        mmLeft = 167746
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
        mmLeft = 167746
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
        mmLeft = 229130
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
        mmLeft = 261144
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
        mmLeft = 266171
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
        mmLeft = 271463
        mmTop = 32015
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
        mmLeft = 262467
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
        mmLeft = 267230
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
        mmLeft = 261673
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
        mmLeft = 261673
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
        Caption = #35069#20316' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 261673
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
        mmLeft = 266701
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
        mmLeft = 266701
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
        mmLeft = 266701
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
        mmLeft = 228071
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
        mmLeft = 34925
        mmTop = 35719
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
        mmLeft = 34925
        mmTop = 38894
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
        mmLeft = 36777
        mmTop = 42863
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
        Caption = #38283' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 181769
        mmTop = 33073
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label37'
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
        mmLeft = 220398
        mmTop = 35983
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
        mmLeft = 41804
        mmTop = 29104
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
        mmLeft = 41804
        mmTop = 32544
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
        mmLeft = 41804
        mmTop = 35719
        mmWidth = 2582
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
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
        mmLeft = 220398
        mmTop = 29633
        mmWidth = 4699
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
        mmLeft = 167746
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
        Caption = #31665' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 112977
        mmTop = 32544
        mmWidth = 2582
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
        mmLeft = 277548
        mmTop = 37835
        mmWidth = 4699
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
        mmHeight = 14817
        mmLeft = 124619
        mmTop = 31485
        mmWidth = 265
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
        mmHeight = 14817
        mmLeft = 111125
        mmTop = 31485
        mmWidth = 265
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
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
        mmLeft = 104511
        mmTop = 34131
        mmWidth = 4022
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 97367
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
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
        mmLeft = 95250
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
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
        mmLeft = 96044
        mmTop = 41804
        mmWidth = 3440
        BandType = 0
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 155311
        mmTop = 31485
        mmWidth = 265
        BandType = 0
      end
      object ppLine72: TppLine
        UserName = 'Line72'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 167217
        mmTop = 24077
        mmWidth = 529
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 150019
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
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
        mmLeft = 155840
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
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
        mmLeft = 155840
        mmTop = 41804
        mmWidth = 3768
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31680' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 181769
        mmTop = 39423
        mmWidth = 2582
        BandType = 0
      end
      object ppLine77: TppLine
        UserName = 'Line41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 190765
        mmTop = 39688
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #19981#35336#20837
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 191030
        mmTop = 40217
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25289#25928#29575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 191030
        mmTop = 43127
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label1401'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36861#29677' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 192617
        mmTop = 31750
        mmWidth = 11377
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
        mmHeight = 14817
        mmLeft = 160073
        mmTop = 31485
        mmWidth = 265
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label62'
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
        mmLeft = 161132
        mmTop = 34131
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
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
        mmLeft = 161132
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
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
        mmLeft = 161396
        mmTop = 42069
        mmWidth = 3768
        BandType = 0
      end
      object ppLine75: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 33867
        mmTop = 42333
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
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
        mmLeft = 33602
        mmTop = 17198
        mmWidth = 7916
        BandType = 0
      end
      object wks001: TppLabel
        UserName = 'wks001'
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
        mmLeft = 44186
        mmTop = 17198
        mmWidth = 6879
        BandType = 0
      end
      object xx01: TppLabel
        UserName = 'xx01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' (SQN keep or jump line) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 150813
        mmTop = 13494
        mmWidth = 42333
        BandType = 0
      end
      object xx02: TppLabel
        UserName = 'xx02'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' Dashboard'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 193411
        mmTop = 13229
        mmWidth = 47361
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
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
        mmLeft = 134938
        mmTop = 38100
        mmWidth = 2582
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
        mmLeft = 90752
        mmTop = 38100
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
        mmLeft = 95250
        mmTop = 38100
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
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
        mmLeft = 112184
        mmTop = 35454
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label35'
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
        mmLeft = 133879
        mmTop = 42069
        mmWidth = 4699
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#20381#20358' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 150019
        mmTop = 38100
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26009') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 150813
        mmTop = 42069
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
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
        mmLeft = 211138
        mmTop = 33602
        mmWidth = 2582
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
        mmLeft = 10054
        mmTop = 0
        mmWidth = 272521
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 59796
        mmTop = 265
        mmWidth = 3175
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 160338
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = 14074287
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 265
        mmWidth = 6085
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Brush.Color = 14074287
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 277284
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape102'
        Brush.Color = 14074287
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 190765
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        Brush.Color = 13094650
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 261409
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Color = 13094650
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 254794
        mmTop = 265
        mmWidth = 1852
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 172509
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 101336
        mmTop = 265
        mmWidth = 3175
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 265
        mmWidth = 7408
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 45508
        mmTop = 265
        mmWidth = 3175
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 265
        mmWidth = 2381
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
        mmLeft = 3440
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
        mmLeft = 3969
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
        mmLeft = 12700
        mmTop = 794
        mmWidth = 7874
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
        mmWidth = 9398
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
        mmLeft = 70644
        mmTop = 529
        mmWidth = 3090
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
        mmLeft = 84741
        mmTop = 794
        mmWidth = 3895
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
        mmLeft = 45244
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
        mmLeft = 70115
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
        mmLeft = 88900
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
        mmLeft = 94192
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
        mmLeft = 101071
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
        mmLeft = 256382
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
        mmLeft = 271198
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
        mmLeft = 180711
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
        mmLeft = 117475
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
        mmLeft = 124619
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
        mmLeft = 105569
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
        mmLeft = 112713
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
        mmLeft = 134673
        mmTop = 794
        mmWidth = 4360
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
        mmLeft = 175419
        mmTop = 794
        mmWidth = 4487
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
        mmLeft = 205317
        mmTop = 794
        mmWidth = 4487
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
        mmLeft = 235744
        mmTop = 794
        mmWidth = 6900
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
        mmLeft = 182807
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
        mmLeft = 75142
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
        mmLeft = 247915
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 190500
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
        mmLeft = 197644
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
        mmLeft = 204788
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
        mmLeft = 193390
        mmTop = 794
        mmWidth = 3979
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 203560
        mmTop = 794
        mmWidth = 974
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
        mmLeft = 119413
        mmTop = 794
        mmWidth = 4360
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
        mmLeft = 278607
        mmTop = 794
        mmWidth = 3387
        BandType = 4
      end
      object ppLine52: TppLine
        UserName = 'Line52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 219869
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 224896
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
        DataField = 'Bzjs'
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
        mmLeft = 222780
        mmTop = 794
        mmWidth = 1947
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
        mmLeft = 225425
        mmTop = 794
        mmWidth = 4487
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
        mmLeft = 185473
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
        mmLeft = 12171
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
        mmLeft = 10848
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
        mmLeft = 104246
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
        mmLeft = 101600
        mmTop = 794
        mmWidth = 1143
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
        mmLeft = 174890
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
        mmLeft = 235215
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
        mmLeft = 172773
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
        mmLeft = 255059
        mmTop = 794
        mmWidth = 381
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
        DataField = 'Rqxc'
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
        mmLeft = 251704
        mmTop = 794
        mmWidth = 2540
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
        mmLeft = 214842
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
        mmLeft = 172244
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
        mmLeft = 65955
        mmTop = 794
        mmWidth = 3895
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
        mmLeft = 277019
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
        mmLeft = 273315
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
        mmLeft = 33867
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
        mmLeft = 254530
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
        mmLeft = 133086
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 139700
        mmTop = 794
        mmWidth = 4487
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
        mmLeft = 260477
        mmTop = 794
        mmWidth = 381
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
        mmLeft = 185866
        mmTop = 794
        mmWidth = 4360
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
        DataField = 'Kdjs'
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
        mmLeft = 218546
        mmTop = 794
        mmWidth = 974
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
        mmLeft = 139171
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
        mmLeft = 129117
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
        mmLeft = 144992
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
        mmLeft = 145521
        mmTop = 794
        mmWidth = 3387
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
        mmLeft = 230717
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
        mmLeft = 231246
        mmTop = 794
        mmWidth = 3006
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
        mmLeft = 243417
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
        mmLeft = 243946
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
        mmLeft = 784
        mmTop = 794
        mmWidth = 2413
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
        mmLeft = 127000
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
        mmLeft = 125148
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
        mmLeft = 210344
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
        mmLeft = 213519
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
        DataField = 'LSZRS'
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
        mmLeft = 90540
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
        mmLeft = 149490
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
        mmLeft = 169514
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
        mmLeft = 261144
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
        mmLeft = 266171
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
        mmLeft = 264055
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
        mmLeft = 269082
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
      object ppDBText49: TppDBText
        UserName = 'DBText49'
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
        mmLeft = 45773
        mmTop = 794
        mmWidth = 2244
        BandType = 4
      end
      object ppLine94: TppLine
        UserName = 'Line94'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 111125
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
        DataField = 'Tbu'
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
        mmLeft = 95472
        mmTop = 794
        mmWidth = 5334
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
        mmLeft = 155311
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 167217
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
        DataField = 'Cplan'
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
        mmLeft = 150019
        mmTop = 794
        mmWidth = 4487
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
        DataField = 'XC4'
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
        mmLeft = 158570
        mmTop = 794
        mmWidth = 974
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
        mmLeft = 82550
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
        mmLeft = 75936
        mmTop = 794
        mmWidth = 1609
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line801'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 160073
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line802'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 162719
        mmTop = 0
        mmWidth = 265
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
        DataField = 'FYFS'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 160602
        mmTop = 794
        mmWidth = 381
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
        DataField = 'UNBAL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2498
        mmLeft = 165979
        mmTop = 794
        mmWidth = 974
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
        mmLeft = 38894
        mmTop = 265
        mmWidth = 1058
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
        mmLeft = 34396
        mmTop = 794
        mmWidth = 2413
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
        mmLeft = 39423
        mmTop = 794
        mmWidth = 2413
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
        mmTop = 1058
        mmWidth = 381
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
        mmLeft = 59531
        mmTop = 0
        mmWidth = 265
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
        mmLeft = 30956
        mmTop = 794
        mmWidth = 2413
        BandType = 4
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
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
        mmHeight = 2498
        mmLeft = 29633
        mmTop = 794
        mmWidth = 1524
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
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3440
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
        mmLeft = 112977
        mmTop = 1323
        mmWidth = 10880
        BandType = 7
      end
      object zzkjs: TppDBCalc
        UserName = 'zzkjs'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Kdjs'
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
        mmLeft = 210704
        mmTop = 1323
        mmWidth = 8678
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
        mmLeft = 131647
        mmTop = 1323
        mmWidth = 7408
        BandType = 7
      end
      object pjjhl: TppLabel
        UserName = 'pjjhl'
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
        mmHeight = 2371
        mmLeft = 278618
        mmTop = 1323
        mmWidth = 3429
        BandType = 7
      end
      object sumzhjs: TppDBCalc
        UserName = 'sumzhjs'
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
        mmLeft = 188913
        mmTop = 1323
        mmWidth = 8467
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
        DataField = 'Bcjs'
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
        mmLeft = 195929
        mmTop = 1323
        mmWidth = 8594
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
        DataField = 'Bzjs'
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
        mmLeft = 216218
        mmTop = 1323
        mmWidth = 8509
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
        mmLeft = 181642
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
        mmLeft = 79513
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
        mmLeft = 3969
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
        mmLeft = 39952
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
        mmLeft = 124090
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
        mmLeft = 12700
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
        mmLeft = 205264
        mmTop = 1323
        mmWidth = 9440
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
        mmLeft = 97367
        mmTop = 6879
        mmWidth = 5821
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
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
        mmLeft = 79640
        mmTop = 6879
        mmWidth = 14139
        BandType = 7
      end
      object ppLine91: TppLine
        UserName = 'Line37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 78846
        mmTop = 5821
        mmWidth = 25929
        BandType = 7
      end
      object ppLine92: TppLine
        UserName = 'Line92'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 78846
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
        mmLeft = 275781
        mmTop = 1323
        mmWidth = 974
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12700
        mmWidth = 291650
        BandType = 7
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
          PrinterSetup.mmMarginLeft = 3350
          PrinterSetup.mmMarginRight = 2000
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '11.07'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 21960
            mmPrintPosition = 0
            object ppShape18: TppShape
              UserName = 'Shape18'
              mmHeight = 18256
              mmLeft = 3440
              mmTop = 3704
              mmWidth = 111919
              BandType = 1
            end
            object ppShape20: TppShape
              UserName = 'Shape20'
              Brush.Color = 10485759
              Pen.Style = psClear
              mmHeight = 12435
              mmLeft = 3704
              mmTop = 9260
              mmWidth = 111390
              BandType = 1
            end
            object ppShape19: TppShape
              UserName = 'Shape19'
              Brush.Color = 12050839
              Pen.Style = psClear
              mmHeight = 5292
              mmLeft = 3704
              mmTop = 3969
              mmWidth = 111390
              BandType = 1
            end
            object ppLabel114: TppLabel
              UserName = 'Label114'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #25976#38913#23433#25490' ('#24453#25490#25289')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 23019
              mmTop = 5292
              mmWidth = 75406
              BandType = 1
            end
            object ppLabel127: TppLabel
              UserName = 'Label127'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #24288' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 6302
              mmTop = 14023
              mmWidth = 3006
              BandType = 1
            end
            object ppLabel125: TppLabel
              UserName = 'Label125'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #23458#25142' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 14997
              mmTop = 14023
              mmWidth = 5461
              BandType = 1
            end
            object ppLabel129: TppLabel
              UserName = 'Label129'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #36650#21046#21934' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 28719
              mmTop = 14023
              mmWidth = 7916
              BandType = 1
            end
            object ppLabel130: TppLabel
              UserName = 'Label130'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #24288#35069#20316#38283#22987#26085#26399
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 24077
              mmTop = 17463
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel145: TppLabel
              UserName = 'Label145'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #25976#38913#20214#25976
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 41804
              mmTop = 14023
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel148: TppLabel
              UserName = 'Label148'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #26681#25818#36650#21046#21934#38626#24288#26085#26399#20998#37197#25976#38913#26126#32048
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 65352
              mmTop = 10054
              mmWidth = 37306
              BandType = 1
            end
            object ppLabel149: TppLabel
              UserName = 'Label149'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #21516#36913
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 59722
              mmTop = 15610
              mmWidth = 4911
              BandType = 1
            end
            object ppLabel157: TppLabel
              UserName = 'Label157'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #19979#36913
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 74009
              mmTop = 15610
              mmWidth = 4911
              BandType = 1
            end
            object ppLine97: TppLine
              UserName = 'Line97'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 3440
              mmTop = 8996
              mmWidth = 111919
              BandType = 1
            end
            object ppLine98: TppLine
              UserName = 'Line98'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12965
              mmLeft = 11377
              mmTop = 8995
              mmWidth = 3175
              BandType = 1
            end
            object ppLine99: TppLine
              UserName = 'Line99'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12965
              mmLeft = 23548
              mmTop = 8995
              mmWidth = 3175
              BandType = 1
            end
            object ppLine100: TppLine
              UserName = 'Line100'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12965
              mmLeft = 41275
              mmTop = 8995
              mmWidth = 3175
              BandType = 1
            end
            object ppLine101: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 12965
              mmLeft = 52917
              mmTop = 8995
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel162: TppLabel
              UserName = 'Label162'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #19979#19979
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 90678
              mmTop = 14023
              mmWidth = 4911
              BandType = 1
            end
            object ppLine102: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 52917
              mmTop = 14023
              mmWidth = 62442
              BandType = 1
            end
            object ppLabel163: TppLabel
              UserName = 'Label163'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #36913
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 91906
              mmTop = 17463
              mmWidth = 2455
              BandType = 1
            end
            object ppLabel166: TppLabel
              UserName = 'Label166'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #20854#23427
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2879
              mmLeft = 104568
              mmTop = 15610
              mmWidth = 4911
              BandType = 1
            end
            object ppLine103: TppLine
              UserName = 'Line103'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7938
              mmLeft = 68263
              mmTop = 14023
              mmWidth = 3175
              BandType = 1
            end
            object ppLine104: TppLine
              UserName = 'Line104'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7938
              mmLeft = 83608
              mmTop = 14023
              mmWidth = 3175
              BandType = 1
            end
            object ppLine105: TppLine
              UserName = 'Line105'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7938
              mmLeft = 99484
              mmTop = 14023
              mmWidth = 3175
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppShape17: TppShape
              UserName = 'Shape17'
              mmHeight = 5027
              mmLeft = 3440
              mmTop = 0
              mmWidth = 111919
              BandType = 4
            end
            object ppDBText53: TppDBText
              UserName = 'DBText53'
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
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 3969
              mmTop = 1323
              mmWidth = 3260
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText54'
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
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 12700
              mmTop = 1323
              mmWidth = 381
              BandType = 4
            end
            object ppDBText57: TppDBText
              UserName = 'DBText57'
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
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 48567
              mmTop = 1323
              mmWidth = 3556
              BandType = 4
            end
            object ppDBText55: TppDBText
              UserName = 'DBText55'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'FDT'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2381
              mmLeft = 30163
              mmTop = 1323
              mmWidth = 3440
              BandType = 4
            end
            object ppDBText56: TppDBText
              UserName = 'DBText56'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 59553
              mmTop = 1323
              mmWidth = 5800
              BandType = 4
            end
            object ppDBText58: TppDBText
              UserName = 'DBText58'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY2'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 73046
              mmTop = 1323
              mmWidth = 5800
              BandType = 4
            end
            object ppDBText59: TppDBText
              UserName = 'DBText59'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY3'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 89715
              mmTop = 1323
              mmWidth = 5800
              BandType = 4
            end
            object ppDBText60: TppDBText
              UserName = 'DBText60'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'RQTY4'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2498
              mmLeft = 104267
              mmTop = 1323
              mmWidth = 5800
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
              mmHeight = 4763
              mmLeft = 11377
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
              mmHeight = 4763
              mmLeft = 23548
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
              mmHeight = 4763
              mmLeft = 41275
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
              mmHeight = 4763
              mmLeft = 52917
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
              mmHeight = 4763
              mmLeft = 68263
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
              mmHeight = 4763
              mmLeft = 83608
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
              mmHeight = 4763
              mmLeft = 99484
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
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
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2455
              mmLeft = 43656
              mmTop = 529
              mmWidth = 8467
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
              DataField = 'RQTY1'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2455
              mmLeft = 54378
              mmTop = 529
              mmWidth = 10710
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
              DataField = 'RQTY2'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2455
              mmLeft = 68136
              mmTop = 529
              mmWidth = 10710
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
              DataField = 'RQTY3'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2455
              mmLeft = 84540
              mmTop = 529
              mmWidth = 10710
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
              DataField = 'RQTY4'
              DataPipeline = ppDBPipeline1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 2455
              mmLeft = 99357
              mmTop = 529
              mmWidth = 10710
              BandType = 7
            end
          end
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = frmprintschedule.DataSource3
    UserName = 'DBPipeline1'
    Left = 80
    Top = 8
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'TPLANT'
      FieldName = 'TPLANT'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CUST'
      FieldName = 'CUST'
      FieldLength = 80
      DisplayWidth = 80
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'YR'
      FieldName = 'YR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'MN'
      FieldName = 'MN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'FYR'
      FieldName = 'FYR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'FMN'
      FieldName = 'FMN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'SCQTY'
      FieldName = 'SCQTY'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
  end
end
