object frmdfgxly1: Tfrmdfgxly1
  Left = 256
  Top = 192
  Width = 185
  Height = 76
  Caption = 'frmdfgxly1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object DataSource1: TDataSource
    DataSet = zygx
    Left = 50
    Top = 8
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DataSource1
    UserName = 'BDEPipeline1'
    Left = 83
    Top = 8
    object ppBDEPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'seq'
      FieldName = 'seq'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'Kh'
      FieldName = 'Kh'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'Gch'
      FieldName = 'Gch'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'Spmc'
      FieldName = 'Spmc'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'Zb'
      FieldName = 'Zb'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'Zd'
      FieldName = 'Zd'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppBDEPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Gzxl'
      FieldName = 'Gzxl'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppBDEPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Mb'
      FieldName = 'Mb'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppBDEPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Mbxs'
      FieldName = 'Mbxs'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppBDEPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Zsl'
      FieldName = 'Zsl'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppBDEPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Wcqj'
      FieldName = 'Wcqj'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppBDEPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Zrs'
      FieldName = 'Zrs'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppBDEPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Zsj'
      FieldName = 'Zsj'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppBDEPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bzzsj'
      FieldName = 'Bzzsj'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppBDEPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sdz'
      FieldName = 'Sdz'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppBDEPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ssz'
      FieldName = 'Ssz'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppBDEPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ssb'
      FieldName = 'Ssb'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppBDEPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sjg'
      FieldName = 'Sjg'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppBDEPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sdc'
      FieldName = 'Sdc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppBDEPipeline1ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Srs'
      FieldName = 'Srs'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppBDEPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sqt'
      FieldName = 'Sqt'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppBDEPipeline1ppField22: TppField
      FieldAlias = 'Bz'
      FieldName = 'Bz'
      FieldLength = 255
      DisplayWidth = 255
      Position = 21
    end
    object ppBDEPipeline1ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Kyl'
      FieldName = 'Kyl'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppBDEPipeline1ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cs'
      FieldName = 'Cs'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppBDEPipeline1ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Seq_1'
      FieldName = 'Seq_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppBDEPipeline1ppField26: TppField
      FieldAlias = 'Kh_1'
      FieldName = 'Kh_1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 25
    end
    object ppBDEPipeline1ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Gxh'
      FieldName = 'Gxh'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppBDEPipeline1ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rid'
      FieldName = 'Rid'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppBDEPipeline1ppField29: TppField
      FieldAlias = 'Gxdh'
      FieldName = 'Gxdh'
      FieldLength = 6
      DisplayWidth = 6
      Position = 28
    end
    object ppBDEPipeline1ppField30: TppField
      FieldAlias = 'Gxm'
      FieldName = 'Gxm'
      FieldLength = 40
      DisplayWidth = 40
      Position = 29
    end
    object ppBDEPipeline1ppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sj'
      FieldName = 'Sj'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
    object ppBDEPipeline1ppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Dj'
      FieldName = 'Dj'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object ppBDEPipeline1ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'Scjs'
      FieldName = 'Scjs'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppBDEPipeline1ppField34: TppField
      FieldAlias = 'Yczl'
      FieldName = 'Yczl'
      FieldLength = 10
      DisplayWidth = 10
      Position = 33
    end
    object ppBDEPipeline1ppField35: TppField
      FieldAlias = 'Zh'
      FieldName = 'Zh'
      FieldLength = 10
      DisplayWidth = 10
      Position = 34
    end
    object ppBDEPipeline1ppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sxrs'
      FieldName = 'Sxrs'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object ppBDEPipeline1ppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'Dz'
      FieldName = 'Dz'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object ppBDEPipeline1ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sz'
      FieldName = 'Sz'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object ppBDEPipeline1ppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rz'
      FieldName = 'Rz'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object ppBDEPipeline1ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Snz'
      FieldName = 'Snz'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object ppBDEPipeline1ppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'Jg'
      FieldName = 'Jg'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object ppBDEPipeline1ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rs'
      FieldName = 'Rs'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object ppBDEPipeline1ppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qt'
      FieldName = 'Qt'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object ppBDEPipeline1ppField44: TppField
      FieldAlias = 'Mx'
      FieldName = 'Mx'
      FieldLength = 10
      DisplayWidth = 10
      Position = 43
    end
    object ppBDEPipeline1ppField45: TppField
      FieldAlias = 'Dx'
      FieldName = 'Dx'
      FieldLength = 10
      DisplayWidth = 10
      Position = 44
    end
    object ppBDEPipeline1ppField46: TppField
      FieldAlias = 'Yzjb'
      FieldName = 'Yzjb'
      FieldLength = 10
      DisplayWidth = 10
      Position = 45
    end
    object ppBDEPipeline1ppField47: TppField
      FieldAlias = 'Zj'
      FieldName = 'Zj'
      FieldLength = 6
      DisplayWidth = 6
      Position = 46
    end
    object ppBDEPipeline1ppField48: TppField
      FieldAlias = 'Zf'
      FieldName = 'Zf'
      FieldLength = 6
      DisplayWidth = 6
      Position = 47
    end
    object ppBDEPipeline1ppField49: TppField
      FieldAlias = 'Zkcc'
      FieldName = 'Zkcc'
      FieldLength = 6
      DisplayWidth = 6
      Position = 48
    end
    object ppBDEPipeline1ppField50: TppField
      FieldAlias = 'Cfyq'
      FieldName = 'Cfyq'
      FieldLength = 150
      DisplayWidth = 150
      Position = 49
    end
    object ppBDEPipeline1ppField51: TppField
      FieldAlias = 'Zb_1'
      FieldName = 'Zb_1'
      FieldLength = 2
      DisplayWidth = 2
      Position = 50
    end
    object ppBDEPipeline1ppField52: TppField
      FieldAlias = 'Egxm'
      FieldName = 'Egxm'
      FieldLength = 90
      DisplayWidth = 90
      Position = 51
    end
    object ppBDEPipeline1ppField53: TppField
      FieldAlias = 'Eyczl'
      FieldName = 'Eyczl'
      FieldLength = 15
      DisplayWidth = 15
      Position = 52
    end
    object ppBDEPipeline1ppField54: TppField
      FieldAlias = 'Ecfyq'
      FieldName = 'Ecfyq'
      FieldLength = 150
      DisplayWidth = 150
      Position = 53
    end
    object ppBDEPipeline1ppField55: TppField
      FieldAlias = 'Eyzjb'
      FieldName = 'Eyzjb'
      FieldLength = 10
      DisplayWidth = 10
      Position = 54
    end
    object ppBDEPipeline1ppField56: TppField
      FieldAlias = 'Yclj'
      FieldName = 'Yclj'
      FieldLength = 60
      DisplayWidth = 60
      Position = 55
    end
    object ppBDEPipeline1ppField57: TppField
      FieldAlias = 'Tgxm'
      FieldName = 'Tgxm'
      FieldLength = 90
      DisplayWidth = 90
      Position = 56
    end
    object ppBDEPipeline1ppField58: TppField
      FieldAlias = 'Tyczl'
      FieldName = 'Tyczl'
      FieldLength = 15
      DisplayWidth = 15
      Position = 57
    end
    object ppBDEPipeline1ppField59: TppField
      FieldAlias = 'Tcfyq'
      FieldName = 'Tcfyq'
      FieldLength = 50
      DisplayWidth = 50
      Position = 58
    end
    object ppBDEPipeline1ppField60: TppField
      FieldAlias = 'Tyzjb'
      FieldName = 'Tyzjb'
      FieldLength = 10
      DisplayWidth = 10
      Position = 59
    end
    object ppBDEPipeline1ppField61: TppField
      FieldAlias = 'Ycdh'
      FieldName = 'Ycdh'
      FieldLength = 6
      DisplayWidth = 6
      Position = 60
    end
    object ppBDEPipeline1ppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fyl'
      FieldName = 'Fyl'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 61
    end
    object ppBDEPipeline1ppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bzsj'
      FieldName = 'Bzsj'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 62
    end
    object ppBDEPipeline1ppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bzsj1'
      FieldName = 'Bzsj1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 63
    end
    object ppBDEPipeline1ppField65: TppField
      FieldAlias = 'Cw1'
      FieldName = 'Cw1'
      FieldLength = 5
      DisplayWidth = 5
      Position = 64
    end
    object ppBDEPipeline1ppField66: TppField
      FieldAlias = 'Cw2'
      FieldName = 'Cw2'
      FieldLength = 5
      DisplayWidth = 5
      Position = 65
    end
    object ppBDEPipeline1ppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'Jhl'
      FieldName = 'Jhl'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 66
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
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
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 115
    Top = 8
    Version = '7.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38365
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = #27803#24646#35069#34915#24288#24037#24207#34920
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 63500
        mmTop = 7673
        mmWidth = 45508
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #24037#31243#34399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 20638
        mmWidth = 10541
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'Gch'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 20638
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = #23458#25142#27454#34399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 50006
        mmTop = 20638
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'Zd'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 64294
        mmTop = 20638
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = #27454#34399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 81756
        mmTop = 20638
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'Kh'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 89694
        mmTop = 20638
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = #35069#34920#26085#26399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 20638
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 136525
        mmTop = 20638
        mmWidth = 14023
        BandType = 0
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        mmHeight = 11377
        mmLeft = 2117
        mmTop = 27252
        mmWidth = 186002
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = #32068#21029
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 5556
          mmTop = 33602
          mmWidth = 5673
          BandType = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          CharWrap = True
          AutoSize = False
          Caption = #24037#24207#24207#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 14288
          mmTop = 29897
          mmWidth = 6615
          BandType = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 11906
          mmTop = 27252
          mmWidth = 1588
          BandType = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          CharWrap = True
          AutoSize = False
          Caption = #24037#24207#20195#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 29898
          mmTop = 29897
          mmWidth = 6085
          BandType = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 25135
          mmTop = 27252
          mmWidth = 1058
          BandType = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 40746
          mmTop = 27517
          mmWidth = 1058
          BandType = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = #24037#24207#21517#31281
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 111919
          mmTop = 33602
          mmWidth = 11377
          BandType = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label101'
          CharWrap = True
          AutoSize = False
          Caption = #25171#39131#24037#24207
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8202
          mmLeft = 44715
          mmTop = 29897
          mmWidth = 6879
          BandType = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          ParentHeight = True
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11377
          mmLeft = 55298
          mmTop = 27252
          mmWidth = 529
          BandType = 0
        end
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppRegion2: TppRegion
        UserName = 'Region2'
        KeepTogether = True
        Stretch = True
        mmHeight = 6615
        mmLeft = 2117
        mmTop = 0
        mmWidth = 186002
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          AutoSize = True
          DataField = 'Zb_1'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3387
          mmLeft = 4498
          mmTop = 2381
          mmWidth = 5546
          BandType = 4
        end
        object ppLine24: TppLine
          UserName = 'Line24'
          ParentHeight = True
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 11906
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          ParentHeight = True
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 25135
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppLine26: TppLine
          UserName = 'Line26'
          ParentHeight = True
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 40746
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          AutoSize = True
          DataField = 'Gxh'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3387
          mmLeft = 15346
          mmTop = 2381
          mmWidth = 4530
          BandType = 4
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          AutoSize = True
          DataField = 'Gxdh'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3387
          mmLeft = 27781
          mmTop = 2381
          mmWidth = 5842
          BandType = 4
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          AutoSize = True
          DataField = 'Gxm'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3440
          mmLeft = 57415
          mmTop = 2646
          mmWidth = 5292
          BandType = 4
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          AutoSize = True
          DataField = 'Dfgx'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3387
          mmLeft = 43921
          mmTop = 2910
          mmWidth = 5419
          BandType = 4
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          ParentHeight = True
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 55298
          mmTop = 0
          mmWidth = 1588
          BandType = 4
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object zygx: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from ie_zygx a,ie_zygx1 b where a.kh=b.kh and a.kh='#39'422' +
      '80-2-0-SL'#39' order by a.kh,b.gxh'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    AfterOpen = zygxAfterOpen
    Left = 16
    Top = 8
  end
end
