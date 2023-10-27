object frmnewcap_rwodetail: Tfrmnewcap_rwodetail
  Left = 193
  Top = 114
  Caption = 'Detail Info of CWOs'
  ClientHeight = 639
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 918
    Height = 565
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'J_NO'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Project #'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footers = <>
        Title.Caption = 'Prod Code'
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Cust Style'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'WO #'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'RWO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'CWO'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Clr Code'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Qty'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'FWDT'
        Footers = <>
        Title.Caption = 'FW Start Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'BT3DT'
        Footers = <>
        Title.Caption = 'T3 Date   (Std ahead)'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'AT3DT'
        Footers = <>
        Title.Caption = 'aT3 Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DIFF'
        Footers = <>
        Title.Caption = 'T3 Window  (Std ahead)'
      end
      item
        EditButtons = <>
        FieldName = 'EXDT'
        Footers = <>
        Title.Caption = 'Ex-fty Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DDT'
        Footers = <>
        Title.Caption = 'Delivery Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'SHPM'
        Footers = <>
        Title.Caption = 'Transit Mode'
        Width = 71
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 598
    Width = 918
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 224
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Export'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 176
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 74
      Height = 13
      Caption = 'Sorting by: - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 512
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object Label4: TLabel
      Left = 552
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object Label5: TLabel
      Left = 616
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object xh1: TRadioButton
      Left = 120
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Delivery Date'
      TabOrder = 0
      OnClick = xh1Click
    end
    object xh2: TRadioButton
      Left = 256
      Top = 8
      Width = 105
      Height = 17
      Caption = 'FW Start Date'
      TabOrder = 1
      OnClick = xh1Click
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_erprwo where j_no='#39'MNSU-200'#39
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CUSTOMER'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SAH'
        DataType = ftFloat
      end
      item
        Name = 'DDT'
        DataType = ftDate
      end
      item
        Name = 'EXDT'
        DataType = ftDate
      end
      item
        Name = 'T3DT'
        DataType = ftDate
      end
      item
        Name = 'AT3DT'
        DataType = ftDate
      end
      item
        Name = 'T3YR'
        DataType = ftInteger
      end
      item
        Name = 'T3MN'
        DataType = ftInteger
      end
      item
        Name = 'T3WK'
        DataType = ftInteger
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'DTYR'
        DataType = ftInteger
      end
      item
        Name = 'DTMN'
        DataType = ftInteger
      end
      item
        Name = 'DTWK'
        DataType = ftInteger
      end
      item
        Name = 'T3WKS'
        DataType = ftInteger
      end
      item
        Name = 'DTWKS'
        DataType = ftInteger
      end
      item
        Name = 'AT3YR'
        DataType = ftInteger
      end
      item
        Name = 'AT3MN'
        DataType = ftInteger
      end
      item
        Name = 'AT3WKS'
        DataType = ftInteger
      end
      item
        Name = 'AT3WK'
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'WOC'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FWDT'
        DataType = ftDate
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'LWDT'
        DataType = ftDate
      end
      item
        Name = 'BT3DT'
        DataType = ftDate
      end
      item
        Name = 'BT3YR'
        DataType = ftInteger
      end
      item
        Name = 'BT3MN'
        DataType = ftInteger
      end
      item
        Name = 'BT3WK'
        DataType = ftInteger
      end
      item
        Name = 'BT3WKS'
        DataType = ftInteger
      end
      item
        Name = 'DFW'
        DataType = ftInteger
      end
      item
        Name = 'DLW'
        DataType = ftInteger
      end
      item
        Name = 'BKNR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'RWO_CFM'
        DataType = ftBoolean
      end
      item
        Name = 'RWO_FTY'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'UPX'
        DataType = ftFloat
      end
      item
        Name = 'CUSTPO'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'EXYR'
        DataType = ftInteger
      end
      item
        Name = 'EXMN'
        DataType = ftInteger
      end
      item
        Name = 'FLAG6_O'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ARTNO'
        DataType = ftWideString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'ddt;j_no;j2_job;acol;rwo'
      end
      item
        Name = 'idx2'
        Fields = 't3dt;j_no;j2_job;acol;rwo'
      end
      item
        Name = 'idx3'
        Fields = 'at3dt;j_no;j2_job;acol;rwo'
      end
      item
        Name = 'idx4'
        Fields = 'fwdt;j_no;j2_job;acol;rwo'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 160
    Top = 104
    object Query1TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Origin = '"TBL_CAP_ERPRWO"."TPLANT"'
      Size = 10
    end
    object Query1CUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = '"TBL_CAP_ERPRWO"."CUSTOMER"'
      Size = 10
    end
    object Query1J_NO: TWideStringField
      FieldName = 'J_NO'
      Origin = '"TBL_CAP_ERPRWO"."J_NO"'
    end
    object Query1CSTYLE: TWideStringField
      FieldName = 'CSTYLE'
      Origin = '"TBL_CAP_ERPRWO"."CSTYLE"'
      Size = 35
    end
    object Query1QTY: TIntegerField
      FieldName = 'QTY'
      Origin = '"TBL_CAP_ERPRWO"."QTY"'
    end
    object Query1SAH: TFloatField
      FieldName = 'SAH'
      Origin = '"TBL_CAP_ERPRWO"."SAH"'
    end
    object Query1DDT: TDateField
      FieldName = 'DDT'
      Origin = '"TBL_CAP_ERPRWO"."DDT"'
    end
    object Query1EXDT: TDateField
      FieldName = 'EXDT'
      Origin = '"TBL_CAP_ERPRWO"."EXDT"'
    end
    object Query1T3DT: TDateField
      FieldName = 'T3DT'
      Origin = '"TBL_CAP_ERPRWO"."T3DT"'
    end
    object Query1AT3DT: TDateField
      FieldName = 'AT3DT'
      Origin = '"TBL_CAP_ERPRWO"."AT3DT"'
      OnGetText = Query1AT3DTGetText
    end
    object Query1T3YR: TIntegerField
      FieldName = 'T3YR'
      Origin = '"TBL_CAP_ERPRWO"."T3YR"'
    end
    object Query1T3MN: TIntegerField
      FieldName = 'T3MN'
      Origin = '"TBL_CAP_ERPRWO"."T3MN"'
    end
    object Query1T3WK: TIntegerField
      FieldName = 'T3WK'
      Origin = '"TBL_CAP_ERPRWO"."T3WK"'
    end
    object Query1FLAG6: TWideStringField
      FieldName = 'FLAG6'
      Origin = '"TBL_CAP_ERPRWO"."FLAG6"'
      Size = 10
    end
    object Query1DIFF: TIntegerField
      FieldName = 'DIFF'
      Origin = '"TBL_CAP_ERPRWO"."DIFF"'
      OnGetText = Query1DIFFGetText
    end
    object Query1DTYR: TIntegerField
      FieldName = 'DTYR'
      Origin = '"TBL_CAP_ERPRWO"."DTYR"'
    end
    object Query1DTMN: TIntegerField
      FieldName = 'DTMN'
      Origin = '"TBL_CAP_ERPRWO"."DTMN"'
    end
    object Query1DTWK: TIntegerField
      FieldName = 'DTWK'
      Origin = '"TBL_CAP_ERPRWO"."DTWK"'
    end
    object Query1T3WKS: TIntegerField
      FieldName = 'T3WKS'
      Origin = '"TBL_CAP_ERPRWO"."T3WKS"'
    end
    object Query1DTWKS: TIntegerField
      FieldName = 'DTWKS'
      Origin = '"TBL_CAP_ERPRWO"."DTWKS"'
    end
    object Query1AT3YR: TIntegerField
      FieldName = 'AT3YR'
      Origin = '"TBL_CAP_ERPRWO"."AT3YR"'
    end
    object Query1AT3MN: TIntegerField
      FieldName = 'AT3MN'
      Origin = '"TBL_CAP_ERPRWO"."AT3MN"'
    end
    object Query1AT3WKS: TIntegerField
      FieldName = 'AT3WKS'
      Origin = '"TBL_CAP_ERPRWO"."AT3WKS"'
    end
    object Query1AT3WK: TIntegerField
      FieldName = 'AT3WK'
      Origin = '"TBL_CAP_ERPRWO"."AT3WK"'
    end
    object Query1J2_JOB: TWideStringField
      FieldName = 'J2_JOB'
      Origin = '"TBL_CAP_ERPRWO"."J2_JOB"'
      Size = 10
    end
    object Query1ACOL: TWideStringField
      FieldName = 'ACOL'
      Origin = '"TBL_CAP_ERPRWO"."ACOL"'
      Size = 10
    end
    object Query1WOC: TWideStringField
      FieldName = 'WOC'
      Origin = '"TBL_CAP_ERPRWO"."WOC"'
      Size = 10
    end
    object Query1RWO: TWideStringField
      FieldName = 'RWO'
      Origin = '"TBL_CAP_ERPRWO"."RWO"'
      Size = 10
    end
    object Query1FWDT: TDateField
      FieldName = 'FWDT'
      Origin = '"TBL_CAP_ERPRWO"."FWDT"'
    end
    object Query1SHPM: TWideStringField
      FieldName = 'SHPM'
      Origin = '"TBL_CAP_ERPRWO"."SHPM"'
    end
    object Query1LWDT: TDateField
      FieldName = 'LWDT'
      Origin = '"TBL_CAP_ERPRWO"."LWDT"'
    end
    object Query1BT3DT: TDateField
      FieldName = 'BT3DT'
      Origin = '"TBL_CAP_ERPRWO"."BT3DT"'
    end
    object Query1BT3YR: TIntegerField
      FieldName = 'BT3YR'
      Origin = '"TBL_CAP_ERPRWO"."BT3YR"'
    end
    object Query1BT3MN: TIntegerField
      FieldName = 'BT3MN'
      Origin = '"TBL_CAP_ERPRWO"."BT3MN"'
    end
    object Query1BT3WK: TIntegerField
      FieldName = 'BT3WK'
      Origin = '"TBL_CAP_ERPRWO"."BT3WK"'
    end
    object Query1BT3WKS: TIntegerField
      FieldName = 'BT3WKS'
      Origin = '"TBL_CAP_ERPRWO"."BT3WKS"'
    end
    object Query1DFW: TIntegerField
      FieldName = 'DFW'
      Origin = '"TBL_CAP_ERPRWO"."DFW"'
    end
    object Query1DLW: TIntegerField
      FieldName = 'DLW'
      Origin = '"TBL_CAP_ERPRWO"."DLW"'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 104
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 224
    Top = 104
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
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
    Left = 256
    Top = 104
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Detail Info of CWOs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 25929
        mmTop = 3440
        mmWidth = 68527
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 9260
        mmLeft = 1323
        mmTop = 20902
        mmWidth = 194205
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2117
        mmTop = 24606
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prod '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 20373
        mmTop = 21960
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 20373
        mmTop = 25929
        mmWidth = 6731
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 24606
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO #  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 24606
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 65617
        mmTop = 24606
        mmWidth = 8636
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 76994
        mmTop = 21960
        mmWidth = 4403
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 25929
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quantity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 88106
        mmTop = 25929
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FW Start '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 104775
        mmTop = 21960
        mmWidth = 12150
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 104775
        mmTop = 25929
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3 Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122767
        mmTop = 21960
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'aT3 Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 140494
        mmTop = 24606
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
        Caption = 'Ex-fty Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 157427
        mmTop = 24606
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Delivery Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175419
        mmTop = 24606
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label14'
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
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 16404
        mmWidth = 14288
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
        mmHeight = 3175
        mmLeft = 145521
        mmTop = 16404
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
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
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 16404
        mmWidth = 7408
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
        mmHeight = 3175
        mmLeft = 180711
        mmTop = 16404
        mmWidth = 7144
        BandType = 0
      end
      object del001: TppLabel
        UserName = 'del001'
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
        mmLeft = 84931
        mmTop = 21960
        mmWidth = 18256
        BandType = 0
      end
      object yrmn001: TppLabel
        UserName = 'yrmn001'
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
        mmHeight = 3260
        mmLeft = 14552
        mmTop = 16404
        mmWidth = 11007
        BandType = 0
      end
      object sub001: TppLabel
        UserName = 'sub001'
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
        mmLeft = 38629
        mmTop = 10054
        mmWidth = 126736
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Std ahead)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 122767
        mmTop = 25929
        mmWidth = 16383
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '-  Product Code & Customer Dependent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 95515
        mmTop = 4498
        mmWidth = 78317
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object sd01: TppShape
        UserName = 'sd01'
        Brush.Color = clYellow
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 175419
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object sq01: TppShape
        UserName = 'sq01'
        Brush.Color = clYellow
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 88106
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object sa01: TppShape
        UserName = 'sa01'
        Brush.Color = clYellow
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 140494
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object st01: TppShape
        UserName = 'st01'
        Brush.Color = clYellow
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 122767
        mmTop = 0
        mmWidth = 15346
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
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 2117
        mmTop = 529
        mmWidth = 13928
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
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 20902
        mmTop = 529
        mmWidth = 3471
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 30692
        mmTop = 529
        mmWidth = 11938
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 48419
        mmTop = 529
        mmWidth = 11980
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
        DataField = 'RWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 65617
        mmTop = 529
        mmWidth = 3937
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
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 76994
        mmTop = 529
        mmWidth = 5038
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
        DataField = 'FWDT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 104775
        mmTop = 529
        mmWidth = 14182
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
        DataField = 'BT3DT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 122767
        mmTop = 529
        mmWidth = 14393
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
        DataField = 'AT3DT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 140494
        mmTop = 529
        mmWidth = 14393
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
        DataField = 'EXDT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 157427
        mmTop = 529
        mmWidth = 14182
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
        DataField = 'DDT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 175419
        mmTop = 529
        mmWidth = 14393
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
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 93219
        mmTop = 529
        mmWidth = 6265
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2646
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 6085
        mmLeft = 1323
        mmTop = 0
        mmWidth = 194205
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 6646
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
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 85895
        mmTop = 1058
        mmWidth = 13589
        BandType = 7
      end
      object prj001: TppLabel
        UserName = 'prj001'
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
        mmLeft = 11113
        mmTop = 1058
        mmWidth = 6615
        BandType = 7
      end
      object sty001: TppLabel
        UserName = 'sty001'
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
        mmLeft = 33073
        mmTop = 1058
        mmWidth = 6615
        BandType = 7
      end
      object wo001: TppLabel
        UserName = 'wo001'
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
        mmLeft = 50536
        mmTop = 1058
        mmWidth = 6615
        BandType = 7
      end
      object clr001: TppLabel
        UserName = 'clr001'
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
        mmLeft = 76994
        mmTop = 1058
        mmWidth = 6604
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 14552
        mmWidth = 197379
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '11.08'
          mmColumnWidth = 197379
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              mmHeight = 5027
              mmLeft = 1058
              mmTop = 529
              mmWidth = 126736
              BandType = 1
            end
            object dt001: TppLabel
              UserName = 'dt001'
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
              mmLeft = 2381
              mmTop = 1323
              mmWidth = 7144
              BandType = 1
            end
            object qty001: TppLabel
              UserName = 'qty001'
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
              mmLeft = 103717
              mmTop = 1323
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '# of Cust Style '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 26194
              mmTop = 1323
              mmWidth = 19315
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '# of WO '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 48683
              mmTop = 1323
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '# of CWO '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 64029
              mmTop = 1323
              mmWidth = 13377
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '# of Clr Code '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 80433
              mmTop = 1323
              mmWidth = 17463
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            ColumnTraversal = ctLeftToRight
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 5292
              mmLeft = 1058
              mmTop = 0
              mmWidth = 126736
              BandType = 4
            end
            object dt002: TppDBText
              UserName = 'dt002'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DDT'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 2381
              mmTop = 794
              mmWidth = 11007
              BandType = 4
            end
            object qty002: TppDBText
              UserName = 'qty002'
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
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 107506
              mmTop = 794
              mmWidth = 6265
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
              DataField = 'ACOL'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 87037
              mmTop = 794
              mmWidth = 5038
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
              DataField = 'WO'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 53181
              mmTop = 794
              mmWidth = 5027
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
              DataField = 'CSTYLE'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 29866
              mmTop = 794
              mmWidth = 11938
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
              DataField = 'CNT'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3175
              mmLeft = 69850
              mmTop = 794
              mmWidth = 5821
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppShape5: TppShape
              UserName = 'Shape5'
              mmHeight = 5292
              mmLeft = 1058
              mmTop = 0
              mmWidth = 126736
              BandType = 7
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'TTL: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 2117
              mmTop = 1058
              mmWidth = 6646
              BandType = 7
            end
            object sty002: TppLabel
              UserName = 'sty002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'sty002'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 33443
              mmTop = 1058
              mmWidth = 8340
              BandType = 7
            end
            object clr002: TppLabel
              UserName = 'clr002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'clr002'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 84349
              mmTop = 1058
              mmWidth = 7705
              BandType = 7
            end
            object wo002: TppLabel
              UserName = 'wo002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'wo002'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 49932
              mmTop = 1058
              mmWidth = 8255
              BandType = 7
            end
            object rwo002: TppLabel
              UserName = 'rwo002'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'rwo002'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3260
              mmLeft = 66464
              mmTop = 1058
              mmWidth = 9186
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
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3260
              mmLeft = 100277
              mmTop = 1058
              mmWidth = 13589
              BandType = 7
            end
          end
        end
      end
      object ppLabel21: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Summary: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 10054
        mmWidth = 15536
        BandType = 7
      end
      object rwo001: TppLabel
        UserName = 'rwo001'
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
        mmLeft = 65617
        mmTop = 1058
        mmWidth = 6604
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 288
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_erprwo where j_no='#39'MNSU-200'#39
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CUSTOMER'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SAH'
        DataType = ftFloat
      end
      item
        Name = 'DDT'
        DataType = ftDate
      end
      item
        Name = 'EXDT'
        DataType = ftDate
      end
      item
        Name = 'T3DT'
        DataType = ftDate
      end
      item
        Name = 'AT3DT'
        DataType = ftDate
      end
      item
        Name = 'T3YR'
        DataType = ftInteger
      end
      item
        Name = 'T3MN'
        DataType = ftInteger
      end
      item
        Name = 'T3WK'
        DataType = ftInteger
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'DTYR'
        DataType = ftInteger
      end
      item
        Name = 'DTMN'
        DataType = ftInteger
      end
      item
        Name = 'DTWK'
        DataType = ftInteger
      end
      item
        Name = 'T3WKS'
        DataType = ftInteger
      end
      item
        Name = 'DTWKS'
        DataType = ftInteger
      end
      item
        Name = 'AT3YR'
        DataType = ftInteger
      end
      item
        Name = 'AT3MN'
        DataType = ftInteger
      end
      item
        Name = 'AT3WKS'
        DataType = ftInteger
      end
      item
        Name = 'AT3WK'
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'WOC'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FWDT'
        DataType = ftDate
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'LWDT'
        DataType = ftDate
      end
      item
        Name = 'BT3DT'
        DataType = ftDate
      end
      item
        Name = 'BT3YR'
        DataType = ftInteger
      end
      item
        Name = 'BT3MN'
        DataType = ftInteger
      end
      item
        Name = 'BT3WK'
        DataType = ftInteger
      end
      item
        Name = 'BT3WKS'
        DataType = ftInteger
      end
      item
        Name = 'DFW'
        DataType = ftInteger
      end
      item
        Name = 'DLW'
        DataType = ftInteger
      end
      item
        Name = 'BKNR'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 160
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = Query3
    Left = 192
    Top = 136
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 224
    Top = 136
  end
  object XLS1: TQExport4XLS
    DataSet = Query4
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.6'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    MergedCells = <>
    Left = 160
    Top = 184
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|Excel Files (*.xls)'
    Left = 224
    Top = 184
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
    Top = 184
  end
end
