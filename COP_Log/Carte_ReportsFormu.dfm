object frmCarte_Reports: TfrmCarte_Reports
  Left = 0
  Top = 0
  Caption = #38928#35261
  ClientHeight = 476
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = CHINESEBIG5_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzBackground1: TRzBackground
    Left = 0
    Top = 0
    Width = 476
    Height = 476
    Active = True
    Align = alClient
    GradientColorStart = 14216405
    GradientColorStop = 16776176
    GradientDirection = gdVerticalEnd
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
    ExplicitLeft = -8
    ExplicitTop = 8
    ExplicitWidth = 420
    ExplicitHeight = 387
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 430
    Width = 81
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
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 430
    Width = 81
    Height = 25
    Caption = #36864#20986
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 153
    Width = 409
    Height = 128
    TabOrder = 2
    object chk1: TCheckBox
      Left = 437
      Top = 49
      Width = 60
      Height = 17
      Caption = '1c - '#23565#22806
      TabOrder = 0
      Visible = False
      OnClick = chk1Click
    end
    object chk3: TCheckBox
      Left = 437
      Top = 36
      Width = 65
      Height = 17
      Caption = '1b - '#23565#24288
      TabOrder = 1
      Visible = False
      OnClick = chk3Click
    end
    object chk2: TCheckBox
      Left = 439
      Top = 72
      Width = 135
      Height = 17
      Caption = '2 - '#23565#22806' ('#21547#20839#37096#36039#26009')'
      TabOrder = 2
      Visible = False
      OnClick = chk2Click
    end
    object chk4: TCheckBox
      Left = 439
      Top = 13
      Width = 137
      Height = 17
      Caption = '1a - '#20840#39636' ('#23565#22806#21450#23565#24288')'
      Checked = True
      State = cbChecked
      TabOrder = 3
      Visible = False
      OnClick = chk4Click
    end
    object CheckBox13: TCheckBox
      Left = 223
      Top = 11
      Width = 183
      Height = 17
      Caption = 'Report 3.2 - '#38598#39636#34892#21205#35468
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 11
      Width = 193
      Height = 17
      Caption = 'Report 3.1 - '#20491#21029#34892#21205#35468
      TabOrder = 5
    end
    object CheckBox8: TCheckBox
      Left = 16
      Top = 34
      Width = 377
      Height = 17
      Caption = 'Report 3.3 - '#29289#26009#36319#36914#34892#21205#35468'('#36861#26009#25110#35036#26009')'
      Enabled = False
      TabOrder = 6
    end
    object CheckBox12: TCheckBox
      Left = 16
      Top = 57
      Width = 377
      Height = 17
      Caption = 'Report 3.4 - '#35519#25972#26178#38480#34892#21205#35468
      Enabled = False
      TabOrder = 7
    end
    object CheckBox11: TCheckBox
      Left = 16
      Top = 80
      Width = 369
      Height = 17
      Caption = 'Report 3.5 - '#37197#21512#30452#25509#24615'('#32299#21512')'#29983#29986#34892#21205#35468
      Enabled = False
      TabOrder = 8
    end
  end
  object CheckBox3: TCheckBox
    Left = 100
    Top = 256
    Width = 227
    Height = 17
    Caption = #21253#25324#24050#23436#25104#20043#26085#35468
    TabOrder = 3
  end
  object CheckBox4: TCheckBox
    Left = 32
    Top = 121
    Width = 294
    Height = 17
    Caption = 'Report 2 - Sewing Facility Arrangement'
    TabOrder = 4
  end
  object CheckBox5: TCheckBox
    Left = 32
    Top = 295
    Width = 295
    Height = 17
    Caption = 'Report 4 - Weekly quality examination && logistics flow mgt'
    TabOrder = 5
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 19
    Width = 409
    Height = 86
    TabOrder = 6
    object CheckBox1: TCheckBox
      Left = 16
      Top = 10
      Width = 361
      Height = 17
      Caption = 'Report 1.1 - Time Management'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox6: TCheckBox
      Left = 16
      Top = 57
      Width = 332
      Height = 17
      Caption = 
        'Report 1.3 - Initial stage of shipment on time factors determina' +
        'nt'
      TabOrder = 1
      OnClick = CheckBox6Click
    end
    object CheckBox7: TCheckBox
      Left = 34
      Top = 83
      Width = 89
      Height = 17
      Caption = #38917#30446#39006#26126#32048#34920
      Enabled = False
      TabOrder = 2
      Visible = False
      OnClick = CheckBox1Click
    end
    object CheckBox10: TCheckBox
      Left = 16
      Top = 33
      Width = 377
      Height = 17
      Caption = 'Report 1.2 - Time Management - '#36865#20633#29992#26009#26399'('#21407#26448#26009'/'#37197#22871#26009')'
      TabOrder = 3
      OnClick = CheckBox10Click
    end
  end
  object CheckBox9: TCheckBox
    Left = 24
    Top = -4
    Width = 345
    Height = 17
    Caption = 
      'Report 4 - Gmts Single or Partial Shpt details report by project' +
      ' (Halt)'
    Enabled = False
    TabOrder = 7
    Visible = False
  end
  object GroupBox3: TGroupBox
    Left = 32
    Top = 326
    Width = 409
    Height = 86
    TabOrder = 8
    object CheckBox15: TCheckBox
      Left = 351
      Top = 88
      Width = 135
      Height = 17
      Caption = '2 - '#23565#22806' ('#21547#20839#37096#36039#26009')'
      TabOrder = 0
      Visible = False
      OnClick = chk2Click
    end
    object CheckBox17: TCheckBox
      Left = 16
      Top = 11
      Width = 361
      Height = 17
      Caption = 'Report 5.1 - '#37559#21806#21934#21547#21046#21934#25976#21450#20854#25976#37327#20308#29992#29575
      TabOrder = 1
    end
    object CheckBox18: TCheckBox
      Left = 16
      Top = 34
      Width = 369
      Height = 17
      Caption = 'Report 5.2 - '#21046#21934#21547#37559#21806#21934#25976#21450#20854#25976#37327#20308#29992#29575
      TabOrder = 2
    end
    object CheckBox19: TCheckBox
      Left = 16
      Top = 57
      Width = 387
      Height = 17
      Caption = 
        'Report 5.3 - WO Qty distribution of PVH'#39's DS/CPO (US, CA && HK r' +
        'egion only)'
      TabOrder = 3
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'exec sp_carte_genchaseitems 2'
    CommandTimeout = 300
    Parameters = <>
    Left = 72
    Top = 65520
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 120
    Top = 65520
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 208
    Top = 65528
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
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 248
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 19315
        mmLeft = 794
        mmTop = 17992
        mmWidth = 282840
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 10485759
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 233363
        mmTop = 18256
        mmWidth = 50006
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 159809
        mmTop = 18256
        mmWidth = 73819
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 1058
        mmTop = 18256
        mmWidth = 46038
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 10485759
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 46831
        mmTop = 18256
        mmWidth = 112977
        BandType = 0
      end
      object ppRichText1: TppRichText
        UserName = 'RichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RichText1'
        RichText = 
          '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
          '\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}}'#13#10'{\colortbl ;\red0\' +
          'green0\blue0;}'#13#10'\viewkind4\uc1\pard\qc\cf1\lang1028\fs12 Central' +
          ' Order Processing - \'#39'aa\'#39'ab\'#39'ae\'#39'c6\'#39'b8\'#39'f2\'#39'b6i\'#39'a6\'#39'e6\'#39'b0\'#39'c' +
          'a\'#39'bbx\'#39'a9\'#39'fa\'#39'b2\'#39'd3\'#39'aa\'#39'ed (\'#39'b0l\'#39'ae\'#39'c6\'#39'a9\'#39'ce\'#39'b8\'#39'c9\'#39'a' +
          'e\'#39'c6)\f1\par'#13#10'}'#13#10#0
        Transparent = True
        mmHeight = 6085
        mmLeft = 16404
        mmTop = 6350
        mmWidth = 247650
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29289#26009#22522#26412#36039#26009' ('#20027#35201#30001'POPC/UPI'#25578#25976#25818')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 55827
        mmTop = 19844
        mmWidth = 89694
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 23548
        mmWidth = 282840
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29289#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 49213
        mmTop = 27781
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29289#26009#32232#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 60325
        mmTop = 30163
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25505#36092#21934
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 76729
        mmTop = 26723
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#33509#26377')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 77523
        mmTop = 33602
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20379#25033#21830
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 87577
        mmTop = 27781
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32232#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 88636
        mmTop = 31485
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38991#33394
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 100542
        mmTop = 24871
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25104#21697
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 97102
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29289#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 103717
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24050#25910
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 122238
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 124619
        mmTop = 24871
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25152#38656
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 112184
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32317#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 122238
        mmTop = 33867
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32317#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 112184
        mmTop = 33867
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #39192#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 132027
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36861#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 154252
        mmTop = 24871
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  (R) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 154252
        mmTop = 33602
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35036#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 154252
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34892#21205#35468
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 2117
        mmTop = 19844
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30332#20449#32773
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 10848
        mmTop = 30163
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30332#20449
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 22754
        mmTop = 27781
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 22754
        mmTop = 31485
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23436#25104
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 30163
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30446#27161
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 30163
        mmTop = 26723
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 30163
        mmTop = 33602
        mmWidth = 4233
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
        mmHeight = 19315
        mmLeft = 159809
        mmTop = 17992
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25910#26009#27425#25976#26126#32048#34920
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 162719
        mmTop = 19844
        mmWidth = 67998
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
        mmHeight = 19315
        mmLeft = 233363
        mmTop = 17992
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27492#29289#26009#24433#38911#20043#30456#38364#35468#34399#22522#26412#36039#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 236009
        mmTop = 19844
        mmWidth = 45244
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21934#20301
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 140229
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#23450'*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 160602
        mmTop = 30163
        mmWidth = 5038
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450'/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 160602
        mmTop = 26723
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27425#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 160602
        mmTop = 33602
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35336#21123#25910#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 172773
        mmTop = 24871
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23436#25104
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 278078
        mmTop = 27781
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#65311'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 278078
        mmTop = 31485
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25152#38656
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 270140
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27492#35468
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 270140
        mmTop = 26723
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 270140
        mmTop = 33602
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 252148
        mmTop = 24871
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450'/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 252678
        mmTop = 30163
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#23450'*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 252678
        mmTop = 33867
        mmWidth = 5038
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23433#25490
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 261144
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(PDN)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 260615
        mmTop = 33867
        mmWidth = 5884
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35468#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 244211
        mmTop = 27781
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 239184
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 234686
        mmTop = 30163
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35468
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 234686
        mmTop = 26723
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 234686
        mmTop = 33602
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21015
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 239184
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 173038
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 167217
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21015
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 167217
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 183621
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 205052
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 194205
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 226484
        mmTop = 30163
        mmWidth = 4233
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
        mmHeight = 13758
        mmLeft = 55033
        mmTop = 23548
        mmWidth = 1323
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
        mmHeight = 13758
        mmLeft = 74613
        mmTop = 23548
        mmWidth = 1323
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
        mmHeight = 13758
        mmLeft = 84931
        mmTop = 23548
        mmWidth = 1323
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
        mmHeight = 13758
        mmLeft = 96044
        mmTop = 23548
        mmWidth = 1323
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
        mmHeight = 13758
        mmLeft = 108744
        mmTop = 23548
        mmWidth = 1323
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
        mmHeight = 9525
        mmLeft = 139171
        mmTop = 27781
        mmWidth = 1323
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
        mmHeight = 13758
        mmLeft = 153723
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 96044
        mmTop = 27781
        mmWidth = 49477
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
        mmHeight = 13758
        mmLeft = 166159
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 170127
        mmTop = 27781
        mmWidth = 63236
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
        mmHeight = 13758
        mmLeft = 238125
        mmTop = 23548
        mmWidth = 1323
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
        mmHeight = 13758
        mmLeft = 242094
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 250561
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 277019
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 267230
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 223573
        mmTop = 27781
        mmWidth = 1323
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 250561
        mmTop = 27781
        mmWidth = 16669
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 258763
        mmTop = 27781
        mmWidth = 1323
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 102659
        mmTop = 27781
        mmWidth = 1323
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 119063
        mmTop = 27781
        mmWidth = 529
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 129117
        mmTop = 27781
        mmWidth = 1058
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 170127
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 180182
        mmTop = 27781
        mmWidth = 1323
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 191559
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 201613
        mmTop = 27781
        mmWidth = 1323
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 212990
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 207698
        mmTop = 14552
        mmWidth = 11388
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
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 220398
        mmTop = 14552
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 251884
        mmTop = 14552
        mmWidth = 6085
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 259821
        mmTop = 14552
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27492#32232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 41804
        mmTop = 26723
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' (C) / '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 154252
        mmTop = 27781
        mmWidth = 5334
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21934#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 77523
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 41275
        mmTop = 23548
        mmWidth = 1323
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
        mmHeight = 13758
        mmLeft = 8467
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34399#31278
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 41804
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #39006#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 41804
        mmTop = 33602
        mmWidth = 4233
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
        mmHeight = 19315
        mmLeft = 46831
        mmTop = 17992
        mmWidth = 1323
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
        mmHeight = 13758
        mmLeft = 21167
        mmTop = 23548
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
        mmHeight = 13758
        mmLeft = 28575
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31278#39006
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 49213
        mmTop = 31485
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29289#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 2646
        mmTop = 26723
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34892#21205
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 2646
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label702'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35468#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 2646
        mmTop = 33602
        mmWidth = 4233
        BandType = 0
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 145521
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29289#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 147373
        mmTop = 26723
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25152#38656
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 147373
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26178#38480
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 147373
        mmTop = 33602
        mmWidth = 4233
        BandType = 0
      end
      object title6001: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CARTE '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 252678
        mmTop = 1588
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#25142#34399': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 240507
        mmTop = 1588
        mmWidth = 11430
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
        mmHeight = 13758
        mmLeft = 35454
        mmTop = 23548
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22522#22320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 36248
        mmTop = 31485
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29983#29986
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 36248
        mmTop = 27781
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23526#38555#25910#26009
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 194469
        mmTop = 24871
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24046#30064'('#35336#21123' vs '#23526#38555')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 213784
        mmTop = 24871
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22825#25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 216165
        mmTop = 30163
        mmWidth = 4233
        BandType = 0
      end
      object subtitle6001: TppLabel
        UserName = 'subtitle6001'
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
        mmLeft = 91546
        mmTop = 13494
        mmWidth = 97631
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 159809
        mmTop = 0
        mmWidth = 123825
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_des'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 47361
        mmTop = 1323
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_code'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 55827
        mmTop = 1323
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_po'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 75406
        mmTop = 1323
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_vndr'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 85725
        mmTop = 1323
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_scolor'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 97102
        mmTop = 1323
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_icolor'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 103717
        mmTop = 1323
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_tqty'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 109802
        mmTop = 1323
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_rqty'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 120121
        mmTop = 1323
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_bqty'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 129911
        mmTop = 1323
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_unit'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 140229
        mmTop = 1323
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_cr'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 154517
        mmTop = 1323
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_rcnt'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 160602
        mmTop = 1323
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'kc_cnt'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 234421
        mmTop = 1323
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'kc_r1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 238919
        mmTop = 1323
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'kc_r1_keycode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 242888
        mmTop = 1323
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'kc_r1_act_cmpdt'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 259821
        mmTop = 1323
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'kc_r1_qty'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 268023
        mmTop = 1323
        mmWidth = 8467
        BandType = 4
      end
      object wc001: TppLabel
        UserName = 'wc001'
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
        mmHeight = 2498
        mmLeft = 277813
        mmTop = 1323
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_r1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 167217
        mmTop = 1323
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_r1dt_jh'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 171980
        mmTop = 1323
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_r1qty_jh'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 181769
        mmTop = 1323
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_r1qty'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 203200
        mmTop = 1323
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_r1dt'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 193411
        mmTop = 1323
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_qty_diff'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 224367
        mmTop = 1323
        mmWidth = 7938
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
        mmHeight = 5027
        mmLeft = 233363
        mmTop = 0
        mmWidth = 794
        BandType = 4
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
        mmLeft = 238125
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 242094
        mmTop = 0
        mmWidth = 794
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
        mmHeight = 5027
        mmLeft = 250561
        mmTop = 0
        mmWidth = 794
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
        mmHeight = 5027
        mmLeft = 258763
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 267230
        mmTop = 0
        mmWidth = 794
        BandType = 4
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
        mmLeft = 277019
        mmTop = 0
        mmWidth = 794
        BandType = 4
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
        mmLeft = 223573
        mmTop = 0
        mmWidth = 794
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
        mmHeight = 5027
        mmLeft = 212990
        mmTop = 0
        mmWidth = 794
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
        mmHeight = 5027
        mmLeft = 201613
        mmTop = 0
        mmWidth = 794
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
        mmHeight = 5027
        mmLeft = 191559
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 180182
        mmTop = 0
        mmWidth = 794
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
        mmHeight = 5027
        mmLeft = 170127
        mmTop = 0
        mmWidth = 794
        BandType = 4
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
        mmLeft = 166159
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 794
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'act_issue31'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 8996
        mmTop = 1323
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'act_start31'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 21167
        mmTop = 1323
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'act_cmpdt31'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 28575
        mmTop = 1323
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'seqno'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 6879
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
        mmHeight = 5027
        mmLeft = 46831
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_dt'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 146844
        mmTop = 1323
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'prod_site'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 35983
        mmTop = 1323
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_dt_diff'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 213784
        mmTop = 1323
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'kc_r1_exor'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 251355
        mmTop = 1323
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'kc_or'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 257440
        mmTop = 1323
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'item_count'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ResetGroup = ppGroup2
        SuppressRepeatedValues = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 41540
        mmTop = 1323
        mmWidth = 4233
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL:- '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 2117
        mmTop = 794
        mmWidth = 5715
        BandType = 7
      end
      object seqno001: TppLabel
        UserName = 'seqno001'
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
        mmHeight = 2498
        mmLeft = 1323
        mmTop = 4498
        mmWidth = 6879
        BandType = 7
      end
      object issue001: TppLabel
        UserName = 'issue001'
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
        mmLeft = 10848
        mmTop = 4498
        mmWidth = 6879
        BandType = 7
      end
      object site001: TppLabel
        UserName = 'site001'
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
        mmLeft = 35983
        mmTop = 4498
        mmWidth = 4498
        BandType = 7
      end
      object des001: TppLabel
        UserName = 'des001'
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
        mmLeft = 47361
        mmTop = 4498
        mmWidth = 7144
        BandType = 7
      end
      object item001: TppLabel
        UserName = 'item001'
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
        mmLeft = 60325
        mmTop = 4498
        mmWidth = 8467
        BandType = 7
      end
      object vndr001: TppLabel
        UserName = 'vndr001'
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
        mmLeft = 87577
        mmTop = 4498
        mmWidth = 6350
        BandType = 7
      end
      object scolor001: TppLabel
        UserName = 'scolor001'
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
        mmLeft = 96573
        mmTop = 4498
        mmWidth = 5556
        BandType = 7
      end
      object icolor001: TppLabel
        UserName = 'icolor001'
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
        mmLeft = 103188
        mmTop = 4498
        mmWidth = 5556
        BandType = 7
      end
      object keycode001: TppLabel
        UserName = 'keycode001'
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
        mmLeft = 244211
        mmTop = 4498
        mmWidth = 4233
        BandType = 7
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PS:- 1. '#27492#26126#32048#34920', '#20027#35201#25903#25588#34892#21205#35468#30340#29289#26009#36319#36914'         2. '#27492#26126#32048#34920', '#19981#21547#20511#26009#21644#36996#26009#20043#36319#36452'        '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2022
        mmTop = 9525
        mmWidth = 115951
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'seq31'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3
        mmPrintPosition = 0
        object ppLine54: TppLine
          UserName = 'Line41'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 0
          mmWidth = 282840
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3
        mmPrintPosition = 0
        object ppLine55: TppLine
          UserName = 'Line54'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 0
          mmWidth = 282840
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'item_seq'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
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
        mmHeight = 3
        mmPrintPosition = 0
        object ppLine63: TppLine
          UserName = 'Line31'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 46831
          mmTop = 0
          mmWidth = 236803
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3
        mmPrintPosition = 0
        object ppLine64: TppLine
          UserName = 'Line35'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 46831
          mmTop = 0
          mmWidth = 236803
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 160
    Top = 65528
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 304
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 18256
        mmLeft = 794
        mmTop = 18256
        mmWidth = 282840
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        Brush.Color = 6731517
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 235215
        mmTop = 18521
        mmWidth = 35454
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        Brush.Color = 10485759
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 270669
        mmTop = 18521
        mmWidth = 12700
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        Brush.Color = 6731517
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 181505
        mmTop = 18521
        mmWidth = 28575
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        Brush.Color = 10485759
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 166423
        mmTop = 18521
        mmWidth = 15346
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        Brush.Color = 6731517
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 136261
        mmTop = 18521
        mmWidth = 30163
        BandType = 0
      end
      object mex1001: TppShape
        UserName = 'mex1001'
        Brush.Color = 10485759
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 209815
        mmTop = 18521
        mmWidth = 25400
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17727
        mmLeft = 1058
        mmTop = 18521
        mmWidth = 135467
        BandType = 0
      end
      object mex100: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36865#20633#29992#26009#26399'('#23526#38555')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 210344
        mmTop = 18785
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33394#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 91811
        mmTop = 28575
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 212725
        mmTop = 33073
        mmWidth = 6943
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36650#21046#21934#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 122767
        mmTop = 20108
        mmWidth = 8996
        BandType = 0
      end
      object mex102: TppLabel
        UserName = 'mex102'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#40778
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 223044
        mmTop = 25135
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#33394#20381#38752')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 119327
        mmTop = 24077
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 14023
        mmWidth = 14552
        BandType = 0
      end
      object mex104: TppLabel
        UserName = 'mex104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 226484
        mmTop = 33073
        mmWidth = 6943
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450'/'#20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 211932
        mmTop = 30692
        mmWidth = 8805
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34892#21205#35468
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 271463
        mmTop = 19315
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 260615
        mmTop = 14023
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38917#30446#39006' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 273844
        mmTop = 26723
        mmWidth = 6943
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#35468'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 2381
        mmTop = 20902
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Log'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 2381
        mmTop = 28575
        mmWidth = 4276
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' No.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 2381
        mmTop = 32279
        mmWidth = 4614
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 2381
        mmTop = 24606
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 11377
        mmTop = 26458
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37559#21806#21934#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 24871
        mmTop = 26458
        mmWidth = 9059
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#26041#27454#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 67204
        mmTop = 26458
        mmWidth = 9059
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label84'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#26041' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 91811
        mmTop = 24606
        mmWidth = 4826
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 8202
        mmTop = 18256
        mmWidth = 2381
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 235215
        mmTop = 18521
        mmWidth = 2117
        BandType = 0
      end
      object ppLine44: TppLine
        UserName = 'Line35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 118798
        mmTop = 18256
        mmWidth = 1323
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 136261
        mmTop = 18256
        mmWidth = 1852
        BandType = 0
      end
      object ppLine57: TppLine
        UserName = 'Line37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 89429
        mmTop = 18256
        mmWidth = 1852
        BandType = 0
      end
      object ppLine58: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 136261
        mmTop = 22490
        mmWidth = 73554
        BandType = 0
      end
      object ppLine60: TppLine
        UserName = 'Line53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 209815
        mmTop = 30163
        mmWidth = 34396
        BandType = 0
      end
      object ppLine65: TppLine
        UserName = 'Line56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 222515
        mmTop = 24342
        mmWidth = 1852
        BandType = 0
      end
      object ppLine66: TppLine
        UserName = 'Line57'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 21167
        mmTop = 18521
        mmWidth = 2381
        BandType = 0
      end
      object ppLine68: TppLine
        UserName = 'Line64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 41275
        mmTop = 18521
        mmWidth = 2381
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 226748
        mmTop = 14023
        mmWidth = 30956
        BandType = 0
      end
      object ppLine69: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 270405
        mmTop = 18256
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20854#23427#20107#38917
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 237067
        mmTop = 19315
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22522#22320' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 237596
        mmTop = 25929
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29983#29986
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 237861
        mmTop = 23283
        mmWidth = 4233
        BandType = 0
      end
      object ppLine70: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 244211
        mmTop = 22490
        mmWidth = 1852
        BandType = 0
      end
      object ppLine74: TppLine
        UserName = 'Line65'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 209815
        mmTop = 18256
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 43921
        mmTop = 22225
        mmWidth = 6943
        BandType = 0
      end
      object ppLine75: TppLine
        UserName = 'Line66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 60590
        mmTop = 18256
        mmWidth = 2381
        BandType = 0
      end
      object ppLine76: TppLine
        UserName = 'Line68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 98425
        mmTop = 22490
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33394#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 99219
        mmTop = 28575
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24288#26041' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 99219
        mmTop = 24606
        mmWidth = 4763
        BandType = 0
      end
      object ppLine77: TppLine
        UserName = 'Line69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 109538
        mmTop = 18256
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37559#21806#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 111390
        mmTop = 22225
        mmWidth = 6943
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#33394#20381#38752')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 110596
        mmTop = 31221
        mmWidth = 7789
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label90'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36865#20633#29992#26009#26399' ('#21407#26448#26009')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 138113
        mmTop = 19315
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label702'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38283#22987' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 153459
        mmTop = 28840
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#40778' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 160602
        mmTop = 28840
        mmWidth = 4826
        BandType = 0
      end
      object ppLine78: TppLine
        UserName = 'Line70'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 166159
        mmTop = 18256
        mmWidth = 1852
        BandType = 0
      end
      object ppLine79: TppLine
        UserName = 'Line602'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 159544
        mmTop = 27517
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label901'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24288#38283#22987#29983#29986#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 166688
        mmTop = 19315
        mmWidth = 14552
        BandType = 0
      end
      object ppLine80: TppLine
        UserName = 'Line73'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 173832
        mmTop = 22490
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450'/ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 167482
        mmTop = 26723
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24050#38283#22987' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 174361
        mmTop = 26723
        mmWidth = 6943
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 184150
        mmTop = 19315
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450'/ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 182827
        mmTop = 25135
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 182827
        mmTop = 28840
        mmWidth = 5630
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label105'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23433#25490' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 204523
        mmTop = 25135
        mmWidth = 4763
        BandType = 0
      end
      object ppLine81: TppLine
        UserName = 'Line74'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 181505
        mmTop = 18256
        mmWidth = 1852
        BandType = 0
      end
      object ppLine82: TppLine
        UserName = 'Line75'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 196321
        mmTop = 22490
        mmWidth = 1852
        BandType = 0
      end
      object ppLine83: TppLine
        UserName = 'Line79'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 89694
        mmTop = 22490
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32317#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 112184
        mmTop = 26723
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27454#38991#33394
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2117
        mmLeft = 89959
        mmTop = 19315
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#35336#21123'/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 81756
        mmTop = 22754
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label801'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23436#25104'(Y)/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 81756
        mmTop = 29104
        mmWidth = 7408
        BandType = 0
      end
      object ppLine105: TppLine
        UserName = 'Line105'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 53181
        mmTop = 18256
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#36650' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 55033
        mmTop = 20902
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label1101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#21046' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 55033
        mmTop = 24606
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label1102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 55033
        mmTop = 32279
        mmWidth = 3895
        BandType = 0
      end
      object ppLine110: TppLine
        UserName = 'Line110'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 203730
        mmTop = 22490
        mmWidth = 1852
        BandType = 0
      end
      object ex_adt01: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23526#38555' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 196850
        mmTop = 25135
        mmWidth = 6615
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
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
        mmLeft = 270405
        mmTop = 14023
        mmWidth = 9260
        BandType = 0
      end
      object ex_adt02: TppLabel
        UserName = 'ex_adt02'
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
        mmHeight = 2498
        mmLeft = 196850
        mmTop = 28310
        mmWidth = 6615
        BandType = 0
      end
      object ppLine144: TppLine
        UserName = 'Line144'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 144727
        mmTop = 27517
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38928#35373' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 139171
        mmTop = 24077
        mmWidth = 4826
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 62971
        mmTop = 13494
        mmWidth = 144992
        BandType = 0
      end
      object title201: TppRichText
        UserName = 'title201'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'title201'
        RichText = 
          '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
          '\f0\fswiss\fcharset0 Arial;}{\f1\fnil Arial;}}'#13#10'{\colortbl ;\red' +
          '0\green0\blue0;}'#13#10'\viewkind4\uc1\pard\qc\cf1\lang1028\f0\fs24 Ce' +
          'ntral Order Processing - "Time Management"\f1\fs18\par'#13#10'}'#13#10#0
        Transparent = True
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 7938
        mmWidth = 280194
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLine172: TppLine
        UserName = 'Line603'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 252148
        mmTop = 22490
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 245005
        mmTop = 32808
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35037' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 245005
        mmTop = 26723
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32218' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 245005
        mmTop = 29898
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32068' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 245005
        mmTop = 23548
        mmWidth = 2709
        BandType = 0
      end
      object ppLine136: TppLine
        UserName = 'Line136'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 151342
        mmTop = 22490
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel151: TppLabel
        UserName = 'Label151'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23526#38555' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 155840
        mmTop = 24077
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38283#22987' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138377
        mmTop = 28840
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#40778' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 145786
        mmTop = 28840
        mmWidth = 4826
        BandType = 0
      end
      object ppLine292: TppLine
        UserName = 'Line292'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 118798
        mmTop = 27517
        mmWidth = 47625
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label167'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(+) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 146579
        mmTop = 32544
        mmWidth = 3260
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label168'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(+) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 161396
        mmTop = 32544
        mmWidth = 3260
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label169'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 138377
        mmTop = 32544
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label170'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 153459
        mmTop = 32544
        mmWidth = 4826
        BandType = 0
      end
      object mex103: TppLabel
        UserName = 'mex103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450'/'#20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 225161
        mmTop = 30692
        mmWidth = 8805
        BandType = 0
      end
      object ppLine85: TppLine
        UserName = 'Line604'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 248180
        mmTop = 22490
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 248973
        mmTop = 32808
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label173'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 248973
        mmTop = 26723
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel174: TppLabel
        UserName = 'Label174'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24373' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 248973
        mmTop = 29898
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel176: TppLabel
        UserName = 'Label176'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 248973
        mmTop = 23548
        mmWidth = 2709
        BandType = 0
      end
      object ex_adt003: TppLabel
        UserName = 'ex_adt003'
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
        mmLeft = 196850
        mmTop = 31221
        mmWidth = 6615
        BandType = 0
      end
      object title2001: TppLabel
        UserName = 'title2001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CARTE '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 255323
        mmTop = 2910
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel254: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#25142#34399': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 243153
        mmTop = 2910
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27861' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 254001
        mmTop = 32808
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31665' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 254001
        mmTop = 26723
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26041' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 254001
        mmTop = 29898
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35037' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 254001
        mmTop = 23548
        mmWidth = 2709
        BandType = 0
      end
      object ppLine73: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 258498
        mmTop = 22490
        mmWidth = 1323
        BandType = 0
      end
      object dest001: TppLabel
        UserName = 'dest001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30446#30340#22320' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 260880
        mmTop = 25135
        mmWidth = 6943
        BandType = 0
      end
      object dest002: TppLabel
        UserName = 'dest002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22283#23478' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 262203
        mmTop = 28840
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#24046' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 204523
        mmTop = 28840
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 167482
        mmTop = 30956
        mmWidth = 5630
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' '#33394' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 105569
        mmTop = 26723
        mmWidth = 3302
        BandType = 0
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' '#12289' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 105569
        mmTop = 29898
        mmWidth = 3302
        BandType = 0
      end
      object ppLine71: TppLine
        UserName = 'Line71'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 81227
        mmTop = 18256
        mmWidth = 1323
        BandType = 0
      end
      object ppLine177: TppLine
        UserName = 'Line177'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 37306
        mmTop = 18256
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel152: TppLabel
        UserName = 'Label152'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37559
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 38365
        mmTop = 19579
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21806
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 38365
        mmTop = 22754
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21934
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 38365
        mmTop = 25929
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 38365
        mmTop = 29104
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label156'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30446
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 38365
        mmTop = 32279
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel159: TppLabel
        UserName = 'Label159'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' '#23450' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 105569
        mmTop = 23548
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel160: TppLabel
        UserName = 'Label1501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' '#30908' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 105569
        mmTop = 32808
        mmWidth = 3302
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25209#26495#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 81756
        mmTop = 19579
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label184'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20381#38283#22987#36865#26009#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 210344
        mmTop = 27781
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel185: TppLabel
        UserName = 'Label185'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20381#23436#25104#36865#26009#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 223044
        mmTop = 27781
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel186: TppLabel
        UserName = 'Label186'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36008
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 123561
        mmTop = 29633
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label187'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 132027
        mmTop = 32544
        mmWidth = 2117
        BandType = 0
      end
      object ppLine181: TppLine
        UserName = 'Line181'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 129382
        mmTop = 27517
        mmWidth = 1852
        BandType = 0
      end
      object ppLine183: TppLine
        UserName = 'Line183'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 239713
        mmTop = 30163
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label189'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36008
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 237067
        mmTop = 31221
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label190'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 240771
        mmTop = 33073
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label199'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 132027
        mmTop = 29633
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label200'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 240771
        mmTop = 30692
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel201: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26410#20633#40778
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2117
        mmLeft = 210344
        mmTop = 25135
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel203: TppLabel
        UserName = 'Label203'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 55033
        mmTop = 28575
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35746'*/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2117
        mmLeft = 81756
        mmTop = 25929
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label161'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32763#21934'(R))'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2117
        mmLeft = 81756
        mmTop = 32279
        mmWidth = 7408
        BandType = 0
      end
      object ppLine202: TppLine
        UserName = 'Line202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 235215
        mmTop = 22490
        mmWidth = 48419
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label138'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33287#38626#24288#26399#20043#26178#36317
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 210344
        mmTop = 21431
        mmWidth = 24606
        BandType = 0
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 209815
        mmTop = 24342
        mmWidth = 25400
        BandType = 0
      end
      object ppLine94: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 188913
        mmTop = 22490
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20837#20489
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 189971
        mmTop = 28310
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel194: TppLabel
        UserName = 'Label194'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(T3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 189971
        mmTop = 30956
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel198: TppLabel
        UserName = 'Label198'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450'/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 189971
        mmTop = 23019
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel210: TppLabel
        UserName = 'Label210'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 189971
        mmTop = 25665
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel223: TppLabel
        UserName = 'Label223'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32066#31449')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 189971
        mmTop = 33602
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel224: TppLabel
        UserName = 'Label224'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#20462#35330'*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 144463
        mmTop = 24342
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel225: TppLabel
        UserName = 'Label225'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#23450#33394#39006#21450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 42863
        mmTop = 26723
        mmWidth = 9186
        BandType = 0
      end
      object ppLabel226: TppLabel
        UserName = 'Label226'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23450#33394#12289#30908')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 42863
        mmTop = 31221
        mmWidth = 9186
        BandType = 0
      end
      object ppLine91: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 104511
        mmTop = 22490
        mmWidth = 2117
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppShape26: TppShape
        UserName = 'Shape101'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 0
        mmWidth = 282840
        BandType = 4
      end
      object oskey001: TppDBText
        UserName = 'oskey001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'keycode'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 1323
        mmTop = 529
        mmWidth = 6615
        BandType = 4
      end
      object ppLine86: TppLine
        UserName = 'Line76'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 8202
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'projectno'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 8731
        mmTop = 529
        mmWidth = 12171
        BandType = 4
      end
      object ppLine87: TppLine
        UserName = 'Line77'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine88: TppLine
        UserName = 'Line78'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 41275
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'custpo'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 21696
        mmTop = 529
        mmWidth = 15346
        BandType = 4
      end
      object ppLine89: TppLine
        UserName = 'Line81'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 53181
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine90: TppLine
        UserName = 'Line82'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 89429
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine92: TppLine
        UserName = 'Line84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 98425
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine93: TppLine
        UserName = 'Line85'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 109538
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine95: TppLine
        UserName = 'Line88'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 222515
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine97: TppLine
        UserName = 'Line91'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 209815
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine98: TppLine
        UserName = 'Line92'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 118798
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine99: TppLine
        UserName = 'Line94'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 181505
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine100: TppLine
        UserName = 'Line95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 196321
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine101: TppLine
        UserName = 'Line96'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 235215
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine102: TppLine
        UserName = 'Line97'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 159544
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine103: TppLine
        UserName = 'Line98'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine104: TppLine
        UserName = 'Line99'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 173832
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine106: TppLine
        UserName = 'Line100'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 166159
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine107: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 244211
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine111: TppLine
        UserName = 'Line104'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 270405
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'workorderno'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 41804
        mmTop = 529
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'custstyle'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 61119
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'custcolor'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 89959
        mmTop = 529
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'phcolor'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 98954
        mmTop = 529
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'm_start'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 151871
        mmTop = 529
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'fwdt_a'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 174361
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'act_item'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 270934
        mmTop = 529
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qty'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 110067
        mmTop = 529
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qty1'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 119327
        mmTop = 529
        mmWidth = 9790
        BandType = 4
      end
      object ppLine112: TppLine
        UserName = 'Line106'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 60590
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'rwo_wo'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 53711
        mmTop = 529
        mmWidth = 6615
        BandType = 4
      end
      object ppLine113: TppLine
        UserName = 'Line109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 129382
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'sp_qty'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 129911
        mmTop = 529
        mmWidth = 6085
        BandType = 4
      end
      object ppLine114: TppLine
        UserName = 'Line111'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 203730
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ex_adt03: TppDBText
        UserName = 'ex_adt03'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ex_a'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 196850
        mmTop = 529
        mmWidth = 6615
        BandType = 4
      end
      object ppLine145: TppLine
        UserName = 'Line145'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine173: TppLine
        UserName = 'Line173'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 252148
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'line_tno'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 245005
        mmTop = 529
        mmWidth = 2646
        BandType = 4
      end
      object ppLine115: TppLine
        UserName = 'Line72'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 151342
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object m_ddt001: TppLabel
        UserName = 'm_ddt001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 145257
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object m_end001: TppLabel
        UserName = 'm_end001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 160073
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ex_or001: TppLabel
        UserName = 'ex_or001'
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
        mmLeft = 182034
        mmTop = 529
        mmWidth = 6615
        BandType = 4
      end
      object mex_or001: TppLabel
        UserName = 'mex_or001'
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
        mmLeft = 212196
        mmTop = 529
        mmWidth = 8467
        BandType = 4
      end
      object mex_or002: TppLabel
        UserName = 'mex_or002'
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
        mmLeft = 224367
        mmTop = 529
        mmWidth = 9260
        BandType = 4
      end
      object ppLine116: TppLine
        UserName = 'Line67'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 248180
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object qnx001: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qn_tno'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 248973
        mmTop = 529
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'etam_pak'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 252678
        mmTop = 529
        mmWidth = 5556
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
        mmHeight = 3440
        mmLeft = 258498
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'pvh_dest'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 259028
        mmTop = 529
        mmWidth = 11113
        BandType = 4
      end
      object exdiffx001: TppDBText
        UserName = 'exdiffx001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'exdiff'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 204259
        mmTop = 529
        mmWidth = 5292
        BandType = 4
      end
      object ppLine72: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 81227
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine178: TppLine
        UserName = 'Line178'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 37306
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ipoqty_2001: TppDBText
        UserName = 'ipoqty_2001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'custpo_qty'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 37835
        mmTop = 529
        mmWidth = 3175
        BandType = 4
      end
      object fwdt_or001: TppLabel
        UserName = 'fwdt_or001'
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
        mmLeft = 166688
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
      object ppLine182: TppLine
        UserName = 'Line182'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 239713
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object prodsite1001: TppLabel
        UserName = 'prodsite1001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 240242
        mmTop = 529
        mmWidth = 3704
        BandType = 4
      end
      object prodsite001: TppLabel
        UserName = 'prodsite001'
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
        mmLeft = 235744
        mmTop = 529
        mmWidth = 3704
        BandType = 4
      end
      object sp_appdt001: TppLabel
        UserName = 'sp_appdt001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 81756
        mmTop = 529
        mmWidth = 7408
        BandType = 4
      end
      object ppLine67: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 188913
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object t3dt001: TppLabel
        UserName = 't3dt001'
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
        mmLeft = 189442
        mmTop = 529
        mmWidth = 6615
        BandType = 4
      end
      object ddtx001: TppLabel
        UserName = 'ddtx001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2117
        mmLeft = 136790
        mmTop = 529
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'phstyle'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2117
        mmLeft = 105040
        mmTop = 529
        mmWidth = 4233
        BandType = 4
      end
      object ppLine84: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 104511
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel103: TppLabel
        UserName = 'Label107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'front sheet   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 259821
        mmTop = 794
        mmWidth = 9906
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 53711
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 21696
        mmWidth = 282840
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 28575
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          Columns = 2
          ColumnPositions.Strings = (
            '6350'
            '148499')
          DataPipeline = frmCarte_Ordprocessing.ppDBPipeline3
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
          Version = '11.07'
          mmColumnWidth = 142150
          DataPipelineName = 'ppDBPipeline3'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppHeaderBand3: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppLabel141: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #38917#30446#39006#26126#32048#34920':- '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 3440
              mmTop = 2117
              mmWidth = 14605
              BandType = 0
            end
          end
          object ppColumnHeaderBand1: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppShape31: TppShape
              UserName = 'Shape1'
              mmHeight = 5027
              mmLeft = 794
              mmTop = 0
              mmWidth = 132821
              BandType = 2
            end
            object ppLabel142: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #20998#39006
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2498
              mmLeft = 1588
              mmTop = 1323
              mmWidth = 23813
              BandType = 2
            end
            object ppLabel143: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #32232#34399
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2381
              mmLeft = 28310
              mmTop = 1323
              mmWidth = 11377
              BandType = 2
            end
            object ppLabel144: TppLabel
              UserName = 'Label4'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #25551#36848
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2381
              mmLeft = 42598
              mmTop = 1323
              mmWidth = 90223
              BandType = 2
            end
            object ppLine168: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4763
              mmLeft = 26458
              mmTop = 0
              mmWidth = 1852
              BandType = 2
            end
            object ppLine169: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4763
              mmLeft = 41275
              mmTop = 0
              mmWidth = 1852
              BandType = 2
            end
          end
          object ppDetailBand3: TppDetailBand
            ColumnTraversal = ctLeftToRight
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape32: TppShape
              UserName = 'Shape2'
              mmHeight = 5027
              mmLeft = 794
              mmTop = 0
              mmWidth = 132821
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'act_group'
              DataPipeline = frmCarte_Ordprocessing.ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2381
              mmLeft = 1588
              mmTop = 1323
              mmWidth = 23813
              BandType = 4
            end
            object ppDBText55: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'code'
              DataPipeline = frmCarte_Ordprocessing.ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2381
              mmLeft = 28310
              mmTop = 1323
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText56: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'act_item'
              DataPipeline = frmCarte_Ordprocessing.ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2381
              mmLeft = 42598
              mmTop = 1323
              mmWidth = 90223
              BandType = 4
            end
            object ppLine170: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 26458
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine171: TppLine
              UserName = 'Line171'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 41275
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
          end
          object ppColumnFooterBand1: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 26458
        mmLeft = 794
        mmTop = 26988
        mmWidth = 282840
        BandType = 7
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 16140
        mmLeft = 794
        mmTop = 3969
        mmWidth = 282840
        BandType = 7
      end
      object ppLine117: TppLine
        UserName = 'Line1001'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 166159
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine118: TppLine
        UserName = 'Line114'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 244211
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine119: TppLine
        UserName = 'Line117'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 270405
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine120: TppLine
        UserName = 'Line118'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 60590
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine121: TppLine
        UserName = 'Line119'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 129382
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine122: TppLine
        UserName = 'Line120'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 203730
        mmTop = 15875
        mmWidth = 1323
        BandType = 7
      end
      object ppLine123: TppLine
        UserName = 'Line121'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine124: TppLine
        UserName = 'Line122'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 21167
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine125: TppLine
        UserName = 'Line123'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine126: TppLine
        UserName = 'Line124'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 53181
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine127: TppLine
        UserName = 'Line125'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 81227
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine128: TppLine
        UserName = 'Line126'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 89429
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine129: TppLine
        UserName = 'Line127'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 98425
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine130: TppLine
        UserName = 'Line128'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 104511
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine134: TppLine
        UserName = 'Line134'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 209815
        mmTop = 15875
        mmWidth = 1323
        BandType = 7
      end
      object ppLine135: TppLine
        UserName = 'Line135'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 118798
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine137: TppLine
        UserName = 'Line137'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 181505
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine138: TppLine
        UserName = 'Line138'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15875
        mmLeft = 188913
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine139: TppLine
        UserName = 'Line139'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 235215
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine140: TppLine
        UserName = 'Line140'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 159544
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine141: TppLine
        UserName = 'Line141'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16140
        mmLeft = 136261
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine142: TppLine
        UserName = 'Line142'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 173832
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'keycode'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 1588
        mmTop = 4763
        mmWidth = 6085
        BandType = 7
      end
      object prj001: TppLabel
        UserName = 'prj001'
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
        mmLeft = 8731
        mmTop = 4763
        mmWidth = 12171
        BandType = 7
      end
      object custpo001: TppLabel
        UserName = 'custpo001'
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
        mmLeft = 21696
        mmTop = 4763
        mmWidth = 15346
        BandType = 7
      end
      object wo001: TppLabel
        UserName = 'wo001'
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
        mmLeft = 41804
        mmTop = 4763
        mmWidth = 11113
        BandType = 7
      end
      object custstyle001: TppLabel
        UserName = 'custstyle001'
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
        mmLeft = 61119
        mmTop = 4763
        mmWidth = 19844
        BandType = 7
      end
      object sp_app001: TppLabel
        UserName = 'sp_app001'
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
        mmLeft = 81756
        mmTop = 8996
        mmWidth = 7408
        BandType = 7
      end
      object custcolor001: TppLabel
        UserName = 'custcolor001'
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
        mmLeft = 89959
        mmTop = 4763
        mmWidth = 8202
        BandType = 7
      end
      object phcolor001: TppLabel
        UserName = 'phcolor001'
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
        mmLeft = 98954
        mmTop = 4763
        mmWidth = 5292
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qty1'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 119327
        mmTop = 4763
        mmWidth = 9790
        BandType = 7
      end
      object m_start001: TppLabel
        UserName = 'm_start001'
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
        mmLeft = 151871
        mmTop = 8996
        mmWidth = 7408
        BandType = 7
      end
      object fwdt_o001: TppLabel
        UserName = 'fwdt_o001'
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
        mmLeft = 166688
        mmTop = 8996
        mmWidth = 6879
        BandType = 7
      end
      object fwdt_a001: TppLabel
        UserName = 'fwdt_a001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 174361
        mmTop = 8996
        mmWidth = 6879
        BandType = 7
      end
      object ex_o001: TppLabel
        UserName = 'ex_o001'
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
        mmHeight = 2646
        mmLeft = 182034
        mmTop = 8996
        mmWidth = 6615
        BandType = 7
      end
      object act_item001: TppLabel
        UserName = 'act_item001'
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
        mmLeft = 270934
        mmTop = 4763
        mmWidth = 12171
        BandType = 7
      end
      object ppLabel139: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          #20633#35387'A: 1. '#36650#21046#21934#25976' ('#33394#20381#38752')'#20043#30456#38364#25578#26495#25976#19981#25552#20379' "'#23433#25490' (PDN) '#38626#24288#26399'" '#20043#36039#26009'      2. '#38917#30446#39006#26049#37002#30340' * ' +
          #34920#31034#27492#38917#30446#39006#24050#23436#25104'      3. '#27492#22577#34920#19981#21547#37197#22871#26009#20043#36865#26009#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 1058
        mmTop = 22225
        mmWidth = 282046
        BandType = 7
      end
      object prod_site001: TppLabel
        UserName = 'prod_site001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 235744
        mmTop = 8996
        mmWidth = 3704
        BandType = 7
      end
      object ppLabel140: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Summary ( '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 10837
        BandType = 7
      end
      object ppLine143: TppLine
        UserName = 'Line143'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 7938
        mmWidth = 282576
        BandType = 7
      end
      object ppLine146: TppLine
        UserName = 'Line146'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 144727
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine131: TppLine
        UserName = 'Line93'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 151342
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel244: TppLabel
        UserName = 'Label244'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26495#26410#25209#25976' (log):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 65617
        mmTop = 8996
        mmWidth = 15346
        BandType = 7
      end
      object ppLabel245: TppLabel
        UserName = 'Label245'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31354#30333#27396#25976'(log):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 121973
        mmTop = 8996
        mmWidth = 14023
        BandType = 7
      end
      object mddt001: TppLabel
        UserName = 'mddt001'
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
        mmLeft = 136790
        mmTop = 8996
        mmWidth = 7673
        BandType = 7
      end
      object m_ddt002: TppLabel
        UserName = 'm_ddt002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 145257
        mmTop = 8996
        mmWidth = 5821
        BandType = 7
      end
      object m_end002: TppLabel
        UserName = 'm_end002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 160073
        mmTop = 8996
        mmWidth = 5821
        BandType = 7
      end
      object ppLabel255: TppLabel
        UserName = 'Label255'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 190500
        mmTop = 12965
        mmWidth = 91281
        BandType = 7
      end
      object exdiff001: TppLabel
        UserName = 'exdiff001'
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
        mmLeft = 204259
        mmTop = 16933
        mmWidth = 5292
        BandType = 7
      end
      object ppLabel270: TppLabel
        UserName = 'Label270'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 197644
        mmTop = 8996
        mmWidth = 36248
        BandType = 7
      end
      object ppLabel275: TppLabel
        UserName = 'Label275'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 197644
        mmTop = 4763
        mmWidth = 71438
        BandType = 7
      end
      object ppLabel276: TppLabel
        UserName = 'Label276'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 270934
        mmTop = 8996
        mmWidth = 12171
        BandType = 7
      end
      object ppLabel298: TppLabel
        UserName = 'Label298'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 81756
        mmTop = 4763
        mmWidth = 7408
        BandType = 7
      end
      object ppLabel299: TppLabel
        UserName = 'Label299'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 53711
        mmTop = 4763
        mmWidth = 6615
        BandType = 7
      end
      object ppLabel145: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 106098
        mmTop = 4763
        mmWidth = 11113
        BandType = 7
      end
      object ppLine109: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 81227
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine180: TppLine
        UserName = 'Line180'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 37306
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel158: TppLabel
        UserName = 'Label158'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 37835
        mmTop = 4763
        mmWidth = 3175
        BandType = 7
      end
      object ppLine185: TppLine
        UserName = 'Line185'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 239713
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'sp_qty'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 129911
        mmTop = 4763
        mmWidth = 6085
        BandType = 7
      end
      object ppLine187: TppLine
        UserName = 'Line187'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 11906
        mmWidth = 282576
        BandType = 7
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24433#38911#26178#38480#27396#25552#31034'('#32005#23383#39636')(log):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 51858
        mmTop = 12965
        mmWidth = 29104
        BandType = 7
      end
      object ppLine190: TppLine
        UserName = 'Line190'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 248180
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine191: TppLine
        UserName = 'Line191'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 252148
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel193: TppLabel
        UserName = 'Label2702'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 145257
        mmTop = 12965
        mmWidth = 20638
        BandType = 7
      end
      object ppLabel195: TppLabel
        UserName = 'Label2704'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 252942
        mmTop = 16933
        mmWidth = 30163
        BandType = 7
      end
      object fwdt_ox001: TppLabel
        UserName = 'fwdt_ox001'
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
        mmLeft = 166688
        mmTop = 12965
        mmWidth = 6879
        BandType = 7
      end
      object line_tno001: TppLabel
        UserName = 'line_tno001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 244740
        mmTop = 8996
        mmWidth = 3175
        BandType = 7
      end
      object mddtx001: TppLabel
        UserName = 'mddtx001'
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
        mmLeft = 136790
        mmTop = 12965
        mmWidth = 7673
        BandType = 7
      end
      object prod_site1001: TppLabel
        UserName = 'prod_site1001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 239978
        mmTop = 8996
        mmWidth = 4233
        BandType = 7
      end
      object qn_tno001: TppLabel
        UserName = 'qn_tno001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 248709
        mmTop = 8996
        mmWidth = 3175
        BandType = 7
      end
      object qn_tnox001: TppLabel
        UserName = 'qn_tnox001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 248709
        mmTop = 16933
        mmWidth = 3175
        BandType = 7
      end
      object ppLabel177: TppLabel
        UserName = 'Label177'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37559#21806#21934#31354#30333#27396#25976'(log):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 1323
        mmTop = 8996
        mmWidth = 19579
        BandType = 7
      end
      object custpoxa001: TppLabel
        UserName = 'custpoxa001'
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
        mmLeft = 21696
        mmTop = 8996
        mmWidth = 15346
        BandType = 7
      end
      object ppLine193: TppLine
        UserName = 'Line193'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 258498
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object m_ddtx002: TppLabel
        UserName = 'm_ddtx002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 145257
        mmTop = 16933
        mmWidth = 5821
        BandType = 7
      end
      object pakx001: TppLabel
        UserName = 'pakx001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2032
        mmLeft = 252678
        mmTop = 8996
        mmWidth = 5556
        BandType = 7
      end
      object destx001: TppLabel
        UserName = 'destx001'
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
        mmLeft = 259557
        mmTop = 8996
        mmWidth = 9790
        BandType = 7
      end
      object sp_appx001: TppLabel
        UserName = 'sp_appx001'
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
        mmLeft = 81756
        mmTop = 12965
        mmWidth = 7408
        BandType = 7
      end
      object ppLabel205: TppLabel
        UserName = 'Label205'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 90488
        mmTop = 12965
        mmWidth = 44715
        BandType = 7
      end
      object ppLabel206: TppLabel
        UserName = 'Label206'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ') :- '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 22225
        mmTop = 1058
        mmWidth = 3175
        BandType = 7
      end
      object custx001: TppLabel
        UserName = 'custx001'
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
        mmLeft = 13229
        mmTop = 1058
        mmWidth = 7673
        BandType = 7
      end
      object ppLine194: TppLine
        UserName = 'Line194'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 15875
        mmWidth = 282576
        BandType = 7
      end
      object fwdt_ox1001: TppLabel
        UserName = 'fwdt_ox1001'
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
        mmLeft = 166688
        mmTop = 16933
        mmWidth = 6879
        BandType = 7
      end
      object mddtx1001: TppLabel
        UserName = 'mddtx1001'
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
        mmLeft = 136790
        mmTop = 16933
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel211: TppLabel
        UserName = 'Label211'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24433#38911#26178#38480#27396#35686#31034'('#32005#23383#31895#39636')(log):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 50006
        mmTop = 16933
        mmWidth = 30956
        BandType = 7
      end
      object sp_appx1001: TppLabel
        UserName = 'sp_appx1001'
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
        mmLeft = 81756
        mmTop = 16933
        mmWidth = 7408
        BandType = 7
      end
      object ppLabel213: TppLabel
        UserName = 'Label213'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 151871
        mmTop = 16933
        mmWidth = 14023
        BandType = 7
      end
      object ppLabel214: TppLabel
        UserName = 'Label214'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 211932
        mmTop = 16933
        mmWidth = 34660
        BandType = 7
      end
      object ppLabel215: TppLabel
        UserName = 'Label215'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 90488
        mmTop = 16933
        mmWidth = 44715
        BandType = 7
      end
      object ppLabel216: TppLabel
        UserName = 'Label216'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 190500
        mmTop = 16933
        mmWidth = 12171
        BandType = 7
      end
      object ppLine197: TppLine
        UserName = 'Line197'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 248180
        mmTop = 15875
        mmWidth = 1323
        BandType = 7
      end
      object ppLine199: TppLine
        UserName = 'Line199'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 252148
        mmTop = 15875
        mmWidth = 1323
        BandType = 7
      end
      object ppRichText3: TppRichText
        UserName = 'RichText3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RichText3'
        RichText = 
          '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe3076{\fonttbl{' +
          '\f0\fmodern\fprq6\fcharset134 SimSun;}{\f1\fswiss\fcharset0 Aria' +
          'l;}{\f2\fnil Arial;}{\f3\froman\fcharset134 \'#39'cb\'#39'ce\'#39'cc\'#39'e5;}}'#13 +
          #10'{\colortbl ;\red0\green0\blue0;\red255\green0\blue0;}'#13#10'\viewkin' +
          'd4\uc1\pard\cf1\lang3076\f0\fs14\'#39'82\'#39'e4\'#39'd7\'#39'a2\f1 B\f0 :-\f2\p' +
          'ar'#13#10'\pard\sl240\slmult1\f3     1) "\'#39'c5\'#39'fa\'#39'b0\'#39'e5\'#39'c6\'#39'da"\'#39'd2' +
          '\'#39'bb\'#39'99\'#39'da: \cf2\'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'f3\'#39'77\cf1\'#39'cc\'#39'e1\'#39'ca\'#39'be\'#39 +
          'b4\'#39'cb\'#39'c8\'#39'd5\'#39'c6\'#39'da\'#39'c5\'#39'63\'#39'8f\'#39'53\'#39'e9\'#39'5f\'#39'ca\'#39'bc\'#39'c9\'#39'fa\'#39 +
          'ae\'#39'61\'#39'c6\'#39'da\'#39'd6\'#39'ae"\'#39'd4\'#39'ad\'#39'b6\'#39'a8/\'#39'd0\'#39'de\'#39'd3\'#39'86"\'#39'd2\'#39'b' +
          'b\'#39'99\'#39'da\'#39'a3\'#39'ac\'#39'83\'#39'c9\'#39'd5\'#39'df\'#39'd6\'#39'bb\'#39'b5\'#39'c3\'#39'd2\'#39'bb\'#39'df\'#39'4' +
          'c\'#39'83\'#39'c8\'#39'c8\'#39'dd\'#39'ce\'#39'bb\'#39'a1\'#39'a3\cf2\b\'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'b4\'#39'd6\' +
          #39'f3\'#39'77\cf1\b0\'#39'be\'#39'af\'#39'ca\'#39'be\'#39'b4\'#39'cb\'#39'c5\'#39'fa\'#39'b0\'#39'e5\'#39'c6\'#39'da\'#39 +
          'd2\'#39'd1\'#39'df\'#39'74\'#39'df\'#39'5e\'#39'8f\'#39'53\'#39'e9\'#39'5f\'#39'ca\'#39'bc\'#39'c9\'#39'fa\'#39'ae\'#39'61\'#39 +
          'c6\'#39'da\'#39'd6\'#39'ae"\'#39'd4\'#39'ad\'#39'b6\'#39'a8/\'#39'd0\'#39'de\'#39'd3\'#39'86"\'#39'c8\'#39'd5\'#39'c6\'#39'd' +
          'a\'#39'a1\'#39'a3\line     2) \'#39'cb\'#39'cd\'#39'82\'#39'e4\'#39'd3\'#39'c3\'#39'c1\'#39'cf\'#39'c6\'#39'da\'#39 +
          'd6\'#39'ae"\'#39'ee\'#39'41\'#39'd4\'#39'4f\'#39'e9\'#39'5f\'#39'ca\'#39'bc\'#39'c8\'#39'd5\'#39'c6\'#39'da"\'#39'd2\'#39'bb' +
          '\'#39'99\'#39'da: \cf2\'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'f3\'#39'77\cf1\'#39'cc\'#39'e1\'#39'ca\'#39'be\'#39'ce\'#39 +
          'b4\'#39'81\'#39'ed\'#39'd2\'#39'bb\'#39'df\'#39'4c\'#39'83\'#39'c8\'#39'd2\'#39'aa\'#39'bd\'#39'6f\'#39'd3\'#39'e8\'#39'8c\'#39 +
          '8d\'#39'eb\'#39'48\'#39'e9\'#39'5f\'#39'ca\'#39'bc\'#39'cb\'#39'cd\'#39'c1\'#39'cf\'#39'c8\'#39'd5\'#39'c6\'#39'da\'#39'a1\'#39 +
          'a2\cf2\b\'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'b4\'#39'd6\'#39'f3\'#39'77\cf1\b0\'#39'be\'#39'af\'#39'ca\'#39'be\' +
          #39'ac\'#39'46\'#39'bd\'#39'f1\'#39'df\'#39'80\'#39'ce\'#39'b4\'#39'bd\'#39'6f\'#39'd3\'#39'e8\'#39'd2\'#39'd4\'#39'c9\'#39'cf\' +
          #39'd9\'#39'59\'#39'c1\'#39'cf\'#39'a1\'#39'a3\line     3) \'#39'cb\'#39'cd\'#39'82\'#39'e4\'#39'd3\'#39'c3\'#39'c1' +
          '\'#39'cf\'#39'c6\'#39'da\'#39'd6\'#39'ae"\'#39'ee\'#39'41\'#39'd4\'#39'4f\'#39'82\'#39'e4\'#39'fd\'#39'52"\'#39'd2\'#39'bb\'#39 +
          '99\'#39'da: \cf2\b\'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'b4\'#39'd6\'#39'f3\'#39'77\cf1\b0\'#39'be\'#39'af\'#39'c' +
          'a\'#39'be\'#39'b4\'#39'cb\'#39'99\'#39'da\'#39'd6\'#39'ae\'#39'c8\'#39'd5\'#39'c6\'#39'da\'#39'df\'#39'74\'#39'df\'#39'5e\'#39'8' +
          'f\'#39'53\'#39'e9\'#39'5f\'#39'ca\'#39'bc\'#39'c9\'#39'fa\'#39'ae\'#39'61\'#39'c6\'#39'da\'#39'd6\'#39'ae"\'#39'd4\'#39'ad\'#39 +
          'b6\'#39'a8/\'#39'd0\'#39'de\'#39'd3\'#39'86"\'#39'a3\'#39'ac\'#39'b5\'#39'ab\'#39'c8\'#39'e7\'#39'b9\'#39'fb\'#39'8c\'#39'8d' +
          '\'#39'eb\'#39'48\'#39'd2\'#39'd1\'#39'82\'#39'e4\'#39'fd\'#39'52\'#39'84\'#39'74\'#39'95\'#39'fe\'#39'8c\'#39'a6\'#39'9b\'#39'5f' +
          '\'#39'a1\'#39'a3\line     4) \'#39'8f\'#39'53\'#39'e9\'#39'5f\'#39'ca\'#39'bc\'#39'c9\'#39'fa\'#39'ae\'#39'61\'#39'c' +
          '6\'#39'da\'#39'd6\'#39'ae"\'#39'd4\'#39'ad\'#39'b6\'#39'a8/\'#39'd0\'#39'de\'#39'd3\'#39'86"\'#39'd2\'#39'bb\'#39'99\'#39'da' +
          ': \cf2\'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'f3\'#39'77\cf1\'#39'cc\'#39'e1\'#39'ca\'#39'be\'#39'c3\'#39'f7\'#39'cc\'#39 +
          'ec\'#39'bc\'#39'b0\'#39'ce\'#39'b4\'#39'81\'#39'ed\'#39'd2\'#39'bb\'#39'df\'#39'4c\'#39'83\'#39'c8\'#39'a3\'#39'ac\'#39'd2\'#39 +
          'aa\'#39'dd\'#39'94\'#39'c8\'#39'eb"\'#39'd2\'#39'd1\'#39'e9\'#39'5f\'#39'ca\'#39'bc"\'#39'd2\'#39'bb\'#39'99\'#39'da\'#39'83' +
          '\'#39'c8\'#39'd6\'#39'ae\'#39'bf\'#39'd5\'#39'b0\'#39'd7\'#39'c8\'#39'd5\'#39'c6\'#39'da\'#39'a1\'#39'a3\cf2\b\'#39'bc\'#39 +
          '74\'#39'd7\'#39'd6\'#39'b4\'#39'd6\'#39'f3\'#39'77\cf1\b0\'#39'be\'#39'af\'#39'ca\'#39'be\'#39'd2\'#39'f2\'#39'd2\'#39'd' +
          '1\'#39'df\'#39'5e\'#39'c6\'#39'da\'#39'a3\'#39'ac\'#39'91\'#39'aa\'#39'bc\'#39'b4\'#39'bf\'#39'cc\'#39'dd\'#39'94\'#39'c8\'#39'e' +
          'b\'#39'cb\'#39'f9\'#39'd6\'#39'76\'#39'b5\'#39'c4\'#39'bf\'#39'd5\'#39'b0\'#39'd7\'#39'99\'#39'da\'#39'a1\'#39'a3\par'#13#10' ' +
          '   5) \'#39'eb\'#39'78\'#39'8f\'#39'53\'#39'c6\'#39'da\'#39'd6\'#39'ae"\'#39'd4\'#39'ad\'#39'b6\'#39'a8/\'#39'd0\'#39'de' +
          '\'#39'd3\'#39'86"\'#39'd2\'#39'bb\'#39'99\'#39'da: \cf2\'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'f3\'#39'77\cf1\'#39'cc\' +
          #39'e1\'#39'ca\'#39'be\'#39'ce\'#39'b4\'#39'81\'#39'ed7-14\'#39'cc\'#39'ec\'#39'83\'#39'c8\'#39'a3\'#39'ac\'#39'd2\'#39'aa\' +
          #39'dd\'#39'94\'#39'c8\'#39'eb"\'#39'b0\'#39'b2\'#39'c5\'#39'c5(\f1 PDN\f3\'#39'bd\'#39'4b\'#39'd5\'#39'be)"\'#39'd' +
          '2\'#39'bb\'#39'99\'#39'da\'#39'83\'#39'c8\'#39'd6\'#39'ae\'#39'bf\'#39'd5\'#39'b0\'#39'd7\'#39'c8\'#39'd5\'#39'c6\'#39'da\'#39'a' +
          '1\'#39'a3\cf2\b\'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'b4\'#39'd6\'#39'f3\'#39'77\cf1\b0\'#39'be\'#39'af\'#39'ca\'#39 +
          'be\'#39'd2\'#39'f2\'#39'd2\'#39'd1\'#39'df\'#39'5e\'#39'c6\'#39'da\'#39'a3\'#39'ac\'#39'91\'#39'aa\'#39'bc\'#39'b4\'#39'bf\'#39 +
          'cc\'#39'dd\'#39'94\'#39'c8\'#39'eb\'#39'cb\'#39'f9\'#39'd6\'#39'76\'#39'b5\'#39'c4\'#39'bf\'#39'd5\'#39'b0\'#39'd7\'#39'99\'#39 +
          'da\'#39'a1\'#39'a3\line     6) \'#39'eb\'#39'78\'#39'8f\'#39'53\'#39'c6\'#39'da\'#39'd6\'#39'ae"\'#39'b0\'#39'b2' +
          '\'#39'c5\'#39'c5\'#39'c8\'#39'd5\'#39'b2\'#39'ee"\'#39'd2\'#39'bb\'#39'99\'#39'da: \cf2\b\'#39'bc\'#39'74\'#39'd7\'#39'd' +
          '6\'#39'b4\'#39'd6\'#39'f3\'#39'77\cf1\b0\'#39'be\'#39'af\'#39'ca\'#39'be\'#39'b0\'#39'b2\'#39'c5\'#39'c5\'#39'c8\'#39'd5' +
          '\'#39'c6\'#39'da\'#39'dd\'#39'5e"\'#39'd4\'#39'ad\'#39'b6\'#39'a8/\'#39'd0\'#39'de\'#39'd3\'#39'86"\'#39'd6\'#39'ae\'#39'eb\' +
          #39'78\'#39'8f\'#39'53\'#39'c6\'#39'da\'#39'df\'#39'74\'#39'a1\'#39'a3\line     7) \'#39'c6\'#39'e4\'#39'cb\'#39'fb' +
          '\'#39'ca\'#39'c2\'#39'ed\'#39'97\'#39'd6\'#39'ae"\'#39'94\'#39'b5\'#39'ed\'#39'93\'#39'8f\'#39'88\'#39'94\'#39'b5"\'#39'd2\'#39 +
          'bb\'#39'99\'#39'da:\cf2\b  \'#39'bc\'#39'74\'#39'd7\'#39'd6\'#39'b4\'#39'd6\'#39'f3\'#39'77\cf1\b0\'#39'be\'#39 +
          'af\'#39'ca\'#39'be\'#39'eb\'#39'6d\'#39'c8\'#39'bb\'#39'd2\'#39'd1\'#39'd3\'#39'd0\'#39'94\'#39'b5\'#39'ed\'#39'93\'#39'94\'#39 +
          'b5\'#39'c4\'#39'bf\'#39'a3\'#39'ac\'#39'b5\'#39'ab\'#39'ce\'#39'b4\'#39'bd\'#39'a8\'#39'c1\'#39'a2\'#39'b4\'#39'cb\'#39'94\'#39 +
          'b5\'#39'ed\'#39'93\'#39'b5\'#39'c4\'#39'ee\'#39'41\'#39'd4\'#39'4f/\'#39'd0\'#39'de\'#39'd3\'#39'86\'#39'bf\'#39'70\'#39'ba\' +
          #39'cf\'#39'c6\'#39'da\'#39'd6\'#39'ae\'#39'e9\'#39'5f\'#39'ca\'#39'bc\'#39'c8\'#39'd5\'#39'c6\'#39'da\'#39'a1\'#39'a3\line' +
          '\pard\f2\par'#13#10'}'#13#10#0
        Transparent = True
        mmHeight = 25929
        mmLeft = 1058
        mmTop = 26988
        mmWidth = 282311
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLine201: TppLine
        UserName = 'Line2001'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 151342
        mmTop = 15875
        mmWidth = 1323
        BandType = 7
      end
      object ppLine203: TppLine
        UserName = 'Line203'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel207: TppLabel
        UserName = 'Label207'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 174361
        mmTop = 12965
        mmWidth = 6879
        BandType = 7
      end
      object ppLabel209: TppLabel
        UserName = 'Label209'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 174361
        mmTop = 16933
        mmWidth = 6879
        BandType = 7
      end
      object ex_ox001: TppLabel
        UserName = 'ex_ox001'
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
        mmHeight = 2646
        mmLeft = 182034
        mmTop = 12965
        mmWidth = 6615
        BandType = 7
      end
      object ex_ox002: TppLabel
        UserName = 'ex_ox002'
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
        mmHeight = 2646
        mmLeft = 182034
        mmTop = 16933
        mmWidth = 6615
        BandType = 7
      end
      object ppLine204: TppLine
        UserName = 'Line204'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 196321
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object t3dtx001: TppLabel
        UserName = 't3dtx001'
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
        mmHeight = 2646
        mmLeft = 189442
        mmTop = 8996
        mmWidth = 6615
        BandType = 7
      end
      object ppLabel222: TppLabel
        UserName = 'Label222'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'aT3'#25976' (log):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 176477
        mmTop = 4763
        mmWidth = 12171
        BandType = 7
      end
      object t3dtx002: TppLabel
        UserName = 't3dtx002'
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
        mmHeight = 2646
        mmLeft = 189442
        mmTop = 4763
        mmWidth = 6615
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'cust'
      DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewPage = True
      NewFile = False
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
        BeforePrint = ppGroupFooterBand3BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 20902
        mmPrintPosition = 0
        object ppShape8: TppShape
          UserName = 'Shape8'
          mmHeight = 16140
          mmLeft = 794
          mmTop = 3969
          mmWidth = 282840
          BandType = 5
          GroupNo = 0
        end
        object act_itemd001: TppLabel
          UserName = 'act_itemd001'
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
          mmLeft = 270934
          mmTop = 4763
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object custcolord001: TppLabel
          UserName = 'custcolord001'
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
          mmLeft = 89959
          mmTop = 4763
          mmWidth = 8202
          BandType = 5
          GroupNo = 0
        end
        object custpod001: TppLabel
          UserName = 'custpod001'
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
          mmLeft = 21696
          mmTop = 4763
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object custstyled001: TppLabel
          UserName = 'custstyled001'
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
          mmLeft = 61119
          mmTop = 4763
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
        end
        object ex_od001: TppLabel
          UserName = 'ex_od001'
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
          mmLeft = 182034
          mmTop = 8996
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
        end
        object fwdt_ad001: TppLabel
          UserName = 'fwdt_ad001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 174361
          mmTop = 8996
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object fwdt_od001: TppLabel
          UserName = 'fwdt_od001'
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
          mmLeft = 166688
          mmTop = 8996
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object m_ddtd002: TppLabel
          UserName = 'm_ddtd002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 145257
          mmTop = 8996
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object m_endd002: TppLabel
          UserName = 'm_endd002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 160073
          mmTop = 8996
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object m_startd001: TppLabel
          UserName = 'm_startd001'
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
          mmLeft = 151871
          mmTop = 8996
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object mddtd001: TppLabel
          UserName = 'mddtd001'
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
          mmLeft = 136790
          mmTop = 8996
          mmWidth = 7673
          BandType = 5
          GroupNo = 0
        end
        object phcolord001: TppLabel
          UserName = 'phcolord001'
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
          mmLeft = 98954
          mmTop = 4763
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'keycode'
          DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2381
          mmLeft = 1588
          mmTop = 4763
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'qty1'
          DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2381
          mmLeft = 119327
          mmTop = 4763
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
        end
        object ppLabel164: TppLabel
          UserName = 'Label164'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Summary ( '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 1852
          mmTop = 1058
          mmWidth = 10837
          BandType = 5
          GroupNo = 0
        end
        object ppLabel171: TppLabel
          UserName = 'Label171'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 106098
          mmTop = 4763
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppLabel172: TppLabel
          UserName = 'Label172'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #26495#26410#25209#25976' (log):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 65617
          mmTop = 8996
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppLabel175: TppLabel
          UserName = 'Label175'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #31354#30333#27396#25976'(log):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 121973
          mmTop = 8996
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppLabel178: TppLabel
          UserName = 'Label178'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 252942
          mmTop = 16933
          mmWidth = 30163
          BandType = 5
          GroupNo = 0
        end
        object ppLabel179: TppLabel
          UserName = 'Label2701'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 197644
          mmTop = 8996
          mmWidth = 36248
          BandType = 5
          GroupNo = 0
        end
        object ppLabel180: TppLabel
          UserName = 'Label180'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 197644
          mmTop = 4763
          mmWidth = 71438
          BandType = 5
          GroupNo = 0
        end
        object ppLabel181: TppLabel
          UserName = 'Label181'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 270934
          mmTop = 8996
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object ppLabel182: TppLabel
          UserName = 'Label182'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 81756
          mmTop = 4763
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppLabel183: TppLabel
          UserName = 'Label183'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 53711
          mmTop = 4763
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
        end
        object ppLine132: TppLine
          UserName = 'Line132'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 81227
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine133: TppLine
          UserName = 'Line133'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 12171
          mmLeft = 166159
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine147: TppLine
          UserName = 'Line147'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 244211
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine148: TppLine
          UserName = 'Line148'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7938
          mmLeft = 270405
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine149: TppLine
          UserName = 'Line149'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 60590
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine150: TppLine
          UserName = 'Line150'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 129382
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine151: TppLine
          UserName = 'Line1201'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 203730
          mmTop = 15875
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine152: TppLine
          UserName = 'Line152'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 8202
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine153: TppLine
          UserName = 'Line153'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7938
          mmLeft = 21167
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine154: TppLine
          UserName = 'Line154'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 41275
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine155: TppLine
          UserName = 'Line155'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 53181
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine156: TppLine
          UserName = 'Line156'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 81227
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine157: TppLine
          UserName = 'Line157'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 89429
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine158: TppLine
          UserName = 'Line158'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 98425
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine159: TppLine
          UserName = 'Line159'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 104511
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine160: TppLine
          UserName = 'Line160'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 151342
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine161: TppLine
          UserName = 'Line161'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 209815
          mmTop = 15875
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine162: TppLine
          UserName = 'Line162'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 118798
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine163: TppLine
          UserName = 'Line163'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 11906
          mmLeft = 181505
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine164: TppLine
          UserName = 'Line164'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15875
          mmLeft = 188913
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine165: TppLine
          UserName = 'Line165'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 235215
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine166: TppLine
          UserName = 'Line1401'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 159544
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine167: TppLine
          UserName = 'Line167'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 16140
          mmLeft = 136261
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine174: TppLine
          UserName = 'Line174'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 12171
          mmLeft = 173832
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine175: TppLine
          UserName = 'Line175'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 1058
          mmTop = 7938
          mmWidth = 282576
          BandType = 5
          GroupNo = 0
        end
        object ppLine176: TppLine
          UserName = 'Line176'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 12171
          mmLeft = 144727
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object prjd001: TppLabel
          UserName = 'prjd001'
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
          mmLeft = 8731
          mmTop = 4763
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object prod_sited001: TppLabel
          UserName = 'prod_sited001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 235744
          mmTop = 8996
          mmWidth = 3704
          BandType = 5
          GroupNo = 0
        end
        object sp_appd001: TppLabel
          UserName = 'sp_appd001'
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
          mmLeft = 81756
          mmTop = 8996
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object wod001: TppLabel
          UserName = 'wod001'
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
          mmLeft = 41804
          mmTop = 4763
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppDBText61: TppDBText
          UserName = 'DBText61'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'cust'
          DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2381
          mmLeft = 13229
          mmTop = 1058
          mmWidth = 7938
          BandType = 5
          GroupNo = 0
        end
        object ppLabel188: TppLabel
          UserName = 'Label188'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = ') :- '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2498
          mmLeft = 22225
          mmTop = 1058
          mmWidth = 3217
          BandType = 5
          GroupNo = 0
        end
        object ppLine179: TppLine
          UserName = 'Line179'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7938
          mmLeft = 37306
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLabel157: TppLabel
          UserName = 'Label157'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 37835
          mmTop = 4763
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine184: TppLine
          UserName = 'Line184'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 239713
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'sp_qty'
          DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2032
          mmLeft = 129911
          mmTop = 4763
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
        end
        object ppLine186: TppLine
          UserName = 'Line186'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 794
          mmTop = 11906
          mmWidth = 282576
          BandType = 5
          GroupNo = 0
        end
        object ppLabel191: TppLabel
          UserName = 'Label191'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #24433#38911#26178#38480#27396#25552#31034'('#32005#23383#39636')(log):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 51858
          mmTop = 12965
          mmWidth = 29104
          BandType = 5
          GroupNo = 0
        end
        object ppLine188: TppLine
          UserName = 'Line188'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 252148
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine189: TppLine
          UserName = 'Line189'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 248180
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLabel196: TppLabel
          UserName = 'Label196'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 145257
          mmTop = 12965
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
        end
        object ppLabel197: TppLabel
          UserName = 'Label197'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 190500
          mmTop = 12965
          mmWidth = 91281
          BandType = 5
          GroupNo = 0
        end
        object prod_site1d001: TppLabel
          UserName = 'prod_site1d001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 239978
          mmTop = 8996
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object line_tnod001: TppLabel
          UserName = 'line_tnod001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 244740
          mmTop = 8996
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object qn_tnod001: TppLabel
          UserName = 'qn_tnod001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 248709
          mmTop = 8996
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object qn_tnoxd001: TppLabel
          UserName = 'qn_tnoxd001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 248709
          mmTop = 16933
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object mddtxd001: TppLabel
          UserName = 'mddtxd001'
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
          mmLeft = 136790
          mmTop = 12965
          mmWidth = 7673
          BandType = 5
          GroupNo = 0
        end
        object fwdt_oxd001: TppLabel
          UserName = 'fwdt_oxd001'
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
          mmLeft = 166688
          mmTop = 12965
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object exdiffd001: TppLabel
          UserName = 'exdiffd001'
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
          mmLeft = 204259
          mmTop = 16933
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object custpoxd001: TppLabel
          UserName = 'custpoxd001'
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
          mmLeft = 21696
          mmTop = 8996
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppLabel202: TppLabel
          UserName = 'Label202'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #37559#21806#21934#31354#30333#27396#25976'(log):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          Transparent = True
          mmHeight = 2032
          mmLeft = 1323
          mmTop = 8996
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppLine192: TppLine
          UserName = 'Line192'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 258498
          mmTop = 7938
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object m_ddtxd002: TppLabel
          UserName = 'm_ddtxd002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 145257
          mmTop = 16933
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
        end
        object pakxd001: TppLabel
          UserName = 'pakxd001'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 252678
          mmTop = 8996
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
        end
        object destxd001: TppLabel
          UserName = 'destxd001'
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
          mmLeft = 259557
          mmTop = 8996
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
        end
        object sp_appxd001: TppLabel
          UserName = 'sp_appxd001'
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
          mmLeft = 81756
          mmTop = 12965
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppLabel204: TppLabel
          UserName = 'Label204'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 90488
          mmTop = 12965
          mmWidth = 44715
          BandType = 5
          GroupNo = 0
        end
        object ppLine195: TppLine
          UserName = 'Line195'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 794
          mmTop = 15875
          mmWidth = 282576
          BandType = 5
          GroupNo = 0
        end
        object fwdt_oxd1001: TppLabel
          UserName = 'fwdt_oxd1001'
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
          mmLeft = 166688
          mmTop = 16933
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object mddtxd1001: TppLabel
          UserName = 'mddtxd1001'
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
          mmLeft = 136790
          mmTop = 16933
          mmWidth = 7673
          BandType = 5
          GroupNo = 0
        end
        object ppLabel212: TppLabel
          UserName = 'Label212'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #24433#38911#26178#38480#27396#35686#31034'('#32005#23383#31895#39636')(log):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 50006
          mmTop = 16933
          mmWidth = 30956
          BandType = 5
          GroupNo = 0
        end
        object ppLabel217: TppLabel
          UserName = 'Label217'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 151871
          mmTop = 16933
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppLabel218: TppLabel
          UserName = 'Label218'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 211932
          mmTop = 16933
          mmWidth = 34660
          BandType = 5
          GroupNo = 0
        end
        object ppLabel219: TppLabel
          UserName = 'Label219'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 90488
          mmTop = 16933
          mmWidth = 44715
          BandType = 5
          GroupNo = 0
        end
        object ppLabel220: TppLabel
          UserName = 'Label220'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 190500
          mmTop = 16933
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object sp_appxd1001: TppLabel
          UserName = 'sp_appxd1001'
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
          mmLeft = 81756
          mmTop = 16933
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppLine196: TppLine
          UserName = 'Line196'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 248180
          mmTop = 15875
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine198: TppLine
          UserName = 'Line198'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 252148
          mmTop = 15875
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine200: TppLine
          UserName = 'Line200'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 151342
          mmTop = 15875
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLine96: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4233
          mmLeft = 89429
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object ppLabel148: TppLabel
          UserName = 'Label148'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 174361
          mmTop = 12965
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object ppLabel208: TppLabel
          UserName = 'Label208'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '- -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2381
          mmLeft = 174361
          mmTop = 16933
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object ex_oxd001: TppLabel
          UserName = 'ex_oxd001'
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
          mmLeft = 182034
          mmTop = 12965
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
        end
        object ex_oxd002: TppLabel
          UserName = 'ex_oxd002'
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
          mmLeft = 182034
          mmTop = 16933
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
        end
        object ppLine205: TppLine
          UserName = 'Line205'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7938
          mmLeft = 196321
          mmTop = 3969
          mmWidth = 1323
          BandType = 5
          GroupNo = 0
        end
        object t3dtxd001: TppLabel
          UserName = 't3dtxd001'
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
          mmLeft = 189442
          mmTop = 8996
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
        end
        object t3dtxd002: TppLabel
          UserName = 't3dtxd002'
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
          mmLeft = 189442
          mmTop = 4763
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
        end
        object ppLabel221: TppLabel
          UserName = 'Label221'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'aT3'#25976' (log):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2381
          mmLeft = 176477
          mmTop = 4763
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppReport5: TppReport
    AutoStop = False
    DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport5PreviewFormCreate
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 344
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object ppShape64: TppShape
        UserName = 'Shape10'
        mmHeight = 17992
        mmLeft = 794
        mmTop = 16669
        mmWidth = 282840
        BandType = 0
      end
      object ppShape67: TppShape
        UserName = 'Shape27'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 46567
        mmTop = 16933
        mmWidth = 7673
        BandType = 0
      end
      object ppShape76: TppShape
        UserName = 'Shape19'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 74613
        mmTop = 16933
        mmWidth = 6085
        BandType = 0
      end
      object ppShape77: TppShape
        UserName = 'Shape24'
        Brush.Color = 10485759
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 237596
        mmTop = 16933
        mmWidth = 32808
        BandType = 0
      end
      object ppShape78: TppShape
        UserName = 'Shape25'
        Brush.Color = 6731517
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 270669
        mmTop = 16933
        mmWidth = 12700
        BandType = 0
      end
      object ppShape79: TppShape
        UserName = 'Shape23'
        Brush.Color = 10485759
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 188648
        mmTop = 16933
        mmWidth = 14817
        BandType = 0
      end
      object ppShape80: TppShape
        UserName = 'Shape22'
        Brush.Color = 6731517
        Pen.Style = psClear
        mmHeight = 8202
        mmLeft = 180975
        mmTop = 16933
        mmWidth = 7938
        BandType = 0
      end
      object ppShape81: TppShape
        UserName = 'Shape21'
        Brush.Color = 10485759
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 16933
        mmWidth = 63500
        BandType = 0
      end
      object ppShape82: TppShape
        UserName = 'Shape20'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 104775
        mmTop = 16933
        mmWidth = 12700
        BandType = 0
      end
      object ppShape83: TppShape
        UserName = 'Shape18'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 34396
        mmTop = 16933
        mmWidth = 12435
        BandType = 0
      end
      object ppShape84: TppShape
        UserName = 'mex1001'
        Brush.Color = 6731517
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 203465
        mmTop = 16933
        mmWidth = 34131
        BandType = 0
      end
      object ppShape85: TppShape
        UserName = 'Shape16'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 95515
        mmTop = 16933
        mmWidth = 9260
        BandType = 0
      end
      object ppShape86: TppShape
        UserName = 'Shape15'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 16933
        mmWidth = 15081
        BandType = 0
      end
      object ppShape87: TppShape
        UserName = 'Shape14'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 54240
        mmTop = 16933
        mmWidth = 20638
        BandType = 0
      end
      object ppShape88: TppShape
        UserName = 'Shape13'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 20108
        mmTop = 16933
        mmWidth = 14288
        BandType = 0
      end
      object ppShape89: TppShape
        UserName = 'Shape12'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 8467
        mmTop = 16933
        mmWidth = 11642
        BandType = 0
      end
      object ppShape90: TppShape
        UserName = 'Shape11'
        Brush.Color = 14216405
        Pen.Style = psClear
        mmHeight = 17463
        mmLeft = 1058
        mmTop = 16933
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel227: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#29992#26009'_'#36865#26009#26399#33287#38626#24288#26399#20043#26178#36317
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 203994
        mmTop = 17727
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel264: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33394#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 82550
        mmTop = 26988
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel265: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 203994
        mmTop = 31221
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel266: TppLabel
        UserName = 'mex101'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26410#20633#40778'_'#20381#35336#21123
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 203994
        mmTop = 21696
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel267: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36650#21046#21934#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 106363
        mmTop = 23019
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel268: TppLabel
        UserName = 'mex102'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#40778'_'#20381#35336#21123
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 220928
        mmTop = 21696
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel269: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#33394#20381#38752') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 106363
        mmTop = 26988
        mmWidth = 8382
        BandType = 0
      end
      object ppLabel274: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 210873
        mmTop = 12435
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel277: TppLabel
        UserName = 'mex104'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 220928
        mmTop = 31221
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel278: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 212461
        mmTop = 31221
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel279: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 205317
        mmTop = 28310
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel280: TppLabel
        UserName = 'mex108'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 229394
        mmTop = 31221
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel281: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #34892#21205#35468
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 271463
        mmTop = 17727
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel282: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 260615
        mmTop = 12435
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel283: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 212990
        mmTop = 28310
        mmWidth = 5630
        BandType = 0
      end
      object ppLabel284: TppLabel
        UserName = 'mex107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 230188
        mmTop = 28310
        mmWidth = 5630
        BandType = 0
      end
      object ppLabel285: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38917#30446#39006' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 273844
        mmTop = 25135
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel286: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#35468'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 2381
        mmTop = 19315
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel287: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Log'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 2381
        mmTop = 26988
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel288: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' No.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 2381
        mmTop = 30692
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel289: TppLabel
        UserName = 'Label80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 2381
        mmTop = 23019
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel290: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 11377
        mmTop = 24871
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel291: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37559#21806#21934#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 23019
        mmTop = 24871
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel292: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#26041#27454#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 60590
        mmTop = 24871
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel293: TppLabel
        UserName = 'Label84'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#26041' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 82550
        mmTop = 23019
        mmWidth = 4763
        BandType = 0
      end
      object ppLine407: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 8202
        mmTop = 16669
        mmWidth = 2381
        BandType = 0
      end
      object ppLine408: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 237332
        mmTop = 16933
        mmWidth = 2117
        BandType = 0
      end
      object ppLine409: TppLine
        UserName = 'Line35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 104511
        mmTop = 16669
        mmWidth = 1323
        BandType = 0
      end
      object ppLine410: TppLine
        UserName = 'Line36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 117211
        mmTop = 16669
        mmWidth = 1852
        BandType = 0
      end
      object ppLine411: TppLine
        UserName = 'Line37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 80169
        mmTop = 16669
        mmWidth = 1852
        BandType = 0
      end
      object ppLine412: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 188648
        mmTop = 20902
        mmWidth = 94986
        BandType = 0
      end
      object ppLine413: TppLine
        UserName = 'Line53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 203465
        mmTop = 27517
        mmWidth = 33867
        BandType = 0
      end
      object ppLine414: TppLine
        UserName = 'Line55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 211932
        mmTop = 27781
        mmWidth = 1852
        BandType = 0
      end
      object ppLine415: TppLine
        UserName = 'Line56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 220398
        mmTop = 20902
        mmWidth = 1852
        BandType = 0
      end
      object ppLine416: TppLine
        UserName = 'Line57'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 19844
        mmTop = 16933
        mmWidth = 2381
        BandType = 0
      end
      object ppLine417: TppLine
        UserName = 'Line58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 228865
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLine418: TppLine
        UserName = 'Line64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 34131
        mmTop = 16933
        mmWidth = 2381
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 226219
        mmTop = 12435
        mmWidth = 32544
        BandType = 0
      end
      object ppLine419: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 270405
        mmTop = 16669
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel294: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20854#23427#20107#38917
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 238125
        mmTop = 17727
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel295: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22522#22320' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 238125
        mmTop = 26988
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel296: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29983#29986' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 238125
        mmTop = 23019
        mmWidth = 4763
        BandType = 0
      end
      object ppLine420: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 243417
        mmTop = 20902
        mmWidth = 1852
        BandType = 0
      end
      object ppLine421: TppLine
        UserName = 'Line601'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 255323
        mmTop = 20902
        mmWidth = 1852
        BandType = 0
      end
      object dest003: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #30446#30340#22320' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 261938
        mmTop = 25929
        mmWidth = 6943
        BandType = 0
      end
      object ppLine424: TppLine
        UserName = 'Line65'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 203465
        mmTop = 16669
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel304: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 36777
        mmTop = 24871
        mmWidth = 6879
        BandType = 0
      end
      object ppLine425: TppLine
        UserName = 'Line66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 53975
        mmTop = 16669
        mmWidth = 2381
        BandType = 0
      end
      object ppLine426: TppLine
        UserName = 'Line68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 88900
        mmTop = 20902
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel305: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33394#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 89694
        mmTop = 26988
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel306: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24288#26041' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 89694
        mmTop = 23019
        mmWidth = 4763
        BandType = 0
      end
      object ppLine427: TppLine
        UserName = 'Line69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 95250
        mmTop = 16669
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel307: TppLabel
        UserName = 'Label87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37559#21806#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 97102
        mmTop = 19844
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel308: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#33394#20381#38752') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 95779
        mmTop = 29369
        mmWidth = 8382
        BandType = 0
      end
      object ppLabel309: TppLabel
        UserName = 'Label90'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#29992#26009'_'#36865#26009#26399' ('#38928#35373')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 121444
        mmTop = 17727
        mmWidth = 55033
        BandType = 0
      end
      object ppLine428: TppLine
        UserName = 'Line70'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 148961
        mmTop = 20902
        mmWidth = 1852
        BandType = 0
      end
      object ppLine429: TppLine
        UserName = 'Line602'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 141552
        mmTop = 29369
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel312: TppLabel
        UserName = 'Label901'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24288#38283#22987
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 181240
        mmTop = 17727
        mmWidth = 7144
        BandType = 0
      end
      object ppLine430: TppLine
        UserName = 'Line73'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 180711
        mmTop = 16669
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel313: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450'/ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 182563
        mmTop = 26723
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel315: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38626#24288#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 192617
        mmTop = 17727
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel316: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 190236
        mmTop = 25135
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel317: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 197644
        mmTop = 25135
        mmWidth = 5630
        BandType = 0
      end
      object ppLine431: TppLine
        UserName = 'Line74'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 188648
        mmTop = 16669
        mmWidth = 1852
        BandType = 0
      end
      object ppLine432: TppLine
        UserName = 'Line75'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 196057
        mmTop = 20902
        mmWidth = 1852
        BandType = 0
      end
      object ppLine433: TppLine
        UserName = 'Line79'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 80433
        mmTop = 20902
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel319: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32317#25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 97896
        mmTop = 24342
        mmWidth = 4763
        BandType = 0
      end
      object ppLine434: TppLine
        UserName = 'Line80'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 74613
        mmTop = 16669
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel320: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27454#38991#33394' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 84667
        mmTop = 17727
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel321: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#26495' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 75406
        mmTop = 24606
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel322: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#25209' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 75406
        mmTop = 30956
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel323: TppLabel
        UserName = 'Label801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#24050' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 75406
        mmTop = 27781
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel325: TppLabel
        UserName = 'Label109'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21253
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 252413
        mmTop = 21960
        mmWidth = 2117
        BandType = 0
      end
      object ppLine435: TppLine
        UserName = 'Line105'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 46567
        mmTop = 16669
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel326: TppLabel
        UserName = 'Label110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#36650' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 48419
        mmTop = 19315
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel327: TppLabel
        UserName = 'Label1101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 48419
        mmTop = 24342
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel328: TppLabel
        UserName = 'Label1102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#34399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 48419
        mmTop = 29369
        mmWidth = 3969
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
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
        mmLeft = 269876
        mmTop = 12435
        mmWidth = 7144
        BandType = 0
      end
      object ppLine437: TppLine
        UserName = 'Line144'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 125677
        mmTop = 29369
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel331: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#26448#26009'('#20027#26009'/'#21103#26009') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 125148
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
      end
      object title005: TppLabel
        UserName = 'title005'
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
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 62971
        mmTop = 11906
        mmWidth = 144992
        BandType = 0
      end
      object ppRichText2: TppRichText
        UserName = 'title201'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'title201'
        RichText = 
          '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
          '\f0\fswiss\fcharset0 Arial;}}'#13#10'{\colortbl ;\red0\green0\blue0;}'#13 +
          #10'\viewkind4\uc1\pard\qc\cf1\lang1028\f0\fs24 Central Order Proce' +
          'ssing - "Initial stage of shipment on time factors determinant"\' +
          'par'#13#10'}'#13#10#0
        Transparent = True
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 6350
        mmWidth = 280194
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel333: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35037
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 252413
        mmTop = 25135
        mmWidth = 2117
        BandType = 0
      end
      object dest004: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22283#23478' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 263261
        mmTop = 29369
        mmWidth = 4826
        BandType = 0
      end
      object ppLine438: TppLine
        UserName = 'Line603'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 251619
        mmTop = 20902
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel335: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 244475
        mmTop = 31221
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel336: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35037' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 244475
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel337: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32218' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 244475
        mmTop = 28310
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel338: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #32068' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 244475
        mmTop = 21960
        mmWidth = 2646
        BandType = 0
      end
      object ppLine439: TppLine
        UserName = 'Line136'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 134144
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel339: TppLabel
        UserName = 'Label151'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #37197#22871#26009' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 161132
        mmTop = 21960
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel340: TppLabel
        UserName = 'Label165'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38283#22987#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 121973
        mmTop = 25929
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel341: TppLabel
        UserName = 'Label166'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#40778'(+/-) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 137319
        mmTop = 25929
        mmWidth = 8805
        BandType = 0
      end
      object ppLine440: TppLine
        UserName = 'Line292'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 117211
        mmTop = 24871
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel342: TppLabel
        UserName = 'Label167'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 126207
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel344: TppLabel
        UserName = 'Label169'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 117740
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel346: TppLabel
        UserName = 'mex103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 221986
        mmTop = 28310
        mmWidth = 4763
        BandType = 0
      end
      object ppLine441: TppLine
        UserName = 'Line604'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 247650
        mmTop = 20902
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel347: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 248444
        mmTop = 31221
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel348: TppLabel
        UserName = 'Label173'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 248444
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel349: TppLabel
        UserName = 'Label174'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24373' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 248444
        mmTop = 28310
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel350: TppLabel
        UserName = 'Label176'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #25976' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 248444
        mmTop = 21960
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel314: TppLabel
        UserName = 'Label314'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38283#22987#36865#21407#26448#26009#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 203994
        mmTop = 24606
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel329: TppLabel
        UserName = 'Label329'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23436#25104#36865#21407#26448#26009#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 220928
        mmTop = 24606
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel318: TppLabel
        UserName = 'Label318'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29983#29986#26399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 181240
        mmTop = 21167
        mmWidth = 7144
        BandType = 0
      end
      object ppLine468: TppLine
        UserName = 'Line468'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 117211
        mmTop = 20902
        mmWidth = 63500
        BandType = 0
      end
      object ppLine436: TppLine
        UserName = 'Line436'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 117211
        mmTop = 29104
        mmWidth = 63500
        BandType = 0
      end
      object ppLabel330: TppLabel
        UserName = 'Label330'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 142082
        mmTop = 30427
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel332: TppLabel
        UserName = 'Label332'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 134673
        mmTop = 30427
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel343: TppLabel
        UserName = 'Label3301'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 173832
        mmTop = 30427
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel345: TppLabel
        UserName = 'Label345'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 166423
        mmTop = 30427
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel351: TppLabel
        UserName = 'Label351'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 157957
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel357: TppLabel
        UserName = 'Label357'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21407#23450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 149490
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppLine478: TppLine
        UserName = 'Line478'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 165894
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine502: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 173302
        mmTop = 29369
        mmWidth = 1852
        BandType = 0
      end
      object ppLine503: TppLine
        UserName = 'Line503'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 157427
        mmTop = 29369
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel310: TppLabel
        UserName = 'Label310'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38283#22987#26085#26399' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 153459
        mmTop = 25929
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel311: TppLabel
        UserName = 'Label311'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#40778'(+/-) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 168805
        mmTop = 25929
        mmWidth = 8805
        BandType = 0
      end
      object ppLine510: TppLine
        UserName = 'Line510'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 260880
        mmTop = 20902
        mmWidth = 1323
        BandType = 0
      end
      object bc003: TppLabel
        UserName = 'bc003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BDC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 255853
        mmTop = 21960
        mmWidth = 4445
        BandType = 0
      end
      object bcx004: TppLabel
        UserName = 'bcx004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '   #  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 255853
        mmTop = 25135
        mmWidth = 4149
        BandType = 0
      end
      object title5x001: TppLabel
        UserName = 'title5x001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CARTE '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 256117
        mmTop = 1852
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel359: TppLabel
        UserName = 'Label359'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23458#25142#34399': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 243417
        mmTop = 1852
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26041
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 252413
        mmTop = 28310
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27861
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 252413
        mmTop = 31221
        mmWidth = 2117
        BandType = 0
      end
      object bcx005: TppLabel
        UserName = 'bcx005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '('#24050' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 256382
        mmTop = 28046
        mmWidth = 3429
        BandType = 0
      end
      object bcx006: TppLabel
        UserName = 'bcx006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21462') '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 256382
        mmTop = 31221
        mmWidth = 3429
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20462#35330'* '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 182563
        mmTop = 30427
        mmWidth = 5630
        BandType = 0
      end
      object ppLabel162: TppLabel
        UserName = 'Label162'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#38283' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 75406
        mmTop = 18256
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel163: TppLabel
        UserName = 'Label163'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  '#36008' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 75406
        mmTop = 21431
        mmWidth = 3895
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      BeforePrint = ppDetailBand7BeforePrint
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppShape91: TppShape
        UserName = 'Shape101'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 0
        mmWidth = 282840
        BandType = 4
      end
      object ppDBText114: TppDBText
        UserName = 'oskey001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'keycode'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 1323
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppLine442: TppLine
        UserName = 'Line76'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 8202
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText116: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'projectno'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 8731
        mmTop = 794
        mmWidth = 10848
        BandType = 4
      end
      object ppLine443: TppLine
        UserName = 'Line77'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 19844
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine444: TppLine
        UserName = 'Line78'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 34131
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText136: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'custpo'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 20373
        mmTop = 794
        mmWidth = 13494
        BandType = 4
      end
      object ppLine445: TppLine
        UserName = 'Line81'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 46567
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine446: TppLine
        UserName = 'Line82'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 74613
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine447: TppLine
        UserName = 'Line83'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 80169
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine448: TppLine
        UserName = 'Line84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 88900
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine449: TppLine
        UserName = 'Line85'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine450: TppLine
        UserName = 'Line86'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 228865
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine451: TppLine
        UserName = 'Line88'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 220398
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine452: TppLine
        UserName = 'Line89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 211932
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine453: TppLine
        UserName = 'Line91'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 203465
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine454: TppLine
        UserName = 'Line92'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 104511
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine455: TppLine
        UserName = 'Line94'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 188648
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine456: TppLine
        UserName = 'Line95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 196057
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine457: TppLine
        UserName = 'Line96'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 237332
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine458: TppLine
        UserName = 'Line97'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 141552
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine459: TppLine
        UserName = 'Line98'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 117211
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine460: TppLine
        UserName = 'Line99'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 180711
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine461: TppLine
        UserName = 'Line100'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 148961
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine462: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 243417
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine463: TppLine
        UserName = 'Line102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 255323
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine465: TppLine
        UserName = 'Line104'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 270405
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText137: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'workorderno'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 34925
        mmTop = 794
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText138: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'custstyle'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 54769
        mmTop = 794
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText139: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'custcolor'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 80698
        mmTop = 794
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText140: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'phcolor'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 89429
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText141: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'sp_app1'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 75406
        mmTop = 794
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText142: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ddt0'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 126207
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText143: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'fwdt_o'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 181240
        mmTop = 794
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText145: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ex_r'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 196586
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText146: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'act_item'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 270934
        mmTop = 794
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText147: TppDBText
        UserName = 'DBText37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'prod_site'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 237861
        mmTop = 794
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText148: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qty'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 96309
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText149: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qty1'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 105040
        mmTop = 794
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText150: TppDBText
        UserName = 'DBText402'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'mex_rd'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 212990
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText151: TppDBText
        UserName = 'mexd106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'mex_rd0'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 230188
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object ppLine466: TppLine
        UserName = 'Line106'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 53975
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText152: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'rwo_wo'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 47096
        mmTop = 794
        mmWidth = 6350
        BandType = 4
      end
      object ppLine467: TppLine
        UserName = 'Line109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 113771
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText153: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qty1_sp'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 114300
        mmTop = 794
        mmWidth = 2646
        BandType = 4
      end
      object ppLine469: TppLine
        UserName = 'Line145'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText155: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ddt'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 117740
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppLine470: TppLine
        UserName = 'Line173'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 251619
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText156: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'line_tno'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 244740
        mmTop = 794
        mmWidth = 2646
        BandType = 4
      end
      object ppLine471: TppLine
        UserName = 'Line72'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ddtx5001: TppLabel
        UserName = 'm_ddt001'
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
        mmLeft = 134673
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ddt0x5001: TppLabel
        UserName = 'm_end001'
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
        mmLeft = 142082
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppLine472: TppLine
        UserName = 'Line67'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 247650
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText157: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qn_tno'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 248444
        mmTop = 794
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText144: TppDBText
        UserName = 'DBText144'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ex_o'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 189177
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText154: TppDBText
        UserName = 'DBText154'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'mex_od'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 204523
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText161: TppDBText
        UserName = 'DBText161'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'mex_od0'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 221192
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object ppLine504: TppLine
        UserName = 'Line1003'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 157427
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine505: TppLine
        UserName = 'Line1004'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 165894
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine506: TppLine
        UserName = 'Line1005'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 173302
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText162: TppDBText
        UserName = 'DBText162'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'mcup_ddt0'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 157957
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText163: TppDBText
        UserName = 'DBText163'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'mcup_ddt'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        DisplayFormat = 'mm/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 149490
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object mddtx5001: TppLabel
        UserName = 'mddtx5001'
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
        mmLeft = 166423
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object mddt0x5001: TppLabel
        UserName = 'mddt0x5001'
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
        mmLeft = 173832
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText164: TppDBText
        UserName = 'DBText164'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'etam_pak'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 252148
        mmTop = 794
        mmWidth = 2910
        BandType = 4
      end
      object ppLine511: TppLine
        UserName = 'Line511'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 260880
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object bc004: TppLabel
        UserName = 'bc004'
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
        mmLeft = 255853
        mmTop = 794
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'pvh_dest'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2032
        mmLeft = 261409
        mmTop = 794
        mmWidth = 8731
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel361: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'front sheet   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 264055
        mmTop = 794
        mmWidth = 9790
        BandType = 8
      end
    end
    object ppSummaryBand7: TppSummaryBand
      BeforePrint = ppSummaryBand7BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object ppShape92: TppShape
        UserName = 'Shape29'
        mmHeight = 8202
        mmLeft = 794
        mmTop = 3969
        mmWidth = 282840
        BandType = 7
      end
      object ppLine473: TppLine
        UserName = 'Line1001'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 148961
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine474: TppLine
        UserName = 'Line114'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 243417
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine475: TppLine
        UserName = 'Line117'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 270405
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine476: TppLine
        UserName = 'Line118'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 53975
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine477: TppLine
        UserName = 'Line119'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine479: TppLine
        UserName = 'Line121'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine480: TppLine
        UserName = 'Line122'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine481: TppLine
        UserName = 'Line123'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 34131
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine482: TppLine
        UserName = 'Line124'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 46567
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine483: TppLine
        UserName = 'Line125'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 74613
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine484: TppLine
        UserName = 'Line126'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 80169
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine485: TppLine
        UserName = 'Line127'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 88900
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine486: TppLine
        UserName = 'Line128'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine488: TppLine
        UserName = 'Line135'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 104511
        mmTop = 3969
        mmWidth = 1323
        BandType = 7
      end
      object ppLine489: TppLine
        UserName = 'Line137'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 188648
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine490: TppLine
        UserName = 'Line138'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 196057
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine491: TppLine
        UserName = 'Line139'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 237332
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine493: TppLine
        UserName = 'Line141'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 117211
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine494: TppLine
        UserName = 'Line142'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 180711
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppDBCalc33: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'keycode'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 1588
        mmTop = 4763
        mmWidth = 6085
        BandType = 7
      end
      object prj5001: TppLabel
        UserName = 'prj001'
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
        mmLeft = 8731
        mmTop = 4763
        mmWidth = 10848
        BandType = 7
      end
      object custpo5001: TppLabel
        UserName = 'custpo001'
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
        mmLeft = 20373
        mmTop = 4763
        mmWidth = 13494
        BandType = 7
      end
      object wo5001: TppLabel
        UserName = 'wo001'
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
        mmLeft = 34925
        mmTop = 4763
        mmWidth = 10848
        BandType = 7
      end
      object custstyle5001: TppLabel
        UserName = 'custstyle001'
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
        mmLeft = 54769
        mmTop = 4763
        mmWidth = 19579
        BandType = 7
      end
      object sp_app5001: TppLabel
        UserName = 'sp_app001'
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
        mmLeft = 75142
        mmTop = 8996
        mmWidth = 4763
        BandType = 7
      end
      object custcolor5001: TppLabel
        UserName = 'custcolor001'
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
        mmLeft = 80698
        mmTop = 4763
        mmWidth = 7938
        BandType = 7
      end
      object phcolor5001: TppLabel
        UserName = 'phcolor001'
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
        mmLeft = 89429
        mmTop = 4763
        mmWidth = 5556
        BandType = 7
      end
      object ppDBCalc34: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'qty1'
        DataPipeline = frmCarte_Ordprocessing.ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 105040
        mmTop = 4763
        mmWidth = 8202
        BandType = 7
      end
      object x05001: TppLabel
        UserName = 'm_start001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 126207
        mmTop = 8996
        mmWidth = 7673
        BandType = 7
      end
      object fwdto5001: TppLabel
        UserName = 'fwdt_o001'
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
        mmLeft = 181240
        mmTop = 8996
        mmWidth = 7144
        BandType = 7
      end
      object exo5001: TppLabel
        UserName = 'ex_o001'
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
        mmLeft = 189177
        mmTop = 8996
        mmWidth = 6615
        BandType = 7
      end
      object actitem5001: TppLabel
        UserName = 'act_item001'
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
        mmLeft = 270934
        mmTop = 4763
        mmWidth = 12171
        BandType = 7
      end
      object ppLabel372: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'PS: 1. '#36650#21046#21934#25976' ('#33394#20381#38752')'#26049#37002#30340' * '#34920#31034#27492#36650#21046#21934#25976#28858#26495#25976', '#30456#38364#26495#25976#19981#25552#20379' "'#23433#25490' (PDN) '#38626#24288#26399'" '#20043#36039#26009'   ' +
          '   2. '#38917#30446#39006#26049#37002#30340' * '#34920#31034#27492#38917#30446#39006#24050#23436#25104
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 15346
        mmWidth = 242888
        BandType = 7
      end
      object prodsite5001: TppLabel
        UserName = 'prod_site001'
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
        mmLeft = 237861
        mmTop = 8996
        mmWidth = 5292
        BandType = 7
      end
      object ppLabel374: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Summary:- '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 794
        mmTop = 1058
        mmWidth = 10837
        BandType = 7
      end
      object ppLine495: TppLine
        UserName = 'Line143'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 7938
        mmWidth = 282576
        BandType = 7
      end
      object ppLine496: TppLine
        UserName = 'Line146'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppSubReport3: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 21431
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          Columns = 2
          ColumnPositions.Strings = (
            '6350'
            '148499')
          DataPipeline = frmCarte_Ordprocessing.ppDBPipeline3
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
          Version = '11.07'
          mmColumnWidth = 142150
          DataPipelineName = 'ppDBPipeline3'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppHeaderBand8: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppLabel375: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #38917#30446#39006':- '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 3440
              mmTop = 2117
              mmWidth = 8255
              BandType = 0
            end
          end
          object ppColumnHeaderBand2: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppShape93: TppShape
              UserName = 'Shape1'
              mmHeight = 5027
              mmLeft = 794
              mmTop = 0
              mmWidth = 132821
              BandType = 2
            end
            object ppLabel376: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #20998#39006
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2498
              mmLeft = 1588
              mmTop = 1323
              mmWidth = 23813
              BandType = 2
            end
            object ppLabel377: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #32232#34399
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2381
              mmLeft = 28310
              mmTop = 1323
              mmWidth = 11377
              BandType = 2
            end
            object ppLabel378: TppLabel
              UserName = 'Label4'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #25551#36848
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2381
              mmLeft = 42598
              mmTop = 1323
              mmWidth = 90223
              BandType = 2
            end
            object ppLine497: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4763
              mmLeft = 26458
              mmTop = 0
              mmWidth = 1852
              BandType = 2
            end
            object ppLine498: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4763
              mmLeft = 41275
              mmTop = 0
              mmWidth = 1852
              BandType = 2
            end
          end
          object ppDetailBand8: TppDetailBand
            ColumnTraversal = ctLeftToRight
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape94: TppShape
              UserName = 'Shape2'
              mmHeight = 5027
              mmLeft = 794
              mmTop = 0
              mmWidth = 132821
              BandType = 4
            end
            object ppDBText158: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'act_group'
              DataPipeline = frmCarte_Ordprocessing.ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2381
              mmLeft = 1588
              mmTop = 1323
              mmWidth = 23813
              BandType = 4
            end
            object ppDBText159: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'code'
              DataPipeline = frmCarte_Ordprocessing.ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2381
              mmLeft = 28310
              mmTop = 1323
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText160: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'act_item'
              DataPipeline = frmCarte_Ordprocessing.ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2381
              mmLeft = 42598
              mmTop = 1323
              mmWidth = 90223
              BandType = 4
            end
            object ppLine499: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 26458
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine500: TppLine
              UserName = 'Line171'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 41275
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
          end
          object ppColumnFooterBand2: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand8: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppLine501: TppLine
        UserName = 'Line93'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel379: TppLabel
        UserName = 'Label244'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26495#26410#25209#25976' (log):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 59002
        mmTop = 8996
        mmWidth = 15346
        BandType = 7
      end
      object ppLabel380: TppLabel
        UserName = 'Label245'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #31354#30333#27396#25976':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 107156
        mmTop = 8996
        mmWidth = 9790
        BandType = 7
      end
      object ddt5001: TppLabel
        UserName = 'mddt001'
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
        mmLeft = 117740
        mmTop = 8996
        mmWidth = 7673
        BandType = 7
      end
      object ddt15001: TppLabel
        UserName = 'Label254'
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
        mmLeft = 134673
        mmTop = 8996
        mmWidth = 6615
        BandType = 7
      end
      object ppLabel386: TppLabel
        UserName = 'Label270'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 196586
        mmTop = 8996
        mmWidth = 38365
        BandType = 7
      end
      object ppLabel387: TppLabel
        UserName = 'Label275'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 115623
        mmTop = 4763
        mmWidth = 153194
        BandType = 7
      end
      object ppLabel388: TppLabel
        UserName = 'Label276'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 243946
        mmTop = 8996
        mmWidth = 39158
        BandType = 7
      end
      object ppLabel389: TppLabel
        UserName = 'Label298'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 75406
        mmTop = 4763
        mmWidth = 4233
        BandType = 7
      end
      object ppLabel390: TppLabel
        UserName = 'Label299'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 48154
        mmTop = 4763
        mmWidth = 4498
        BandType = 7
      end
      object ppLabel391: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 97102
        mmTop = 4763
        mmWidth = 6085
        BandType = 7
      end
      object mx05001: TppLabel
        UserName = 'mx05001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 157957
        mmTop = 8996
        mmWidth = 7673
        BandType = 7
      end
      object mddt5001: TppLabel
        UserName = 'mddt5001'
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
        mmLeft = 149490
        mmTop = 8996
        mmWidth = 7673
        BandType = 7
      end
      object mddt15001: TppLabel
        UserName = 'mddt15001'
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
        mmLeft = 166423
        mmTop = 8996
        mmWidth = 6615
        BandType = 7
      end
      object ppLine492: TppLine
        UserName = 'Line492'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 157427
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine507: TppLine
        UserName = 'Line507'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 165894
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object ppLine512: TppLine
        UserName = 'Line512'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 141552
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object x25001: TppLabel
        UserName = 'x25001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 142082
        mmTop = 8996
        mmWidth = 6615
        BandType = 7
      end
      object ppLine513: TppLine
        UserName = 'Line513'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 173302
        mmTop = 7938
        mmWidth = 1323
        BandType = 7
      end
      object mx25001: TppLabel
        UserName = 'mx25001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 173832
        mmTop = 8996
        mmWidth = 6615
        BandType = 7
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English'
      'Bangla')
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
    Left = 400
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00430061007200740065005F0052006500
      70006F0072007400730001001098BD8901005000720065007600690065007700
      010001000D000A00420069007400420074006E00310001001098BD8901005000
      720065007600690065007700010001000D000A00420069007400420074006E00
      320001000090FA5101004500780069007400010001000D000A00630068006B00
      310001003100630020002D0020000D5C165901003100630020002D0020004F00
      750074007300690064006500010001000D000A00630068006B00330001003100
      620020002D0020000D5CE05E01003100620020002D0020004600610063007400
      6F0072007900010001000D000A00630068006B0032000100320020002D002000
      0D5C1659200028002B546751E890C78C996529000100320020002D0020004F00
      7500740073006900640065002000280069006E0063006C002E00200066007400
      79002900010001000D000A00630068006B00340001003100610020002D002000
      6851D49A200028000D5C1659CA530D5CE05E290001003100610020002D002000
      45006E007400690074006C006500200028004F00750074007300690064006500
      20002600260020004600740079002900010001000D000A004300680065006300
      6B0042006F0078003100330001005200650070006F0072007400200033002E00
      320020002D002000C696D49A4C88D5528C8A01005200650070006F0072007400
      200033002E00320020002D002000470072006F00750070002000410063007400
      69006F006E0020006C006F006700010001000D000A0043006800650063006B00
      42006F007800320001005200650070006F0072007400200033002E0031002000
      2D0020000B5025524C88D5528C8A01005200650070006F007200740020003300
      2E00310020002D002000530069006E0067006C00650020004100630074006900
      6F006E0020006C006F006700010001000D000A0043006800650063006B004200
      6F007800380001005200650070006F0072007400200033002E00330020002D00
      200069729965DF8D32904C88D5528C8A2800FD8F99651662DC88996529000100
      5200650070006F0072007400200033002E00330020002D0020004D0061007400
      65007200690061006C00200041006300740069006F006E0020006C006F006700
      20002800430068006100730069006E00670020006F0072002000520065007000
      6C0065006E006900730068002900010001000D000A0043006800650063006B00
      42006F0078003100320001005200650070006F0072007400200033002E003400
      20002D002000BF8A7465426650964C88D5528C8A01005200650070006F007200
      7400200033002E00340020002D002000540069006D00650020006C0069006D00
      690074002000610064006A007500730074006D0065006E007400200061006300
      740069006F006E0020006C006F006700010001000D000A004300680065006300
      6B0042006F0078003100310001005200650070006F0072007400200033002E00
      350020002D0020004D910854F476A563276028002B7E085429001F7522754C88
      D5528C8A01005200650070006F0072007400200033002E00350020002D002000
      43006F006F007000650072006100740069006F006E0020007700690074006800
      20006400690072006500630074002000700072006F0064007500630074006900
      6F006E002000280073006500770069006E006700290020006100630074006900
      6F006E0020006C006F006700010001000D000A0043006800650063006B004200
      6F007800330001000553EC62F25D8C5B10624B4EE5658C8A010049006E006300
      6C007500640069006E0067002000460069006E00690073006800650064002000
      6C006F0067007300010001000D000A0043006800650063006B0042006F007800
      340001005200650070006F00720074002000320020002D002000530065007700
      69006E006700200046006100630069006C006900740079002000410072007200
      61006E00670065006D0065006E0074000100010001000D000A00430068006500
      63006B0042006F007800350001005200650070006F0072007400200034002000
      2D0020005700650065006B006C00790020007100750061006C00690074007900
      20006500780061006D0069006E006100740069006F006E002000260026002000
      6C006F006700690073007400690063007300200066006C006F00770020006D00
      670074000100010001000D000A0043006800650063006B0042006F0078003100
      01005200650070006F0072007400200031002E00310020002D00200054006900
      6D00650020004D0061006E006100670065006D0065006E007400010001000100
      0D000A0043006800650063006B0042006F007800360001005200650070006F00
      72007400200031002E00330020002D00200049006E0069007400690061006C00
      20007300740061006700650020006F006600200073006800690070006D006500
      6E00740020006F006E002000740069006D006500200066006100630074006F00
      720073002000640065007400650072006D0069006E0061006E00740001000100
      01000D000A0043006800650063006B0042006F007800370001000598EE765E98
      0E66307D68880100010001000D000A0043006800650063006B0042006F007800
      3100300001005200650070006F0072007400200031002E00320020002D002000
      540069006D00650020004D0061006E006100670065006D0065006E0074002000
      2D00200001909950287599651F6728009F53506799652F004D91575999652900
      01005200650070006F0072007400200031002E00320020002D00200054006900
      6D00650020004D0061006E006100670065006D0065006E00740020002D002000
      4D006100740065007200690061006C0020007200650063006500690076006900
      6E006700200064006100740065002000280052006100770020006D0061007400
      65007200690061006C002F0046006F0061006D00200063007500700029000100
      01000D000A0043006800650063006B0042006F00780039000100520065007000
      6F00720074002000340020002D00200047006D00740073002000530069006E00
      67006C00650020006F00720020005000610072007400690061006C0020005300
      6800700074002000640065007400610069006C00730020007200650070006F00
      720074002000620079002000700072006F006A00650063007400200028004800
      61006C00740029000100010001000D000A0043006800650063006B0042006F00
      7800310035000100320020002D0020000D5C1659200028002B546751E890C78C
      996529000100010001000D000A0043006800650063006B0042006F0078003100
      370001005200650070006F0072007400200035002E00310020002D002000B792
      2E55AE552B543652AE557865CA5376517865CF91544F28758773010052006500
      70006F0072007400200035002E00310020002D00200053004F00200077006900
      74006800200057004F0020002600260020005100740079002000620072006500
      61006B0064006F0077006E00010001000D000A0043006800650063006B004200
      6F0078003100380001005200650070006F0072007400200035002E0032002000
      2D0020003652AE552B54B7922E55AE557865CA5376517865CF91544F28758773
      01005200650070006F0072007400200035002E00320020002D00200057004F00
      20007700690074006800200053004F0020002600260020005100740079002000
      62007200650061006B0064006F0077006E00010001000D000A00430068006500
      63006B0042006F0078003100390001005200650070006F007200740020003500
      2E00330020002D00200057004F00200051007400790020006400690073007400
      7200690062007500740069006F006E0020006F00660020005000560048002700
      73002000440053002F00430050004F0020002800550053002C00200043004100
      200026002600200048004B00200072006500670069006F006E0020006F006E00
      6C00790029000100010001000D000A0070007000520069006300680054006500
      7800740031000100520069006300680054006500780074003100010001000100
      0D000A00700070004C006100620065006C003100010069729965FA572C67C78C
      9965200028003B4E8189317550004F00500043002F00550050004900EA637865
      DA6429000100010001000D000A00700070004C006100620065006C0032000100
      697299650100010001000D000A00700070004C006100620065006C0033000100
      69729965E87D5F860100010001000D000A00700070004C006100620065006C00
      34000100A163FC8CAE550100010001000D000A00700070004C00610062006500
      6C00350001002800E582096729000100010001000D000A00700070004C006100
      620065006C00360001009B4FC96146550100010001000D000A00700070004C00
      6100620065006C0037000100E87D5F860100010001000D000A00700070004C00
      6100620065006C00380001004F9872820100010001000D000A00700070004C00
      6100620065006C00390001001062C1540100010001000D000A00700070004C00
      6100620065006C00310030000100697299650100010001000D000A0070007000
      4C006100620065006C00310031000100F25D36650100010001000D000A007000
      70004C006100620065006C003100320001007865CF910100010001000D000A00
      700070004C006100620065006C00310033000100406200970100010001000D00
      0A00700070004C006100620065006C003100340001003D7E7865010001000100
      0D000A00700070004C006100620065006C003100350001003D7E786501000100
      01000D000A00700070004C006100620065006C00310036000100189978650100
      010001000D000A00700070004C006100620065006C00310038000100FD8F9965
      0100010001000D000A00700070004C006100620065006C003200300001002000
      200028005200290020000100010001000D000A00700070004C00610062006500
      6C00320031000100DC8899650100010001000D000A00700070004C0061006200
      65006C003200320001004C88D5528C8A0100010001000D000A00700070004C00
      6100620065006C003200330001007C76E14F05800100010001000D000A007000
      70004C006100620065006C003200340001007C76E14F0100010001000D000A00
      700070004C006100620065006C00320035000100E5651F670100010001000D00
      0A00700070004C006100620065006C003200360001008C5B1062010001000100
      0D000A00700070004C006100620065006C00320037000100EE76196A01000100
      01000D000A00700070004C006100620065006C00320038000100E5651F670100
      010001000D000A00700070004C006100620065006C0032003900010036659965
      216B78650E66307D68880100010001000D000A00700070004C00610062006500
      6C00330030000100646B69729965715FFF974B4EF876DC958C8A5F86FA572C67
      C78C99650100010001000D000A00700070004C006100620065006C0033003200
      0100AE554D4F0100010001000D000A00700070004C006100620065006C003300
      33000100EE4F9A5B2A000100010001000D000A00700070004C00610062006500
      6C003300340001009F539A5B2F000100010001000D000A00700070004C006100
      620065006C00330036000100216B78650100010001000D000A00700070004C00
      6100620065006C00330037000100088A8352366599650100010001000D000A00
      700070004C006100620065006C003300380001008C5B10620100010001000D00
      0A00700070004C006100620065006C00330039000100200020001FFF20002000
      0100010001000D000A00700070004C006100620065006C003400300001004062
      00970100010001000D000A00700070004C006100620065006C00340031000100
      646B8C8A0100010001000D000A00700070004C006100620065006C0034003200
      01007865CF910100010001000D000A00700070004C006100620065006C003400
      33000100E296E05E1F670100010001000D000A00700070004C00610062006500
      6C003400340001009F539A5B2F000100010001000D000A00700070004C006100
      620065006C00340035000100EE4F9A5B2A000100010001000D000A0070007000
      4C006100620065006C00340036000100895B92630100010001000D000A007000
      70004C006100620065006C003400370001002800500044004E00290001000100
      01000D000A00700070004C006100620065006C003400380001008C8A5F860100
      010001000D000A00700070004C006100620065006C003400390001008F5E0100
      010001000D000A00700070004C006100620065006C003500300001005F860100
      010001000D000A00700070004C006100620065006C003500310001008C8A0100
      010001000D000A00700070004C006100620065006C0035003200010078650100
      010001000D000A00700070004C006100620065006C0035003400010017520100
      010001000D000A00700070004C006100620065006C00350035000100E5651F67
      0100010001000D000A00700070004C006100620065006C003500360001008F5E
      0100010001000D000A00700070004C006100620065006C003500370001001752
      0100010001000D000A00700070004C006100620065006C003500380001007865
      CF910100010001000D000A00700070004C006100620065006C00360032000100
      7865CF910100010001000D000A00700070004C006100620065006C0036003300
      0100E5651F670100010001000D000A00700070004C006100620065006C003600
      360001007865CF910100010001000D000A00700070004C006100620065006C00
      3100370001005000720069006E0074006500640020004F006E003A0020000100
      010001000D000A00700070004C006100620065006C0031003900010050006100
      670065003A0020000100010001000D000A00700070004C006100620065006C00
      330031000100646BE87D0100010001000D000A00700070004C00610062006500
      6C00350033000100200028004300290020002F0020000100010001000D000A00
      700070004C006100620065006C00360037000100AE555F860100010001000D00
      0A00700070004C006100620065006C003600380001005F862E7A010001000100
      0D000A00700070004C006100620065006C003600390001005E98786501000100
      01000D000A00700070004C006100620065006C003300350001002E7A5E980100
      010001000D000A00700070004C006100620065006C0037003000010069729965
      0100010001000D000A00700070004C006100620065006C003700310001004C88
      D5520100010001000D000A00700070004C006100620065006C00370032000100
      8C8A5F860100010001000D000A00700070004C006100620065006C0037003300
      0100697299650100010001000D000A00700070004C006100620065006C003700
      34000100406200970100010001000D000A00700070004C006100620065006C00
      370035000100426650960100010001000D000A007400690074006C0065003600
      30003000310001004300410052005400450020000100010001000D000A007000
      70004C006100620065006C00370036000100A25B36625F863A00200001000100
      01000D000A00700070004C006100620065006C00370037000100FA5730570100
      010001000D000A00700070004C006100620065006C003700380001001F752275
      0100010001000D000A00700070004C006100620065006C00370039000100E65B
      9B96366599650100010001000D000A00700070004C006100620065006C003500
      39000100EE5D70752800088A83522000760073002000E65B9B96290001000100
      01000D000A00700070004C006100620065006C00360030000100295978650100
      010001000D000A00700070004C006100620065006C0036003100010054005400
      4C003A002D0020000100010001000D000A00700070004C006100620065006C00
      360034000100500053003A002D00200031002E002000646B0E66307D68882C00
      20003B4E81892F65F4634C88D5528C8A847669729965DF8D3290200020002000
      20002000200020002000200032002E002000646B0E66307D68882C0020000D4E
      2B541F5099658C54849099654B4EDF8D648E2000200020002000200020002000
      20000100010001000D000A006D00650078003100300030000100019099502875
      99651F672800E65B9B9629000100010001000D000A00700070004C0061006200
      65006C0036003500010072825F8620000100010001000D000A00700070004C00
      6100620065006C00380030000100E296E05E1F6720000100010001000D000A00
      700070004C006100620065006C003800310001002A8F3652AE55786520000100
      010001000D000A006D0065007800310030003200010099504A9F010001000100
      0D000A00700070004C006100620065006C00380032000100280072829D4F6097
      29000100010001000D000A00700070004C006100620065006C00380033000100
      5000720069006E0074006500640020006F006E003A0020000100010001000D00
      0A006D00650078003100300034000100E296E05E1F6720000100010001000D00
      0A00700070004C006100620065006C003800350001009F539A5B2F00EE4F028A
      2A0020000100010001000D000A00700070004C006100620065006C0038003600
      01004C88D5528C8A0100010001000D000A00700070004C006100620065006C00
      38003700010050006100670065003A0020000100010001000D000A0070007000
      4C006100620065006C003800390001000598EE765E9820000100010001000D00
      0A00700070004C006100620065006C00390030000100200020008C8A20002000
      0100010001000D000A00700070004C006100620065006C003900310001002800
      4C006F0067000100010001000D000A00700070004C006100620065006C003900
      3200010020004E006F002E0029000100010001000D000A00700070004C006100
      620065006C00390033000100200020005F8620000100010001000D000A007000
      70004C006100620065006C00390034000100E55D0B7A5F860100010001000D00
      0A00700070004C006100620065006C00390035000100B7922E55AE555F862000
      0100010001000D000A00700070004C006100620065006C00390036000100A25B
      B9653E6B5F8620000100010001000D000A00700070004C006100620065006C00
      390037000100A25BB96520000100010001000D000A00700070004C0061006200
      65006C003900380001007651835B8B4E05980100010001000D000A0070007000
      4C006100620065006C00390039000100FA57305720000100010001000D000A00
      700070004C006100620065006C0031003000300001001F752275010001000100
      0D000A00700070004C006100620065006C0031003000350001003652AE555F86
      20000100010001000D000A00700070004C006100620065006C00310030003600
      010072825F8620000100010001000D000A00700070004C006100620065006C00
      3100300037000100E05EB96520000100010001000D000A00700070004C006100
      620065006C003100300038000100B7922E55AE5520000100010001000D000A00
      700070004C006100620065006C003100300039000100280072829D4F60972900
      0100010001000D000A00700070004C006100620065006C003100310030000100
      01909950287599651F67200028009F535067996529000100010001000D000A00
      700070004C006100620065006C0031003100310001008B95CB59200001000100
      01000D000A00700070004C006100620065006C00310031003200010099504A9F
      20000100010001000D000A00700070004C006100620065006C00310031003300
      0100E05E8B95CB591F7522751F670100010001000D000A00700070004C006100
      620065006C0031003100340001009F539A5B2F0020000100010001000D000A00
      700070004C006100620065006C003100310035000100F25D8B95CB5920000100
      010001000D000A00700070004C006100620065006C003100310036000100E296
      E05E1F670100010001000D000A00700070004C006100620065006C0031003100
      370001009F539A5B2F0020000100010001000D000A00700070004C0061006200
      65006C003100310038000100EE4F028A2A0020000100010001000D000A007000
      70004C006100620065006C003100310039000100895B92632000010001000100
      0D000A00700070004C006100620065006C0031003200300001003D7E78652000
      0100010001000D000A00700070004C006100620065006C003100320031000100
      3E6B4F9872820100010001000D000A00700070004C006100620065006C003100
      3200320001002800088A83522F000100010001000D000A00700070004C006100
      620065006C0031003200340001008C5B10622800590029002F00010001000100
      0D000A00700070004C006100620065006C003100320036000100200020002A8F
      20000100010001000D000A00700070004C006100620065006C00310032003700
      010020002000365220000100010001000D000A00700070004C00610062006500
      6C003100320038000100200020005F8620000100010001000D000A0065007800
      5F00610064007400300031000100E65B9B9620000100010001000D000A007000
      70004C006100620065006C00310032003900010010982D8A2000010001000100
      0D000A007400690074006C00650032003000310001007400690074006C006500
      3200300031000100010001000D000A00700070004C006100620065006C003100
      330032000100786520000100010001000D000A00700070004C00610062006500
      6C003100330033000100DD8820000100010001000D000A00700070004C006100
      620065006C003100330034000100DA7D20000100010001000D000A0070007000
      4C006100620065006C003100330035000100447D20000100010001000D000A00
      700070004C006100620065006C003100350031000100E65B9B96200001000100
      01000D000A00700070004C006100620065006C0031003600350001008B95CB59
      20000100010001000D000A00700070004C006100620065006C00310036003600
      010099504A9F20000100010001000D000A00700070004C006100620065006C00
      310036003700010028002B00290020000100010001000D000A00700070004C00
      6100620065006C00310036003800010028002B00290020000100010001000D00
      0A00700070004C006100620065006C003100360039000100E5651F6720000100
      010001000D000A00700070004C006100620065006C003100370030000100E565
      1F6720000100010001000D000A006D006500780031003000330001009F539A5B
      2F00EE4F028A2A0020000100010001000D000A00700070004C00610062006500
      6C003100330036000100786520000100010001000D000A00700070004C006100
      620065006C003100370033000100019820000100010001000D000A0070007000
      4C006100620065006C003100370034000100355F20000100010001000D000A00
      700070004C006100620065006C00310037003600010078652000010001000100
      0D000A007400690074006C006500320030003000310001004300410052005400
      450020000100010001000D000A00700070004C006100620065006C0032003500
      34000100A25B36625F863A0020000100010001000D000A00700070004C006100
      620065006C00380034000100D56C20000100010001000D000A00700070004C00
      6100620065006C00380038000100B17B20000100010001000D000A0070007000
      4C006100620065006C003100300031000100B96520000100010001000D000A00
      700070004C006100620065006C003100300032000100DD882000010001000100
      0D000A0064006500730074003000300031000100EE7684763057200001000100
      01000D000A00640065007300740030003000320001000B57B65B200001000100
      01000D000A00700070004C006100620065006C003100300034000100E565EE5D
      20000100010001000D000A00700070004C006100620065006C00310033003000
      0100EE4F028A2A0020000100010001000D000A00700070004C00610062006500
      6C0031003400390001002000728220000100010001000D000A00700070004C00
      6100620065006C0031003500300001002000013020000100010001000D000A00
      700070004C006100620065006C003100350032000100B7920100010001000D00
      0A00700070004C006100620065006C0031003500330001002E55010001000100
      0D000A00700070004C006100620065006C003100350034000100AE5501000100
      01000D000A00700070004C006100620065006C00310035003500010078650100
      010001000D000A00700070004C006100620065006C003100350036000100EE76
      0100010001000D000A00700070004C006100620065006C003100350039000100
      20009A5B20000100010001000D000A00700070004C006100620065006C003100
      3600300001002000BC7820000100010001000D000A00700070004C0061006200
      65006C00310032003500010079627F671F670100010001000D000A0070007000
      4C006100620065006C0031003800340001009D4F8B95CB59019099651F670100
      010001000D000A00700070004C006100620065006C0031003800350001009D4F
      8C5B1062019099651F670100010001000D000A00700070004C00610062006500
      6C003100380036000100A88C0100010001000D000A00700070004C0061006200
      65006C0031003800370001007F670100010001000D000A00700070004C006100
      620065006C003100380039000100A88C0100010001000D000A00700070004C00
      6100620065006C0031003900300001007F670100010001000D000A0070007000
      4C006100620065006C003100390039000100EA630100010001000D000A007000
      70004C006100620065006C003200300030000100EA630100010001000D000A00
      700070004C006100620065006C0032003000310001002A6799504A9F01000100
      01000D000A00700070004C006100620065006C00320030003300010020002000
      AE5520000100010001000D000A00700070004C006100620065006C0031003200
      33000100EE4FA28B2A002F000100010001000D000A00700070004C0061006200
      65006C003100360031000100FB7FAE5528005200290029000100010001000D00
      0A00700070004C006100620065006C0031003300380001000782E296E05E1F67
      4B4E4266DD8D0100010001000D000A00700070004C006100620065006C003100
      340036000100655109500100010001000D000A00700070004C00610062006500
      6C0031003900340001002800540033000100010001000D000A00700070004C00
      6100620065006C0031003900380001009F539A5B2F000100010001000D000A00
      700070004C006100620065006C003200310030000100EE4F028A2A0001000100
      01000D000A00700070004C006100620065006C003200320033000100427DD97A
      29000100010001000D000A00700070004C006100620065006C00320032003400
      01002800EE4F028A2A0029000100010001000D000A00700070004C0061006200
      65006C00320032003500010028009A5B72825E98CA530100010001000D000A00
      700070004C006100620065006C0032003200360001009A5B72820130BC782900
      0100010001000D000A00700070004C006100620065006C003100300033000100
      660072006F006E00740020007300680065006500740020002000200001000100
      01000D000A00700070004C006100620065006C0031003400310001000598EE76
      5E980E66307D68883A002D0020000100010001000D000A00700070004C006100
      620065006C00310034003200010006525E980100010001000D000A0070007000
      4C006100620065006C003100340033000100E87D5F860100010001000D000A00
      700070004C006100620065006C003100340034000100CF63F08F010001000100
      0D000A00700070004C006100620065006C00310033003900010099503B8A4100
      3A00200031002E0020002A8F3652AE5578652000280072829D4F609729004B4E
      F876DC95EA637F6778650D4ED0639B4F20002200895B92632000280050004400
      4E0029002000E296E05E1F67220020004B4EC78C996520002000200020002000
      200032002E0020000598EE765E98C1658A90847620002A00200068883A79646B
      0598EE765E98F25D8C5B106220002000200020002000200033002E002000646B
      315868880D4E2B544D91575999654B4E019099651F670100010001000D000A00
      700070004C006100620065006C003100340030000100530075006D006D006100
      720079002000280020000100010001000D000A00700070004C00610062006500
      6C0032003400340001007F672A6779627865200028006C006F00670029003A00
      0100010001000D000A00700070004C006100620065006C003200340035000100
      7A7A7D76046B786528006C006F00670029003A000100010001000D000A007000
      70004C006100620065006C0032003500350001002D0020002D00010001000100
      0D000A00700070004C006100620065006C0032003700300001002D0020002D00
      0100010001000D000A00700070004C006100620065006C003200370035000100
      2D0020002D000100010001000D000A00700070004C006100620065006C003200
      3700360001002D0020002D000100010001000D000A00700070004C0061006200
      65006C0032003900380001002D0020002D000100010001000D000A0070007000
      4C006100620065006C0032003900390001002D0020002D000100010001000D00
      0A00700070004C006100620065006C0031003400350001002D0020002D000100
      010001000D000A00700070004C006100620065006C0031003500380001002D00
      20002D000100010001000D000A00700070004C006100620065006C0031003900
      32000100715FFF9742665096046BD0633A792800057D575BD49A290028006C00
      6F00670029003A000100010001000D000A00700070004C006100620065006C00
      31003900330001002D0020002D000100010001000D000A00700070004C006100
      620065006C0031003900350001002D0020002D000100010001000D000A007000
      70004C006100620065006C003100370037000100B7922E55AE557A7A7D76046B
      786528006C006F00670029003A000100010001000D000A00700070004C006100
      620065006C0032003000350001002D0020002D000100010001000D000A007000
      70004C006100620065006C003200300036000100290020003A002D0020000100
      010001000D000A00700070004C006100620065006C003200310031000100715F
      FF9742665096046B668B3A792800057D575B977CD49A290028006C006F006700
      29003A000100010001000D000A00700070004C006100620065006C0032003100
      330001002D0020002D000100010001000D000A00700070004C00610062006500
      6C0032003100340001002D0020002D000100010001000D000A00700070004C00
      6100620065006C0032003100350001002D0020002D000100010001000D000A00
      700070004C006100620065006C0032003100360001002D0020002D0001000100
      01000D000A007000700052006900630068005400650078007400330001005200
      690063006800540065007800740033000100010001000D000A00700070004C00
      6100620065006C0032003000370001002D0020002D000100010001000D000A00
      700070004C006100620065006C0032003000390001002D0020002D0001000100
      01000D000A00700070004C006100620065006C00320032003200010061005400
      33007865200028006C006F00670029003A000100010001000D000A0070007000
      4C006100620065006C003100360034000100530075006D006D00610072007900
      2000280020000100010001000D000A00700070004C006100620065006C003100
      3700310001002D0020002D000100010001000D000A00700070004C0061006200
      65006C0031003700320001007F672A6779627865200028006C006F0067002900
      3A000100010001000D000A00700070004C006100620065006C00310037003500
      01007A7A7D76046B786528006C006F00670029003A000100010001000D000A00
      700070004C006100620065006C0031003700380001002D0020002D0001000100
      01000D000A00700070004C006100620065006C0031003700390001002D002000
      2D000100010001000D000A00700070004C006100620065006C00310038003000
      01002D0020002D000100010001000D000A00700070004C006100620065006C00
      31003800310001002D0020002D000100010001000D000A00700070004C006100
      620065006C0031003800320001002D0020002D000100010001000D000A007000
      70004C006100620065006C0031003800330001002D0020002D00010001000100
      0D000A00700070004C006100620065006C003100380038000100290020003A00
      2D0020000100010001000D000A00700070004C006100620065006C0031003500
      370001002D0020002D000100010001000D000A00700070004C00610062006500
      6C003100390031000100715FFF9742665096046BD0633A792800057D575BD49A
      290028006C006F00670029003A000100010001000D000A00700070004C006100
      620065006C0031003900360001002D0020002D000100010001000D000A007000
      70004C006100620065006C0031003900370001002D0020002D00010001000100
      0D000A00700070004C006100620065006C003200300032000100B7922E55AE55
      7A7A7D76046B786528006C006F00670029003A000100010001000D000A007000
      70004C006100620065006C0032003000340001002D0020002D00010001000100
      0D000A00700070004C006100620065006C003200310032000100715FFF974266
      5096046B668B3A792800057D575B977CD49A290028006C006F00670029003A00
      0100010001000D000A00700070004C006100620065006C003200310037000100
      2D0020002D000100010001000D000A00700070004C006100620065006C003200
      3100380001002D0020002D000100010001000D000A00700070004C0061006200
      65006C0032003100390001002D0020002D000100010001000D000A0070007000
      4C006100620065006C0032003200300001002D0020002D000100010001000D00
      0A00700070004C006100620065006C0031003400380001002D0020002D000100
      010001000D000A00700070004C006100620065006C0032003000380001002D00
      20002D000100010001000D000A00700070004C006100620065006C0032003200
      310001006100540033007865200028006C006F00670029003A00010001000100
      0D000A00700070004C006100620065006C003200320037000100995028759965
      5F00019099651F670782E296E05E1F674B4E4266DD8D0100010001000D000A00
      700070004C006100620065006C00320036003400010072825F86200001000100
      01000D000A00700070004C006100620065006C003200360035000100E296E05E
      1F670100010001000D000A00700070004C006100620065006C00320036003600
      01002A6799504A9F5F009D4F088A83520100010001000D000A00700070004C00
      6100620065006C0032003600370001002A8F3652AE5578652000010001000100
      0D000A00700070004C006100620065006C00320036003800010099504A9F5F00
      9D4F088A83520100010001000D000A00700070004C006100620065006C003200
      360039000100280072829D4F6097290020000100010001000D000A0070007000
      4C006100620065006C0032003700340001005000720069006E00740065006400
      20006F006E003A0020000100010001000D000A00700070004C00610062006500
      6C003200370037000100E296E05E1F670100010001000D000A00700070004C00
      6100620065006C003200370038000100E296E05E1F670100010001000D000A00
      700070004C006100620065006C0032003700390001009F539A5B200001000100
      01000D000A00700070004C006100620065006C003200380030000100E296E05E
      1F670100010001000D000A00700070004C006100620065006C00320038003100
      01004C88D5528C8A0100010001000D000A00700070004C006100620065006C00
      320038003200010050006100670065003A0020000100010001000D000A007000
      70004C006100620065006C003200380033000100EE4F028A2A00200001000100
      01000D000A00700070004C006100620065006C003200380034000100EE4F028A
      2A0020000100010001000D000A00700070004C006100620065006C0032003800
      350001000598EE765E9820000100010001000D000A00700070004C0061006200
      65006C003200380036000100200020008C8A200020000100010001000D000A00
      700070004C006100620065006C00320038003700010028004C006F0067000100
      010001000D000A00700070004C006100620065006C0032003800380001002000
      4E006F002E0029000100010001000D000A00700070004C006100620065006C00
      3200380039000100200020005F8620000100010001000D000A00700070004C00
      6100620065006C003200390030000100E55D0B7A5F860100010001000D000A00
      700070004C006100620065006C003200390031000100B7922E55AE555F862000
      0100010001000D000A00700070004C006100620065006C003200390032000100
      A25BB9653E6B5F8620000100010001000D000A00700070004C00610062006500
      6C003200390033000100A25BB96520000100010001000D000A00700070004C00
      6100620065006C0032003900340001007651835B8B4E05980100010001000D00
      0A00700070004C006100620065006C003200390035000100FA57305720000100
      010001000D000A00700070004C006100620065006C0032003900360001001F75
      227520000100010001000D000A0064006500730074003000300033000100EE76
      8476305720000100010001000D000A00700070004C006100620065006C003300
      3000340001003652AE555F8620000100010001000D000A00700070004C006100
      620065006C00330030003500010072825F8620000100010001000D000A007000
      70004C006100620065006C003300300036000100E05EB9652000010001000100
      0D000A00700070004C006100620065006C003300300037000100B7922E55AE55
      20000100010001000D000A00700070004C006100620065006C00330030003800
      0100280072829D4F6097290020000100010001000D000A00700070004C006100
      620065006C0033003000390001009950287599655F00019099651F6720002800
      10982D8A29000100010001000D000A00700070004C006100620065006C003300
      310032000100E05E8B95CB590100010001000D000A00700070004C0061006200
      65006C0033003100330001009F539A5B2F0020000100010001000D000A007000
      70004C006100620065006C003300310035000100E296E05E1F67010001000100
      0D000A00700070004C006100620065006C0033003100360001009F539A5B2000
      0100010001000D000A00700070004C006100620065006C003300310037000100
      EE4F028A2A0020000100010001000D000A00700070004C006100620065006C00
      33003100390001003D7E786520000100010001000D000A00700070004C006100
      620065006C0033003200300001003E6B4F98728220000100010001000D000A00
      700070004C006100620065006C003300320031000100200020007F6720000100
      010001000D000A00700070004C006100620065006C0033003200320001002000
      2000796220000100010001000D000A00700070004C006100620065006C003300
      32003300010020002000F25D20000100010001000D000A00700070004C006100
      620065006C00330032003500010005530100010001000D000A00700070004C00
      6100620065006C003300320036000100200020002A8F20000100010001000D00
      0A00700070004C006100620065006C0033003200370001003652AE5520000100
      010001000D000A00700070004C006100620065006C0033003200380001002000
      20005F8620000100010001000D000A00700070004C006100620065006C003300
      3300310001009F535067996528003B4E99652F006F5299652900200001000100
      01000D000A007000700052006900630068005400650078007400320001007400
      690074006C0065003200300031000100010001000D000A00700070004C006100
      620065006C003300330033000100DD880100010001000D000A00640065007300
      740030003000340001000B57B65B20000100010001000D000A00700070004C00
      6100620065006C003300330035000100786520000100010001000D000A007000
      70004C006100620065006C003300330036000100DD8820000100010001000D00
      0A00700070004C006100620065006C003300330037000100DA7D200001000100
      01000D000A00700070004C006100620065006C003300330038000100447D2000
      0100010001000D000A00700070004C006100620065006C003300330039000100
      4D915759996520000100010001000D000A00700070004C006100620065006C00
      33003400300001008B95CB59E5651F6720000100010001000D000A0070007000
      4C006100620065006C00330034003100010099504A9F28002B002F002D002900
      20000100010001000D000A00700070004C006100620065006C00330034003200
      0100EE4F028A2A0020000100010001000D000A00700070004C00610062006500
      6C0033003400340001009F539A5B0100010001000D000A00700070004C006100
      620065006C0033003400360001009F539A5B20000100010001000D000A007000
      70004C006100620065006C003300340037000100786520000100010001000D00
      0A00700070004C006100620065006C0033003400380001000198200001000100
      01000D000A00700070004C006100620065006C003300340039000100355F2000
      0100010001000D000A00700070004C006100620065006C003300350030000100
      786520000100010001000D000A00700070004C006100620065006C0033003100
      340001008B95CB5901909F53506799651F670100010001000D000A0070007000
      4C006100620065006C0033003200390001008C5B106201909F53506799651F67
      0100010001000D000A00700070004C006100620065006C003300310038000100
      1F7522751F670100010001000D000A00700070004C006100620065006C003300
      330030000100EE4F028A2A0020000100010001000D000A00700070004C006100
      620065006C0033003300320001009F539A5B0100010001000D000A0070007000
      4C006100620065006C003300340033000100EE4F028A2A002000010001000100
      0D000A00700070004C006100620065006C0033003400350001009F539A5B0100
      010001000D000A00700070004C006100620065006C003300350031000100EE4F
      028A2A0020000100010001000D000A00700070004C006100620065006C003300
      3500370001009F539A5B0100010001000D000A00700070004C00610062006500
      6C0033003100300001008B95CB59E5651F6720000100010001000D000A007000
      70004C006100620065006C00330031003100010099504A9F28002B002F002D00
      290020000100010001000D000A00620063003000300033000100420044004300
      0100010001000D000A0062006300780030003000340001002000200020002300
      200020000100010001000D000A007400690074006C0065003500780030003000
      310001004300410052005400450020000100010001000D000A00700070004C00
      6100620065006C003300350039000100A25B36625F863A002000010001000100
      0D000A00700070004C006100620065006C003100330031000100B96501000100
      01000D000A00700070004C006100620065006C003100330037000100D56C0100
      010001000D000A0062006300780030003000350001002800F25D200001000100
      01000D000A006200630078003000300036000100D65329002000010001000100
      0D000A00700070004C006100620065006C003100340037000100EE4F028A2A00
      20000100010001000D000A00700070004C006100620065006C00310036003200
      0100200020008B9520000100010001000D000A00700070004C00610062006500
      6C00310036003300010020002000A88C20000100010001000D000A0070007000
      4C006100620065006C003300360031000100660072006F006E00740020007300
      68006500650074002000200020000100010001000D000A007800300035003000
      3000310001002D0020002D000100010001000D000A00700070004C0061006200
      65006C003300370032000100500053003A00200031002E0020002A8F3652AE55
      78652000280072829D4F60972900C1658A90847620002A00200068883A79646B
      2A8F3652AE557865BA707F6778652C002000F876DC957F6778650D4ED0639B4F
      20002200895B926320002800500044004E0029002000E296E05E1F6722002000
      4B4EC78C996520002000200020002000200032002E0020000598EE765E98C165
      8A90847620002A00200068883A79646B0598EE765E98F25D8C5B106201000100
      01000D000A00700070004C006100620065006C00330037003400010053007500
      6D006D006100720079003A002D0020000100010001000D000A00700070004C00
      6100620065006C0033003700350001000598EE765E983A002D00200001000100
      01000D000A00700070004C006100620065006C00330037003600010006525E98
      0100010001000D000A00700070004C006100620065006C003300370037000100
      E87D5F860100010001000D000A00700070004C006100620065006C0033003700
      38000100CF63F08F0100010001000D000A00700070004C006100620065006C00
      33003700390001007F672A6779627865200028006C006F00670029003A000100
      010001000D000A00700070004C006100620065006C0033003800300001007A7A
      7D76046B78653A000100010001000D000A00700070004C006100620065006C00
      33003800360001002D0020002D000100010001000D000A00700070004C006100
      620065006C0033003800370001002D0020002D000100010001000D000A007000
      70004C006100620065006C0033003800380001002D0020002D00010001000100
      0D000A00700070004C006100620065006C0033003800390001002D0020002D00
      0100010001000D000A00700070004C006100620065006C003300390030000100
      2D0020002D000100010001000D000A00700070004C006100620065006C003300
      3900310001002D0020002D000100010001000D000A006D007800300035003000
      3000310001002D0020002D000100010001000D000A0078003200350030003000
      310001002D0020002D000100010001000D000A006D0078003200350030003000
      310001002D0020002D000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660072006D00430061007200740065005F005200
      650070006F0072007400730001005400610068006F006D006100010054006100
      68006F006D006100010001000D000A0070007000520069006300680054006500
      780074003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003200010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00330001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003500
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003600010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      31003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0031003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003500
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003800010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0032003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      32003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0032003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003500
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0032003700010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200380001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0032003900010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      33003000010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0033003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0033003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0033003700010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300380001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0033003900010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      34003000010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00340031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0034003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0034003300
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0034003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0034003500010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003400360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0034003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      34003800010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00340039000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0035003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0035003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0035003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0035003400010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003500350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0035003600010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      35003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00350038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0036003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0036003300
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0036003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003700010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000530079007300740065006D00560061007200
      6900610062006C0065003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003900
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A0070007000530079007300740065006D005600610072006900610062006C00
      65003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0035003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0036003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0036003800010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0036003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0037003000010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      37003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00370032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0037003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0037003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0037003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A007400690074006C006500
      3600300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003700360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0037003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      37003800010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00370039000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0035003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0036003000
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007300750062007400690074006C0065003600300030003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400330001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      54006500780074003400010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740035000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004400420054006500780074003600010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003700010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003800010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003900010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      31003000010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200540065007800740031003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      740031003600010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003100370001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200540065007800740031003800010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740031003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400320030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      77006300300030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740032003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003200320001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      540065007800740032003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003200
      3600010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400320038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200540065007800740032003900010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      31003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003300010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200540065007800740031003400010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      740033003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003300320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200540065007800740033003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740032003400010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400320035000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7000700044004200540065007800740032003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      65007800740033003000010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00360031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7300650071006E006F00300030003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A006900730073007500650030003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A007300690074006500300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00640065007300300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A006900740065006D00300030003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A0076006E0064007200300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00730063006F006C006F007200300030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A00690063006F006C006F00
      7200300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A006B006500790063006F00640065003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0036003400010041007200690061006C000100
      5400610068006F006D006100010001000D000A006D0065007800310030003000
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0036003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0038003000010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003800310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006D00
      65007800310030003200010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00380032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0038003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A006D0065007800310030003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0038003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0038003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003800370001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0038003900010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      39003000010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00390031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0039003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0039003300
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0039003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0039003500010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003900360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0039003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700053007900730074006500
      6D005600610072006900610062006C0065003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0039003800010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003900390001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310030003000010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00310030003500010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100300036000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310030003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310030003800010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310030003900
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003100300001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310031003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003100
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100310033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310031003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      31003500010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310031003600010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310031003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310031003800010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003100390001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310032003000010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00310032003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100320032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310032003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310032003600010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310032003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003200380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00650078005F006100
      6400740030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0070007000530079007300740065006D00560061007200
      6900610062006C0065003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00650078005F00610064007400300032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310032003900010041007200690061006C00
      01005400610068006F006D006100010001000D000A007400690074006C006500
      300030003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A007400690074006C0065003200300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310033003200010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      33003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310033003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310033003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310035003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003600350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310036003600010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00310036003700010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100360038000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310036003900010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310037003000010041007200690061006C0001005400610068006F00
      6D006100010001000D000A006D00650078003100300033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310033003600010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      37003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310037003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310037003600010041007200690061006C0001005400
      610068006F006D006100010001000D000A00650078005F006100640074003000
      30003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007400690074006C00650032003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00320035003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003800
      3400010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003800380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003000
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A006400650073007400300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00640065007300740030003000
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100300034000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310033003000010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      34003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310035003000010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310035003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310035003300010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003500340001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310035003500010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00310035003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100350039000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310036003000010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310032003500010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310038003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003800350001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310038003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003800
      3700010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100380039000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310039003000010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      39003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320030003000010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00320030003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      320030003300010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003200330001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310036003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00310033003800010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100340036000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00310039003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310039003800010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320031003000
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003200330001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00320032003400010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003200
      3500010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003200320036000100410072006900
      61006C0001005400610068006F006D006100010001000D000A006F0073006B00
      65007900300030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740033003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003300350001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      540065007800740033003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003300
      3700010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400330038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200540065007800740033003900010041007200690061006C00010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      34003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740034003300010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200540065007800740034003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      740034003700010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003400380001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200540065007800740034003900010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740035003000010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00650078005F0061006400740030003300010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200540065007800740035003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A006D005F0064006400740030003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A006D005F0065006E006400300030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A00650078005F006F007200
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A006D00650078005F006F007200300030003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A006D006500
      78005F006F007200300030003200010041007200690061006C00010054006100
      68006F006D006100010001000D000A0071006E00780030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200540065007800740035003700010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      7800740035003800010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0065007800640069006600660078003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      690070006F007100740079005F00320030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006600770064007400
      5F006F007200300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700072006F00640073006900740065003100
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700072006F00640073006900740065003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      730070005F006100700070006400740030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007400330064007400
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00640064007400780030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007000700044004200
      540065007800740036003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003000
      3300010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100340031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310034003200010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      34003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310034003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      44004200540065007800740035003400010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      740035003500010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003500360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200430061006C0063003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700072006A003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      630075007300740070006F00300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A0077006F003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      63007500730074007300740079006C0065003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00730070005F00
      610070007000300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00630075007300740063006F006C006F007200
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A007000680063006F006C006F00720030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200430061006C0063003300010041007200690061006C0001005400
      610068006F006D006100010001000D000A006D005F0073007400610072007400
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A0066007700640074005F006F00300030003100010041007200
      690061006C0001005400610068006F006D006100010001000D000A0066007700
      640074005F006100300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A00650078005F006F003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      6100630074005F006900740065006D0030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310033003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700072006F0064005F007300690074006500
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003400300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00320034003400010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00320034003500010041007200690061006C0001005400610068006F006D00
      6100010001000D000A006D006400640074003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A006D005F006400
      64007400300030003200010041007200690061006C0001005400610068006F00
      6D006100010001000D000A006D005F0065006E00640030003000320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00320035003500010041007200690061006C000100
      5400610068006F006D006100010001000D000A00650078006400690066006600
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0032003700300001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00320037003500010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00320037003600010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200390038000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00320039003900010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310034003500010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310035003800
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C0063003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310039003200010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310039003300
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003900350001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006600770064007400
      5F006F007800300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A006C0069006E0065005F0074006E006F003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A006D00640064007400780030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700072006F006400
      5F0073006900740065003100300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A0071006E005F0074006E006F00
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A0071006E005F0074006E006F00780030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310037003700010041007200690061006C000100
      5400610068006F006D006100010001000D000A00630075007300740070006F00
      78006100300030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A006D005F0064006400740078003000300032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700061006B007800300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A0064006500730074007800300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00730070005F00610070007000780030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00320030003500010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003000
      3600010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0063007500730074007800300030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A0066007700640074005F00
      6F0078003100300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A006D0064006400740078003100300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003100310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00730070005F006100
      7000700078003100300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003200
      31003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320031003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00320031003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      320031003600010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070005200690063006800540065007800740033000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00320030003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00320030003900010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00650078005F006F00780030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006500
      78005F006F007800300030003200010041007200690061006C00010054006100
      68006F006D006100010001000D000A0074003300640074007800300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003200320001004100720069006100
      6C0001005400610068006F006D006100010001000D000A007400330064007400
      7800300030003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A006100630074005F006900740065006D00640030003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00630075007300740063006F006C006F00720064003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      630075007300740070006F006400300030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A0063007500730074007300
      740079006C0065006400300030003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00650078005F006F00640030003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0066007700640074005F00610064003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00660077006400
      74005F006F006400300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A006D005F00640064007400640030003000
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A006D005F0065006E006400640030003000320001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006D005F0073007400
      6100720074006400300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A006D006400640074006400300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A007000680063006F006C006F00720064003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C0063003200010041007200690061006C000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003600340001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00310037003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003700
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100370035000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310037003800010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      37003900010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310038003000010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310038003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310038003200010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003800330001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      72006A006400300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700072006F0064005F007300690074006500
      6400300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00730070005F0061007000700064003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      77006F006400300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003600
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100380038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310035003700010041007200690061006C00010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      3500010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100390031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310039003600010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      39003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700072006F0064005F0073006900740065003100640030003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A006C0069006E0065005F0074006E006F00640030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007100
      6E005F0074006E006F006400300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A0071006E005F0074006E006F00
      78006400300030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A006D00640064007400780064003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      66007700640074005F006F007800640030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006500780064006900
      660066006400300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00630075007300740070006F00780064003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320030003200010041007200
      690061006C0001005400610068006F006D006100010001000D000A006D005F00
      64006400740078006400300030003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700061006B007800640030003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0064006500730074007800640030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00730070005F006100
      7000700078006400300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003200
      30003400010041007200690061006C0001005400610068006F006D0061000100
      01000D000A0066007700640074005F006F007800640031003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      6D00640064007400780064003100300030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00320031003200010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320031003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003100380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00320031003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003200
      3000010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00730070005F0061007000700078006400310030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310034003800010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00320030003800010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00650078005F006F007800640030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006500
      78005F006F0078006400300030003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A007400330064007400780064003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007400330064007400780064003000300032000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00320032003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003200
      32003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320036003400010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00320036003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      320036003600010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0032003600370001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00320036003800010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00320036003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200370034000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00320037003700010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00320037003800010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320037003900
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0032003800300001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00320038003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0032003800
      3200010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003200380033000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00320038003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003200
      38003500010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320038003600010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00320038003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      320038003800010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0032003800390001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00320039003000010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00320039003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200390032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00320039003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000530079007300
      740065006D005600610072006900610062006C00650039000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00320039003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003200
      39003500010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00320039003600010041007200
      690061006C0001005400610068006F006D006100010001000D000A0064006500
      73007400300030003300010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00330030003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0033003000350001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00330030003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003000
      3700010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003300300038000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00330030003900010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003300
      31003200010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330031003300010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00330031003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      330031003600010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0033003100370001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00330031003900010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00330032003000010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300320031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00330032003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00330032003300010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00330032003500
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0033003200360001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00330032003700010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003200
      3800010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000530079007300740065006D00560061007200690061006200
      6C00650031003000010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300330031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      7400690074006C006500300030003500010041007200690061006C0001005400
      610068006F006D006100010001000D000A007000700052006900630068005400
      6500780074003200010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300330033000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      6400650073007400300030003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003300
      33003500010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330033003600010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00330033003700010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      330033003800010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0033003300390001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00330034003000010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00330034003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300340032000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00330034003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00330034003600010041007200690061006C0001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00330034003700
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0033003400380001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00330034003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003500
      3000010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003300310034000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00330032003900010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003300
      31003800010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330033003000010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00330033003200010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      330034003300010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0033003400350001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00330035003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00330035003700010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300310030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00330031003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A0062006300300030003300
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00620063007800300030003400010041007200690061006C00010054006100
      68006F006D006100010001000D000A007400690074006C006500350078003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330035003900010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00310033003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      310033003700010041007200690061006C0001005400610068006F006D006100
      010001000D000A00620063007800300030003500010041007200690061006C00
      01005400610068006F006D006100010001000D000A0062006300780030003000
      3600010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100340037000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00310036003200010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      36003300010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003100340001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      7000440042005400650078007400310031003600010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      650078007400310033003600010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      33003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003300380001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      7000440042005400650078007400310033003900010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      650078007400310034003000010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      34003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003400320001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      7000440042005400650078007400310034003300010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      650078007400310034003500010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      34003600010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003400370001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      7000440042005400650078007400310034003800010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      650078007400310034003900010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      35003000010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003500310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      7000440042005400650078007400310035003200010041007200690061006C00
      01005400610068006F006D006100010001000D000A0070007000440042005400
      650078007400310035003300010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      35003500010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003500360001004100
      7200690061006C0001005400610068006F006D006100010001000D000A006400
      6400740078003500300030003100010041007200690061006C00010054006100
      68006F006D006100010001000D000A0064006400740030007800350030003000
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400310035003700010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      440042005400650078007400310034003400010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      78007400310035003400010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740031003600
      3100010041007200690061006C0001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400310036003200010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      440042005400650078007400310036003300010041007200690061006C000100
      5400610068006F006D006100010001000D000A006D0064006400740078003500
      300030003100010041007200690061006C0001005400610068006F006D006100
      010001000D000A006D0064006400740030007800350030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      7000440042005400650078007400310036003400010041007200690061006C00
      01005400610068006F006D006100010001000D000A0062006300300030003400
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003500390001004100720069006100
      6C0001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C00330036003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003300
      3300010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700072006A003500300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00630075007300740070006F00
      3500300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A0077006F00350030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006300750073007400
      7300740079006C0065003500300030003100010041007200690061006C000100
      5400610068006F006D006100010001000D000A00730070005F00610070007000
      3500300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00630075007300740063006F006C006F00720035003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A007000680063006F006C006F007200350030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      700044004200430061006C00630033003400010041007200690061006C000100
      5400610068006F006D006100010001000D000A00780030003500300030003100
      010041007200690061006C0001005400610068006F006D006100010001000D00
      0A0066007700640074006F003500300030003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A00650078006F0035003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A006100630074006900740065006D00350030003000310001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00330037003200010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700072006F00640073006900
      740065003500300030003100010041007200690061006C000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0033003700
      3400010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003300370035000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00330037003600010041007200690061006C00010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003300
      37003700010041007200690061006C0001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00330037003800010041007200
      690061006C0001005400610068006F006D006100010001000D000A0070007000
      440042005400650078007400310035003800010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      78007400310035003900010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740031003600
      3000010041007200690061006C0001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003300370039000100410072006900
      61006C0001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00330038003000010041007200690061006C00010054006100
      68006F006D006100010001000D000A0064006400740035003000300031000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      64006400740031003500300030003100010041007200690061006C0001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      330038003600010041007200690061006C0001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0033003800370001004100
      7200690061006C0001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00330038003800010041007200690061006C000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00330038003900010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300390030000100
      41007200690061006C0001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00330039003100010041007200690061006C00
      01005400610068006F006D006100010001000D000A006D007800300035003000
      30003100010041007200690061006C0001005400610068006F006D0061000100
      01000D000A006D00640064007400350030003000310001004100720069006100
      6C0001005400610068006F006D006100010001000D000A006D00640064007400
      31003500300030003100010041007200690061006C0001005400610068006F00
      6D006100010001000D000A007800320035003000300031000100410072006900
      61006C0001005400610068006F006D006100010001000D000A006D0078003200
      3500300030003100010041007200690061006C0001005400610068006F006D00
      6100010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0070007000430068006900
      6C0064005200650070006F007200740031002E0043006F006C0075006D006E00
      50006F0073006900740069006F006E007300010030002E00320035002C003500
      2E0038003400360034000100010001000D000A00700070004300680069006C00
      64005200650070006F007200740033002E0043006F006C0075006D006E005000
      6F0073006900740069006F006E007300010030002E00320035002C0035002E00
      38003400360034000100010001000D000A007300740044006C00670073004300
      61007000740069006F006E0073005F0055006E00690063006F00640065000D00
      0A005700610072006E0069006E00670001005700610072006E0069006E006700
      0100010001000D000A004500720072006F00720001004500720072006F007200
      0100010001000D000A0049006E0066006F0072006D006100740069006F006E00
      010049006E0066006F0072006D006100740069006F006E000100010001000D00
      0A0043006F006E006600690072006D00010043006F006E006600690072006D00
      0100010001000D000A0059006500730001002600590065007300010001000100
      0D000A004E006F00010026004E006F000100010001000D000A004F004B000100
      4F004B000100010001000D000A00430061006E00630065006C00010043006100
      6E00630065006C000100010001000D000A00410062006F007200740001002600
      410062006F00720074000100010001000D000A00520065007400720079000100
      2600520065007400720079000100010001000D000A00490067006E006F007200
      650001002600490067006E006F00720065000100010001000D000A0041006C00
      6C000100260041006C006C000100010001000D000A004E006F00200054006F00
      200041006C006C0001004E0026006F00200074006F00200041006C006C000100
      010001000D000A00590065007300200054006F00200041006C006C0001005900
      65007300200074006F002000260041006C006C000100010001000D000A004800
      65006C00700001002600480065006C0070000100010001000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00410044004F004400610074006100
      53006500740031002E0043006F006D006D0061006E0064005400650078007400
      010065007800650063002000730070005F00630061007200740065005F006700
      65006E00630068006100730065006900740065006D0073002000320001000100
      01000D000A00700070004400420050006900700065006C0069006E0065003100
      2E0055007300650072004E0061006D0065000100440042005000690070006500
      6C0069006E00650031000100010001000D000A00700070005200650070006F00
      7200740031002E00440065007600690063006500540079007000650001005300
      63007200650065006E000100010001000D000A00700070005300680061007000
      650031002E0055007300650072004E0061006D00650001005300680061007000
      650031000100010001000D000A00700070005300680061007000650036002E00
      55007300650072004E0061006D00650001005300680061007000650036000100
      010001000D000A00700070005300680061007000650035002E00550073006500
      72004E0061006D00650001005300680061007000650035000100010001000D00
      0A00700070005300680061007000650034002E0055007300650072004E006100
      6D00650001005300680061007000650034000100010001000D000A0070007000
      5300680061007000650033002E0055007300650072004E0061006D0065000100
      5300680061007000650033000100010001000D000A0070007000520069006300
      6800540065007800740031002E00520069006300680054006500780074000100
      7B005C0072007400660031005C0061006E00730069005C0061006E0073006900
      6300700067003900350030005C00640065006600660030005C00640065006600
      6C0061006E00670031003000330033005C006400650066006C0061006E006700
      6600650031003000320038007B005C0066006F006E007400740062006C007B00
      5C00660030005C006600730077006900730073005C0066006300680061007200
      7300650074003000200041007200690061006C003B007D007B005C0066003100
      5C0066006D006F006400650072006E005C00660070007200710036005C006600
      63006800610072007300650074003100330034002000530069006D0053007500
      6E003B007D007B005C00660032005C0066006E0069006C005C00660063006800
      6100720073006500740031003300360020005400610068006F006D0061003B00
      7D007D0019001A005C0076006900650077006B0069006E00640034005C007500
      630031005C0070006100720064005C00710063005C006C0061006E0067003100
      3000320038005C00660030005C0066007300320034002000430065006E007400
      720061006C0020004F0072006400650072002000500072006F00630065007300
      730069006E00670020002D0020005C00660031005C002700630065005C002700
      650066005C002700630031005C002700630066005C002700620038005C002700
      660061005C002700640066005C002700340064005C002700640030005C002700
      640030005C002700380034005C002700640033005C002700640035005C002700
      340039005C002700630033005C002700660037005C002700620063005C002700
      390061005C002700620031005C00270065006400200028005C00270064003700
      5C002700620037005C002700630031005C002700630066005C00270062006200
      5C002700660032005C002700640031005C002700360031005C00270063003100
      5C0027006300660029005C00660032005C0066007300310036005C0070006100
      720019001A007D0019001A000D000A00730074004C006F00630061006C006500
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00}
  end
end
