object frmccl: Tfrmccl
  Left = 192
  Top = 114
  Caption = #19979#32218#20572#38931#31680#25976#20998#37197#34920' ('#29986#37327#25613#32791' - '#31361#30332#26178#38291#20803#32032')'
  ClientHeight = 290
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 24
    Top = 32
    Width = 18
    Height = 13
    Caption = '2a: '
  end
  object Label8: TLabel
    Left = 160
    Top = 32
    Width = 18
    Height = 13
    Caption = '2b: '
  end
  object Label9: TLabel
    Left = 296
    Top = 32
    Width = 18
    Height = 13
    Caption = '2c: '
  end
  object Label10: TLabel
    Left = 24
    Top = 64
    Width = 18
    Height = 13
    Caption = '2d: '
  end
  object Label11: TLabel
    Left = 160
    Top = 64
    Width = 18
    Height = 13
    Caption = '2e: '
  end
  object Label12: TLabel
    Left = 176
    Top = 5
    Width = 15
    Height = 13
    Caption = '2f: '
    Visible = False
  end
  object Label13: TLabel
    Left = 296
    Top = 64
    Width = 15
    Height = 13
    Caption = '2f: '
  end
  object Label14: TLabel
    Left = 432
    Top = 64
    Width = 18
    Height = 13
    Caption = '2g: '
  end
  object Bevel1: TBevel
    Left = 24
    Top = 99
    Width = 497
    Height = 126
  end
  object Label23: TLabel
    Left = 28
    Top = 108
    Width = 453
    Height = 13
    AutoSize = False
    Caption = '2a = '#24453#26009' - '#35009#21106#37096#20379#25033#35009#29255#25110#27169#26479#20013#26039
  end
  object Label24: TLabel
    Left = 28
    Top = 124
    Width = 453
    Height = 13
    AutoSize = False
    Caption = '2b = '#24453#26009' - '#20489#24235#20379#25033#21103#26009#20013#26039
  end
  object Label25: TLabel
    Left = 28
    Top = 140
    Width = 453
    Height = 13
    AutoSize = False
    Caption = '2c = '#24453#26009' - '#20379#25033#21830#19981#22914#26399#20132#36008
  end
  object Label26: TLabel
    Left = 28
    Top = 156
    Width = 453
    Height = 13
    AutoSize = False
    Caption = '2d = '#29983#29986#36039#26009#20986#37679
  end
  object Label27: TLabel
    Left = 312
    Top = 5
    Width = 337
    Height = 13
    AutoSize = False
    Caption = '2e =  '#20363#26371#21644#26089#26371
    Visible = False
  end
  object Label28: TLabel
    Left = 39
    Top = 245
    Width = 345
    Height = 13
    AutoSize = False
    Caption = '2f = '#26032#27454#38283#36008#21069#25351#23566#26371#35696
    Visible = False
  end
  object Label29: TLabel
    Left = 28
    Top = 188
    Width = 453
    Height = 13
    AutoSize = False
    Caption = '2f = '#21697#36074#21839#38988' - '#29289#26009' ('#21253#25324#35009#29255', '#27169#26479#21644#21103#26009') '#36074#37327#20986#37679
  end
  object Label30: TLabel
    Left = 28
    Top = 204
    Width = 453
    Height = 13
    AutoSize = False
    Caption = '2g = '#20854#23427
  end
  object Label1: TLabel
    Left = 28
    Top = 172
    Width = 453
    Height = 13
    AutoSize = False
    Caption = '2e = '#29305#27530#26371
  end
  object DBNumberEditEh1: TDBNumberEditEh
    Left = 40
    Top = 32
    Width = 73
    Height = 21
    DataField = 'A2'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object DBNumberEditEh2: TDBNumberEditEh
    Left = 176
    Top = 32
    Width = 73
    Height = 21
    DataField = 'B2'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 1
    Visible = True
  end
  object DBNumberEditEh3: TDBNumberEditEh
    Left = 312
    Top = 32
    Width = 73
    Height = 21
    DataField = 'C2'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 2
    Visible = True
  end
  object DBNumberEditEh4: TDBNumberEditEh
    Left = 40
    Top = 64
    Width = 73
    Height = 21
    DataField = 'D2'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 3
    Visible = True
  end
  object DBNumberEditEh5: TDBNumberEditEh
    Left = 176
    Top = 64
    Width = 73
    Height = 21
    DataField = 'cur_kh3'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 4
    Visible = True
  end
  object DBNumberEditEh6: TDBNumberEditEh
    Left = 192
    Top = 5
    Width = 73
    Height = 21
    DataField = 'F2'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 5
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 23
    Top = 240
    Width = 73
    Height = 25
    Caption = #20445#23384
    DoubleBuffered = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      2222200000000002222203300008030222220330000803000222033000000303
      0222033333333303000203300000330303020308888803030302030888880303
      0302030888880003030203088888080303020000000000000302220308888808
      0302220000000000000222220308888808022222000000000002}
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 95
    Top = 240
    Width = 73
    Height = 25
    Caption = #38928#35261
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 167
    Top = 240
    Width = 73
    Height = 25
    Caption = #36864#20986
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 8
  end
  object DBNumberEditEh7: TDBNumberEditEh
    Left = 312
    Top = 64
    Width = 73
    Height = 21
    DataField = 'G2'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 9
    Visible = True
  end
  object DBNumberEditEh8: TDBNumberEditEh
    Left = 448
    Top = 64
    Width = 73
    Height = 21
    DataField = 'H2'
    DataSource = frmcurrcal.DataSource1
    DisplayFormat = '0.00'
    EditButtons = <>
    TabOrder = 10
    Visible = True
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 210000
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
    Left = 255
    Top = 240
    Version = '11.07'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 171715
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 85990
        mmLeft = 19315
        mmTop = 78317
        mmWidth = 150813
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
        Caption = 'Consolidated 5 lost elements of Line on-hold time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 28046
        mmTop = 15875
        mmWidth = 124354
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2A: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 46567
        mmWidth = 6350
        BandType = 0
      end
      object a02: TppLabel
        UserName = 'a02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 46567
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2B: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 70379
        mmTop = 46567
        mmWidth = 6350
        BandType = 0
      end
      object b02: TppLabel
        UserName = 'b02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 46567
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2C: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 119063
        mmTop = 46567
        mmWidth = 6350
        BandType = 0
      end
      object c02: TppLabel
        UserName = 'c02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 128588
        mmTop = 46567
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2D: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 55563
        mmWidth = 6350
        BandType = 0
      end
      object d02: TppLabel
        UserName = 'd02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 55563
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2E: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 70379
        mmTop = 55563
        mmWidth = 6350
        BandType = 0
      end
      object e02: TppLabel
        UserName = 'e02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 55563
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2F: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 119063
        mmTop = 55563
        mmWidth = 6085
        BandType = 0
      end
      object f02: TppLabel
        UserName = 'f02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 128588
        mmTop = 55563
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2A= Cut-panels supply broken (incl molded cups) '#35009#29255#20379#25033#20013#26039' ('#21253#27169#26479')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 83344
        mmWidth = 135467
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2B= Accessories supply broken '#21103#26009#20379#25033#20013#26039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 93398
        mmWidth = 93398
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2C= Electricity supply is out of service '#38651#21147#20379#25033#26283#20572
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 103452
        mmWidth = 100806
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
        Caption = '2D= WO (Work Order) or QN (Qty Note) wrong information '#21046#21934#25110#25976#38913#36039#26009#20986#37679
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 113506
        mmWidth = 142346
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2E= General Meeting/Morning Meeting / '#20363#26371'/'#26089#26371
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 123561
        mmWidth = 119327
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2F= Fresh Style Operation Introduction Meeting / '#26032#27454#25351#23566#26371#35696
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 133879
        mmWidth = 119592
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 32279
        mmWidth = 13758
        BandType = 0
      end
      object tplant01: TppLabel
        UserName = 'tplant01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 34131
        mmTop = 32279
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 32279
        mmWidth = 17727
        BandType = 0
      end
      object tshop01: TppLabel
        UserName = 'tshop01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 32279
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99219
        mmTop = 32279
        mmWidth = 8467
        BandType = 0
      end
      object line01: TppLabel
        UserName = 'line01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 108744
        mmTop = 32279
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 32279
        mmWidth = 9260
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 142875
        mmTop = 32279
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2G: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 64294
        mmWidth = 6615
        BandType = 0
      end
      object g02: TppLabel
        UserName = 'g02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 64294
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2H: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 70379
        mmTop = 64294
        mmWidth = 6350
        BandType = 0
      end
      object h02: TppLabel
        UserName = 'h02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 64294
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2G= Special Meeting / '#29305#27530#24615#26371#35696
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 145257
        mmWidth = 111919
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2H= Others '#20854#23427
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 155575
        mmWidth = 42333
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 12965
        mmTop = 4233
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English')
    Language = 'Traditional Chinese'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields')
    Left = 431
    Top = 232
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00630063006C0001000B4EDA7D5C501398
      C07B786506524D916888200028002275CF910D64178020002D002000817A7C76
      426693954351207D290001004F00660066002D006C0069006E00650020005300
      65006300740069006F006E002000480072007300200026002000520065006100
      73006F006E007300200028004300550020004C006F0073007300200064007500
      6500200074006F00200075006E0066006F00720065007300650065006E002000
      740069006D006500200063006F006E00730075006D006500290001000D000A00
      4C006100620065006C0037000100320061003A002000010001000D000A004C00
      6100620065006C0038000100320062003A002000010001000D000A004C006100
      620065006C0039000100320063003A002000010001000D000A004C0061006200
      65006C00310030000100320064003A002000010001000D000A004C0061006200
      65006C00310031000100320065003A002000010001000D000A004C0061006200
      65006C00310032000100320066003A002000010001000D000A004C0061006200
      65006C00310033000100320066003A002000010001000D000A004C0061006200
      65006C00310034000100320067003A002000010001000D000A004C0061006200
      65006C003200330001003200610020003D002000855F996520002D002000C188
      7252E8909B4FC961C18847721662216A6F672D4EB76501003200610020003D00
      2000570061006900740069006E006700200066006F00720020006D0061007400
      27006C002C002000730075007300700065006E00730069006F006E0020006F00
      66002000740068006500200073007500700070006C00790020006F0066002000
      63007500740020007000690065006300650020006F0072002000660061006200
      72006900630020006D006F006C00640020006300750070002000660072006F00
      6D002000630075007400740069006E006700200064006500700074002E000100
      0D000A004C006100620065006C003200340001003200620020003D002000855F
      996520002D0020000950AB5E9B4FC9616F5299652D4EB7650100320062002000
      3D002000570061006900740069006E006700200066006F00720020006D006100
      740027006C002C002000730075007300700065006E00730069006F006E002000
      6F0066002000740068006500200073007500700070006C00790020006F006600
      20006100630063006500730073006F0072006900650073002000660072006F00
      6D002000770061007200650068006F007500730065002E0001000D000A004C00
      6100620065006C003200350001003200630020003D002000855F996520002D00
      20009B4FC96146550D4E82591F67A44EA88C01003200630020003D0020005700
      61006900740069006E006700200066006F00720020006D006100740027006C00
      2C00200073007500700070006C006900650072002000640065006C0061007900
      2000640065006C00690076006500720079002E0001000D000A004C0061006200
      65006C003200360001003200640020003D0020001F752275C78C9965FA512F93
      01003200640020003D00200048006F006C0064002000700072006F0064007500
      6300740069006F006E00200074006F00200063006C0061007200690066007900
      200074006800650020007300740079006C0065002000660069006C0065002700
      7300200069006E0066006F0072006D006100740069006F006E0001000D000A00
      4C006100620065006C003200370001003200650020003D00200020008B4F0367
      8C54E9650367010001000D000A004C006100620065006C003200380001003200
      660020003D002000B0653E6B8B95A88C4D5207630E5C0367708B010001000D00
      0A004C006100620065006C003200390001003200660020003D002000C154EA8C
      4F554C9820002D00200069729965200028000553EC62C18847722C002000216A
      6F678C546F52996529002000EA8CCF91FA512F9301003200660020003D002000
      4D006100740027006C0020007100750061006C00690074007900200069007300
      7300750065002C00200069006E0063006C007500730069007600650020006F00
      6600200063007500740020007000690065006300650073002C00200066006100
      620072006900630020006D006F006C0064002000630075007000200026002600
      20006100630063006500730073006F00720069006500730001000D000A004C00
      6100620065006C003300300001003200670020003D0020007651835B01003200
      670020003D0020004F007400680065007200730001000D000A00420069007400
      420074006E0031000100DD4F585B0100530061007600650001000D000A004200
      69007400420074006E00320001001098BD890100500072006500760069006500
      770001000D000A00420069007400420074006E00330001000090FA5101004500
      78006900740001000D000A00700070004C006100620065006C00310001004300
      6F006E0073006F006C006900640061007400650064002000350020006C006F00
      73007400200065006C0065006D0065006E007400730020006F00660020004C00
      69006E00650020006F006E002D0068006F006C0064002000740069006D006500
      010001000D000A00700070004C006100620065006C0032000100320041003A00
      2000010001000D000A00700070004C006100620065006C003300010032004200
      3A002000010001000D000A00700070004C006100620065006C00340001003200
      43003A002000010001000D000A00700070004C006100620065006C0035000100
      320044003A002000010001000D000A00700070004C006100620065006C003700
      0100320045003A002000010001000D000A00700070004C006100620065006C00
      39000100320046003A002000010001000D000A00700070004C00610062006500
      6C0036000100320041003D0020004300750074002D00700061006E0065006C00
      7300200073007500700070006C0079002000620072006F006B0065006E002000
      280069006E0063006C0020006D006F006C006400650064002000630075007000
      730029002000C18847729B4FC9612D4EB765200028000553216A6F6729000100
      01000D000A00700070004C006100620065006C0038000100320042003D002000
      4100630063006500730073006F00720069006500730020007300750070007000
      6C0079002000620072006F006B0065006E0020006F5299659B4FC9612D4EB765
      010001000D000A00700070004C006100620065006C0031003000010032004300
      3D00200045006C00650063007400720069006300690074007900200073007500
      700070006C00790020006900730020006F007500740020006F00660020007300
      6500720076006900630065002000FB969B529B4FC961AB665C50010001000D00
      0A00700070004C006100620065006C00310031000100320044003D0020005700
      4F002000280057006F0072006B0020004F007200640065007200290020006F00
      7200200051004E002000280051007400790020004E006F007400650029002000
      770072006F006E006700200069006E0066006F0072006D006100740069006F00
      6E0020003652AE55166278650198C78C9965FA512F93010001000D000A007000
      70004C006100620065006C00310032000100320045003D002000470065006E00
      6500720061006C0020004D0065006500740069006E0067002F004D006F007200
      6E0069006E00670020004D0065006500740069006E00670020002F0020008B4F
      03672F00E9650367010001000D000A00700070004C006100620065006C003100
      33000100320046003D0020004600720065007300680020005300740079006C00
      650020004F007000650072006100740069006F006E00200049006E0074007200
      6F00640075006300740069006F006E0020004D0065006500740069006E006700
      20002F002000B0653E6B07630E5C0367708B010001000D000A00700070004C00
      6100620065006C0031003400010046006100630074006F00720079003A002000
      010001000D000A00700070004C006100620065006C0031003500010057006F00
      72006B00730068006F0070003A002000010001000D000A00700070004C006100
      620065006C003100360001004C0069006E0065003A002000010001000D000A00
      700070004C006100620065006C0031003700010044006100740065003A002000
      010001000D000A00700070004C006100620065006C0031003800010032004700
      3A002000010001000D000A00700070004C006100620065006C00320030000100
      320048003A002000010001000D000A00700070004C006100620065006C003100
      39000100320047003D0020005300700065006300690061006C0020004D006500
      6500740069006E00670020002F00200079728A6B27600367708B010001000D00
      0A00700070004C006100620065006C00320031000100320048003D0020004F00
      7400680065007200730020007651835B010001000D000A004C00610062006500
      6C00310001003200650020003D00200079728A6B036701003200650020003D00
      200048006F006C0064002000700072006F00640075006300740069006F006E00
      200066006F00720020007300700065006300690061006C0020006D0065006500
      740069006E00670001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660072006D00630063006C0001004D0053002000530061006E00
      730020005300650072006900660001005400610068006F006D0061000D000A00
      700070004C006100620065006C003100010041007200690061006C0001005400
      610068006F006D0061000D000A00700070004C006100620065006C0032000100
      41007200690061006C0001005400610068006F006D0061000D000A0061003000
      3200010041007200690061006C0001005400610068006F006D0061000D000A00
      700070004C006100620065006C003300010041007200690061006C0001005400
      610068006F006D0061000D000A00620030003200010041007200690061006C00
      01005400610068006F006D0061000D000A00700070004C006100620065006C00
      3400010041007200690061006C0001005400610068006F006D0061000D000A00
      630030003200010041007200690061006C0001005400610068006F006D006100
      0D000A00700070004C006100620065006C003500010041007200690061006C00
      01005400610068006F006D0061000D000A006400300032000100410072006900
      61006C0001005400610068006F006D0061000D000A00700070004C0061006200
      65006C003700010041007200690061006C0001005400610068006F006D006100
      0D000A00650030003200010041007200690061006C0001005400610068006F00
      6D0061000D000A00700070004C006100620065006C0039000100410072006900
      61006C0001005400610068006F006D0061000D000A0066003000320001004100
      7200690061006C0001005400610068006F006D0061000D000A00700070004C00
      6100620065006C003600010041007200690061006C0001005400610068006F00
      6D0061000D000A00700070004C006100620065006C0038000100410072006900
      61006C0001005400610068006F006D0061000D000A00700070004C0061006200
      65006C0031003000010041007200690061006C0001005400610068006F006D00
      61000D000A00700070004C006100620065006C00310031000100410072006900
      61006C0001005400610068006F006D0061000D000A00700070004C0061006200
      65006C0031003200010041007200690061006C0001005400610068006F006D00
      61000D000A00700070004C006100620065006C00310033000100410072006900
      61006C0001005400610068006F006D0061000D000A00700070004C0061006200
      65006C0031003400010041007200690061006C0001005400610068006F006D00
      61000D000A00740070006C0061006E0074003000310001004100720069006100
      6C0001005400610068006F006D0061000D000A00700070004C00610062006500
      6C0031003500010041007200690061006C0001005400610068006F006D006100
      0D000A007400730068006F00700030003100010041007200690061006C000100
      5400610068006F006D0061000D000A00700070004C006100620065006C003100
      3600010041007200690061006C0001005400610068006F006D0061000D000A00
      6C0069006E00650030003100010041007200690061006C000100540061006800
      6F006D0061000D000A00700070004C006100620065006C003100370001004100
      7200690061006C0001005400610068006F006D0061000D000A00640074003000
      3100010041007200690061006C0001005400610068006F006D0061000D000A00
      700070004C006100620065006C0031003800010041007200690061006C000100
      5400610068006F006D0061000D000A0067003000320001004100720069006100
      6C0001005400610068006F006D0061000D000A00700070004C00610062006500
      6C0032003000010041007200690061006C0001005400610068006F006D006100
      0D000A00680030003200010041007200690061006C0001005400610068006F00
      6D0061000D000A00700070004C006100620065006C0031003900010041007200
      690061006C0001005400610068006F006D0061000D000A00700070004C006100
      620065006C0032003100010041007200690061006C0001005400610068006F00
      6D0061000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A007300740044006C0067007300
      430061007000740069006F006E0073005F0055006E00690063006F0064006500
      0D000A005700610072006E0069006E00670001005700610072006E0069006E00
      6700010001000D000A004500720072006F00720001004500720072006F007200
      010001000D000A0049006E0066006F0072006D006100740069006F006E000100
      49006E0066006F0072006D006100740069006F006E00010001000D000A004300
      6F006E006600690072006D00010043006F006E006600690072006D0001000100
      0D000A0059006500730001002600590065007300010001000D000A004E006F00
      010026004E006F00010001000D000A004F004B0001004F004B00010001000D00
      0A00430061006E00630065006C000100430061006E00630065006C0001000100
      0D000A00410062006F007200740001002600410062006F007200740001000100
      0D000A0052006500740072007900010026005200650074007200790001000100
      0D000A00490067006E006F007200650001002600490067006E006F0072006500
      010001000D000A0041006C006C000100260041006C006C00010001000D000A00
      4E006F00200054006F00200041006C006C0001004E0026006F00200074006F00
      200041006C006C00010001000D000A00590065007300200054006F0020004100
      6C006C000100590065007300200074006F002000260041006C006C0001000100
      0D000A00480065006C00700001002600480065006C007000010001000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00440042004E0075006D00
      62006500720045006400690074004500680031002E0044006100740061004600
      690065006C00640001004100320001000D000A00440042004E0075006D006200
      6500720045006400690074004500680032002E00440061007400610046006900
      65006C00640001004200320001000D000A00440042004E0075006D0062006500
      720045006400690074004500680033002E004400610074006100460069006500
      6C00640001004300320001000D000A00440042004E0075006D00620065007200
      45006400690074004500680034002E0044006100740061004600690065006C00
      640001004400320001000D000A00440042004E0075006D006200650072004500
      6400690074004500680035002E0044006100740061004600690065006C006400
      01006300750072005F006B006800330001000D000A00440042004E0075006D00
      62006500720045006400690074004500680036002E0044006100740061004600
      690065006C00640001004600320001000D000A00440042004E0075006D006200
      6500720045006400690074004500680037002E00440061007400610046006900
      65006C00640001004700320001000D000A00440042004E0075006D0062006500
      720045006400690074004500680038002E004400610074006100460069006500
      6C00640001004800320001000D000A00700070005200650070006F0072007400
      31002E0044006500760069006300650054007900700065000100530063007200
      650065006E0001000D000A00700070005300680061007000650031002E005500
      7300650072004E0061006D006500010053006800610070006500310001000D00
      0A00700070004C006100620065006C0031002E0055007300650072004E006100
      6D00650001004C006100620065006C00310001000D000A00700070004C006100
      620065006C0032002E0055007300650072004E0061006D00650001004C006100
      620065006C00320001000D000A006100300032002E0055007300650072004E00
      61006D006500010061003000320001000D000A00700070004C00610062006500
      6C0033002E0055007300650072004E0061006D00650001004C00610062006500
      6C00330001000D000A006200300032002E0055007300650072004E0061006D00
      6500010062003000320001000D000A00700070004C006100620065006C003400
      2E0055007300650072004E0061006D00650001004C006100620065006C003400
      01000D000A006300300032002E0055007300650072004E0061006D0065000100
      63003000320001000D000A00700070004C006100620065006C0035002E005500
      7300650072004E0061006D00650001004C006100620065006C00350001000D00
      0A006400300032002E0055007300650072004E0061006D006500010064003000
      320001000D000A00700070004C006100620065006C0037002E00550073006500
      72004E0061006D00650001004C006100620065006C00370001000D000A006500
      300032002E0055007300650072004E0061006D00650001006500300032000100
      0D000A00700070004C006100620065006C0039002E0055007300650072004E00
      61006D00650001004C006100620065006C00390001000D000A00660030003200
      2E0055007300650072004E0061006D006500010066003000320001000D000A00
      700070004C006100620065006C0036002E0055007300650072004E0061006D00
      650001004C006100620065006C00360001000D000A00700070004C0061006200
      65006C0038002E0055007300650072004E0061006D00650001004C0061006200
      65006C00380001000D000A00700070004C006100620065006C00310030002E00
      55007300650072004E0061006D00650001004C006100620065006C0031003000
      01000D000A00700070004C006100620065006C00310031002E00550073006500
      72004E0061006D00650001004C006100620065006C003100310001000D000A00
      700070004C006100620065006C00310032002E0055007300650072004E006100
      6D00650001004C006100620065006C003100320001000D000A00700070004C00
      6100620065006C00310033002E0055007300650072004E0061006D0065000100
      4C006100620065006C003100330001000D000A00700070004C00610062006500
      6C00310034002E0055007300650072004E0061006D00650001004C0061006200
      65006C003100340001000D000A00740070006C0061006E007400300031002E00
      55007300650072004E0061006D0065000100740070006C0061006E0074003000
      310001000D000A00700070004C006100620065006C00310035002E0055007300
      650072004E0061006D00650001004C006100620065006C003100350001000D00
      0A007400730068006F007000300031002E0055007300650072004E0061006D00
      650001007400730068006F0070003000310001000D000A00700070004C006100
      620065006C00310036002E0055007300650072004E0061006D00650001004C00
      6100620065006C003100360001000D000A006C0069006E006500300031002E00
      55007300650072004E0061006D00650001006C0069006E006500300031000100
      0D000A00700070004C006100620065006C00310037002E005500730065007200
      4E0061006D00650001004C006100620065006C003100370001000D000A006400
      7400300031002E0055007300650072004E0061006D0065000100640074003000
      310001000D000A00700070004C006100620065006C00310038002E0055007300
      650072004E0061006D00650001004C006100620065006C003100380001000D00
      0A006700300032002E0055007300650072004E0061006D006500010067003000
      320001000D000A00700070004C006100620065006C00320030002E0055007300
      650072004E0061006D00650001004C006100620065006C003200300001000D00
      0A006800300032002E0055007300650072004E0061006D006500010068003000
      320001000D000A00700070004C006100620065006C00310039002E0055007300
      650072004E0061006D00650001004C006100620065006C003100390001000D00
      0A00700070004C006100620065006C00320031002E0055007300650072004E00
      61006D00650001004C006100620065006C003200310001000D000A0070007000
      4C0069006E00650031002E0055007300650072004E0061006D00650001004C00
      69006E006500310001000D000A00730074004C006F00630061006C0065007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400660072006D00630063006C000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0070007000
      4C006100620065006C0031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00700070004C006100620065006C003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A006100300032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00700070004C006100620065006C0033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A006200300032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00700070004C006100620065006C00340001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      6300300032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00700070004C006100620065006C003500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006400
      300032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00700070004C006100620065006C0037000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0065003000
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00700070004C006100620065006C00390001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00660030003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00700070004C006100620065006C003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00700070004C006100
      620065006C0038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00700070004C006100620065006C00310030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00700070004C006100620065006C0031003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00700070004C006100
      620065006C00310032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00700070004C006100620065006C0031003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00700070004C006100620065006C003100340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00740070006C00
      61006E007400300031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00700070004C006100620065006C0031003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A007400730068006F007000300031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00700070004C0061006200
      65006C00310036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A006C0069006E006500300031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0070007000
      4C006100620065006C00310037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A006400740030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A007000
      70004C006100620065006C00310038000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00670030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A007000
      70004C006100620065006C00320030000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00680030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A007000
      70004C006100620065006C00310039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00700070004C00610062006500
      6C00320031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00}
  end
end
