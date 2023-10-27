object frmlbfx: Tfrmlbfx
  Left = 56
  Top = 35
  Width = 657
  Height = 516
  BorderIcons = [biSystemMenu]
  Caption = #25289#24067#35336#21123'----'#20998#26512#22577#21578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 17
    Top = 16
    Width = 52
    Height = 13
    Caption = #24037#31243#32232#34399
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 283
    Top = 16
    Width = 39
    Height = 13
    Caption = #21046#21934#25976
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 499
    Top = 16
    Width = 39
    Height = 13
    Caption = #22044#26550#25976
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 30
    Top = 48
    Width = 39
    Height = 13
    Caption = #23526#35009#25976
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 283
    Top = 48
    Width = 39
    Height = 13
    Caption = #23569#35009#25976
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 489
    Top = 48
    Width = 49
    Height = 13
    Caption = #30334#20998#27604'%'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object tc: TSpeedButton
    Left = 46
    Top = 448
    Width = 30
    Height = 30
    Hint = #36864#20986
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = tcClick
  end
  object dy: TSpeedButton
    Left = 16
    Top = 448
    Width = 30
    Height = 30
    Hint = #21015#21360
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = dyClick
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 14
    Width = 129
    Height = 21
    Color = 11927551
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 328
    Top = 14
    Width = 97
    Height = 21
    Color = 11927551
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 544
    Top = 14
    Width = 89
    Height = 21
    Color = 11927551
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 72
    Top = 46
    Width = 97
    Height = 21
    Color = 11927551
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 328
    Top = 46
    Width = 97
    Height = 21
    Color = 11927551
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 544
    Top = 46
    Width = 89
    Height = 21
    Color = 11927551
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 80
    Width = 617
    Height = 353
    Color = 11927551
    Flat = False
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    RowDetailPanel.Color = clBtnFace
    TabOrder = 6
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Xh'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24202#34399
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Zdh'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #21046#21934#34399
      end
      item
        EditButtons = <>
        FieldName = 'Cm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #23610#30908
      end
      item
        EditButtons = <>
        FieldName = 'Mjs'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22044#26550#25976
      end
      item
        EditButtons = <>
        FieldName = 'Scs'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #23526#35009#25976
      end
      item
        EditButtons = <>
        FieldName = 'Cs'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #23569#35009#25976
      end
      item
        EditButtons = <>
        FieldName = 'Percent'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #30334#20998#27604'%'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 312
    Top = 448
  end
  object Query2: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 340
    Top = 448
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 284
    Top = 448
    Version = '7.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = #35009#24202#37096'/'#22044#26550#37096'  '#25289#24067#20998#26512
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5556
        mmLeft = 66940
        mmTop = 1852
        mmWidth = 63236
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #24037#31243#32232#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 10583
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'Prjno'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 15610
        mmTop = 10583
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = #21046#21934#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 44979
        mmTop = 10583
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'scys'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 55827
        mmTop = 10583
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = #22044#26550#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 73819
        mmTop = 10583
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Mjs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 84667
        mmTop = 10583
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = #23526#35009#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 103452
        mmTop = 10583
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Scs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0 '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 114300
        mmTop = 10583
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = #23569#35009#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 130704
        mmTop = 10583
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Cs'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0 '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 10583
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = #23569#35009#30334#20998#27604
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 158221
        mmTop = 10583
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Percent'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.00 %'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 176213
        mmTop = 10583
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = #24202#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 5556
        mmTop = 17463
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = #21046#21934#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 32808
        mmTop = 17463
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = #23610#30908
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 64029
        mmTop = 17463
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = #22044#26550#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 92604
        mmTop = 17463
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = #23526#35009#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 117475
        mmTop = 17463
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = #23569#35009#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 139965
        mmTop = 17463
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = #23569#35009#30334#20998#27604
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 161661
        mmTop = 17463
        mmWidth = 17198
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 16669
        mmWidth = 189707
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 21696
        mmWidth = 189707
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'Xh'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'Zdh'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 33338
        mmTop = 0
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'Cm'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 65088
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Mjs_1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0 '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 96573
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Scs_1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0 '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 118004
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText102'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Cs_1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0 '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 143669
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText103'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'Percent_1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.00 %'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 165365
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 3969
        mmWidth = 189707
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DataSource1
    UserName = 'BDEPipeline1'
    Left = 256
    Top = 448
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'Prjno'
      FieldName = 'Prjno'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Zds'
      FieldName = 'Zds'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Mjs'
      FieldName = 'Mjs'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppBDEPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Scs'
      FieldName = 'Scs'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppBDEPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cs'
      FieldName = 'Cs'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppBDEPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Percent'
      FieldName = 'Percent'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'Prjno_1'
      FieldName = 'Prjno_1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppBDEPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Xh'
      FieldName = 'Xh'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'Zdh'
      FieldName = 'Zdh'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppBDEPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Id'
      FieldName = 'Id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'Cm'
      FieldName = 'Cm'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object ppBDEPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Zds_1'
      FieldName = 'Zds_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppBDEPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Mjs_1'
      FieldName = 'Mjs_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppBDEPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Scs_1'
      FieldName = 'Scs_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppBDEPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cs_1'
      FieldName = 'Cs_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppBDEPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Percent_1'
      FieldName = 'Percent_1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppBDEPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'scys'
      FieldName = 'scys'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
  end
  object Query3: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    SQL.Strings = (
      
        'select lbjh3.*,lbjh4.*,fcjy1.scys from fcjy1,lbjh3,lbjh4 where l' +
        'bjh4.prjno=lbjh3.prjno and lbjh3.prjno=fcjy1.prjno')
    Left = 200
    Top = 448
  end
  object DataSource1: TDataSource
    DataSet = Query3
    Left = 228
    Top = 448
  end
end
