object frmwprofile: Tfrmwprofile
  Left = 190
  Top = 114
  Caption = 'Workshop Profile'
  ClientHeight = 343
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 41
    Height = 13
    Caption = 'Factory  '
  end
  object Label2: TLabel
    Left = 160
    Top = 24
    Width = 49
    Height = 13
    Caption = 'Workshop'
  end
  object Label9: TLabel
    Left = 32
    Top = 264
    Width = 97
    Height = 13
    Caption = 'Over/Shortage (+/-) '
  end
  object SpeedButton1: TSpeedButton
    Left = 192
    Top = 296
    Width = 33
    Height = 25
    Hint = 'One Workshop'
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
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 225
    Top = 296
    Width = 33
    Height = 25
    Hint = 'All Workshop'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
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
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton2Click
  end
  object Label10: TLabel
    Left = 360
    Top = 24
    Width = 105
    Height = 13
    Caption = 'Workshop Supervisor '
  end
  object SpeedButton3: TSpeedButton
    Left = 258
    Top = 296
    Width = 33
    Height = 25
    Hint = 'Exit'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00377777777788
      F8F878F7777777777333333F00004444400777FFF444447777777777F333FF7F
      000033334D5008FFF4333377777777773337777F0000333345D50FFFF4333333
      337F777F3337F33F000033334D5D0FFFF43333333377877F3337F33F00003333
      45D50FEFE4333333337F787F3337F33F000033334D5D0FFFF43333333377877F
      3337F33F0000333345D50FEFE4333333337F787F3337F33F000033334D5D0FFF
      F43333333377877F3337F33F0000333345D50FEFE4333333337F787F3337F33F
      000033334D5D0EFEF43333333377877F3337F33F0000333345D50FEFE4333333
      337F787F3337F33F000033334D5D0EFEF43333333377877F3337F33F00003333
      4444444444333333337F7F7FFFF7F33F00003333333333333333333333777777
      7777333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333777777F3333F00003333330000003333333333337FFFF7F3333F
      0000}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton3Click
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 24
    Width = 65
    Height = 21
    Color = 12121071
    DataField = 'TPLANT'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 216
    Top = 24
    Width = 121
    Height = 21
    Color = 12121071
    DataField = 'TSHOP'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 56
    Width = 657
    Height = 89
    Caption = 'Stationed'
    TabOrder = 2
    object Label3: TLabel
      Left = 32
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Supervisor '
    end
    object Label4: TLabel
      Left = 216
      Top = 56
      Width = 115
      Height = 13
      Caption = 'Sewing M/C Mechanic  '
    end
    object Label5: TLabel
      Left = 16
      Top = 56
      Width = 82
      Height = 13
      Caption = 'Mobile QC(WIP)  '
    end
    object Label11: TLabel
      Left = 96
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Mobile IE'
      Visible = False
    end
    object Label12: TLabel
      Left = 480
      Top = 56
      Width = 86
      Height = 13
      Caption = 'Operator Assistant'
    end
    object Label13: TLabel
      Left = 432
      Top = 24
      Width = 133
      Height = 13
      Caption = 'Line QC - Leader (products) '
    end
    object Label17: TLabel
      Left = 232
      Top = 24
      Width = 101
      Height = 13
      Caption = 'Assistant Supervisor  '
    end
    object Label18: TLabel
      Left = 208
      Top = 8
      Width = 121
      Height = 13
      Caption = 'Mobile QC - Leader(WIP) '
      Visible = False
    end
    object Label19: TLabel
      Left = 520
      Top = 8
      Width = 90
      Height = 13
      Caption = 'Final QC(products) '
      Visible = False
    end
    object Label20: TLabel
      Left = 408
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Sample QC'
      Visible = False
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 24
      Width = 65
      Height = 21
      DataField = 'WF12'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 336
      Top = 56
      Width = 65
      Height = 21
      DataField = 'WF13'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 96
      Top = 56
      Width = 65
      Height = 21
      DataField = 'WF14'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit11: TDBEdit
      Left = 144
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WF15'
      DataSource = DataSource1
      TabOrder = 3
      Visible = False
    end
    object DBEdit12: TDBEdit
      Left = 576
      Top = 56
      Width = 65
      Height = 21
      DataField = 'WF16'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 576
      Top = 24
      Width = 65
      Height = 21
      DataField = 'WF26'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit17: TDBEdit
      Left = 336
      Top = 24
      Width = 65
      Height = 21
      DataField = 'WF15'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit18: TDBEdit
      Left = 336
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WF32'
      DataSource = DataSource1
      TabOrder = 7
      Visible = False
    end
    object DBEdit19: TDBEdit
      Left = 616
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WF33'
      DataSource = DataSource1
      TabOrder = 8
      Visible = False
    end
    object DBEdit20: TDBEdit
      Left = 464
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WF34'
      DataSource = DataSource1
      TabOrder = 9
      Visible = False
    end
  end
  object DBEdit9: TDBEdit
    Left = 136
    Top = 264
    Width = 105
    Height = 21
    Color = 12121071
    DataField = 'WF28'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 296
    Width = 160
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object DBEdit10: TDBEdit
    Left = 472
    Top = 24
    Width = 161
    Height = 21
    Color = 12121071
    DataField = 'SHPMGR'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 160
    Width = 657
    Height = 89
    Caption = 'Current'
    TabOrder = 6
    object Label6: TLabel
      Left = 40
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Supervisor '
    end
    object Label7: TLabel
      Left = 216
      Top = 56
      Width = 115
      Height = 13
      Caption = 'Sewing M/C Mechanic  '
    end
    object Label8: TLabel
      Left = 16
      Top = 56
      Width = 82
      Height = 13
      Caption = 'Mobile QC(WIP)  '
    end
    object Label14: TLabel
      Left = 80
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Mobile IE'
      Visible = False
    end
    object Label15: TLabel
      Left = 480
      Top = 56
      Width = 86
      Height = 13
      Caption = 'Operator Assistant'
    end
    object Label16: TLabel
      Left = 432
      Top = 24
      Width = 133
      Height = 13
      Caption = 'Line QC - Leader (products) '
    end
    object Label21: TLabel
      Left = 232
      Top = 24
      Width = 101
      Height = 13
      Caption = 'Assistant Supervisor  '
    end
    object Label22: TLabel
      Left = 192
      Top = 8
      Width = 121
      Height = 13
      Caption = 'Mobile QC - Leader(WIP) '
      Visible = False
    end
    object Label23: TLabel
      Left = 488
      Top = 8
      Width = 90
      Height = 13
      Caption = 'Final QC(products) '
      Visible = False
    end
    object Label24: TLabel
      Left = 376
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Sample QC'
      Visible = False
    end
    object DBEdit6: TDBEdit
      Left = 96
      Top = 24
      Width = 65
      Height = 21
      DataField = 'WF17'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 336
      Top = 56
      Width = 65
      Height = 21
      DataField = 'WF18'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 96
      Top = 56
      Width = 65
      Height = 21
      DataField = 'WF19'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit14: TDBEdit
      Left = 128
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WF20'
      DataSource = DataSource1
      TabOrder = 3
      Visible = False
    end
    object DBEdit15: TDBEdit
      Left = 576
      Top = 56
      Width = 65
      Height = 21
      DataField = 'WF21'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit16: TDBEdit
      Left = 576
      Top = 24
      Width = 65
      Height = 21
      DataField = 'WF27'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit21: TDBEdit
      Left = 336
      Top = 24
      Width = 65
      Height = 21
      DataField = 'WF20'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit22: TDBEdit
      Left = 320
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WF36'
      DataSource = DataSource1
      TabOrder = 7
      Visible = False
    end
    object DBEdit23: TDBEdit
      Left = 584
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WF37'
      DataSource = DataSource1
      TabOrder = 8
      Visible = False
    end
    object DBEdit24: TDBEdit
      Left = 432
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WF38'
      DataSource = DataSource1
      TabOrder = 9
      Visible = False
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblwks'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TSHOP'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SHPMGR'
        DataType = ftWideString
        Size = 25
      end
      item
        Name = 'WF12'
        DataType = ftFloat
      end
      item
        Name = 'WF13'
        DataType = ftFloat
      end
      item
        Name = 'WF14'
        DataType = ftFloat
      end
      item
        Name = 'WF15'
        DataType = ftFloat
      end
      item
        Name = 'WF16'
        DataType = ftFloat
      end
      item
        Name = 'WF17'
        DataType = ftFloat
      end
      item
        Name = 'WF18'
        DataType = ftFloat
      end
      item
        Name = 'WF19'
        DataType = ftFloat
      end
      item
        Name = 'WF20'
        DataType = ftFloat
      end
      item
        Name = 'WF21'
        DataType = ftFloat
      end
      item
        Name = 'WF26'
        DataType = ftFloat
      end
      item
        Name = 'WF27'
        DataType = ftFloat
      end
      item
        Name = 'WF28'
        DataType = ftFloat
      end
      item
        Name = 'WF31'
        DataType = ftFloat
      end
      item
        Name = 'WF32'
        DataType = ftFloat
      end
      item
        Name = 'WF33'
        DataType = ftFloat
      end
      item
        Name = 'WF34'
        DataType = ftFloat
      end
      item
        Name = 'WF35'
        DataType = ftFloat
      end
      item
        Name = 'WF36'
        DataType = ftFloat
      end
      item
        Name = 'WF37'
        DataType = ftFloat
      end
      item
        Name = 'WF38'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;tshop'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 24
    object Query1TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Required = True
      Size = 10
    end
    object Query1TSHOP: TWideStringField
      FieldName = 'TSHOP'
      Required = True
      Size = 5
    end
    object Query1SHPMGR: TWideStringField
      FieldName = 'SHPMGR'
      Size = 25
    end
    object Query1WF12: TFloatField
      FieldName = 'WF12'
      OnChange = Query1WF12Change
    end
    object Query1WF13: TFloatField
      FieldName = 'WF13'
      OnChange = Query1WF12Change
    end
    object Query1WF14: TFloatField
      FieldName = 'WF14'
      OnChange = Query1WF12Change
    end
    object Query1WF15: TFloatField
      FieldName = 'WF15'
      OnChange = Query1WF12Change
    end
    object Query1WF16: TFloatField
      FieldName = 'WF16'
      OnChange = Query1WF12Change
    end
    object Query1WF17: TFloatField
      FieldName = 'WF17'
      OnChange = Query1WF12Change
    end
    object Query1WF18: TFloatField
      FieldName = 'WF18'
      OnChange = Query1WF12Change
    end
    object Query1WF19: TFloatField
      FieldName = 'WF19'
      OnChange = Query1WF12Change
    end
    object Query1WF20: TFloatField
      FieldName = 'WF20'
      OnChange = Query1WF12Change
    end
    object Query1WF21: TFloatField
      FieldName = 'WF21'
      OnChange = Query1WF12Change
    end
    object Query1WF26: TFloatField
      FieldName = 'WF26'
      OnChange = Query1WF12Change
    end
    object Query1WF27: TFloatField
      FieldName = 'WF27'
      OnChange = Query1WF12Change
    end
    object Query1WF28: TFloatField
      FieldName = 'WF28'
    end
    object Query1WF31: TFloatField
      FieldName = 'WF31'
      OnChange = Query1WF12Change
    end
    object Query1WF32: TFloatField
      FieldName = 'WF32'
      OnChange = Query1WF12Change
    end
    object Query1WF33: TFloatField
      FieldName = 'WF33'
      OnChange = Query1WF12Change
    end
    object Query1WF34: TFloatField
      FieldName = 'WF34'
      OnChange = Query1WF12Change
    end
    object Query1WF35: TFloatField
      FieldName = 'WF35'
      OnChange = Query1WF12Change
    end
    object Query1WF36: TFloatField
      FieldName = 'WF36'
      OnChange = Query1WF12Change
    end
    object Query1WF37: TFloatField
      FieldName = 'WF37'
      OnChange = Query1WF12Change
    end
    object Query1WF38: TFloatField
      FieldName = 'WF38'
      OnChange = Query1WF12Change
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 56
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 152
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
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
    Left = 184
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26723
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop Profile  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 55563
        mmTop = 8202
        mmWidth = 49477
        BandType = 0
      end
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 107156
        mmTop = 8202
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158750
        mmTop = 15875
        mmWidth = 13494
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
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 15875
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158750
        mmTop = 20638
        mmWidth = 7938
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 20638
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 62442
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 15346
        mmLeft = 13758
        mmTop = 36513
        mmWidth = 176213
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 2117
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPLANT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 2117
        mmWidth = 17198
        BandType = 4
      end
      object mgr001: TppLabel
        UserName = 'mgr001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop Supervisor  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 103188
        mmTop = 2117
        mmWidth = 29369
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHPMGR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 134673
        mmTop = 2117
        mmWidth = 38100
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 55827
        mmTop = 2117
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSHOP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 72231
        mmTop = 2117
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supporting Staff  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 9260
        mmWidth = 22490
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 15346
        mmLeft = 13758
        mmTop = 16140
        mmWidth = 176213
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supervisor   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 32544
        mmTop = 18256
        mmWidth = 16404
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stationed '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16404
        mmTop = 18256
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF12'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 18256
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sewing M/C Mechanic   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 80169
        mmTop = 24342
        mmWidth = 30692
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF13'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 24342
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mobile QC (WIP)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 32544
        mmTop = 24342
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF14'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 24342
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mobile IE   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 34131
        mmTop = 11642
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF15'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 48419
        mmTop = 11642
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Operator Assistant   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 143404
        mmTop = 24342
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF16'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 172244
        mmTop = 24342
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line QC - Leader(products)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 133879
        mmTop = 18256
        mmWidth = 36777
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF26'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 18256
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16404
        mmTop = 38629
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Over / Shortage (+/-)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 13758
        mmTop = 55298
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF28'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '+#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 45244
        mmTop = 55298
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supervisor   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 32544
        mmTop = 38629
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF17'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 38629
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF18'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 44979
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF19'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 44979
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mobile IE   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 33073
        mmTop = 32279
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF20'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 47361
        mmTop = 32279
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF21'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 172244
        mmTop = 44979
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF27'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 38629
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line QC - Leader(products)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 133879
        mmTop = 38629
        mmWidth = 36777
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sewing M/C Mechanic   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 80169
        mmTop = 44979
        mmWidth = 30692
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mobile QC (WIP)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 32544
        mmTop = 44979
        mmWidth = 21960
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Operator Assistant   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 143404
        mmTop = 44979
        mmWidth = 26723
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Assistant Supervisor   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 80169
        mmTop = 18256
        mmWidth = 29369
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF15'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 18256
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mobile QC - Leader (WIP)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 63765
        mmTop = 11642
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF32'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 98161
        mmTop = 11642
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Final QC(products)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 11377
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF33'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 171715
        mmTop = 11377
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sample QC   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 113771
        mmTop = 11377
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF33'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 11377
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Assistant Supervisor   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 80169
        mmTop = 38629
        mmWidth = 29369
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF20'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 38629
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mobile QC - Leader (WIP)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 32279
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF36'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 97631
        mmTop = 32279
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Final QC(products)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 32279
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF37'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 171715
        mmTop = 32279
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sample QC   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 113242
        mmTop = 32279
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF38'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 130704
        mmTop = 32279
        mmWidth = 11906
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prepared by  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 6615
        mmWidth = 19050
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 27517
        mmTop = 10848
        mmWidth = 38365
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Approved by  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110596
        mmTop = 6615
        mmWidth = 19050
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 131234
        mmTop = 10848
        mmWidth = 38365
        BandType = 8
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 10848
        mmLeft = 2117
        mmTop = 23283
        mmWidth = 198438
        BandType = 8
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Lines.Strings = (
          'Remarks : - '
          
            'workshop profile is major for those staff involve products opera' +
            'tion function, excl. sample, semi-products (cut panel and molded' +
            ' cups)')
        Transparent = True
        mmHeight = 9525
        mmLeft = 2646
        mmTop = 24077
        mmWidth = 197380
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'TPLANT'
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
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 216
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 248
  end
end
