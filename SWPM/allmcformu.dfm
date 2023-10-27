object frmallmc: Tfrmallmc
  Left = 192
  Top = 114
  Caption = 'Mc Pool'
  ClientHeight = 0
  ClientWidth = 116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 116
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 862
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Factory '
    end
    object Label2: TLabel
      Left = 192
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Mc Type  '
    end
    object Label3: TLabel
      Left = 456
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Location '
    end
    object Label4: TLabel
      Left = 680
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Mc ID'
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 16
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'KB')
    end
    object ComboBox2: TComboBox
      Left = 240
      Top = 16
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = ComboBox1Change
      OnEnter = ComboBox2Enter
    end
    object ComboBox3: TComboBox
      Left = 504
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 2
      OnChange = ComboBox1Change
      OnEnter = ComboBox3Enter
    end
    object Edit1: TEdit
      Left = 712
      Top = 16
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnChange = ComboBox1Change
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 116
    Height = 476
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'MID'
        Footers = <>
        Title.Caption = 'Mc ID'
        Width = 71
        OnEditButtonClick = DBGridEh1Columns0EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'MNAME'
        Footers = <>
        Title.Caption = 'Brand/Model'
        Width = 150
        OnEditButtonClick = DBGridEh1Columns1EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'MTYP1'
        Footers = <>
        Title.Caption = 'Mc Type|Code'
        Width = 40
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'MTYP2'
        Footers = <>
        Title.Caption = 'Mc Type|Description|English'
        Width = 172
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'MTYP'
        Footers = <>
        Title.Caption = 'Mc Type|Description|Chinese '
        Width = 153
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'MTYP3'
        Footers = <>
        Title.Caption = 'Mc Type|Description|Thai'
        Width = 147
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'VNDR'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'BDT'
        Footers = <>
        Title.Caption = 'Arrived Date'
        Width = 68
      end
      item
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'UYEAR'
        Footers = <>
        Title.Caption = 'Used Year'
        Width = 47
      end
      item
        Color = 12121071
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Factory'
        Width = 43
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 12121071
        EditButtons = <>
        FieldName = 'MSTT'
        Footers = <>
        PickList.Strings = (
          'Standby Room'
          'On Repairing')
        Title.Caption = 'Location'
        Width = 101
        OnEditButtonClick = DBGridEh1Columns3EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'BUYER'
        Footers = <>
        Title.Caption = 'Buyer'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'MSTA'
        Footers = <>
        Title.Caption = 'Status'
        Visible = False
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'MGRP'
        Footers = <>
        PickList.Strings = (
          'A'
          'B'
          'C')
        Title.Caption = 'Group'
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'MARKS'
        Footers = <>
        Title.Caption = 'Remarks'
        Width = 411
      end
      item
        EditButtons = <>
        FieldName = 'RES'
        Footers = <>
        Title.Caption = 'Reserve to'
        Visible = False
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'TRA'
        Footers = <>
        Title.Caption = 'Transfer to'
        Visible = False
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = -41
    Width = 116
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 525
    ExplicitWidth = 862
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'AddNew'
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Delete'
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 168
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 240
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
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
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 312
      Top = 8
      Width = 105
      Height = 25
      Caption = 'WF / Mc Ratio'
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
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 416
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Mc Card'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 488
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 6
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_mcpool'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'MID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MNAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MSTT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MSTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MARKS'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'MTYP'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RES'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TRA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WAI'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BDT'
        DataType = ftDate
      end
      item
        Name = 'VNDR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UYEAR'
        DataType = ftFloat
      end
      item
        Name = 'MTYP1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BUYER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IMG'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MGRP'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MTYP2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MTYP3'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'mtyp1;mtyp;mid'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 64
    Top = 120
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 96
    Top = 120
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 128
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 120
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 192
    Top = 120
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
    Left = 224
    Top = 120
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc Pool '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 77788
        mmTop = 5821
        mmWidth = 29898
        BandType = 0
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
        mmLeft = 2646
        mmTop = 14552
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
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
        mmHeight = 3260
        mmLeft = 14552
        mmTop = 14552
        mmWidth = 3810
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 12171
        mmLeft = 2117
        mmTop = 19050
        mmWidth = 198967
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc ID '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 19579
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Brand / Model  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16669
        mmTop = 19579
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Location  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 148432
        mmTop = 19579
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Remarks  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 168540
        mmTop = 19579
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
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
        mmLeft = 146050
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 14552
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178330
        mmTop = 14552
        mmWidth = 6350
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
        mmLeft = 186267
        mmTop = 14552
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc Type '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 52652
        mmTop = 19579
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc Type '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 14552
        mmWidth = 11642
        BandType = 0
      end
      object mtyp001: TppLabel
        UserName = 'mtyp001'
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
        Transparent = True
        mmHeight = 3704
        mmLeft = 39688
        mmTop = 14552
        mmWidth = 52917
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Location '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 95250
        mmTop = 14552
        mmWidth = 11642
        BandType = 0
      end
      object mstt001: TppLabel
        UserName = 'mstt001'
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
        mmLeft = 107686
        mmTop = 14552
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 23813
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61383
        mmTop = 23813
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'English   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61383
        mmTop = 27517
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Chinese    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 27517
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Thai    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 123031
        mmTop = 27517
        mmWidth = 8731
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 2910
        mmTop = 529
        mmWidth = 4741
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
        DataField = 'MNAME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 16669
        mmTop = 529
        mmWidth = 23029
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
        DataField = 'MSTT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 148432
        mmTop = 529
        mmWidth = 13758
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
        DataField = 'MARKS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 168540
        mmTop = 529
        mmWidth = 14023
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
        DataField = 'MTYP2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 61648
        mmTop = 529
        mmWidth = 18785
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
        DataField = 'MTYP1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 52652
        mmTop = 529
        mmWidth = 3895
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
        DataField = 'MTYP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 96044
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MTYP3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 123031
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 42598
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 29898
          mmLeft = 2117
          mmTop = 9260
          mmWidth = 198967
          BandType = 5
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2910
          mmTop = 4233
          mmWidth = 15081
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'MID'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 21336
          mmTop = 4233
          mmWidth = 12531
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 14288
          mmWidth = 198967
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 19315
          mmWidth = 198967
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 24342
          mmWidth = 198967
          BandType = 5
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 29369
          mmWidth = 198967
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 29633
          mmLeft = 101600
          mmTop = 9260
          mmWidth = 2117
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 29633
          mmLeft = 51329
          mmTop = 9525
          mmWidth = 2117
          BandType = 5
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
          mmHeight = 29633
          mmLeft = 151607
          mmTop = 9260
          mmWidth = 2117
          BandType = 5
          GroupNo = 0
        end
        object m01: TppLabel
          UserName = 'm01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20154#23383','#19977#37341#38617#21151#33021#36554'(ZZ,3ZZ)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 2910
          mmTop = 10583
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
        object m05: TppLabel
          UserName = 'm05'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 2910
          mmTop = 15610
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m09: TppLabel
          UserName = 'm09'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 2910
          mmTop = 20638
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m13: TppLabel
          UserName = 'm13'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 2910
          mmTop = 25665
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m17: TppLabel
          UserName = 'm17'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 2910
          mmTop = 30427
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m02: TppLabel
          UserName = 'm02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20154#23383','#19977#37341#38617#21151#33021#36554'(ZZ,3ZZ) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 52123
          mmTop = 10583
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object m06: TppLabel
          UserName = 'm06'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 52123
          mmTop = 15610
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m10: TppLabel
          UserName = 'm10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 52123
          mmTop = 20638
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m14: TppLabel
          UserName = 'm14'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 52123
          mmTop = 25665
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m18: TppLabel
          UserName = 'm18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 52123
          mmTop = 30427
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m03: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 10583
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m07: TppLabel
          UserName = 'm07'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 15610
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m11: TppLabel
          UserName = 'm11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 20638
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m15: TppLabel
          UserName = 'm15'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 25665
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m19: TppLabel
          UserName = 'm19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 30427
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m04: TppLabel
          UserName = 'm04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 152400
          mmTop = 10583
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m08: TppLabel
          UserName = 'm08'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 152400
          mmTop = 15610
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m12: TppLabel
          UserName = 'm12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 152400
          mmTop = 20638
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m16: TppLabel
          UserName = 'm16'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 152400
          mmTop = 25665
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m20: TppLabel
          UserName = 'm20'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 152400
          mmTop = 30427
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 2117
          mmTop = 2381
          mmWidth = 198967
          BandType = 5
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 34131
          mmWidth = 198967
          BandType = 5
          GroupNo = 0
        end
        object m21: TppLabel
          UserName = 'm21'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 2910
          mmTop = 35190
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m22: TppLabel
          UserName = 'm22'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 52123
          mmTop = 35190
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m23: TppLabel
          UserName = 'm23'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 35190
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object m24: TppLabel
          UserName = 'm24'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand Total : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2646
          mmLeft = 152400
          mmTop = 35190
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 168
    object ShowRes1: TMenuItem
      Caption = 'Show Res'
      ShortCut = 32851
      Visible = False
      OnClick = ShowRes1Click
    end
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_mc_ratio_d'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 256
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 288
    Top = 120
  end
  object ppReport2: TppReport
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
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 352
    Top = 120
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 11113
        mmLeft = 3704
        mmTop = 17991
        mmWidth = 277019
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5027
        mmTop = 22225
        mmWidth = 10319
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
        mmHeight = 10848
        mmLeft = 16140
        mmTop = 18256
        mmWidth = 2117
        BandType = 0
      end
      object m001: TppLabel
        UserName = 'm001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 17727
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m101: TppLabel
        UserName = 'm101'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 17727
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m002: TppLabel
        UserName = 'm002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 30163
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m102: TppLabel
        UserName = 'm102'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 30163
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m103: TppLabel
        UserName = 'm103'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 42598
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m104: TppLabel
        UserName = 'm104'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 55033
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m105: TppLabel
        UserName = 'm105'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 67469
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m106: TppLabel
        UserName = 'm106'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 79904
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m107: TppLabel
        UserName = 'm107'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 92340
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m109: TppLabel
        UserName = 'm109'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 117211
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m108: TppLabel
        UserName = 'm108'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 104775
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m110: TppLabel
        UserName = 'm110'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 129646
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m111: TppLabel
        UserName = 'm111'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 142082
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m112: TppLabel
        UserName = 'm112'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 154517
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m113: TppLabel
        UserName = 'm113'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 166952
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m114: TppLabel
        UserName = 'm114'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 179388
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m115: TppLabel
        UserName = 'm115'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 191823
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m116: TppLabel
        UserName = 'm116'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 204259
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m117: TppLabel
        UserName = 'm117'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 216694
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m118: TppLabel
        UserName = 'm118'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 229130
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m119: TppLabel
        UserName = 'm119'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20154#23383','#19977#37341#38617#21151#33021#36554' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 241565
        mmTop = 22490
        mmWidth = 9525
        BandType = 0
      end
      object m003: TppLabel
        UserName = 'm003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 42598
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m004: TppLabel
        UserName = 'm004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 55033
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m005: TppLabel
        UserName = 'm005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 67469
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m006: TppLabel
        UserName = 'm006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 79904
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m007: TppLabel
        UserName = 'm007'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 92340
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m008: TppLabel
        UserName = 'm008'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 104775
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m009: TppLabel
        UserName = 'm009'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 117211
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m010: TppLabel
        UserName = 'm010'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 129646
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m011: TppLabel
        UserName = 'm011'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 142082
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m012: TppLabel
        UserName = 'm012'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 154517
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m013: TppLabel
        UserName = 'm013'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 166952
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m014: TppLabel
        UserName = 'm014'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 179388
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m015: TppLabel
        UserName = 'm015'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 191823
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m016: TppLabel
        UserName = 'm016'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 204259
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m017: TppLabel
        UserName = 'm017'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 216694
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m018: TppLabel
        UserName = 'm018'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 229130
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
      end
      object m019: TppLabel
        UserName = 'm019'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ZZ,3ZZ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 241565
        mmTop = 19050
        mmWidth = 8202
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
        mmHeight = 10848
        mmLeft = 252148
        mmTop = 18256
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WF Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 262996
        mmTop = 22225
        mmWidth = 8467
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
        mmHeight = 10848
        mmLeft = 271992
        mmTop = 18256
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
        Caption = 'Ratio   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 272786
        mmTop = 22225
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sewing Machine Allocation List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 78581
        mmTop = 3175
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
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
        mmHeight = 3260
        mmLeft = 4763
        mmTop = 12700
        mmWidth = 10245
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
        mmTop = 12700
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
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
        mmLeft = 221721
        mmTop = 12700
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
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
        mmLeft = 237861
        mmTop = 12700
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label202'
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
        mmLeft = 254265
        mmTop = 12700
        mmWidth = 7408
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
        mmLeft = 263526
        mmTop = 12700
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 253207
        mmTop = 22225
        mmWidth = 7874
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 262203
        mmTop = 18256
        mmWidth = 2117
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSHOP'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 5027
        mmTop = 794
        mmWidth = 2582
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M01'
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
        mmLeft = 24087
        mmTop = 794
        mmWidth = 2371
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
        DataField = 'M02'
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
        mmLeft = 37708
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M03'
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
        mmLeft = 49223
        mmTop = 794
        mmWidth = 2371
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
        DataField = 'M04'
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
        mmLeft = 62315
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M05'
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
        mmLeft = 75015
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M06'
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
        mmLeft = 86529
        mmTop = 794
        mmWidth = 2371
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
        DataField = 'M07'
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
        mmLeft = 98964
        mmTop = 794
        mmWidth = 2371
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
        DataField = 'M08'
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
        mmLeft = 112586
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M09'
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
        mmLeft = 125286
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M10'
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
        mmLeft = 137192
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M11'
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
        mmLeft = 148706
        mmTop = 794
        mmWidth = 2371
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
        DataField = 'M12'
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
        mmLeft = 162592
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M13'
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
        mmLeft = 174498
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M14'
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
        mmLeft = 185748
        mmTop = 794
        mmWidth = 2371
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
        DataField = 'M15'
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
        mmLeft = 199369
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M16'
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
        mmLeft = 210883
        mmTop = 794
        mmWidth = 2371
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M17'
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
        mmLeft = 223976
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'M18'
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
        mmLeft = 235490
        mmTop = 794
        mmWidth = 2371
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
        DataField = 'M19'
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
        mmLeft = 249376
        mmTop = 794
        mmWidth = 1185
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
        DataField = 'WF'
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
        mmLeft = 268023
        mmTop = 794
        mmWidth = 3556
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RATIO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 272786
        mmTop = 794
        mmWidth = 5927
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MT'
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
        mmLeft = 257969
        mmTop = 794
        mmWidth = 3556
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5292
        mmLeft = 3704
        mmTop = 794
        mmWidth = 277019
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5027
        mmTop = 2117
        mmWidth = 6615
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
        DataField = 'M01'
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
        mmLeft = 16669
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M02'
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
        mmLeft = 29104
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M03'
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
        mmLeft = 41804
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M04'
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
        mmLeft = 53711
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M05'
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
        mmLeft = 66411
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M06'
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
        mmLeft = 79111
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M07'
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
        mmLeft = 91546
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M08'
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
        mmLeft = 103981
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M09'
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
        mmLeft = 116681
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M10'
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
        mmLeft = 128588
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M11'
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
        mmLeft = 141288
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M12'
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
        mmLeft = 153988
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M13'
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
        mmLeft = 165894
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M14'
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
        mmLeft = 178330
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M15'
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
        mmLeft = 190765
        mmTop = 2117
        mmWidth = 9790
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
        DataField = 'M16'
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
        mmLeft = 203465
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M17'
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
        mmLeft = 215371
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M18'
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
        mmLeft = 228071
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'M19'
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
        mmLeft = 240771
        mmTop = 2117
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF'
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
        mmLeft = 262203
        mmTop = 2117
        mmWidth = 9260
        BandType = 7
      end
      object ratio001: TppLabel
        UserName = 'ratio001'
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
        mmLeft = 272786
        mmTop = 2117
        mmWidth = 7673
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc202'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MT'
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
        mmLeft = 252646
        mmTop = 2117
        mmWidth = 8763
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline2'
    Left = 320
    Top = 120
  end
  object ppReport3: TppReport
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
    OnPreviewFormCreate = ppReport3PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 384
    Top = 120
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc ID Card '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 73819
        mmTop = 8202
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label7'
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
        mmLeft = 139436
        mmTop = 14817
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
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
        Transparent = True
        mmHeight = 3175
        mmLeft = 154252
        mmTop = 14817
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 14817
        mmWidth = 6350
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
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
        mmLeft = 180975
        mmTop = 14817
        mmWidth = 7408
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image3'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          07544269746D61708E060200424D8E060200000000003600000028000000E300
          0000C20000000100180000000000580602000000000000000000000000000000
          0000F6F8FFF7F7FDFFFDFDFFFEF6FFFFF1FFFFF1FDFFF3FCFEF8FBFDFDFBFCFF
          F9FCFFFBFDFDFBFDFDFBFDFDFBFDFDFBFDFDFBFDFDFBFDFDFBFDFDFCFEFEFCFE
          FEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFAFCFDFAFCFDFAFCFDFAFCFDFA
          FCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFD
          FAFCFDFBFDFEFBFDFDFBFDFEFBFDFDFBFDFEFBFDFDFBFDFEFBFDFDFCFEFFFCFE
          FEFCFEFFFCFEFEFCFEFFFCFEFEFCFEFFFCFEFFFCFBFDFCFBFDFEFBFDFCFBFDFE
          FBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFD
          FCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFB
          FDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFE
          FBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFD
          FCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFB
          FDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFFFCFEFDFCFEFFFCFEFDFCFEFF
          FCFEFDFCFEFFFCFEFDFCFEFFFCFEFDFCFEFFFCFEFDFCFEFFFCFEFDFCFEFFFCFE
          FDFCFEFCFBFDFAFCFDFCFBFDFAFCFDFCFBFDFAFCFDFCFBFDFAFCFDFCFBFDFAFC
          FDFCFBFDFAFCFDFCFBFDFAFCFDFCFBFDFCFBFDFCFBFDFCFBFDFEFBFDFCFBFDFE
          FBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFDFCFBFDFEFBFD
          FCFBFDFCFBFDFAFCFDFCFBFDFAFCFDFCFBFDFAFCFDFCFBFDFAFCFDFCFBFDFAFC
          FDFCFBFDFAFCFDFCFBFDFAFCFDFCFBFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFA
          FCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFD
          FAFCFDFBFDFDFBFDFDFDFDFDFBFDFDFDFDFDFBFDFDFDFDFDFBFDFDFDFDFDFBFD
          FDFDFDFDFBFDFDFDFDFDFBFDFDFDFDFDFDFEFCFDFEFAFDFFF9FDFEFAFEFFFBFE
          FFFDFFFFFEFFFFFFFFFFFF000000F6F9FEF7F6F8FCFBF7FEFFF5FDFFF3FDFFF3
          FBFFF4FAFEF9FBFDFDFBFDFEFBFDFEFBFDFDFBFDFDFBFDFDFBFDFDFBFDFDFBFD
          FDFBFDFDFBFDFDFCFEFEFCFEFEFCFEFEFCFFFDFCFFFDFAFFFDFCFFFDFAFFFEF8
          FDFCF8FCFDF8FCFDF8FCFDF8FCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFCFDFAFBFF
          FAFBFFFAFBFFFAFBFFFCFAFFFAFBFFFBFCFFFBFDFEFBFDFEFBFDFEFBFDFEFBFD
          FEFBFDFDFBFDFDFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFFFCFEFFFC
          FBFDFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFF
          FEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFB
          FDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFE
          FAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFF
          FEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFB
          FDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFF
          FBFFFFFCFEFFFBFFFFFCFEFFFBFFFFFCFEFFFBFFFFFCFEFEFAFFFEFBFDFEFAFF
          FEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFB
          FDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFE
          FAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFEFAFF
          FEFBFDFEFAFFFEFBFDFEFAFFFEFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFB
          FDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFCFBFFFCFBFDFA
          FBFFFAFCFDFAFBFFFAFCFDFAFBFFFAFCFDFAFBFFFAFCFDFAFBFFFAFCFDFAFBFF
          FAFCFDFAFBFFFAFCFDFAFBFFFAFCFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
          FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFCFD
          FEFAFDFEFAFDFEFAFEFFFDFEFFFDFFFFFEFFFFFFFFFFFF000000FEFFFBFEFFF6
          FFFFF6FFFFF9FDFFF7FAFFF6FAFEF8F9FEFDFBFDFDFBFFFAFBFFFAFAFDFBFBFD
          FDF5F7F7E5E7E7F4F6F6FDFFFFF5FAF9F9FEFDF5FAF8FBFFFEF5FAF8F9FFFAFB
          FFFCF1F8F3F4FAF5F1F8F3F7FFFBF7FFFBF9FFFBF9FFFBF9FFFBFAFFFBFAFFFB
          FAFFFBFBFEFCE4E6E6FCFBFDEEEDF1E8E7EBF8F6FCFEF9FFF2EFF8F7F5FBF8F7
          FBF6F5F9FFFEFFEEF0F1F8FAFAFCFFFDECEFEDFBFEFCFBFEFCFBFEFCFBFEFCFC
          FFFDFCFFFDFCFEFEFCFEFEFEFEFEFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFF
          FEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFE
          FEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFE
          FDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFF
          FEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFE
          FEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFE
          FDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFF
          FEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFE
          FEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFE
          FDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFF
          FEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFE
          FEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFE
          FDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFF
          FEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFFF8FFFFF4FFFFF5FFFFF8FBFFF9FAFEF9F8FDFBF9FDFEF9FE
          FDFDFFF9FDFFF7F9FCFAEDEFEFFDFFFFF5F8F6F4F7F5FBFFFEF3F8F6EBF1ECF2
          F8F3ECF4EDEFF7F0E2EBE1EEF8ECF5FFF5E5F1E5F8FFF7F1FFF2F1FFF0F1FFF0
          F3FFF0F3FFEFF3FFEFF5FFF0F5FFF0E7F0E3F8FFF5F0F4EEFAFEF9FFFFFEF7F7
          F7EBEAECFCFBFDFEFDFFF2F1F5F8F7F9F5F4F6FDFFFFFDFFFEEFF2F0FCFFFBFB
          FEFCFBFFFAFCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFF8FFFFF5FFFFF6FFFFFAFBFF
          FAFAFDFBF8FDFCF9FCFFF9FDFEFDFFF9FDFFF9FDFFFCE7EAE8EAEDEBFDFFFCE1
          E7E2F6FDF6F1F8F1F9FFF8F3FDF1E9F6E8F8FFF5E2F0DEF6FFF0D5E6D14A5C45
          23381F4A60434A61414A62404C61404C61404C61404E60414E60414D5C40EBFA
          DEF8FFEDE6F2DCECF5E1F5FDECE8EFE0F4FAEFD5D9D4F3F6F4FDFFFEECEFEDF2
          F5F3F8FBF9F9FCFADBDEDCFCFEFEFCFFFDFCFEFEFCFFFDFCFFFDFCFFFDFCFFFD
          FCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFF
          FAFFFFF5FFFFF6FFFEFAFBFEFCFBFEFCF9FEFDF9FCFFF9FCFFFDFEFAFDFFF9FA
          FEF9F5F9F4F9FDF7FBFFFBFBFFF9DAE4D8F1FBEEF1FFEDEEFDE83749322B3E25
          495F433A5033435A3A415A3858734C3E5D303E5E2F405E2D405E2D405E2D405E
          2D415D2F415D2F3D562A4D653B3B5029435832ECFDDBF1FFE1F0FFE1F0FEE6F8
          FFF4F3FBF1EBF0E7FAFEF8FDFFFCF0F3F1F8FAFAECEEEEFCFEFFFCFEFFFCFEFF
          FCFEFEFCFEFEFCFFFDFCFFFDFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFAFFFEF6FFFFF7FEFCFBFAFCFCFBFDFDF9FDFEF9
          FCFFF9FCFFFDFEFCFDFFF9FBFFF9F2F7EEF8FFF5E3ECDFDDE7D7F0FCEAF7FFF0
          3043285065454E664456714A415C3438562B5574474B6D3E2E521E466C32466D
          2F486D2F486D2F486D2F486D2F4A6C2F4A6C303E5F2654743D3957225774423B
          58273E5A2C4B6438E3F8D2EDFBE3DCE8D6F6FFF0E4EDE0DCE3DCFBFFFCE5EAE9
          FAFEFFFAFDFFFAFDFFFCFDFFFCFEFFFCFEFEFCFEFEFCFFFDFCFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFDF8FFFFF9FD
          FBFAFAFCFDFBFDFEF9FCFFF9FBFFF9FCFFFDFDFDFEFFFAEEF3EAEFF8EBF3FDED
          EEFAE8F4FFEB44553A364B2B4E66433E58303A572A385829496D39426630335B
          21426A303E682B3F6B28406C27406C27406C27426B27426B27426B27426B274E
          77343F6726486D2F2E52164A6D3541642C3656204F6B3D3F5330ECFDE2F3FFE9
          E8F4E2FAFFF8DCE3DCECF1F0F0F4F5F9FCFFF9FCFFFBFCFFFCFDFFFCFEFFFCFE
          FEFCFFFDFCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFBFFFDF8FFFEFAFDFBFBFAFBFFFCFDFFFAFDFFF9FBFFF9FCFFFDFDFD
          FEFFFAF3FAEDFBFFF4F1FCE8EFFDE54251354C5F3E385028435E32385827577B
          45325A202954154B763541702C33621E3867223A69253C68253C69243C69243D
          69223D69223D69223D69243F6B263B66233D67263B642652783C486E343E632B
          446532395428455C36E2F4D5F0FFE8E8F6E4EDF6ECFAFFFEF8FDFEF9FCFFF9FC
          FFF9FCFFF9FCFFFBFDFEFBFDFDFBFEFCFBFEFCFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFDF8FFFEFAFDFAFCFAFBFFFCFDFF
          FAFDFFF9FBFFF9FCFFFDFEFCFCFFF7F2FCEBE4F2DAF2FFE6384A2B5468453C54
          2A486436446330486B333A63263D67264D79364171292E5E16376A2045772F3A
          69253A68263C68253C68253C69243C69243C69243C6924315E194C7835386322
          3E69283F6A2B3A64273F672D4368304A69364560343C542C485D3CEBFDE6E3F0
          E0F8FFFBF1F8F5F7FCFDF8FBFFF9FCFFF9FCFFFBFDFEFBFDFEFBFDFDFBFEFCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFEF9
          FFFFFBFFFCFEF9FAFEF6F8F9EAEDF1FBFEFFFBFEFFF9FAF6F6FDF0F9FFEFE7F9
          DC546746364D274B6339334F2153723F40632A3A6123406A29315D1846742C40
          702838691F35681E3F71293A67283E682B366122537E3F28531245702F3C6825
          3E6A273A692547763232601E346220406D2E3562233E682B40682E43662E4362
          2F4460323F59314B6144E4F6DFEDFCEEE6F1E9F4FBF8E9EEEFFBFFFFE6EAEBF7
          F9FAFDFFFFF4F6F6FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFFFBFFFEFAFFFFFBF9F6F8F6F8F9E7E9EAFAFEFFF5F8FCEBF0
          EFFEFFF8FAFFEFECFEE13D5330385028506B40526E405776432E511942662A50
          7837355E1B46722D305D1837641F3D6C2745742F406E2C3C652B436A32345B23
          3A62283C6528416C2D335C1E3964232E5918386723406E2C3C6A2842702E3461
          223B68293E692A385E223E6128466532415E314C67402C4225EEFFE9F1FFF0F8
          FFFBEEF5F0D5DAD9FBFFFFFAFCFDF9FBFCFAFCFCFAFCFCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFEFAFFFFFBFCFAFAF2F4
          F5FCFEFEE6EBEADADFDEEDF3EEFFFFF5DBE8D0536946334F245A774A44623136
          55224E7139385C20486D2F466E2D3159183B6322527C3B3C6527406B2C386225
          31591F355925496C3A3F632F3256204C71393D652B365C204871334872313863
          22497532335F1C3B6724345F1E3F6A29406B2A385F21476D314A6D342C4D1A43
          603346613A2F4626E3F6DDDDEADAF8FFF6F3FAF3E7ECEAECEEEEF7F9F9FCFEFF
          FAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFF
          FBFFFEFAFFFFFBFEFCFCE9EBEBE9ECEAF6FCF7EBF1ECDFE7DDF2F8E548573827
          421759794836572430521C4F723A44672E42662A406527476E303B6224375D21
          3D632941652F3D612D3E612F486A3B425E334A653D405C313F5C2E4464334365
          2F3A5D2540662C446A2E295214456F2E345E1D456F2E406C29416C29345F1C45
          6F2E436A2C2C521650753D3D5E2B405D30456039526A48E5F8DFE5F4DFE6F0E3
          F9FFF7FCFFFDF9FBFBFCFEFFE6E8E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFBFFFEFAFFFFFBF7F5F4F7FAF8FAFEF8D8DFD8F7
          FFF5F2FBEE424A33445533516E403960292A511942682E4B71353F652942692B
          3E652744672E4A6D354E703A294716627F523D58303F5A334A6341576C4C465B
          3B3B533159714E3751295671454D6B3A3D5C294B6B343E61284F73373F662846
          6D2F3D6726436B2A3C6625396322416B2A3D662833591D486D353D5E2B466335
          385328425736E9FADFF0FCE8E1EADDF6FAF4F9FCFAEEF0F1FCFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFEF9FFFFFAFF
          FFFCF5F9F4F6FBF2F7FFF4D6DED3F6FFEF434C315B6E473C5D2A3A63294A7437
          4B74362F581A355C1E4E753743692D3F622A3453205572443F59312C4421596D
          5042553AE6F8E1E2F1DCEEFDE8F3FFECE0F1D6495B3C354B283C542C47623634
          51204C6C3641612A43662D3F622933591D42662A4A7133426D2E35601F3A6325
          456E30365C203F652B496933405E2D3C542A4A603DEDFCE1F6FFF0F7FCF3F7FA
          F8FDFFFFEFF0F4FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFBFFFEF9FFFFFAFFFFFBE1E5DFF8FEF3EDF6E9F5FFEFE9F5DF4D5838
          4C603542672F3F6C2D2D5A1B3E69284A74333D6628446B2D3F652B345620526F
          41455F37E9FEDDEEFFE4EDFDE6E8F6E4FAFFF7F7FFF6EBF4EAE8F2E5FAFFF5DD
          EAD4F1FFE7F1FFE3E3FAD4435B316B865A2A47164867344B6B353E6129406029
          3D63294D773A255213436E2D406A29416928406729486A2E3C5C25516B3B3C54
          2CE9F9DAF6FFEEF0F6EBF1F4F2FCFBFDEDECF0FFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFEFDFFFFF9FFFFFAECEEE8F5F9F3F4FEF2
          DEE9D9F2FEEA3B4A2F50613C50673A456B313966274774353964253B6427476D
          33395B254C6A394762373E5431EFFFE4E6F6DFF5FFEFF1FCECF7FFF3F4FCF2F8
          FCF7F8FCF7F6FAF4F3F8EFF7FFF3F6FFEFF5FFECF7FFEDEEFFE3EFFFE1435A34
          475F374861354662344764334463302F571D4875363661223863223A65223E67
          243A6221486C3042622C4D683C3B512EF2FFE8F5FEF1ECF0EAFBFDFDFBFAFCFF
          FFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFCFEFEFEFEFEFCFEFEFEFEFEFCFFFDFEFEFEFCFEFEFD
          FFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFF
          FEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFEFFFEFDF9
          FCFEF8FAFEF8FAFFFBEBF9EDE4F6E5E6FCE0374D2A496236506D3B3E662C3662
          254670333B642A40642E507041415C34435837F3FFECF6FFF1F8FFF5F9FFF7FA
          FFF8F9FFF7FAFFF5FAFFF6FEFFFAFFFFFBFEFFFBFEFFFBFEFFFBFEFFFAFCFFFA
          FCFFF8F6FFF2E8F2E1F4FFEAEAF9DE5565465263414355304B6438476B353E68
          2B3D6A2B38662439652235611E46722F315A1C486E344161304A653D475B3EEC
          FAE8F8FFF6F5FBF6F5F8F6FCFDF9FFFEFAFFFFFEFFFFFEFFFFFFFFFFFFFFFFFE
          FFFFFEFCFDF9FCFEF8FCFEF8FDFEFAFDFEFCFDFCFEFCFBFFFAF8FEFAFBFFFAFC
          FDFBFEFCFAFEF9FAFEF8FAFFF6FAFEF8FBFFFAFFFFFEFEFEFEFFFCFEFFFCFEFF
          FDFFFFFEFEFFFDFEFFFEFDFFFEFEFFFEFEFFFEFEFFFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFFFDFEFEFEFCFEFEFCFE
          FFFCFEFFFCFEFFFCFEFFFCFEFFFCFEFEFCFEFEFBFEFCF9FEFCFBFEFCF9FEFCFB
          FEFCF9FFFAFBFEFCF9FEFCFBFFFFFBFFFFFBFFFFFBFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFEFDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFCFFFFFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFCFE
          FFFEFDFFFEFDFFFFFDFFFFFDFFFFFEFEFFFEFEFFFDFEFFFEFEFFFEFEFFFEFEFD
          FDFDFDFDFDFBFDFDFBFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFD
          FEFFFDFEFEFEFEFEFEFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFFFEFDFFFF
          FBFFFEFDFFFFFBFFFEFDFFFFFBFFFEFDFFFFFBFFFEFDFFFFFBFFFEFAFFFEFAFF
          FEFAFFFEFAFFFFF9FFFEFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFCFFFEFCFBFCFEF8F9FFF9ECF7EFEEFEF3EFFFF1EAFFE44661
          3A3E592D43622F456D333E6A2D2F581E3B622A5F7F4E284419516645ECFCE4F5
          FFF2F7FEF7FAFDFBFBFDFDFCFFFDFBFFF9FAFFF6FCFFF6FFFFFAFFFFFAFFFEFD
          FFFEFDFFFEFEFFFEFEFEFEFEFEFEFEEEF2EDF6FBF2FCFFF7E8F0DFF5FFEB4855
          3B5463444A5F383A5E2A426B313B65283B682942702E4776322756124B79372F
          571D4367334563384E6745E7FAE1F5FFF2F5FEF4F6FAF4FCFFF6FFFFF9FFFFFB
          FFFFFEFFFFFFFEFEFEFEFEFEFFFFFCFCFEF8FCFFF6FCFFF6FDFFF9FDFEFCFDFC
          FEFCFAFFFAF8FEFAFBFFFAFCFDFBFEFCFBFFF9FAFFF6FAFFF5FAFFF6FBFFF9FF
          FFFEFEFDFFFFFBFFFFFBFFFFFBFFFFFDFFFFFDFEFFFEFDFFFEFEFFFEFEFFFEFE
          FFFEFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFE
          FEFEFFFDFEFFFDFCFEFFFCFEFFFCFEFFFCFEFFFCFEFFFCFEFFFCFEFEFCFEFEF9
          FEFDF9FEFCF9FEFCF9FEFCF9FEFCF9FFFAF9FEFCF9FEFCFBFFFEFBFFFFFBFFFF
          FBFFFFFBFFFFFBFFFFFDFFFFFDFFFFFEFDFFFEFEFEFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFCFEFEFCFEFEFEFDFFFEFEFEFFFDFFFFFEFEFFFDFEFFFEFDFF
          FDFEFFFEFDFFFEFEFFFEFEFDFDFDFDFDFDFBFDFDFBFDFDFEFEFEFEFEFEFEFEFE
          FEFEFEFEFFFDFEFFFDFEFFFDFEFFFDFEFEFEFEFEFEFEFDFFFEFDFFFEFDFFFEFD
          FFFEFCFFFEFDFFFFFEFEFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
          FEFDFFFFFBFFFFFBFFFFFBFFFEFAFFFFF9FFFFF9FFFEFAFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFCFFFEFCFBFCFEF8F4FAF5F2FD
          F5F1FEF6DFF0E2ECFFE9213B17516C414361303F662E3660234D753B40672F30
          501F466237D4E9C8F8FFF0F6FFF3F7FEF7FAFCFCFBFDFDFBFEFCFBFFFAFAFEF8
          FCFFF6FFFFFAFFFFFAFFFEFDFFFEFDFFFEFEFFFEFEFEFDFFFEFEFEF2F5F3FCFF
          FAEFF4EBFDFFF5F0FBE7ECF9E1424F355064413C5C2D3F67303C652C36602342
          6F3037652333611F3F6C2D557E41395D273F5E31344F28506447E8F7E2F3FDF0
          E2EADFFCFFF6FFFFF9FEFFFBFEFFFDFEFEFEFEFEFEFEFEFEFFFFFEFCFDF9FCFE
          F8FCFFF6FDFFF9FEFFFBFDFDFDFCFBFFFBF9FFFAFBFFFAFCFCFBFEFCFBFFF9FA
          FFF6FAFFF5FCFFF6FDFEFAFFFFFFFEFDFFFEFAFFFEFAFFFFFBFFFFFCFEFFFEFE
          FFFEFDFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFFFEFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFFFDFEFFFDFEFFFDFCFEFFFCFEFFFCFEFFFCFEFFFC
          FEFFFCFEFFFCFEFFFCFEFFFBFDFEFBFDFDFBFDFDFBFDFDFBFDFDFBFEFCFBFDFD
          FBFEFCFCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFEFFFDFEFFFDFEFEFEFEFF
          FDFFFEFEFFFEFEFFFEFEFFFEFEFFFDFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFCFFFDFEFEFEFEFFFDFF
          FEFEFFFEFDFFFEFDFFFFFBFFFEFDFFFFFBFFFEFDFFFEFDFEFFFDFDFEFCFBFEFC
          FBFEFCFEFEFEFEFEFEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFF
          FDFEFEFEFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFFFEFEFFFEFEFFFEFEFFFEFDFFFEFDFFFEFDFFFEFD
          FFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFD
          FFFEFDF9FCFEF8F9FFFAF5FFF9F6FFFCD9EADDE9FDE6455C3C415832405C2E3B
          5F29436B314A7238395D27436130597449EFFFE1E1EFD7F7FFF3F8FFF8FAFCFC
          FBFDFEFBFDFDFBFFFAFBFFF9FAFFF6FFFFFAFFFFFAFFFEFDFFFEFDFFFEFEFFFE
          FEFEFDFFFEFDFFFDFFFFECF0EBF4F8F2F1F7ECF4FEEEE5F0DCF1FDE752644738
          562B4166343F65314A733A2D571A3663243E6C2A366122365F223C632B476736
          476338475F3D485B40E4F3DEF9FFF3FBFFF4FCFEF8FDFEFAFDFDFDFDFCFEFDFC
          FEFEFDFFFEFEFEFCFDF9FCFEF8FDFFF9FDFFF9FEFFFBFDFDFDFCFBFFFBFAFEFA
          FCFDFBFDFDFBFEFCFBFFF9FAFFF6FAFFF6FCFEF8FDFEFAFEFEFEFDFCFFFEFAFF
          FDF9FFFEFAFFFFFCFEFFFDFCFDFEFCFEFFFDFCFFFDFEFEFEFEFEFEFEFEFEFEFE
          FEFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFC
          FEFEFCFEFFFCFEFFFCFEFFFCFEFFFCFEFFFCFEFFFCFEFFFBFDFEFBFDFEFDFCFE
          FBFDFEFDFCFEFDFCFEFDFCFEFDFDFDFFFFFFFDFFFEFFFFFEFDFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFEFFFDFEFFFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FFFDFCFFFDFEFFFDFEFFFDFFFEFDFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
          FFFFFBFEFFFDFDFEFCFDFEFCFBFEFCFEFEFEFEFEFEFEFEFEFEFEFEFEFFFDFEFF
          FDFEFFFDFEFFFDFEFFFDFEFFFDFEFEFEFEFEFEFEFDFFFEFDFFFEFDFFFEFDFFFD
          FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFFFDFFFFFDFFFFFEFE
          FFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFDFFFFFDF9FEFEF8F4F8F3DAE1DCF8FFFCF2FFF7ED
          FFEDE3F9DD334827556F474367334C733B3D622A3B5C295370423A542CD5E7C8
          EDFAE4F7FFF4FAFEF9FAFCFCFBFDFEFBFDFDFBFEFCFBFFFAFBFFF9FFFFFAFFFF
          FAFFFEFDFFFEFDFEFEFEFEFEFEFEFDFFFEFDFFF2F4F4F2F5F3FDFFFCDCE1D8F9
          FFF4FDFFF5F0F8E7D8E6CE5C76524465393F61323E633150773F2D571A446F30
          426D2E3C6527365E244D6F394461333F5931435837EAFCDFE7F4DEF8FFF2F9FD
          F7FAFEF9FBFDFDFDFCFFFCFBFFFDFCFFFDFCFEFCFDFBFCFDF9FDFFF9FDFFF9FE
          FFFBFDFDFDFCFBFDFBFAFEFAFCFDFBFDFDFBFEFCFBFFF9FCFFF6FCFFF6FCFEF8
          FDFEFCFDFCFEFCFBFFFBF9FFFBF9FFFCFBFFFCFCFCFDFEFAFDFEFAFCFFFBFAFF
          FBFCFFFDFCFFFDFCFEFEFDFFFFFDFFFFFDFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
          FFFEFFFFFEFFFFFEFFFFFEFCFEFEFCFEFEFCFEFEFCFEFEFEFDFFFEFDFFFEFDFF
          FEFDFFFDFCFFFDFCFFFFFBFFFDFCFFFFFBFFFFFBFFFEFAFFFEFAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFEFDFFFEFDFFFFFBFFFFFBFF
          FFFBFFFFFBFFFFFBFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFFFDFEFFFDFFFFFBFFFFFBFFFFFBFFFFFAFFFFFA
          FFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFBFDFEFAFDFEFCFDFEFCFEFEFEFEFE
          FEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFEFEFEFEFEFE
          FEFEFEFDFFFEFDFFFEFDFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFDFE
          FBFDFEFEFDFFFEFDFFFEFDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFEFEFFFDF8FEFFF6FD
          FFFBE7EEE9F5FEFBE9F5EFD9E8DAF0FFEC48593E344A274A6A3B3B5F2B466734
          4D6B3A365125395129F8FFE9E4F0DAFAFFF5FAFEF9FAFCFCFBFDFEFBFDFEFBFD
          FDFBFFFAFBFFF9FEFFFAFFFFFAFFFEFDFFFEFDFEFEFEFEFEFEFEFDFFFEFDFFFC
          FEFFEAECECF7FAF8FDFFFCE7EBE5F2F7EEFBFFF6F4FFEEE2F8DB2A4622436138
          3F6033294D19476E36497235386324456E30446D3043692F3D5F29405D2F435E
          33485F39ECFEE1F5FFEEF8FDF4FAFEF9FBFDFDFDFCFFFCFAFFFCFBFFFCFBFDFC
          FCFCFCFDFBFDFEFAFDFEFAFEFFFDFDFDFDFCFBFDFBFAFCFAFCFCFBFEFCFBFEFC
          FBFFFAFCFEF8FCFEF8FDFEFAFDFEFCFCFBFDFCFAFFFBF9FFFBF9FFFCFBFDFAFD
          FBFAFEF8F9FEF5F8FFF8F7FFF8F8FFF8F9FFFAF9FEFCFCFFFDFCFEFEFCFEFEFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFCFEFEFCFEFEFCFEFE
          FCFEFEFEFDFFFEFDFFFEFDFFFEFDFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFEFA
          FFFFF9FFFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFF
          FEFDFFFEFDFFFEFDFFFFFBFFFEFDFFFFFBFFFEFDFFFEFDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFEFFFDFFFEFD
          FFFFFBFFFFFAFFFFFAFFFFF8FFFFF8FFFFFAFFFFFAFFFFFAFFFFFBFFFFFBFFFE
          FDFEFFFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFDFEFFFDFE
          FFFDFEFFFDFEFFFDFEFFFDFEFEFEFEFEFEFEFEFEFEFEFEFAFCFDF8FCFDF8FCFD
          F8FCFDFAFCFDFAFCFDFAFCFCFAFCFCFEFEFEFEFEFEFEFEFEFEFDFFFFFDFFFFFC
          FFFFFCFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFEFEFFFCF7FEFFF6F7F9F3FAFFFDF8FEFDF1FAF7F6FFF7EAF7E7DEEDD8
          5F735648633B3C5C2D3A58274D693B4B6339485D37EEFDE1F0FBE7FAFFF5FAFE
          F9FCFBFDFDFCFEFBFDFEFBFDFDFBFEFCFBFFFAFEFFFAFEFFFAFEFFFDFEFFFDFE
          FEFEFEFEFEFEFDFFFEFDFFFAF9FDFFFEFFEDEFF0F7F9F9F2F5F3F3F7F2F6FAF4
          E6EEE3EAFCE5EAFFE32A432148653E3B5C2F3C622E3A61293B64273962243F68
          2A40662A3F62295676403F5C2B3B57294A613BF3FFEAF5FDF2F8FFF8F9FEFCFB
          FCFFFAFAFFFBF9FFFBFAFEFFFCFEFFFDFCFDFEFAFEFFFBFEFFFDFEFEFEFAFCFD
          F9FBFCFAFCFCFBFEFCFBFEFCFBFFFAFCFEF8FCFEF8FFFDFCFFFDFDFBFAFEFBF9
          FFF9F9FFFAFBFFFAFCFCF8FEF9F7FFF5F5FFF3F4FEF1F3FFF3F5FFF3F6FFF5F7
          FFF8F9FFFAF9FEFCFAFFFDFDFFFFFDFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFE
          FFFFFEFCFEFEFCFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFFFEFDFFFFFCFEFFFC
          FEFFFBFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFFEFFFFFEFFFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFEFEFEFEFEFFFDFEFEFEFEFFFDFEFEFE
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFEFFFEFDFEFFFDFEFFFBFEFFFAFEFFFAFEFFF8FEFFF8FEFFFAFEFF
          FAFEFFFBFEFFFBFEFFFDFEFEFEFFFDFFFFFDFFFEFEFEFEFEFEFEFEFEFEFEFEFE
          FFFDFEFFFDFEFFFDFEFFFDFEFFFBFEFFFBFEFFFBFEFFFBFEFFFDFEFFFDFEFFFD
          FCFFFDF8FDFBF7FEFBF7FEF9F7FEF9F8FEF9F8FEF9F8FEF9F8FEF9FBFFFAFBFF
          FAFDFEFCFDFEFCFFFEFEFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFEFDFFFDF5FEFFF6FCFEF8F7FCFAF4F9FA
          F8FFFFEAF5EDE6F0E4FAFFF536462E415936476338435E334961374257305061
          40F3FFE6F5FEEAFAFFF5FAFEF9FCFBFDFDFCFFFBFDFEFBFDFDFBFDFDFCFFFDFE
          FFFBFEFFFBFEFFFDFEFFFDFEFEFEFEFEFEFEFDFFFEFDFFF9F8FCFAF9FDF8FAFB
          FCFEFFF5F7F7FDFFFEF4F7F5F9FFF9ECF6E9F3FFEFE3F8DF4B63434260374466
          373F632D41692F426B2D36601F40682749703234571E47673045632E486337F0
          FFE6F4FFEFF7FFF6F9FFFAF9FDFEFAFAFFFBF9FFFAF8FEFFFCFEFFFDFDFDFEFC
          FEFFFBFEFFFDFCFFFDFAFCFDF9FBFCFAFCFCFBFEFCFBFFFAFBFFFAFDFFF9FCFD
          F9FFFDFDFFFCFEFBFAFEFBF9FFF9FAFEF8FCFDF8FEF9F7FFF6F6FFF1F3FFEFF0
          FEECEFFFEDF2FFEFF3FFF2F4FFF4F7FFF6F7FEF9F9FEFCFDFFFEFDFFFFFFFFFF
          FFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFEFEFEFCFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFFFDFDFFFDFDFFFCFEFFFCFEFFFBFDFFFBFDFFFBFDFEFBFDFF
          FDFFFEFEFEFFFDFFFEFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFEFEFE
          FEFEFEFEFDFFFEFDFFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFDFEFFFBFEFFFAFCFF
          F8FCFFF8FCFFF8FBFFF9FCFFFAFCFFFBFEFFFDFEFEFEFEFDFFFFFCFFFFFCFFFE
          FDFFFEFEFEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFDFEFFFDFEFFFBFEFFFBFEFFFB
          FEFFFBFEFFFBFEFFFAFEFFFBFCFFFAF7FFF6F5FFF5F5FFF5F7FFF5F7FFF5F7FF
          F5F8FFF5F8FFF5FBFFF6FBFFF7FDFFF7FDFFF9FFFEFAFFFDFCFFFEFEFFFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFEFDFFFDF5
          FDFEF4FDFEFAF9FBFBF5F8FCF5FAFBF7FEFBF8FFF7F8FFF5F6FFF03F5336445C
          394B613E4E623F4657364B5A3BF5FFE8F9FFEEFDFFF7FDFEFCFDFCFEFDFCFFFD
          FCFEFDFDFDFBFDFDFBFEFCFCFFFBFCFFFBFCFFFDFCFFFDFCFEFEFCFEFEFEFDFF
          FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFEFEFEFEFEFCFFFDFBFFFBEAF4
          E7F0FEEC3A4D344059373F5D325377434A6F373E672A3E68273E682740682742
          672942662A44652C456231425737F0FFEAE7F4E6F6FEF7F9FEFDF0F1F5FAF8FE
          F0EEF4FEFAFFFFFCFEFEFFFDFFFFFEFDFFFEFCFFFDFCFEFFF9FDFEFAFFFEF9FE
          FCFBFFFAFBFFFAFEFFFBFFFFFBFFFDFDFFFCFEF7F6FAFDFCFFF7F9FAF4F9F7F5
          FEF4E8F5E5F5FFEEE7FADFEDFFE5485E42E7FAE1F0FFECEEFEECF6FFF5F6FFF5
          F1F8F3F9FEFCF9FEFCFCFEFEFDFFFFFEFFFDFEFFFDFFFFFEFFFFFEFEFEFEF1F0
          F2FFFFFFFAFAFAF1F1F1FDFDFDF8F8F8FAFBF9FDFEFCFFFFFEFFFFFEF7F8F6FF
          FFFBFCFBF7FFFFFCFBF9F8FFFFFEFDFFFEF3F3F3FBFEFCF5F6F4F9FAF8F0F0F0
          FCFCFCF2F1F3FDFCFEFBFAFCFDFCFEFCFBFFFBFAFEE3E2E6FAF9FDFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF0F0
          F0FAFBF9F9FDF8FDFFFBF1F9EFFAFFF8F2FAEFF5FDF3F7FEF7FBFFFCF8FBF9F0
          F2F2FBFDFEFEFDFFF2F1F5FEFDFFFEFEFEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFD
          FEFFFDF5F6F2FFFFFCFBFDF7F8FAF4FBFDF7FFFFF9FAFCF6FBFFF6F0FEECE9FB
          E4EBFDE6F6FFEF42523BF1FFEAEEFBE5F3FFEBF7FFEEEEF8E7E7EEE1F7FDF2F1
          F4EBEEF0EAFFFFFCFAF8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFBFFFDF5FFFEF4FFFEFAF9FBFBF5F8FCF5FAFDF7FDFCF9FF
          FAFAFFF6F7FFF3EBFBE4374A2F3B4D30404F334F5D414F5A40F5FBE8F3F8E9FD
          FFF9FDFEFCFDFCFEFDFCFFFDFCFEFDFDFDFBFEFCFBFEFCFCFFFBFCFFFBFCFFFD
          FCFFFDFCFEFEFCFEFEFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
          FFFEFDFFFEFEFEF4F7F5F4FBF4EEF8EBEDFCE7445A3D536E471636073D612B3E
          672A3E67293E68273E682740682742672942672944642E304923F2FFEAECFDE8
          EFFBEFE5ECE7FBFDFEF4F2F8FDFBFFFEFAFFFFFCFEFEFEFEFFFFFEFDFFFEFCFE
          FEFAFFFEF9FEFDFAFFFDF9FEFCFBFFFAFBFFFAFFFFFBFFFEFDFFFDFDFFFCFEFB
          FAFEFDFEFFF4F6F6FAFFFBEFFCECE8FAE343573A435B393B5330506A46344C2A
          354B2E495D46E6F6E4E7F3E7F2FAF3F7FEF9F9FEFCFCFEFEFDFFFFFEFFFDFEFF
          FDFFFFFEFFFFFFFCFBFDE9E8EAF1F0F2F7F7F7FDFDFDFFFFFEF6F7F5FEFFFBF6
          F8F2EDF1EBE2E5DCFAFFF6ECF2E7E6ECE1F9FDF2F9FFF4F4F9F0EDF4EDF7FEF7
          F6FDF6F2F9F2F9FFFAFCFFFBE4E7E5FBFDFDF7F6F8FCFBFDFBFAFEF7F6FAE6E5
          E9FFFDFFE9E8ECFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFF9FAF8F7FBF6F4F8F2F9FFF7EAF2E7EFF9ECF2FCEFF3FFF2EC
          F9EBF2FEF2F1FAF0EDF3EEF9FEFCEBEDEEFCFDFFFCFBFFFEFDFFFEFEFEFEFEFE
          FEFEFEFEFFFDFEFFFDFEFFFDFEFFFDFCFDF9FAFCF6F3F5EFFAFDF4FFFFF9F9FD
          F2F1F4EBE8F2E2EDFFE5435A3A2A41213247264A5F3E596C4B4E60413F4E32F1
          FEE4E5F2DAFDFFF2CCD3C4F8FCF1FAFDF4E7E7E1F5F4F0FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFBFFFDF5FFFEF4FFFFF9F9FB
          FBF5F8FCF6F9FEF8FCFDFBFEFCFCFDF9F9FEF5F6FFF1F1FDEBEEFAE6525E48EA
          F6E0EBF4E0FFFFF4F3F4EAFFFEFAFFFDFDFFFCFEFFFBFFFDFCFEFDFDFDFBFEFC
          FBFFFAFCFFFDFCFFFDFCFFFDFCFFFDFCFEFEFCFEFEFCFEFEFCFEFEFEFDFFFEFD
          FFFEFDFFFEFDFFFFFDFFFFFDFFFFFDFFFEFDFFFAF9FBFDFFFEF4FCF2F6FFF1EA
          FDE4425A3848673A5377433E662C3E67293E68273E68273E6827406827406827
          42652C335023445C3ADEF1D6EFFDEBF8FFF9FDFFFFF0EFF3EFEBF1FEFAFFFFFC
          FEFFFEFEFFFFFFFDFFFFFCFEFEFAFFFEF9FEFDFAFFFDF9FEFCFBFFFAFBFFFAFF
          FEFDFFFEFDFFFDFEFFFCFEF5F4F6F6F8F8F8FCF7EDF7EBECFDE8364C2F415C35
          446134516E403A5A2B516D424A6440354B2E495B44F1FFF0EDF9EDF7FFF8F9FF
          FAFCFFFDFDFFFFFEFEFEFEFEFEFFFEFDFFFFFFFFFDFFFDFAFCFDFAFCF7F5F5F8
          F8F8F7F8F6EDF1EBFCFFF8F9FFF4E5EEE1FAFFF2F4FEEDD5E0CCF7FFEDEAF6E0
          F1FEE8F3FFEDF8FFF4F6FFF1F6FFF1F5FFF2F0FAEEECF4EAFBFFFBF3F9F4F5F8
          F6F7F9F9FDFFFFF2F3F7F3F4F8F5F3F9F8F7FBFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDEBEFE9F8FFF6D5DDD2F5FFF2EA
          F7E7F5FFF3EFFFEBF0FFECE5F6E1EDFDEBE8F5E7EFFAF0E6EEE7F2F7F5E5EAE9
          F2F4F5FEFEFEFEFEFEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFDFEFFFDFEFFFBFAFC
          F6F8FAF4FEFFF8F8FCF1EEF2E6FDFFF6F6FFED526A48405C31547045435E334B
          663B435B3141562F465B35506140EFFDE1E1EBD4F7FFEEF6FAEEFFFFF9EFEFE9
          FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFE
          FDFFFDF5FFFEF4FFFFF9FBFCFAF7F7FDF6F9FEFAFCFDFDFDFDFEFCFBFBFCF8F6
          FEF4EAF4E8F8FFF4EEF5E6F6FEEDFDFFF3DEE0D4FFFFF8FFFDFCFFFCFEFFFBFF
          FFFBFFFDFCFEFDFDFDFBFEFCFBFFFAFCFFFDFCFFFDFCFFFDFCFFFDFCFEFEFCFE
          FEFCFEFEFCFEFEFEFEFEFEFDFFFEFDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFDFFFB
          F7FCF5F4F6FBFFFAECF4E9EFFEE93C5333526D4536592740652D3E672A3E6729
          3E68273E68273E682740682740662A4A6B38516D42E6FEDCECFEE7F8FFF6EEF2
          EDE3E2E4FDF9FEFEFAFFFFFCFEFFFDFFFFFFFFFFFFFFFCFEFEFAFFFEF9FEFDFA
          FFFEF9FEFCFBFEFCFBFFFAFFFEFDFFFEFDFFFDFEFFFCFEFEFBFDE3E6E4FBFFF9
          E8F3E3485B40546F4831512251753F34571F40632B3C5D2A3F5E313A54305369
          4C293D26F0FFEFF4FFF5F7FFF8FAFFFDFCFEFEFEFEFEFEFEFEFFFEFDFFFEFEEC
          E8EDFFFDFFFFFEFFF3F1F1F9FAF8FDFEFAF3F8EFF6FFF2E9F3E2F6FFEEE7F5DD
          F4FFE7E9FBDC405332506342415635485F3F4A60434B5F4235482DF2FFECF1FF
          EBEBF9E7D6E1D1FAFFF8F6FDF6F9FFFAE7EAE8FDFFFFF4F6F7F2F1F5FEFDFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFFFBF2
          FAEFECF8E63B47333D4D364B5E452C422641573A4D6547344B2F2F452CECFFEA
          D4E4D2F8FFF7F6FFF5DBE3DCF7FDF8FCFEFEFEFEFEFEFEFEFEFEFEFEFFFDFEFF
          FDFEFFFDFEFFFBFCFEF8FDFFF9FCFFF6FCFFF5F5F9EDEFF3E7FFFFF7CEDAC434
          4E2645653434552252713E3A58275470423D562A4B61374D5F3A3E4F2EFAFFEB
          E3ECD8FCFFF4F6F9F0FFFEFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFEFDFFFDF5FFFEF4FFFFF9FBFCFAF7F7FDF8F8FEFC
          FBFFFDFDFDFEFCFBFDFBFAF8FBF9F1F6F4F7FBF5E8EDE4FCFFF5F2F3E9FAFBF2
          FFFFFBFFFCFDFFFCFEFFFBFFFFFBFFFDFCFEFDFEFCFBFFFAFBFFFAFAFFFDFAFF
          FEFAFFFEFAFFFEFCFFFDFCFFFDFCFFFDFCFFFDFEFFFDFEFEFEFFFEFEFFFEFEFF
          FEFEFFFEFEFFFEFEFFFDFFFFFCFFF2EEF4E6E6E6FDFFF9EDF9E7ECFFE4455F3B
          3C5D304064303E662C3D672A3D68293D68293D68293E672940662A284D154363
          32405A32EEFFE5EEFAE8FAFFFAFFFFFFFAF6FBFFFAFFFFFCFEFFFDFFFFFFFFFF
          FFFFFCFEFEFAFEFFF8FEFDFAFFFEFAFFFDFBFEFCFBFEFCFFFEFDFFFEFDFFFDFE
          FFFDFDFFFFFFE6EAE5F2FAEFE5F5DE3F57353D5A2D587D45264F11426A293E66
          252C521851723F4563384B65413D5337E7F7E5F3FFF3F6FEF7F9FEFCFCFFFDFE
          FEFEFEFEFEFFFEFEFFFEFEF3EDF2FFFBFFFBF8FAF9F7F7FFFFFCFCFEF8F0F6EB
          E7F1E0E5F2DCEAFCDF394E2D4C633D526C443D582D3451245A7749315023607F
          522C481D627D553A532D3A52303D5134F0FFE8DCEBD6EDF8E8F8FFF5F3FBF1D5
          D9D4FDFFFEF5F5F5F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFBFFF9F0FCE84051365163464C61412C462257744D3E5B34
          37552C48653E46623E2F4727496044E7F9E2F4FFF0ECF9E9EFF9EDFCFFFDFEFE
          FEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFBFEFFFBFBFDF7FBFDF7F5F8EFF4F8EDFC
          FFF4FCFFF2EAEFE06471575673463D622A3F642C50733B44642E33501E476131
          50673B4457305A6B4AF0FBE1F9FFF0F7FBF0F6F8F2F5F3F2FBF9F9FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFEFDFFFDF5FFFEF4FF
          FEF9FBFCFAF9F7FDF8F8FEFCFBFFFDFDFDFFFBFCFDFBFBF6F8F9F8FCFDE7E9E9
          F8F9F5FBFBF5FEFFF6FFFFFAF6F3EFFFFCFDFFFCFEFFFBFFFFFCFEFDFCFEFDFE
          FCFBFFFAFBFFFAFAFFFDFAFFFEFAFFFEFAFFFEFCFFFDFCFFFDFCFFFDFCFFFDFE
          FFFDFEFFFDFFFEFDFFFEFEFFFEFEFFFEFEFFFEFEFFFDFFE8E0EAFEF6FFFBF8FA
          E5E9E3EFFAEAE5F8DF4A63413D5B304063313E652D3D672A3D68293D68293D68
          293E67293E67294A70344368303D5A2DEFFFE3F0FFEAD7DFD4F8F9F7F3F0F2FF
          FAFFFFFCFEFFFDFFFFFFFFFFFFFFFAFFFEFAFEFFF8FDFEFAFFFEFAFFFEFBFEFC
          FEFFFDFFFEFDFFFEFDFFFDFEFFFCFDFFFFFEE8ECE6EFF9E9F3FFE94660383253
          20476E30527E3946722B3D69223F672652783E345423325027314828E8FCE5F2
          FFF1F4FFF7F9FFFAFAFFFDFEFEFEFEFEFEFFFDFDFFFCFEFFFBFFFFF8FFFBF7FC
          FFFFFFF2F3EFE7ECE3F5FEF1F8FFF0EAFBE0425736334D25425F324664334768
          354D6F393B602840662C41692F395E2631531D42623143603339532B33492649
          5D40EDFDE5DDE9D5EBF5E5FBFFF6E0E5DCEFF1EBFFFFFCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFFF6E7F6DB4F6640455C36
          4964394B6A3D4365364164324166344567383D5E3148693D45623B2E4525EEFF
          E6EDFFE8F5FFF0FCFFFBFEFEFEFEFEFEFEFEFEFEFFFDFEFFFDFEFFFBFEFFFBF8
          FAF4FCFFF6F9FDF2F3F7EBFBFFF1FFFFF4EEF4E3404E323C5A29345A20466C32
          41672D3D602847673153703E344E20475C353B4C2BE5F2DAF5FDECF1F4EBFDFE
          FCFFFCFEF1EEF0FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFEFEFFFDF5FFFEF4FFFEF9FBFCFAF9F7FDF8F8FEFCFBFFFDFDFDFFFBFC
          FDFBFBFEFCFFF1F1F7FCFBFDE5E6E4FFFFFCECECE6FEFBF7FEFAF9FFFCFDFFFC
          FEFFFBFFFFFCFEFDFCFEFDFEFCFBFFFAFBFFFAFAFFFDFAFFFEFAFFFEFAFFFEFC
          FFFDFCFFFDFCFFFBFCFFFBFEFFFBFEFFFBFFFFFBFFFEFDFFFEFDFFFEFDFFFEFD
          FFFDFFFFF8FFEFE7F1EEEAEFF1F2EEFAFFF6EFFFE8DFF6D645633A4063313E65
          2E3D662C3D672A3D672A3D672A3D672A3D6829335D1C385E22385625405933ED
          FDE5F4FDF0F6F7F3FCF9FBFFFAFFFFFCFEFFFDFFFFFFFFFFFFFFFAFFFEFAFEFF
          F8FDFEFAFFFEFAFFFEFBFEFCFEFFFDFFFEFDFFFEFDFFFDFEFFFCFDFAF8F7FDFF
          F7F0FAE9E1F3D62B481B4C7139325D1A3C6B1F26560858883A35611A2F571650
          723C405F324F6745DEF3DAF2FFEFF3FEF4F9FFFAFAFFFDFEFEFEFEFEFEFFFDFD
          FFFCFEF5EEF5F3ECF3F7F3F8FFFCFEEAEBE7EDF2E9FBFFF5D6E3CD3C4E2F4A61
          3B3B582B3B5C294A6F37325A2038612336612033601B39662146712E4872313F
          65294D703852703F405B2F3E552F2D3F20EDFCE1DCE8D2F1F9E8EFF6E9FBFFF4
          FFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
          FAFFF5EFFFE14A643647633542612E40622C3E632B3E662C456E343259213B62
          2B406331436235526D46475F3C3E5333EEFEE7FCFFFAFEFEFEFEFEFEFEFEFEFE
          FFFDFEFFFDFEFFFBFEFFFBF7F9F3FCFFF6FEFFF7F8FCF0F6FBECF8FEEDFFFFF4
          5361454968354A733642682C4A7034375A21507039425F2D546E4051663F5666
          474E5A44FCFFF6F9FAF6FBFBFBF5F1F7FAF6FCFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFEFEFFFDF5FFFEF4FFFFF9FBFCFAF7F8FC
          F8F8FEFCFBFDFDFDFDFEFCFBFDFBFBF9F7FDF0F0F6FCFBFFFBFBFBE6E4E3FFFF
          FCEFEDECFFFDFCFFFCFDFFFCFEFFFCFEFFFCFEFDFDFDFDFEFCFBFFFAFBFFFAFC
          FFFDFAFFFEFCFEFEFCFEFEFCFFFDFCFFFDFCFFFDFCFFFBFEFFFDFEFFFBFFFEFD
          FFFEFDFFFEFDFFFEFDFFFEFDFFFDFEFAF4F9FDF6FDFFFDFFE6E6E6F6FAF4EAF5
          E5EFFFE93C55334261344064303E652D3E672A3D68293D68293D68293D68293C
          672640692B3F612B486439E8FCDFF4FFEEFDFFF7FCFAF9FFFBFDFFFBFFFFFCFF
          FFFEFFFFFEFFFCFEFEFAFFFEF9FEFDFCFEFEFCFEFEFDFEFCFFFEFDFFFEFDFFFE
          FEFFFEFEFFFEFDFBFAF6ECF1E8F8FFF1EAFCDF4C673C375923446B2D37631E49
          782C2B5A0E436F283D66283456204C683D3E5634EBFDE6F1FEF0F5FEF4F8FDFB
          FCFEFEFEFEFEFDFDFDFFFCFEFFFCFEFFFAFFFEF6FFFDF9FEFEFEFEF3F5EFFAFF
          F6CFDEC94C5F44455D3A466237436332496E363961273F682A416B2A37632042
          70283C6C243E6C24325F1A446F2C3E652745682F41632D4D6A3C3C572C435734
          E1F0D4F7FFEDF5FFEEF8FFF0F7FCF3FFFFFCFFFFFFFFFFFFFFFEFFFFFEFFFFFE
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFDFDFDF9FFF4EAFDDC37532549693344672E3A60244F76
          383A63263A64273D66293B64273E642A3A5F273D5E2B4461333C562E4D5F42FA
          FFF6FEFFFBFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFDFEFAF4F6F0F5F8EF
          FBFFF4FBFFF3F4F9EAF9FFEE4654383C5C2B456E31446A302F551B4A6D344D6D
          3635522050693D4E633C3F4F30F5FEE9FAFFF4F5F6F2FCFCFCFFFBFFF8F4FAFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFEFEFFFDF5
          FFFEF4FFFFF8FEFFFBFBFDFDF9FDFEFBFDFDFDFEFCFFFEFDFFFEFDFEFDFFFEFD
          FFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFBFEFC
          FBFEFBFDFEFAFFFBFAFCF9FCFAF5FFF3F2FFEB43593644623140632A426A2935
          601D406C293F6D2B3C6A28406E2C396627396127385827EAFFDCEDFFE2E2EAD9
          F4F6F0FEFBFDFFF8FFFEF6FFFDF9FFFFFBFFFEFEFEFDFEFAFCFDF9FFFEFDFFFE
          FDFFFEFEFFFEFEFFFEFEFDFDFDFDFDFDFBFEFCF7FBF6FBFFF9EFFBE9ECFCE446
          5B3A435D354D693B44672F2E591646732E406A29446B33507041324D265A7053
          ECFDE8F6FFF6F8FFF9FCFEFEFEFDFFFDFCFEFFFCFEFFFBFFFFFBFFFDF4FEFFF8
          FFFFFBFFE5E6E4F2FAEFEAF9E4EAFFE43A563247683C375C2A3860294972383E
          672A3F682A3C6527406A294772313B66253C6B273A692439662136631E497530
          2C56153C62264D6F393D592B475E38EBFDE0EBFBE3F4FFEEECF5E8FDFFFCFAFA
          FAF3F2F4FCFBFFFEFDFFEFEEF2FDFFFFFBFDFDFDFEFCFDFEFAFDFFF9FDFFF9FF
          FEFAFFFDFCFFFDFDFFFCFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8FFF6394C314C68
          3D4A6C363B5F23345C1B3B63223A60244A723841672B42692B3C6521416B244B
          722E3C61233857244E6741F5FFECF8FEF3F1F6EDFCFFFAF4F8F3F7FAF8FFFFFF
          FCFCFCFFFFFFFFFFFEFCFBF7FDFDF7F9FAF1FFFFF7D7DACB536046446336446C
          353D642C355A2245683045652F43602F486135485D363A4B2AF4FEE7F4FAE9FE
          FFF6F7F5F4FFFCFEF8F5F7FEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFDF5FDFFF3FFFFF8FCFFFAFBFDFDF9FEFDFBFDFDFBFE
          FCFFFFFBFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEF8FEFDF9FEFCFCFEFAFFFCFAFFF9FAFEF8FCF7F4FFEF4E
          60414B663A42632A446C2B36621D3B6A253A69253767253C6C2A315E1F436D30
          5F834D223D11EDFFDEF9FFEFF2F8EDFEFCFCFFF8FFFEF6FFFFF7FFFFFBFFFFFE
          FEFDFFF9FCFEF8FFFFFBFFFEFDFFFEFEFFFEFEFEFDFFFDFCFEFBFDFDFBFEFCF9
          FFFAF3FBF1F1FCECF8FFF1E6F7DC495E3E3C522F4C673B4E743A365F21284E14
          335723365429455E3CE7FAE1F4FFF0F8FFF7F9FFFAFCFEFEFEFDFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFF6FFFBF3FAEBE6E8FFFFFCF9FFF6E9FBE4E7FFE13E5D363A
          5E303F65334A723B2E571E40682E40662A4F723943692F365E24416B2E3E692A
          3D6C283F6E2942722A28560E4E7C344B76333B61254263304C693C405835E6FA
          DDE9F9E2EAF5E5F9FEF5F8F9F7FEFDFFF1F0F4E6E5E9FEFDFFF7F9FAF9FBFBFD
          FEFAFDFFF9FDFFF7FDFFF7FFFEFAFFFDFCFFFCFDFFFCFEFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFDFDFDF8FFF64F644B2F4C253B5D27496E304B743148712E355B1F41662E42
          682E436B2A416C233864173B64194B722E4A6D35344E2639472FF6FDEEE5EBE0
          F4F9F0F5F9F4FDFFFEF6F6F6EFEEF0F0EFF1F2F2F2F9F7F7FFFEFAECECE6EFF0
          E7FFFFF6DAE6D038532C30542541643244673540602F395628465F334C62384C
          5D3BE9F8D9F9FFECF2F7E8FDFEF5FFFFFEEDE8EAFCF9FBFFFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFDF5FDFFF3FFFFF8FCFF
          FAFBFDFDF9FEFDFBFDFDFBFEFCFFFFFBFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFDF9FDFEFAFDFDFDFDFCFFFC
          FAFFF9FBFCF8FCF7F5FFF0EFFFE230491D4D6D363F662847722F386723396725
          3F6F2D366422406D2E275114335721516E40E2F8D5EEFBE5EAF0E5FEFCFBFDF9
          FEFDF8FFFDF9FFFFFBFFFFFEFEFDFFF9FDFFF9FFFFFBFFFEFDFFFEFEFFFEFEFE
          FDFFFDFCFEFBFDFEFBFDFDF6FBF9DFE6DFF9FFF6F0FEECEDFDE6384A2D516646
          39532B446532456A325D7E4B506D40405A36384E31F0FFECD6E3D5F8FFF7F9FE
          FCFCFEFEFEFDFFFFFCFEFFFCFEFFFCFEFFFCFFFFF8FFFFF9FEF8F3F4F0F1EDEC
          F6E9D8E9D45A725424431E36562D5A7E504065334367334364313C5E28345320
          4D6F393D612B436B313E672A35602145712E3B682336631E43702B406B283E64
          2841632D3956283D572F435837EAFBE0F0FCE8F9FFF4FCFFFBE1E3E3ECEEEFFD
          FEFFF9FAFEEDECEEFFFFFFFDFEFAFDFFF9FFFFF7FFFFF7FFFEFAFFFDFCFFFDFD
          FFFCFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8FFF6D4E9D0516F463F612B4267293E
          6723406926365C204F743C43692F345C1B3E69204874273D651D4268264D6F39
          455E384F5C46F6FDEEEEF4E9F7FCF3FCFFFAFBFEFCF3F3F3FDFCFEFCFBFDFAFA
          FAFDFBFBFFFFFCF2F2ECE9EAE1FCFDF3FDFFF4EBFFE249684133502945603949
          643C38522A6178524256334B5A3EF9FFEED3DBCAFBFFF4FDFCF8FFFFFFF3EDF2
          FCF8FDFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFDF5FDFFF3FFFFF8FCFFFAFBFDFDF9FEFDFBFDFDFBFEFCFFFFFBFFFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
          FEFAFDFEFAFDFDFDFDFCFEFDFCFFFCFBFDF9FDF8F6FFF0F1FFE4465E3453723F
          385E223A63253E69284876343868263B6927366324557E413F642C4663352D44
          1EF4FFEAEEF7EAFCFDF9FDFAFCFDF9FFFEFAFFFFFBFFFFFEFEFEFFFAFDFFF9FF
          FFFBFFFEFDFFFEFEFFFEFEFEFDFFFDFCFEFBFDFEFBFDFDF8FDFBF1F7F2F7FFF6
          EBF5E8EEFDE8F0FFE9E5F6DB4257363F5A2F415E31354F27425A37EAFEE1F1FF
          ECF2FFEFF5FFF3F9FFFAFCFFFDFEFEFEFEFDFFFFFDFFFFFCFEFFFCFEFFFDFFF0
          E9EEFFFAFFFFFFFFF0F2ECF2FCF0F1FFEF2C4128577251425E3A37552C365429
          2A481DE5FFD43E592D3851252D481C3A5A29466A363E632B487036325B1D3B66
          253E6A2736621F315B1A4B74363D622A3E5E2D3E5B2E48613B3B502FE9FADFE1
          EBDBEEF3EAFDFFFCF0F2F2F2F4F5F3F4F8FBFAFCFFFFFFFDFEFAFDFFF9FFFFF7
          FFFFF7FFFEFAFFFDFCFFFDFDFFFCFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8FFF6F3
          FFEF4260373F612B44692B406723426B28385E22496E3643692F3B62243E6821
          457025416922375C1E3A5A29465E3B4C5943545B4CD3DACDE9EFE4F9FDF7FBFF
          FAFFFFFFFBFAFCF2F1F3F9F8FAFAF8F8FBF9F8FFFFFBFFFFFAF8F9F0E7EEE1E3
          F5DEE6FDE14B61453C52355266494A5E41344629EFFEE3E7F3DDFDFFF4F3F7EB
          F9FBF5FBF9F8F6F3F5FDF6FDFAF6FCFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFDF5FDFFF3FFFFF8FCFFFAFBFDFDF9FEFDFB
          FDFDFBFEFCFFFFFBFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFDFEFAFDFEFAFEFEFEFEFDFFFDFCFFFDFCFEFAFEF9
          F7FFF3F4FFEADEF5CF3B57294D7038446A2E3A65263A6728315E1F4F7D3B2B58
          19315A1D466B33456332445C34ECFEE1F2FCEBF9FDF7FBFBFBFDF9FEFEFAFFFF
          FCFEFFFEFDFFFFFBFFFFFAFFFFFBFFFFFBFFFEFDFFFEFEFEFDFFFDFCFEFBFDFE
          FBFDFEF7FCFBEFF4F2E2EAE3F2FCF0E3EDE0EFFDEBEAF9E4F0FFE8ECFEDFCFE2
          C1EFFFE4E9F9E1F6FFEEF2FDEDE6EFE5F3F9F4F9FEFCFCFEFEFEFDFFFEFDFFFF
          FDFFFFFCFEFFFDFDFFFDFFF9F4F6FFFEFFF2F0EFFAFEF8E8F0E5E5F2E240523B
          465C404A6141314A283B5331EDFFE2F2FFE4DDF0CFF2FFE2E6FAD75570484665
          384161303D612D51763E2A5316406A29446E2D426C2B426B2D355B2157794334
          54233A572A48633B536847F8FFEFC4CDC0F6FEF4FAFFFBEAECECF9FBFCFCFBFD
          FDFDFDFDFEFCFDFFF9FFFFF7FFFFF7FFFEFAFFFDFCFFFDFDFFFCFEFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFDFDFDF8FFF6DDF0D72D48204868324C7131456C284A702E3E6428
          3D6329365C224F7638446C25365E174C702E507138435F344B624255624C272E
          1FFBFFF5F4FAEFEFF3EDF9FDF8FFFFFFE3E3E3EDECEEFCFBFDFFFDFFF5F3F3FB
          F9F8FFFFFCFBFAF6F7FAF1F6FFF3F6FFF3EDFAEAEBF9E7F2FEECF2FEECF0FCEA
          F8FFF1F9FFF5ECF2E7F6F8F2D6D7D5F8F5F7FFFCFFFAF5FEFEFAFFFEFDFFFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFDF5FDFFF3FF
          FFF8FCFFFAFBFDFDF9FEFDFBFDFDFBFEFCFFFFFBFFFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFAFEFFFBFEFEFE
          FEFDFFFEFDFFFDFCFEFAFEF9F8FFF5F3FFEAECFFE146613639582541662E3D66
          293F692C416E2F2E5B1C4772334A73363B61274766333E592E485A3BE7F4DEF7
          FFF5F9FCFAFCFBFDFEFAFFFFFCFEFFFEFDFFFFFBFFFFFAFFFFFBFFFFFBFFFEFD
          FFFEFDFEFEFEFDFCFEFBFDFEFBFDFEE7E9E9F5FAF9FBFFFCEEF6EFF9FFF8F9FF
          F7DFE9DCF0FCEAF0FCE6F3FFE9EEF9E5F2FCECF1F9EEF7FFF5F0F4EFFDFFFFFB
          FDFEFCFEFFFEFDFFFEFDFFFFFDFFFFFDFDFFFEFEFFFEFEFCF7F8FEFCFCF1F2F0
          F2F6F0F8FFF5F7FFF242503E394B34495C4352654A516247DEEFD4D5E3CBF7FF
          ECEFF8E3F4FFE9E2F7D62E47214661394261342D4E1B4A6F374B71353A63253A
          642349723432581C3B61274C6E384869363252233D572FCEDFC4F0FAE9D7E0D3
          F2FAF0FCFFFDEBEDEDFCFBFDF9F9F9FDFEFCFDFEFAFFFFF9FFFFF9FFFEFAFFFD
          FCFFFDFDFFFCFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8FFF8F0FFEB3F5A3353733D
          44672739601C406723456C2E41672D3A6026486F314168243D6420496B2E3C5C
          26334E274D6045505B4748503FF0F7EAE6ECE1E6EBE2F4F8F3FFFFFEFAFAFAFD
          FCFEFBFAFCFFFDFFF9F6F8F9F7F7F7F5F4F2F0EFFFFFFCF0F4EFF3FAF3F3FAF3
          F6FEF4E2EAE0F9FFF6F9FFF4E6ECE1F1F6EDF6FAF4FCFDFBFCFCFCFDF9FEFEFA
          FFF2EDF6F1EDF3FEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFDF5FDFFF3FFFFF8FCFFFAFBFDFDF9FEFDFBFDFDFBFEFCFFFFFB
          FFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFCFFFBFCFFFBFEFEFEFEFEFEFEFDFFFEFEFEFBFEFCF8FFF6EFFBE9F1FF
          E7E6FCD9425F323F602D496E36446D30325D1E4B76372B56174C7538385E2445
          67314B663A405633F0FFE6F7FFF3F9FDF7FCFCFCFDFCFEFFFDFDFFFDFCFFFFFB
          FFFFFBFFFFFAFFFFFBFFFEFDFFFEFDFEFEFEFDFDFDFDFCFEFBFDFEFBFDFEE3E8
          E7EDF2F1E7ECEAF7FDF8E9F0E9F4FCF2F4FCF1F8FEF3F5F9EEF1F6EDFCFFFAF4
          F8F3FCFFFDFFFFFFEDECEEFDFCFFFEFDFFFFFEFFFFFEFFFEFDFFFEFEFEFEFEFE
          FEFFFDFFFFFEFEFCFBFFFFFCDFE3DDF0F8EEEAF4E74C5747576454465442515D
          4BE9F3E2F4FEEDFCFFF4EAEEE2FFFFF8F5FAEBF3FFE9EFFFE22D42214D664042
          5F3247673641662E3D63273F682A335C1E416A2C335C1F53793F3B6028375C24
          5976484C6140F2FFE8F2FEECE5EFE2E5ECE5E1E4E2FFFFFFF7F7F7FFFDFCFFFE
          FAFFFFF9FFFFF9FFFEFAFFFDFCFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
          FAFEF8E6F6DF39522C4969334164244168243B621E446B2D3C6228486E343C62
          264066243F65233D5F2352703F556D4B384831505B475D6554ECF3E6F5FBF0F8
          FDF4F6FAF5F5F6F4F6F6F6FBFAFCEAE9EBF5F2F4F9F6F8FEFBFDFFFFFFF7F5F5
          FFFFFFFCFCFCF4F4F4FDFFFFE3E6E4F7FBF6DDE1DCFAFCF6FEFFFAFCFEF8ECED
          E9EBECEAFFFFFFE9E8EAEDECF0FDFBFFFDFBFFFEFDFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFDF5FDFFF3FFFFF8FCFFFAFBFDFD
          F9FEFDFBFDFDFBFEFCFFFFFBFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFDFCFFFDFEFFFDFFFFFFFEFEFEFEFE
          FEFBFEFCFBFFF9F8FFF4F2FFE9EBFFE0364F294C693B456731365C2247703337
          602349743539622530561C486B3352703F3F5931E9FEDEF6FFF0F7FFF4FAFEF9
          FDFDFDFFFDFDFFFDFCFFFFFBFFFFFBFFFFFAFFFFFAFFFFFBFFFEFDFEFEFEFDFD
          FDFDFCFEFDFCFEF3F5F6FDFFFFFBFDFEF6FBFAFAFFFDECF1EFFBFFFCF3F7F2FD
          FCF8F2F0EFFFFFFEF6F6F6FFFCFEFAF9FBF3F2F6FFFEFFFDFCFFFEFDFFFFFEFF
          FFFEFFFEFEFEFEFEFEFEFFFDFEFFFDFDFBFAF7F5F4F6F7F3FDFFF9F8FDF4FAFF
          F7F3FBF0EDF7EB555E513C4538F8FEF3FBFEF5E4E6E0FFFFFBFDFAF6FFFFF9EC
          F3E4F2FFE9E7F8DD4E63433F5832446134426231436830426A30446D30456E30
          3861233C65273760224A703440622C3A552A506243DDEDD5F6FFF0E6EEE4F5FB
          F6E7E8E6F6F6F6FFFDFCFFFDFCFFFEFAFFFFF9FFFEFAFFFDFCFDFDFDFDFDFDFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFDFDFDFAFEF8F1FFEB4157344663314365284D74303A61
          1D436A2C3B6127395F253D63274B703032571753733CE2FDD1F0FFE84F5D4B43
          4D3C454C3DF9FFF3F6FCF1EBF0E7F8FCF7FFFFFEF9F9F9FFFEFFF3F2F4FFFDFF
          F7F4F6F4F1F3FFFCFEF7F5F5FBF8FAF9F5FAFFFBFFFBF8FAF6F6F6F4F2F2FDFE
          FCFAFBF7F4F5F1FCFDF9EFF0ECFBFCFAEDEEECFDFDFDFCFBFDF8F7F9EFEEF0FE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFDF5
          FDFFF3FFFFF7FCFFFAFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFDFCFF
          FDFCFFFDFCFFFDFEFFFDFEFFFDFDFFFEFDFFFCD8E0D6F1FCECE4F4DC5267463C
          582D4666354669313E64283E672A3E672A3E67293E672A40662C426330446134
          455D3AEDFDE6F7FFF4F6FDF6FDFFFEEFF0EEFFFFFEFFFCF8FFFDF9FFFFFAFFFF
          FAFFFFFBFFFEFDFEFEFEFEFEFEFEFDFFFEFDFFFDFCFFFBFCFFFBFCFFFBFDFEFB
          FDFEFCFEFEFCFEFEFCFEFEFDFAFCFFF9FEFFF9FEFDF9FEFFF8FFFDF9FFFDF9FF
          FDF9FFFEFCFFFEFDFFFEFDFFFEFDFFFEFEFEFEFEFEFCFFFDFCFFFDFEFFFBFEFF
          FBFEFFFBFDFEFAFBFFF9FBFFF7FBFFF7F9FFF7FBFFF9FBFFF9FDFEFAFFFEFAFF
          FDFCFFFCFDFFFCFEFFFDFCF6F9F0F5FFEFE3EEDAF3FFE9394E2E445D37405F32
          4669373E652D40682E3A64274570313B6625335E1D446E2D395F234D6B3A3D56
          30EDFFE2E8F8E1F7FFF4EFF6EFFEFFFDFAFAFAFFFEFDFFFEFDFFFFFBFFFFFBFE
          FFFDFEFFFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFFF9EBF7E34D62
          41415E2C3D5F22436A26416824365D1F426B2E3E662C4C72363B60203C61234E
          6E38E3FDD5EFFFEAF0FAEDF7FFF3F9FFF3FAFFF4FAFFF5FBFFF7FBFFFAFEFFFD
          FEFEFEFCFBFDFCFBFDFEFBFDFEFBFDFEFBFDFEFBFDFEFBFDFEFBFDFFF9FEFFF9
          FEFFFAFCFEFCFCFFFBFCFEFCFBFEFDF9FFFEFAFDFFF9FDFFF9FDFEFAFDFEFAFD
          FEFCFDFEFCFBFEFCFAFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFDF5FDFFF3FFFFF7FCFFFAFBFDFDF9FEFDFAFCFCFAFD
          FBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFCFFFDFCFFFDFCFFFDFCFFFDFEFFFDFEFFFDFCFFFDFDFFFEF9
          FDF8E2EADFEDF9E7E7F8DD465F39425F314969333E612840662A3E672A3E6729
          3E672940662A40652D426233445F38F1FFE9EEFCEAE7F1E5F4F8F3FEFFFBFFFD
          FCF5F2EEFFFEFAFFFFFAFFFFFAFFFFFBFFFFFBFEFFFDFEFEFEFEFDFFFEFDFFFD
          FCFFFDFCFFFBFCFFFBFCFFFBFDFEFBFDFEFCFEFFFEFDFFFDF9FFFFF8FFFFF8FF
          FFF8FFFFF7FFFFF7FFFDF8FFFDF9FFFEFCFFFEFDFFFEFDFFFEFDFFFEFEFEFEFE
          FEFCFFFDFCFFFDFEFFFBFEFFFBFEFFFBFDFEFAFBFFFAFBFFF9FBFFFAFBFFFAFB
          FFFAFDFEFCFFFDFCFFFDFDFFFCFEFFFCFEFFFBFFFFFCFEDCDDDBFDFFF9F0F7EA
          F5FFEFEFFFE7405737415C353554273E622E4269313761243A65263B66253D69
          264B7734416A2C476933405D303B5330ECFFE4F4FFEEF4FCF2F1F5F0FFFFFFFF
          FEFDFFFEFDFFFEFDFFFFFBFEFFFDFEFFFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFBFFF9F5FFF0E7F9DA3F592B5D7D4250743228510D638A4C30591C2E
          561C416A2D3B60223E6024486533D7EEC8F0FEECF8FFF6F7FFF4FAFFF5FAFFF6
          FBFFF7FBFFF9FCFFFBFEFFFDFEFFFDFDFDFDFDFCFEFFFCFEFFFCFEFFFCFEFFFC
          FEFFFCFEFFFCFEFFFBFDFFFBFDFFFBFDFFFBFCFFFCFBFFFDFCFFFEFAFFFEFAFD
          FFF9FDFFF9FDFFF9FCFEF8FCFEF8FCFEF8FAFEF9FAFEF9FFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFDF5FDFFF3FFFFF7FCFF
          FAFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFAFFFDFCFFFDFBFFFAFE
          FFFBFEFFFDFEFFFDFCFEFEDCDFDDFBFFFCDCE6DAF3FFED3A4F2F3A552A405F2C
          4A6D3440662A3E672A3E67293E67293E672940662C426330446035E4FBDBEEFF
          E9F4FEF1FBFFF9F0F1EDF5F4F0FFFFFCFCF9F5FFFFFAFFFFFAFFFFFBFFFFFBFF
          FEFDFFFEFDFEFEFEFEFEFEFEFDFFFEFDFFFEFDFFFDFCFEFDFCFFFDFCFFFDFCFF
          FDFCFFFDF9FFFFF7FFFDF9FFFDF9FFFDF9FFFDF9FFFDF9FFFDF9FFFEFCFFFEFD
          FFFEFDFFFEFDFFFCFEFEFCFEFEFCFFFDFCFFFDFEFFFBFEFFFBFEFFFBFDFEFAFD
          FEFAFDFEFAFDFEFCFDFEFCFDFEFCFDFDFDFFFDFDFFFCFEFFFCFEFFFBFFFFFAFF
          FFFBFFFFFCFEEFF0EEEFF3EDF0F9ECE8F4E2E8FBE2455D3B45633A3B5D2E466C
          38406930446E3142702E33621E34631E3C6726446A2E446532435E33EDFFE2E9
          F5E1F4FCF1FDFFFCF6F7F5FFFEFEFFFEFDFFFEFDFFFEFDFEFFFDFEFFFDFCFEFE
          FCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFFFAF5FEF1ECFDE24A633738581F30
          5313527B382D54163B6427487036456E31385D1F41632753703FEFFFE2F5FFF2
          EFF8EEF8FFF6FAFFF6FBFFF9FBFFF9FCFFFBFCFFFBFFFFFEFFFFFEFDFDFDFDFD
          FDFFFDFDFFFDFDFFFCFEFFFCFEFFFCFEFFFCFEFFFBFDFFFCFDFFFDFDFFFDFCFF
          FDFCFFFDFCFFFFFBFFFFFBFCFEF8FCFEF8FCFFF6FCFFF6FAFFF6FAFFF6FAFEF8
          FAFEF8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFDF5FDFFF3FFFFF7FCFFFAFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFC
          FEFEFAFFFDFCFFFDFBFFFAFDFEFAFEFFFBFEFFFDFEFEFEF8FAFBF1F3F3F0F7F0
          E0EBDBEFFFE5344C24456231496C3440662C3E672A3E67293E68273E68273E67
          2A40642E4261344B6541EDFFE5ECF9E9EAF2E7FFFFFBFCFBF7F6F1EEFFFFFBFF
          FFFBFFFFFAFFFFFBFFFFFBFFFEFDFFFEFDFEFEFEFEFEFEFEFEFEFEFDFFFEFDFF
          FEFDFFFDFCFFFDFCFFFDFCFFFFFBFFFEFAFFFEFAFFFEFAFFFCFBFFFEFAFFFCFB
          FFFEFAFFFCFBFFFEFDFFFEFDFFFEFDFFFEFDFFFCFEFEFCFEFEFCFFFDFCFFFDFD
          FEFCFDFEFAFDFEFAFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFDFDFDFDFDFDFFFCFE
          FFFCFEFFFCFEFFFBFFFFFBFFFFFBFFF6F0F5FFFEFFF4F5F3FBFFFBEBF5E8E9FA
          E551674B46623E3E5E353D6132365E27416A3049763737662232611D48743140
          6A29456B313E5B2D415936F6FFEFF2FBEEF0F4EEFAFBF9FFFDFEFFFDFEFFFEFD
          FFFEFDFEFFFDFEFFFDFCFEFEFCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFFFAEF
          F7EDF9FFF03247203F5D284D70304F7835436A2C4B7437325A203E672A496E30
          486A2E375325E4F7D6E5F0E0F7FEF7FBFFFAFBFFFAFBFFFAFCFFFBFCFFFDFDFF
          FEFFFFFEFFFFFEFEFEFEFEFEFEFFFEFEFFFEFEFFFDFFFFFDFFFFFDFFFFFEFEFF
          FDFDFFFDFDFFFEFDFEFFFDFFFEFDFEFFFDFFFFFBFEFFFBFCFDF9FCFEF8FCFEF8
          FCFEF8FAFEF8FAFFF6FAFEF8FAFEF8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFDF5FDFFF3FFFFF7FCFFFAFBFDFDF9FEFDFA
          FCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFFCFEFEFAFFFDFBFEFCFBFFFAFBFFF9FBFFFAFEFFFD
          FEFDFFFBFCFFF8FAFBFBFFFEF3FDF1F5FFED405633425F2E3F5F2842652C4066
          2A3E67293E68273E68273E67293E662C406331344F28ECFFE5F3FFEFF4FCF1EC
          EEE8F5F4F0FFFFFEFBF8F4FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFEFD
          FFFEFDFFFEFDFFFEFEFFFEFEFFFEFEFFFDFFFFFCFEFFFCFEFFFCFEFFFCFFFEFD
          FFFEFDFFFCFEFFFEFDFFFCFEFFFEFDFFFCFEFFFCFEFFFCFEFEFCFEFEFCFEFEFC
          FEFEFCFEFEFCFEFEFCFFFDFBFEFCFBFEFCFDFEFCFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFFFCFEFFFCFEF9F2F9FFF9
          FEFEFDFFF3F6F4F2FAF0F2FFEFDCF0D93853324C6B46416438345A28335C233C
          682B3E6C2A38672344702D3C67244A71334667343A542CEEFFE4FAFFF4F5F9F3
          F9FAF8FFFDFEFFFDFEFFFEFDFFFEFDFEFFFDFEFFFDFCFFFDFCFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFBFEFCE3EAE3F5FFEF536842435E2C4C6E31274F0E43692D
          31591F396127365F2241662846682C3E582AF8FFEAEFF9ECF9FFFAFBFEFCFBFE
          FCFBFEFCFCFFFDFDFFFFFDFFFEFFFFFEFFFFFEFEFFFDFEFFFDFFFEFDFFFEFDFF
          FEFEFFFEFEFFFEFEFFFEFEFFFEFEFEFFFDFEFFFDFCFFFDFEFFFDFDFFFEFFFFFE
          FDFFFEFBFEFCFBFFFAFBFFFAFBFFFAFBFFFAFBFFF9FBFFFAFBFFFAFFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFDF5FDFFF3FF
          FFF7FCFFFAFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFEFEFAFFFEFBFFFA
          FBFFF9FBFFF9FBFFFAFDFEFCFEFDFFF7F7FDE0E1E5EDF1F2EAF3E9DFECD6485C
          39314B1D52723C42652D40662A3E67293E69263E69263E68273E672A3E643052
          7047E7FDE0ECFBE6E6EFE2FFFFFBFAF7F3ECE7E6FFFFFEFFFFFBFFFFFBFFFFFB
          FFFFFBFFFFFBFFFFFBFFFEFDFFFEFDFFFEFDFFFEFDFFFEFEFFFEFEFFFDFFFFFD
          FFFFFDFFFFFDFFFEFDFFFCFEFEFCFEFFFCFEFEFCFEFFFCFEFEFCFEFEFCFEFEFC
          FEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFBFDFDFBFEFCFDFDFD
          FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFDFCFEFDFCFEFDFCFEFDFDFDFDFDFDFBFD
          FDFDFDFDFDFCFEFEF7FEFCF4FEF9F5FAF6F8F8FBFFFCF1FDF1D8EBD6E7FEE235
          502E395B324B6F403F6730335F243C692A3A682634631F3E6B263A642342672F
          4B673C44553AF3FDEDF6FAF4FAFBF9FFFDFFFFFDFFFFFDFEFFFEFDFFFEFDFEFF
          FDFCFFFDFCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFEFCFDFFFCF4FEEEE7F8D7
          4F69394365294F77363C6226476F354B73393C65283C612346682C4D6739DEEF
          CEF9FFF5F5FAF8FBFDFDFBFDFDFBFDFEFCFEFEFCFEFEFDFFFFFFFFFFFFFFFEFE
          FFFDFEFFFDFFFEFDFFFEFDFFFEFEFFFEFEFFFEFEFFFEFEFFFFFEFDFFFEFDFFFE
          FDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFBFDFDFBFDFDFBFDFDFBFEFCFBFEFCFBFE
          FCFBFEFCFBFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFDF5FDFFF3FFFFF7FCFFFAFBFDFDF9FEFDFAFCFCFAFDFBFFFEFA
          FFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFFCFEFFFAFFFEF9FFFAF9FFF9FBFFF9FBFFF9FDFDFDFDFCFFE2E1EAFDFD
          FFE8EBEFFAFFFBF4FFECECFFDE47603437552042652D40662A3E68273E69263D
          69263D69263D68293E652E345227526A4ADAECD5F3FDF0FDFFF9FFFFFBFFFAF9
          F0EBEAFFFFFBFEFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFF
          FBFFFEFDFFFEFDFFFEFEFFFEFEFFFDFEFFFEFEFCFEFEFAFFFDFAFFFEFAFFFDFA
          FFFEFAFFFDFAFFFDFAFFFDFCFFFDFCFFFDFCFEFEFCFEFEFCFEFEFCFEFEFCFEFF
          FCFEFEFBFDFDFBFDFDFDFCFEFEFDFFFEFDFFFFFEFFFFFEFFFFFEFFFDFDFDFDFD
          FDFBFDFDFBFDFDFBFDFDF9FEFCFBFEFCFDFDFDFFFBFFFBF3FDF2EEF4F0EFF1F6
          FBF9EBF6ECF3FFF2DBF1D955704F30522A43673949703C376229406C2F447230
          3F6E2A38661E45712C43683043603344583BF5FFEFF9FDF7FCFDFBFFFDFFFFFD
          FFFFFDFEFFFEFEFFFEFDFEFFFDFCFFFDFCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FDFDFDE7EAE8FAFFF6F3FFE4476133395B1F375E20466C30365E242850163F68
          2B4D72344B6D31354F21586948E5EEE1FDFFFEFBFDFEFBFDFEFBFCFFFCFEFFFC
          FEFFFDFFFFFFFFFFFFFFFFFEFFFDFEFFFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
          FEFFFDFDFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFAFCFDFAFC
          FDFAFCFDFBFDFEFBFDFEFBFDFDFBFDFDFBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFDF5FDFEF4FFFFF7FCFFFBFBFDFD
          F9FEFDFAFDFBFAFEF9FFFEFAFFFEFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFAFFFEFBFFFAFBFFFAFBFFF9FBFF
          FAFDFDFDFDFCFFFAFAFFE4E4EAF0F2F3F4FBF4F7FFF1E9F8DC4F643D4A643442
          652D40662A3E67293D68273D69263D69263D68273D662C51744226431CF3FFED
          ECF7E7EAEEE8FAF8F7FFFFFEFBF6F5FFFEFDFEFFFBFFFEFDFFFFFBFFFEFDFFFF
          FBFFFEFDFFFFFBFFFDFCFFFDFCFFFEFDFFFEFDFFFEFEFFFEFEFFFFFFFFFFFFFB
          FEFCF9FEFCFBFEFCF9FEFCFBFEFCF9FEFCFBFEFCFBFEFCFCFFFDFCFFFDFCFEFE
          FCFEFEFCFEFEFCFEFEFCFEFFFCFEFFFBFDFDFBFDFDFDFCFEFEFDFFFEFDFFFFFE
          FFFFFEFFFFFEFFFDFDFDFDFDFDFBFDFDFBFDFDFBFEFCF9FEFCFBFEFCFBFDFDFB
          F7FDFCF4FEFDF9FFFAF9FBF9FCFAECF4EDF1FDF1F0FFEEE6FCE35B76552D4C25
          3C60323860293D672A3A68263665203F6D25396621486E3241613049613E4050
          38F8FFF2F8FAF4FFFEFDFFFEFEFFFDFFFFFEFEFEFEFEFEFEFEFCFFFDFCFFFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFDFEFCF8FBF9F2FBEEF3FFE6445C3242622C486C
          303D63273E672A416A2C446D2F335A1C42632A536D3F314324F6FFF2F2F5F3FA
          FCFDFBFCFFFBFCFFFCFEFFFCFEFFFDFFFFFFFFFFFFFFFFFEFFFDFEFFFDFFFEFD
          FFFEFDFFFEFDFEFFFDFFFEFDFEFFFDFDFFFFFBFFFFFDFFFFFBFFFFFDFFFFFAFE
          FFFCFEFFFCFEFFFAFBFFFAFCFDFAFBFFFAFCFDFAFCFDFAFCFDFAFCFDFBFDFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFCF7
          FDFDF7FFFEFAFCFFFDFBFEFCF9FEFCFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
          FEFFFFFEFFFFFEFEFEFEFEFEFEFEFDFFFEFDFFFFFEFFF6F6F6F8F9F5F6FBF2F7
          FEEFF1FAE55E6A4E36492244642D42692B3B6427456F323B6627315F1D41702B
          34631F3B632937592AEFFFE8F4FFF1F3FAF3F6F6F6F0EBECFFFEFFFFFFFFFFFF
          FEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFEFEFEFEFEFCFEFEFEFEFEFCFEFEFEFEFE
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFFFFFFFFFFFFFFFFFEFDFFFFFCFFFFFDFFFFFEFEFEFFFDFCFFFBFAFFFB
          F9FFF8E9F5E9F0FFEE3D54384A67404669373861243B682344722A3766213D69
          26436C2E3B61274765343E562EE5F7DAF9FFF0F9FEF5FEFFFDF9F8FAFCFBFFF8
          F7FBEEEDEFF8F8F8FDFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBF3FA
          EDEFFCE4566948435E323B5E2653793D3F6A273F6C2737621F5077393D602849
          6439506243E6F2E0F9FFF7FBFFFFF9FDFEFAFCFDFBFDFDFCFEFEFDFFFFFFFFFF
          FFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFDFFFFFEFEFEFCFEFEFFFFFFFDFF
          FFFFFFFFFDFFFFFFFFFFFDFFFFFFFFFFFFFFFFFEFDFFFEFEFEFEFDFFFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFE
          F8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFEFDFFFEFDFFFEFDFFFEFEFEF1
          F1F1FBFCF8F8FAF4FDFFF6EBF0E1F9FFECE2E9D459684842622B446B2D386026
          3A632939652A3B69274779333E6E26446F2E3C602C3F5836D7E7D5EFF6EFFFFF
          FFF7F5F5F2F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFDFFFFFDFF
          FFFEFEFEFFFDFEFFFDFCFFFDFAFFFBF4FAF5F5FFF5455641516A483858294066
          2C3C6823315F163D6A254B7734335D1C4067294B6E36324F1E415832F1FFE5E4
          EDE0DDE1DCFFFEFFF2F1F5FCFBFFFDFCFEF6F6F6FDFEFCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFFFAEAF1E4F4FFEBEDFFE2526C4447683533591D44702B3F
          6D253A67223B632240632B405B30576C4CEAFAE3EDF7EBFAFFFDF9FDFEFAFCFC
          FBFDFDFCFEFEFDFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFDFFFFFDFF
          FFFCFEFEFCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFE
          FEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFE
          FDFFFEFDFFFEFDFFFEFEFEFAFAFAFFFFFCFAFCF6F9FDF2EBF0E1EEF4E1FBFFED
          3241213F5F29486F3141692F446D33426E3333611F32641E3A6A222D58174168
          31314B27F3FFEFFAFFF8E5E6E4FEFCFBFCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFDFFFEFDFFFEFDFFFEFEFEFFFFFEFEFFFDFCFFFDFAFFFBF2F8F3F8FF
          F8E6F7E2425A3A456437476D3336611E4B79313A662345702F3963223E65273C
          5F275A7746445B35E9F8DDF8FFF2FAFFFAE7E9E9EEF0F1EAE9EBFBFAFCFFFFFF
          F6F7F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF4F6F0FCFFF7FBFFF4EFFFE54B
          643E3E5E2D31571B45702D416E293966214E76353E6129425F32374C2B3F4F37
          F3FDF0F9FFFAF9FEFDF8FDFCF9FEFDFCFFFDFDFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFDFFFFFDFFFFFCFEFEFCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFF
          FDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFEFFFFFFFFFFFFFFFEFFFEFDFFFEFDFFFEFEFEFFFFFFF8F9F5FDFFF9
          F5F9EEFFFFF5F4FAE9DDE3D064735442612E3F652B375E26416A314B75383765
          2330621A46762E386322436A3348633CE7F9E2E3EBE0FDFFFCF3F2EEFDFBFAFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFDFFFEFEFEFFFFFFFFFFFEFFFF
          FEFCFFFDFCFFFDF8FEF9F0FBF1ECFCEAE9FFE244603553753F335B1A3C672436
          61203B6625487231406729375A213E5C2B425A32506245E8F4E2CED6CC141715
          FDFFFFF7F6F8F4F4F4FFFFFEF7F8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FFFBF4F9F0EAF4E4E3F3DB455D3A4B6B3C50763C3761203C68233F6B26416928
          4C6F364461334A633D495A3FF0FCEAF8FFF8F8FDFBF9FEFDF9FEFCFCFFFDFDFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFCFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFA
          FEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFF
          FFFFFFF9F9F9F3F4F0FAFCF6F8FCF1FBFFF3F9FEEFF2F8E7E7F5D9516D3F4368
          30355C25335C233E682B3E6C2A38682042722A4E79382B521A45633A586E52F5
          FFF0EAEFE6FFFEFAF8F6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFD
          FFFEFEFEFFFFFFFFFFFEFFFFFEFFFFFFFDFFFEEDF3EEF4FDF3E9F6E6EEFFEA47
          623B3656252F55193F6928376223356021365F21466D2F5F82493D5C29456035
          475C3BE9F6E0FAFFF7F4FAF5EEF0F0F6F6F6FFFFFFFEFFFDFCFDFBFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFBFCFAEDF1EBF8FFF4D3E0CAE6FBDB46623741632D
          3E6729436E2B426E293B632241652939572649633B405534F1FFEAF6FFF5F8FE
          F9F9FEFCF9FEFCFCFFFDFCFFFDFFFFFEFFFFFEFEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFCF8FDFCF8FF
          FDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFF
          FFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFCFDFBFAFBF7EFF1EBFFFFF9EAEEE3EBEF
          E3FDFFF3F3FFE83853283D5E2B4D713B40672F355F223C6A283A6A2234641C34
          5F1E476E36325025415838FAFFF4EEF6EBF0F2ECFCFBF7FFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFDFFFEFDFFFEFEFEFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFF7
          FAF8F6FDF6F3FFF2F0FFEB2A42204D6A3D54773F446A2E4871343F6A2B355E20
          3B6426385E223D60283754264E6741DFEFD7FAFFF5D5DED4ECF1EFFDFFFEFBFB
          FBF4F5F3FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEEF2EDEDF3E8
          F5FFEDEFFFE64D68403F602D3B61253A642336611E4A723142682C50723C5370
          432F4822EDFFE5F5FFF2F7FEF7F9FFF9FAFFFBFCFFFBFCFFFDFFFFFEFFFFFEFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFC
          FFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFEFF
          FBEFF1EBFFFFF9F2F6EBF0F4E8F3F7EBD5E1CB5A714B3454234569354A713A39
          6326426D2C44732E3F6E293A6623426A30466637425A37DEEED7F7FFF1F4F8ED
          EBEDE7FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFDFFFEFEFEFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFFFDFFFFF8FEF9EBF5E9DFEED9EAFFDF2D471F5E7C4B
          395C243A62283962254871334A733531581A4D70374D6C393C572C4F6346DDEC
          D7FAFFF8EAF1EAFDFFFEFDFEFCFEFCFBF2F0EFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF2F2F2FDFFFEF3F7F1CDD8C8ECFCE43D55324461333F642C436C2E426C
          2B3D6524456C2E3A5D25395726526E433A5131F3FFEFF6FFF5F9FFF7FAFFFAFC
          FFFBFCFFFDFEFFFDFFFFFFFEFEFEFEFEFEFFFEFFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFC
          F9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF9FAF8FEFFFDFBFCF8F1F3EDFCFFF6FCFFF5ECF0E5F7FFEEE9
          FEDD5D7A4D2F4F203E622C3962253D68273A69243665204773302E571A4B6B3A
          3D572F506245F3FFEBE9F0E3FFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FDFFFEFEFEFEFFFDFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFF6F6F6FCFFFDF4FCF2
          EEF9E9F4FFEA3C522F304B1F5574414E723C3D652B3A63263D6628486F312D53
          174C6E383D5A2C374F2CEBFEE5F1FEEEECF4EAF6FAF5EEEFEDFFFFFEFFFEFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8FAF6F6F6F2F6F1FAFFF7EFFFE84159
          374C693C40622C40662A355F1E466E2D3F66284D70373D5E2B45653639512EF2
          FFECF6FFF4F9FFF6FAFFF8FCFFFAFCFFFBFEFFFDFFFFFFFEFEFEFEFEFEFFFEFF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFCF8
          FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFE
          FEFEFEFEFFFFFFFFFFFFFEFEFEFEFFFDFDFEFCFDFEFCFDFEFCFDFEFAFDFFF9FD
          FFF9FCFFF6FCFFF6F7FFF1EFFFE6425D364C6B3E3D612D3F672D3D6827406F2B
          366520396522436C2E426630405D30495E3DF1FFE7FCFFF4EFF4EBFDFEFCFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFEFEFCFEFEFEFFFDFEFFFDFFFFFBFFFEFDFFFEFE
          FEFEFEFCFBFDF6F8F8FBFFFBF2FCEFEDFCE7F1FFE82F46204C673B4263304267
          2F3B6427466F313C6625365D1F466C323B5C29415C34425939E3F2DDF6FFF3F4
          F9F0F7F8F4FAF8F7FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7F9FAF9
          FBF8FBF9F8FFF5F7FFEFDDF1D44F694147673640662C4067293E68273E672940
          662C40652D406430445F37EFFFE8F6FFF3F8FFF5F7FFF5FDFFFBFDFFFCF5F6F4
          FDFDFDFEFDFFFEFDFFFEFDFFFEFDFFFEFEFEFEFEFEFEFFFDFEFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFE
          F8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFEFFFDFDFEFCFD
          FEFCFDFEFCFEFFFBFEFFFBFDFEFAFDFFF9FCFDF9FAFFF5E5F5DE3F5735486439
          426330355B213E69284975322D5C17426E2B456F2E436830506E3D374E28EBFD
          E0F4FEEDFBFFF7FDFEFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFCFEFEFEFFFD
          FEFFFDFFFFFBFFFFFBFFFEFEFFFEFEF7F4F6FCFCFCECEFEDEDF5EBF8FFF3CEDE
          C64F61423E583040602F4469313861243B64263C67243E69264C75374368304C
          6B3E3B5531F1FFEBE1ECDCEBF1E6FFFFFBF8F5F1FDF9F8FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF8F5F7FFFEFFF3F4F2E6EEE4F1FDEBEFFFE7354E284E6B3D42
          642E40662A3E67293E672940662A40662C40642E42613446593EDCE7D7E9F2E5
          F4FCF1EFF4EBFAFEF9FEFFFDFFFFFFFEFDFFFEFDFFFEFDFFFEFDFFFEFEFEFEFE
          FEFEFFFDFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFE
          FEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFEFEFEFFFFFFFF
          FFFEFEFFFDFEFFFDFDFEFCFDFEFCFDFEFCFEFFFDFEFFFDFEFFFDFEFFFBFDFEFC
          FBFFF7F2FFEC475D4037522A4363323F652947723125510E4B7A35386421355F
          1E385E223D5F29496439495B3CF9FFF0E4EADFFDFEFAFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFEFEFCFEFEFEFFFDFEFFFBFFFFFBFFFFFBFFFDFEFFFEFEFEFBFDFFFE
          FFF3F3F3F3F7F2F9FFF6F6FFEEE8F7DC4B613E3F5C2F486C3641692F456E3044
          702D35621D36621F3D6629345725314F26E9FFE2F1FFEBFDFFF8F1F1EBFFFFFC
          FFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F5F7E9E9E9F5F6F4FAFFF8E3
          EEDEF1FFE9384D2C3C592C42633040662C3E672A3E67293E672A3E662C3E662C
          4062332E4225F8FFF2DCE7D7FAFFF7F6FEF4F7FBF5FAFBF9F9F9F9FEFDFFFEFD
          FFFFFDFFFFFDFFFFFEFEFFFEFEFEFFFDFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFF
          FDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFDFEFEFEFEFEFEFFFFFFFFFFFEFEFFFDFEFFFDFDFEFCFDFEFCFDFEFCFEFFFD
          FEFFFDFEFFFDFEFFFDFEFFFDFCFFFADDEADAEEFFE62F48224C6C3B456B2F224C
          0B4975323E6D2845712E3E6A27436C2E587B423F5B2D394F2CECF9E3FBFFF8FB
          FFFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFCFFFDFEFFFBFEFFFBFFFFFBFFFF
          FBFFFEFDFFFDFFF6F2F7FFFBFFFFFCFEFCFDFBF2F7EEE8F2E2F6FFEC35472842
          5E333F632F395F25426B2D4B783339671F34611C487332476E3747653A445B3B
          F2FFEBD7DED1FEFEF8FEFBF7FFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFDFFFDFDF8F9F5F8FDF4F3FCEFE7F7E0576C4C46603844623140652D40662A
          3E67293E672A3D672A3D662C406331465D3DECFCE5C8D4C2EAF5E5F6FEF3F9FF
          F9FFFFFEF5F5F5FEFDFFFEFDFFFFFDFFFFFDFFFFFEFEFFFEFEFEFFFDFEFFFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFA
          FEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFEFEFEFFFFFFFFFFFEFEFFFDFEFFFD
          FDFEFCFDFEFCFDFEFCFEFFFDFEFFFDFEFEFEFEFEFEFEFEFEFCFFFDEEF8ECF1FF
          EC334B283351203C60244F793835611E3665212F5E193E6A27396421385C203B
          59284D643EF5FFEBECF5E8FBFFFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFDFCFF
          FDFEFFFBFEFFFBFFFFFAFFFFFBFFFEFDFFFDFFFAF4F9FEFAFFEAE6EBEDEDEDFC
          FFFBE2EADFFAFFF3E7F8DD506B43436634375C24345D1F3E6B263E6F25386820
          44702D4168304E7041364F2DEEFEE6F6FDEEE8E9E0FFFFFBFBF7F6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E2E1F4F5F1FAFFF6E3ECDFEEFAE6DCEED1
          4B643E44613340642E40662C3E672A3D672A3D672A3D672A3E64305A7250CDDD
          C6F4FFECF4FFEFF3FBF0F9FFF9FFFFFEE5E5E5FFFDFFFFFCFFFFFCFFFFFDFFFF
          FEFEFFFEFEFFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFCF8FDFCF8FF
          FDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFEFEFE
          FFFFFFFFFFFEFEFFFDFEFFFDFDFEFCFDFEFCFDFEFCFEFFFDFEFFFDFEFEFEFEFE
          FEFDFCFEFBFDFDF4FDF3E0EFDA405534506D3F486B323A642346722F33621E3A
          69244E7B3648742F3A5F2161814B3E562EE4F5DAF1FAEDFBFFFAFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFCFFFDFCFFFDFEFFFBFEFFFBFFFFFAFFFFFBFFFEFDFFFDFFF0
          EAEFF8F1F8FCF8FEFEFBFDFFFFFEEFF4EBE4EBDEF4FFEA38512B3B5E2C4D723A
          3F6A2935631B3C6D233A6B2134631E254F124F72405B7551D9ECD3FBFFF3FDFE
          F5F5F2EEFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E5E4F6F5F1F3F5EF
          E6EBE2FBFFF5F4FFECF1FFE637502A44613440643040652D3E672A3D672A3B67
          2A3B672A3E6430374F2D5B6B53E3F0DAEBF7E5EEF6EBF1F8F1FDFEFCF8F8F8FF
          FBFFFFFBFFFFFCFFFFFDFFFFFDFFFFFEFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFC
          FFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDFEFEFEFEFEFEFFFFFFFFFFFEFEFFFDFEFFFBFDFEFAFDFEFCFDFE
          FCFEFEFEFEFEFEFDFCFEFDFCFEFCFBFFFAFCFCF7FEF7F2FFEEEAFFDE5976482D
          5017436D2C34601D41702C386722325F1A36621D5176362B4B14475F3554654A
          F5FFF0FBFFFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFDFCFFFDFEFFFBFEFFFAFF
          FFFAFFFFFBFFFEFDFFFDFFFFF9FFF9F1FBFFFCFFF1EDF2E4E4E4FBFFF9F9FFF4
          DDEAD458704D325425456A3249743339671F4071254276293F6F27527D3E2E54
          203E593243563BF3FBEAFDFEF4FFFFFCF7F2F1FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFCFBFEFDF9FFFFFBFCFFF8F1F8EBE1EDD9E2F3D849613E4460354064
          3040652D3E662C3D672A3B672A3B672A3D64305C74513E4E36EBF8E2F7FFF1F8
          FFF5F0F7F0F3F4F2FEFEFEFFFBFFFFFBFFFFFCFFFFFDFFFFFDFFFFFEFEFFFFFE
          FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFDFCF8FDFDF7FDFEFCFCFFFDF9FEFC
          F9FEFCFAFEF8FAFEF8FDFEFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFEFDFFFFFFFFFFFFFFFEFF
          FDFEFFFDFDFEFCFFFDFCFDFDFDFFFDFDFDFCFEFDFCFEFCFBFFFCFAFFF9FBFCEF
          F6EFF5FFF1E9FEDE3C572C4E713941682A3D68273867233F6E2A3966213A6621
          476F2E4A6A333E5A2C485D3CEBFAE5F9FFF7FEFFFDFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFFFFFFFFFFFDFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FFFBFEFFFAFEFFFAFEFFF8FFFFFAFFFFFAFFFEFDFFFDFEFCF6FBFCF6FBFCF8FD
          F6F2F7FDFDFDF6F7F3F7FAF1F6FFEFE9FEDD5D7A4D2F511B3E64283865203B6C
          223A6B2136661E406D2E3E652E4F6D424C6141F2FDE9F8FCF1FAF7F3FFFFFEFF
          FFFEFDFFFEFFFFFFFDFFFEFFFFFFFDFFFEFFFFFFFDFFFFFFFFFFFDFFFFFFFFFF
          FDFFFFFFFFFFFDFFFFFFFFFFFFFFFEFAFBF7FDFCF8F0F1EDF4F6F0F9FEF5EFF9
          E9F6FFEDE2F7D745603544623140652D3E672A3D68293B682939682A3D652E46
          6237344928F3FFE9F0FCE8ECF6EAFAFFFBF9FBFBFDFCFEFFFCFEFFFCFEFFFDFF
          FFFEFEFFFEFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7
          FBFCF3FEFFFAFCFFFBFAFFFEF8FEFDF8FDFBFBFFFAFEFFFBFFFFFEFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFEFCFE
          FFFDFEFFFFFEFFFFFEFFFFFFFFFFFEFEFFFDFDFFFBFCFCF9FBFBF6F8FFFCFFF2
          EEF4FAF6FCF9F6FFF8F9FDF9FFF9E2F0DEEDFFE53C552F516E40486B33396225
          3863223863223C67263E68273B61253E632B2F501D5D7A4DE7FFDDF7FFF4EBEF
          EAEAEEE9F2F5F3FBFEFCF5F8F6F7F7F7FFFFFFFEFEFEFEFEFEFFFEFEFFFEFEFF
          FEFEFFFEFEFFFEFEFEFEFEFCFEFFFAFEFFFCFEFFFAFEFFFCFEFFFAFEFFFCFEFF
          FCFEFFFDFFFFFDFFFFFDFFFFFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFDFFF7FFFFF6FFFFF6FFFFF6FFFFF8FFFFFAFFFFFA
          FFFFFBFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFAFEFEF8FAFEF2F4FFE63C4F
          284862344C6C36375E203A65223F6F27305F1A315F1D416A3047693A3B5531F5
          FFEEF2FBEEECF0EAFAFBF9FBFEFCF9FFFAFBFEFCF9FFFAFBFEFCF9FFFAFBFEFC
          F8FDFBFBFEFCF9FEFCFBFEFCF9FEFCFBFEFCF9FEFCFBFEFCFBFEFCFCFEF8FEFF
          FAFFFFFEFFFEFDFEFFFDFDFFF9F9FFF1F3FFE73C512B4A64343F61254A72313C
          6625416F2D2F5E1F39652A3D622A4D6B3A425B35ECFFE6F8FFF8EDF4F1F4F6F7
          F9FAFEFEFDFFFEFEFEFFFEFDFFFFFBFFFEFDFFFEFEFFFDFFFFFDFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFE
          FCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFFFFFBFDFEFAFEFFFCFDFFFDFFFFFFFEFFFFFDFFFFFDFEFFFCFDFF
          FBFDFAF5F7F4EFF1F5F1F6FBF7FCFDFBFFF9F7FDF2F4F5E9F0E9F4FFF1ECFCE5
          4259393D592E42633040662C4A7335416C2D467132436C2F3A62284C71394569
          3334552258724AEDF9E7F7FEF7FDFFFCFCFFFBFAFDFBFAFDFBF9F9F9F0F0F0FE
          FEFEFEFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFEFEFEFCFEFFFAFEFFFAFEFF
          FAFEFFFAFEFFFAFFFEFAFEFFFAFFFEFDFFFFFDFFFEFDFFFFFCFFFDFCFFFDFCFF
          FDFCFFFDFCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF8FFFFF7FFFFF7
          FFFFF8FFFFF8FFFFFAFFFFFAFFFFFBFFFFFBFFFFFBFFFFFBFFFFFCFFFFFEFFFF
          FBFFFEFAFCFFF5F1FCE23B4B2954683E425D2B587B422F591845722D45742F47
          7632376124466B392E4B244F6247EAF7E7E1E8E1FCFFFBF9FFFAF9FFFAF9FFFA
          F9FFFAF9FFFAF9FFFAF9FEFCF9FEFCF9FEFCF9FEFCF9FEFCF9FEFCF9FEFCF9FE
          FCF9FEFCFBFFFAFCFEF8FEFFFAFFFEFDFFFEFEFFFDFFFFFEFDFBFFF4F6FFEA3F
          502B566E3E3A5A1F395F1D416C293867233D6C2D3E6A2D3F662842652D3E592E
          E9FFE2CBD8CAF0F7F4FBFFFFF1F2F6FEFDFFFEFFFDFFFFFBFFFFFBFFFEFDFFFE
          FEFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7F9FDF2FEFFFAFAFF
          FBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFDFDF9FEFDFCFEFFFDFFFFFF
          FEFFFEFDFFFFFCFEFFFCFEF9F6F8FDFAFCFFFEFFF6F6F6FFFFFFF5F8F6F8FDFB
          FBFFFEEFF6F1F6FFF7F2FFEFE6FCE0405B345777483A5F273962253661223C67
          283F682B365F2242682E4D723A3D6028385328EBF7E3FBFFF7FAFEF8FBFFF9F9
          FDF8FDFFFEFFFFFFF3F3F3FEFDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFCFEFFFCFE
          FFFCFEFEFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFFFDFCFEFEFCFFFDFCFFFDFCFF
          FBFCFFFDFCFFFBFCFFFBFCFFFBFCFFFBFCFFFBFFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFFFFFBFFFFFAFEFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFDFEFFFDFEFF
          FDFEFFFDFEFFFDFFFFFFFFFFFEFDFEFCFCFFF5E9F4DA62735141572D314E1D45
          68303B642628541136652037662236602342683448663D3C5235F7FFF1FAFFF7
          E0E7E0FBFFFAFBFEFCFCFFFDFCFFFDFCFFFDFCFFFDFCFEFEFBFDFDFCFEFEFCFE
          FEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFFFDFCFEF8FFFFFAFFFEFDFFFEFEFF
          FEFEFFFFFBFBFFF4F6FFEAEFFFDB344A1A55733850743240692646722F325F20
          3562233B622440632B506B3FEFFFE8F5FFF2EBF2EDECF0F1FBFCFFFEFDFFFEFF
          FDFFFFFBFFFFFBFFFEFDFFFEFEFEFDFFFEFDFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
          FDFBF9FEFCFCFFFDFCFEFEFEFDFFFDFCFEFFFCFEFEFBFDFCF9FBFEFEFEFFFFFF
          F2F6F1FAFEF8EAF2E8F0FAEEF2FDF3E8EFEAEDF8F0DEEDDFEEFFEA4962403C5D
          303E622C4D753B446E313A6526416A2D3F682B365C20375D2345682F516D3FF4
          FFEBFDFFF9ECF1E8F8FCF6F8FCF6F9FDF8FEFFFDFFFFFFFEFDFFFEFDFFFFFDFF
          FFFDFFFFFDFFFFFCFEFFFCFEFFFCFEFFFDFDFDFDFDFEFEFEFCFEFEFEFFFDFCFF
          FDFEFFFDFCFFFBFBFFFAFBFFFAFBFFFAFBFFF9FBFFF9FBFFF7FBFFF9FBFFF9FF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFDFEFEFEFEFEFEFEFEFEFEFF
          FDFEFFFDFEFFFDFEFEFEFDFDFDFDFDFDFCFEFEFEFEFEFCFEFEFDFEFCFBFFF6F4
          FFE9E6F7D543592F5572414B6E363D66284D793632611C3A6925436D30385E2A
          516F44354C2CE8FAE3D8E3D3F5FDF3FBFFFAFCFFFDFCFFFDFCFFFDFCFEFEFCFE
          FEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFFFEFFFDFF
          FEFAFFFFFAFFFEFDFFFEFEFFFEFEFFFFFBFEFFF5F9FFEBF4FFE043582B4A672F
          385B1B3D66233863203E6C2A406B2C40672942652D486538E7FEDED1E1CFF8FF
          F9ECF1F0FAFCFDFEFEFEFEFFFDFFFFFBFFFFFBFFFEFDFFFEFEFEFDFFFEFDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8
          FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFAFEF9FBFFF9FBFFFAFCFFFDFDFCFEFDFCFFFCFBFF
          FBFAFEFEFDFFF0F2F2EDF1ECEAF2E8F1FBEEF0FEECEFFFEAE5F5E3F2FDF5F8FF
          FBD6E5D7E9FEE537502E36572A426632386026487235345F203A63254C753744
          6B2D395F2341652943602FCCDAC2FBFFF7F2F8EDFCFFF8F7FBF5F5F9F4F5F8F6
          FCFFFDFEFEFEFEFDFFFEFDFFFEFDFFFFFBFFFFFBFFFFFBFFFFFCFEFFFDFDFFFD
          FDFFFDFCFDFEFCFFFEFDFEFFFDFFFFFBFEFFFBFCFDF9FCFEF8FCFEF8FCFFF6FA
          FFF6FAFFF5FAFFF6F9FDF7FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFEFDFC
          FFFEFDFFFEFDFFFEFDFFFEFEFEFDFFFFFDFFFFFCFEFEFBFDFDFBFEFCFAFFFDFC
          FFFDFAFFFDFCFFFDF9FFF6EEFBE3EDFFDE4A62383F5D2C3B5E262F581A3A6623
          36652034631F537E3F396029325124445E3A415538F5FFECEAF3E6FBFFFAFEFE
          FEFEFEFEFEFEFEFFFFFFFFFFFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
          FDFFFEFDFFFEFDFFFEFEFEFFFDFCFFFFFBFFFEFDFFFDFDFFFDFEFFFFFBFEFFF5
          F9FFECF2FFDF4C5F344E68334464294B70303F69283E69283964233960225376
          3D4E6B3D475F3DE3F4DFEBF5E9F3F9F4FCFEFEFEFFFDFEFFFDFEFFFBFEFFFBFE
          FFFDFEFEFEFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7F9FDF2FE
          FFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAFEF8FAFFF6FBFFF9
          FBFEFCFDFCFEFCFBFFFBF9FFFBF9FFF5F6FAEDF2F1F4FBF4FAFFF7D8E7D2E4F7
          DCEDFFE4E9FFE3D8E8D7F3FFF5F4FFF2D8F0D2E1FED73D5F302B521B40692C3C
          6728366122365F21456E30476E30436A2C4A6F313F5E2B66785BEAF4E3F9FFF5
          FAFFF4F2F7EEF8FDF4F3F7F2F7FBF6FDFEFCFDFDFDFDFCFEFDFCFEFFFCFEFFFB
          FFFFFBFFFFFCFEFFFCFEFFFCFDFFFDFDFFFDFCFFFEFDFFFEFDFFFEFDFFFFFBFC
          FDF9FCFEF8FCFEF8FBFEF5F9FEF5F9FFF4F9FEF5F9FDF7FFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFFFDFCFFFDFBFFFDFCFFFDFCFFFEFDFFFCFEFEFDFFFEFDFFFEFC
          FFFDF9FFFAF9FFFAF8FFF9F9FFF9F8FFF9F8FFF9F7FFF4F7FFEBDDF2CC3D582D
          4563324568304A7335386421487732386723345F20436A32486B393B562E3F57
          35F2FFE7EBF7E3FBFFF9FDFEFCFEFEFEFEFFFDFEFEFEFFFFFFFEFEFEFEFDFFFE
          FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFFFDFDFFFEFDFFFEFE
          FFFDFDFFFCFDFFFEFDFEFFF6FAFFEFF7FFE541522D39502342602B3D61254E75
          373A632540692B486F3133561D405E2D4B643EEDFFE7F8FFF5F9FFF8F0F6F1FC
          FFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFEFEFEFEFEFEFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFB
          FFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEF9FEF5FAFFF5FDFFF9FDFEFAFDFCFEFCFBFFFBF9FFFAF8FEFDFEFFF8FD
          FBF3FCF2E0EEDC4E634A3D56343C572F39542DF1FFE9E3F6DDDEF4D7ECFFE0DD
          FDCE50743E396225436E2F406B2A4B76353D68293C65273D63273A6024466A2E
          42612E324425E1EED8F4FFEEF1FBEAF1FAEDF8FFF4EDF5EBF7FEF7FBFFFAFBFE
          FCFBFEFCFBFDFDFDFDFDFEFDFFFEFDFFFFFDFFFFFCFEFFFCFDFFFCFDFFFCFDFF
          FCFDFFFEFDFFFEFDFFFFFBFCFDF9FCFDF9FCFDF9FCFEF8FCFEF8FCFFF6FAFEF8
          F9FDF7FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFCFFFDFBFFFBFCFFFBFDFEFB
          FDFDFBFEFCFCFFFBFAFFFAF7FFF5F5FFF3F5FFF3F2FFF1F5FFF2F3FFF2F2FFF1
          F2FFECD9EBCCEBFFDB405B2F4969383F642C2A531648733229551246722F3964
          233C642A41652F567346425C34DCF2CFF2FFE8FBFFF6FDFEFAFDFEFCFEFFFBFE
          FFFDFEFFFDFEFFFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFFFEFDFFFEFDFF
          FEFDFFFDFCFEFEFDFFFFFDFFFFFCFEFFFCFEFFFEFEFFFFF9FAFEF2F0F7E2ECFB
          DC5B6E47415B2D40602A3D60273D632940662A466C3034571E4664334E6840E9
          FDE0F0FFEAE7F1E4F9FFF9FCFFFBFCFFFDFEFFFDFEFEFEFEFEFEFEFEFEFCFEFE
          FCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFE
          F8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FEF5FAFFF5FCFFF6FDFEFAFCFBFDFBFA
          FEFAF8FEF8F8FEF9FAFEF2F9F6F5FEF4EFFFEB465C3F445F3846653845623541
          5A34455E384560354563323F622A335C1F537E3D39652236621F436E2D335E1F
          3B6627486E323D632744672E4463304A603DF1FFE7F1FFE7EEFBE5F5FFEDF4FF
          EEE2ECDCF9FFF5F8FFF6F8FFF8FBFFF9FBFFFAFCFFFBFCFFFDFEFFFDFEFEFEFE
          FCFCFFFCFEFFFCFDFFFDFDFFFCFDFFFEFEFFFEFDFFFEFDFDFEFCFDFEFCFDFEFC
          FCFDFBFCFDF9FCFDF9FAFEF9FAFEF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFD
          FCFFFDFCFFFBFDFEFBFDFDFBFFFAF9FFF9F9FFF6F8FFF5F3FFEDF0FFEAEFFEE9
          EDFFE8EDFFE8EDFFE7ECFFE6EAFFE3E6FEDBE6FFD6E2FFD24767363E632B3D66
          293F6A293F6B28335F1C477231446D30466B333E5E2D425F324F6941E7F9DAF8
          FFF2FBFFF7FDFFF9FCFFFAFEFFFAFCFFFAFEFFFBFCFFFBFDFEFCFBFEFCFDFEFC
          FBFEFCFDFDFDFBFDFDFDFDFDFBFDFDFDFCFEFEFDFFFEFDFFFFFCFEFFFCFEFFFE
          FEFFFEFAFBFEF5F8FFEFE6F3DB5162414961393E5A2C51723F3A5D2540662C42
          682C52783E3758253D592E4D6543E9F9E1EEFAE8FBFFF8FCFFFBFCFFFDFEFEFE
          FEFEFEFEFEFEFEFEFEFCFEFEFCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7
          F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFF7FBFF
          F6FDFFF7FDFEFAFDFCFEFCFBFFFCFAFFFAFBFFFBFDFEFAFFFCF1FBEFEFFFEB43
          593C4C67404362354D6B3A425F2E47643247662F3A5E22466F2C406C2735631B
          4270283B6A253B6A263D68273D672A40662C40662C42652D446330395129E5FA
          D9F1FFE4E3F5D8F1FFE7DAEAD2EBF7E3EDF9E7F8FFF3F4FEF1F4FCF1F7FFF4F2
          FAEFF6FEF4F8FDF4F5F9F3E2E0DFFFFFFFDAD8D8ECECECFFFFFFE7E7E7F3F3F3
          FEFEFEF9F9F9F1F1F1FDFDFDF9F9F9F4F4F4FEFEFEFCFCFCFCFCFCFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFF7F9FAF5F7F7F0F4EFF5FDF3DDE6D9F6FFF0
          E8F8E1F1FFE7E9FDE0E2F7D74E6644445C3A3A543057714D39542D445F374461
          3444613342633040652D3E672A3D68293D68273864213C67263E67293B612740
          622C314F1E5D7A4CE9FFDCF0FDE7ECF6E6FBFFF5EEF7EAFDFFF7EFF8EBFCFFF7
          F6FEF3F0F5ECF9FFF7EEF3EAFBFFF9F2F6F0F8FFF8F0F4EFFAFFFDECEEEFFDFE
          FFF4F6F7F1F0F2FFFEFFF5F5F5EBECE8FFFFFBFAFFF5FAFFF345533B485D3C48
          623A4666373859263E632B3E642A365C2240622C4D6A3C3D5630ECFEDFF3FFEA
          F3FCEFFBFFF9FCFFFDFCFEFEFCFEFFFCFEFEFCFEFEFBFEFCFBFEFCFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFE
          FCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFBFFF7FBFFF6FDFFF9FDFEFCFDFCFEFDFCFFFCFAFFFCFBFFF6
          F8F9F7FDF8E9F3E7F4FFEE3F553846613A4763384967363D5D264B6D303F6222
          486F2B3B651E416E25406E2529570E3B6A253B6A263D68293D672A40662C4065
          2D42652D446330405B2F435D353B542E4159362B401F617656E4F8DBF3FFEBE2
          F2DBF0FFE9F3FFEDDCEAD8FAFFF4E6F2E0E9F4E4F9FFF5F9FDF7E6E7E3F9FDF8
          F4F7F5EAEDEBE9ECEAFEFFFDFCFDFBFBFBFBFBFBFBFAF9FBFBFAFCF3F2F4FDFC
          FEFDFCFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFCFBFDFDFBFFFA
          F6FEF4E3EDDDF7FFEFDEEED6EAFFDF495F3C48613B5A754A3956293E5B2E3E5D
          3042623340603142623342623342623140642E3E662C3E672A3D68293D682741
          6D2A467130436C2E3A63264C7139476933345522587348F3FFE8F4FFEBEDFAE4
          EDFAE4EDF9E5F5FFEDF1FDEBEDF9E7F6FFF1F2FDEDF2FDEDF7FFF2F2FCEFFAFF
          F7F4FEF2F9FFF8EDF4F1FBFFFFFAFFFEF0F3F1F0F4EFFBFCF8FCFEF8F4F9F0EB
          F0E7F8FFF4E9F5E1506447425B352A491C5F804D40652D43692F3A60263B5D27
          4B69384B663BECFFDFE3F4D9F5FFEFF9FFF7FBFEFCFCFEFEFCFEFFFCFEFFFBFD
          FDFBFEFCFBFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7F9FDF2FEFFFAFAFF
          FBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFF9FCFFFAFCFFFBFCFFFDFE
          FDFFFDFCFEFDFCFFFDFCFEF9FBFBF8FEF9FBFFF8EDF9E748593E2E4322516A44
          3754265B7C43436725355A164F7730416C23416F233362164C7D333B6A253B6A
          263D68293D672A40662C40652D42652D42642E506E3D3C592B486537617E5140
          5B30334D2550694339512E475C3C3D5232384C2F485C3FE0F1D6F1FFE7EDFEE3
          E4F4DDF3FEEEE9F1E6FBFFF8EEF6ECF8FFF6FAFFFAFCFFFAF3F7F2E4E7E5F2F4
          F4ECEBEDFEFDFFFCF8FDFFFDFFFAF6FBF8F4F9FFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBFDFDD6D9D7EEF5EEF6FFF2F4FFEBE8F6DE5365463F56303C572C3754
          2637562352743E47693352773F3A5F27496E3640643040643040642E3E652D3E
          672A3E67293E68273E68273761203D67263F682A365F2240682E4D723A3B5F29
          37552439502A5C6F4E485B3A4356355E7051CEE0C1F3FFE8EFFFE5EDFDE5DCEC
          D4F7FFF0EBFBE4E8F7E2EFFEE9E8F7E2E6F3E3F3FEF4E0E8E1E9F2E8FBFFF8F0
          F9ECE8EFE2F1F7ECFAFFF5F5FBF0FAFFF7E9F7E53A4D3249613E5271442B4D17
          3F652B31591F4E743A4669313D5D272E4A1CE6FED6DDEFD2F1FDE9F9FFF7F9FE
          FCFBFDFEFBFDFEFBFDFEFBFDFDF9FFFAFBFFFAFFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC
          FFFDFCFFFBFCFFFDFCFEFEFEFDFFFEFDFFFEFDFFFEFDFFF4F5F3F1F5F0EFF4EB
          FAFFF4E9F6E05364493D523248623A34541E4062254B70303D662334601B416F
          2736661E44742C3B6A263B69273D68293D672A3E662C40662C42652C42652C3A
          5F274367313A5E28395D294E6E3D5070414564374A683D3F5A324D6840536E47
          36512A5A724F3D5532455D3A566B4AD9ECD3F4FFEDE8F7E2F6FFF2E9F5E3E2ED
          DDF2FCEFEFF7EDF3FAF3FDFFFCEFF0EEFCFCFCF5F2F4FBF7FCFAF6FBFEFAFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F4F4FDFFFCEBF3E9F7FFF3DAE6D24456
          39435936425D32486537486A3433561D40662A2C5216446D2F30591B365F223E
          662C3E652D3E662C3E662C3E67293E67293E68273E6827456F2E3B6524416A2C
          3F682A345D20355D2341692F4C703A415E30486338415C31496439425C344B65
          3D3B542E334C262B4320566E4CD7EECEEAFFE1E9FFE2E4FADDE7FDE0EFFFEBE0
          F0DEECFCEBF4FFF0E8F4E0DCE9D3E8F4DEF5FFECF5FFEEF8FFF2DBE6D6EFFFEB
          283E22536E47416132395E2650763A41692F547C4231571D3659214E6D3A3F58
          2CF0FFE2D9E6D0F8FFF5F8FDFBFBFDFEFBFCFFFBFDFEFBFDFDF9FFFAF9FFFAFF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8
          FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFEFEFAFFFEFCFEFEFDFFFFFFFEFFFEFDFFFFFDFF
          FFFEFEFFFFFEE2E3DFFBFEF5EDF4E7F7FEEFF4FFEBF8FFEF324629415C314F6E
          3B395C24476D33527B3E2D58194573312D5D1B3968293968293B672A3D672A3E
          672A40662A42672940672940692B416A2D446D30375F25375C244468323F632D
          3559254464333959284161304262313F5C2E415E304A6739405D30536E472841
          1F405737DDF4D4E4F7DCF2FFECF0FFE9EDF9E7E9F2E5F4FAEFF3F5EFFFFFFEFA
          F8F8FEFBFDFDF8FAFBF8FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFDEAEF
          EDF2F9F2F0F9ECF5FFED4C5E414A613B4964384463304F723A466C30436D2C3B
          652449743346722F3F6A293D68293D672A3D672A3D68293E67293E68273E6827
          3E6827497332355F1E3A63254C7537416B2E3660233C66293C642A4769334060
          2A47673143632D4C6B383F5D2C4A6739516E40577447334F2457724A3E593143
          5E374A653E3F5A33314B27EAFFE3EFFFE8E6FBDBE5FAD9F4FFE5EDFEDDE4F4D5
          F3FFE7E0EDD7F1FFEADBEED5435A3A4561364A6C36365D1F355F1E446D304068
          2E395F234F72393D5D263B5525E8FDD7F7FFEDF8FFF4F8FDFBF8FCFDF9FCFFF9
          FDFEF9FEFDF9FFF9F8FFF8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7F9FDF2FE
          FFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFEFFFAFEFFFCFEFF
          FCFEFFFFFEFFFFFFFFFFFEFEFFFEFDEDECE8FFFFFBF6F6F0F5F8EFFFFFF8E2E9
          DCEDF6E9F2FEEAE4FBDB36542B38562B3F63342E54204670393C672E3B692E39
          672C39672C3B672A3B672A3E67293E68274268264069263D69263C6825467130
          4772333D672A3E682B426A303F672D486F37355C2442672F4E733B32571F3E63
          2B4C6F37385C26385B29446538415F344B663E526D46E7FFDDEDFFE4ECFCE4F8
          FFF0E5EFDFF5FBF0F9FBF5FBFAF6FFFFFEFFFAFBF3F1F1FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFFFFF2F4F5FBFFFFE9EFEAF0FAEEE4F3DE3A4E31546B4539562939
          5A273E642A3E67293B66253C68252E5D1937662132611D3D68273D68273D6829
          3D68273E68273E68273E68273E68273D6726376120365F21456E30446E31406A
          2D456F32386225365C20476D31577B3F2E54183B5E253B61274D7038375B254E
          703A385C2850703F3D5F303B5B2C44653848673A4D6C3F39572E3A552D375226
          405C2E3B5527233A0E657851E4F8D5F2FFE5EAFEE1E9FFE0E8FFDC2B4B1C456B
          3156823D3A66212D561840682E486E323E62264A6B3244612FE9FED7ECFDE2F7
          FFF3F7FCFAF8FBFFF8FBFFF8FBFFF8FDFCF8FFF8F8FFF8FFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFDFDF7F9FDF2FEFFFAFAFFFBFAFFFEF8FEFDF8FDFCFBFEFCFEFFFB
          FFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFFBFCFFFAFDFFFCFDFFFCFEFFFEFDFFFFFEFEFFFEFDFFFFFBF4F1EDFFFD
          F8F4F1ECFBFBF5FBFBF5FCFEF8F8FAF4F6FEF3EEFFEAE4FDE14A65443E5F3A3D
          5F363B6234325B28406C3739662E39662D3B672C3B68293E68273E6A25426A23
          406A233C6A2244732E3766223766223E6C2A32601E376223467132396425345F
          20456E303E67293A6325335C1E466D2F40692B497137466D364F733F4E713F33
          532439552A546B45E8FADBEEFDE2CAD6C0FBFFF3EEF2E7EEEFE6FAFAF4FFFFFC
          FEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF4F5F9E6EAEBFAFFFEF8FFF7E5
          F3E153664B4D63403D5A2D476835476D333C6527446F2E44702D38672245742F
          4476303B6A263B6A263D68273D69263E69263E69263E68273E6827416B2A4C76
          353E67293C65273A65263762233F6B2E3B662746712E3D6825416A27426D2A45
          6D2C3760223D6426446D3041672D3960283C6129436A33446832496F3B395D29
          34582441613046673443632C4262294A672F47642D496131576E424B603A283E
          1B3A522F5B774C4364312B52144B782F39671E426D2E325A203F652944682C39
          5B1F476530566C42E5F7DAF7FFF3F7FCFAF7FAFEF8FBFFF8FBFFF8FDFCF8FFF8
          F8FFF8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7FBFCF2FEFFFAFCFFFBFAFFFE
          F8FEFDF8FDFCFBFEFCFEFFFBFFFFFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFBFCFFFBFCFFFCFDFFFEFDFFFEFEFEFFFE
          FEFFFEFDFFFFFBFFFFFCFCFBF7FFFDF9F9F8F4FFFFFBFFFEFAFDFEFCFBFFF9ED
          F9EDEDFFEEE7FBE8E7FFE7364F334A6A472E512944693B3B64313B662D3B672A
          3D68273D69263E6A23406B223E6B2234641C3D6F293665213E6D29406B2A3964
          23426D2C3762213F6A293A6524406B2A244F0E527D3A37621F3E69263965223C
          6726366122355F22375F254368303D5E2B456234445F34475D3A546647E6F3DB
          F8FFF1F9FFF3F8FEF3FDFFF9FBFCF8FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFB
          FCFFEBEEF2EBF0EFFAFFFBEDF8E8304028596E4D3C572C4263304A7036335C1E
          406C293763203A69243E6D293867233B6A263D69263D68273D68273E68273E67
          293E67293E6827376120446E2D345E1D3C6625466F313A65263F692C3D672A3C
          6724406C2736621D46712E3A652247722F37621F3661203E692A436E2F305A1D
          3F682E345D23406930396229476E36395E2640632A4B6F334B6D303F61244262
          2746652E3B58263955275773483854294060313D622A4A743335611A406E2639
          62244B7339466C3032581C54763A3A5A233A5628EDFFE0F3FFECF4FFF3F6FDF8
          F7FEFBF8FDFBF8FDFBF8FFF8FAFEF8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7
          FDFEF4FDFFF9FCFFFBF9FEFDF9FEFDFAFCFCFAFDFBFDFEFAFFFFFBFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFEF7FAF8F9FFFAF6FDF8F5FFF8F8FFF8E3F6E352694D
          425E3A3C5D30406730446D2F3C682543702B3E6C2434621A416F273665213D6C
          28416C2B35601F446D2F30591B4770323760223D6628487231325C1B406B2837
          641F3C6A22406E2637671F3B6A253B6A263B6A263D69263D69263E682740662A
          42652C3E5D2A4D683C38502DEDFFE4E9F8E3ECF9E9F3FDF1ECF3EEFAFFFEDBDF
          E0FDFFFFF9FBFCFDFDFDFFFFFFFFFDFCFEFCFBFFFEFDFFFEFDFEFEFEFDFDFDFB
          FDFEF9FDFEF9FDFEF8FBFFF9F9FFEEEFF3FDFFFFF6FBF9F3FDF1F3FFED3E5235
          435D3544633044682C3D652446712E3B672431601C416F2D346220396423446E
          2D416A2C37602340682E3F672D355D234871333E68273E692640692640692640
          68273E672A3E662C3E662C4067294068273E68273E69263D69263D69263D6926
          3B6A263B6A263B6A263B69273B68293B672A3B672C3B672C3D662C3E672A4066
          2A40672940672940672940662A40662C40662C40652D40642E40642E40642E3E
          662C3E672A3E67293E672940662C40652D40662C40662A40662A40662C40652D
          426231426037E8FFDFE5FAE1F0FEECF7FFF4F7FFF5EDF4EDF9FDF8FEFFFDFAFB
          F9FFFFFFFDFDFDF9F8FAFBFAFCFEFDFFF3F2F4FEFDFFFEFDFFFEFDFFFFFFFFFF
          FFFFFFFFFEFFFFFEFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFD
          FBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFCFFFEFFF7F9FA
          E8EDECEBF0EEF8FFF9C7D8C3E7FDE04C683D446832476E3039642143702B4575
          2D3C6C243F6E2942712D42702E3C6726416C2D4970323D6327486E3242682C45
          6C2E476E303E662545702D45712C3A682047752C45752D3B6A253B6A253B6A25
          3B6B233D6B233D6B233E6A254068274D7135486A343D5A2D48623E394F33EEFF
          ECDAECDBF0FEF2E4EEE8FAFFFEE4E9E8E6E8E8FDFEFCFFFFFEF7F5F4FFFFFEFF
          FEFDFFFEFDFEFEFEFBFDFDFBFDFEF9FDFEF8FDFFF9FCFFFAFAFFF8F7FBFAFBFF
          F1F6F5EBF2EBF5FFF23B4C315E785043602E466A2E3C62203D66223C67243D68
          274B7637406B2C477130416B2A39622540682E416830416830446C323760233E
          68273E6A2540692540692540682740672940662C40662C4067294068273E6827
          3E69263D69263D6A253D6A253B6A253B6A25396B25396A263969273968293968
          2A3B672A3B672A3E67293E67293E67293E67293E67293E67293E67293E67293E
          67293E67293E672A3E672A3E672A3E672A3E672A3E662C42652D42652D40662C
          40662C3E672A3E672A3E662C3E652D395C2A41623549633FE9FFE2F1FFEBF9FF
          F4F6FEF3FCFFFAEEEFEBF1F2F0F9FAF8FFFFFFFCFCFCF3F2F4F8F7F9FBFAFEFE
          FDFFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFEFFFFFCFEFFFDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFF
          FBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF1F1F1FCFCFCFDFFFFF5FAF9F5FAF8F1FCF2E0F0DEF0FFE93B562E3357
          234B71353E69263E6B263D6B233867223D6C2733621D386723335F1C3B66253F
          67263E6527416628375C1E3A5F213F66284068273C67243D6924305E163A681F
          34621A3B6A253B6A253D6A253D6A253D6B233D6B233E6A253E692622490B4D72
          3A4161303F5D344B64423A5135E3F9E1F1FFF1F3FFF3EEF7EDFBFFFBFDFFFBF6
          F7F3F2F3EFFAF8F7FFFDFCFFFEFEFFFEFEFEFDFFFCFEFFFBFDFEF9FDFEF8FDFE
          F9FCFFF3F3F9F9FAFEFCFDFFFBFFFFF2F9F2E6F3E357684D2A431D405D2C4A6E
          32456B2947702C45702D35601F3661223C6728396322365E1D395F234A70363E
          632B3C61294D7339365D1F406926406925406A23406A23406925406827406729
          4067293E68273E69263E69263E69263E69263D6A253D6A253D6B233D6B233B6A
          253B6A253B6A263B69273B68293B68293B68293E67293E68273E68273E68273E
          68273E68273E68273E68273E68273E68273E68273E68273E68273E68273E6827
          3E672942652C42652C40662C40662A3E672A3E672A3D662C3D662D456B372C4D
          204D6B424059374154394B5B44F0FCEAF8FFF4FBFFF7FEFFFAEFF0ECFAFBF9FF
          FFFEF9F9F9FAF9FBFEFDFFFEFDFFFEFDFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFAFAFAFAFCFDF6F8F8FBFFFEEDF6
          ECEDFBE9E0F6DA617C55345423496F35406A293E6B2638661E3665203C6B2642
          712C4978334C79343C6724456D2C466D2F50753742662A42662A507438486D2F
          456D2C3E66254B763348742F3F6C273D69263B6A263D69263D6A253D6A253D6A
          253E6A253E6926598140466C3240622C4363343F5D34445E3A3D553532482CEA
          FAE3F6FFF0EDF7E7EAF3E6EDF3E8FFFFFBF2F3EFFFFDFCFFFEFEFEFEFEFEFDFF
          FCFEFFFBFDFEF9FDFEF9FDFEF9FDFEF8F9FDF6F7FBF0F2F3F8FAFAFBFFFBF8FF
          F5EBFBE350664343602F43642B3B6020446D2A4E77343A6423355E214972354A
          7231466E2D476B2F43692F3D622A3E632B456B31456C2E406926406A23406B22
          406B22406A234069254068274068273E69263E69263E69263E69263E6A253E6A
          253E6A253D6A253E6A253D6A253D6A253D69263D68273B69273D68293D68293E
          68273E68273E68273E68273E68273E68273E69263E69263E69263E69263E6926
          3E6A253E69263E6A253E6A2540692642672942662A40662A40662A3E672A3D67
          2A3D662C3D662D355C283D61323A5B2F49663F455D3A4055355F715444513BD3
          DACDFFFFF9F0F2ECF7F8F4FEFFFBFDFEFCFEFEFEFDFCFEFEFDFFFEFDFFFFFEFF
          FFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFA
          FCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFCF8F8
          F8F7F9FAF1F3F3F8FDFBE9F1EAF8FFF5EBFEE5CAE2BF4E6E3F3F642C39622446
          722F426F2A3E6D283D6C2738661E32601844702B2B5613416928335A1C4B6E35
          4C6D34496A314B6C3336571E43672B2F5317466D2F335B1A3761203D68293D68
          293D68293D68273D69263D6A253E6A253E6A252E5714446B2D43692F44683230
          532151704348663B435E37516645EBFDE0E8F6DEF9FFEFF6FFF0EDF3E8E8ECE6
          FFFFFEFEFEFEFEFDFFFEFDFFFCFDFFFCFEFFFAFEFFF9FEFDF9FDFEF3F4F8F7F8
          FCF5F7F8FAFCFCF3F9F4DAE4D7E6F6DE435936516D3F4767303B5D20385D1D41
          6928436A2C3D6327476D31355A1C3D622445662D3B5E264D6F394E703A32551C
          42662A406926406A23406B22406B22406B22406A234069254069263E69263E69
          264069264069264069264069264069263E69264069263E69263E69263E68273E
          68273D68293E67293E67293E6729406729406729406729406827406827406926
          406926406925406925406925406A23406925406A23406A234069254267274267
          294067294067293E672A3D672A3D662C3B662D3B652E4C733F345829496A3D49
          673C324E233650284E61406A735FEBEFE3FCFFF5FEFFF8F7F9F3F7F8F4FCFDFB
          FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FF
          FFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF7F8F6F8F9F7FDFFFFF8FAFAFCFEFEE7EDE8ECF6E9DDEDD6F0
          FFE64F6C3F3E602A3D63274771303C69243B6A253C6B2647752D38661E4E7A35
          456F2E4F763835581F35551F3B5A273B5A273756233756235473404969335477
          3F3C5F27496F353E662C3D662C3E662C3D672A3E67293E68273E69263E692645
          6E2B3B6421446C2B3D632742682E2A4E183B5F294D6B3A3750243B5029EDFFDE
          E8F7DBE5F2DCF5FFEFF3FBF1F0F4EFFCFEFEFCFEFFFCFDFFFCFEFFFCFEFFFCFE
          FEFAFFFEFAFFFEF8FAFBFAFBFFF3F5F6F2F4F4EAF0EBF8FFF5FAFFF1E4F7D63A
          5327405E2952723946682B3A5E2241672B41642B3B5E2647682F4D6D364D6B36
          3F5E2B446231436332395B254D7037426729406925406A23406B22406B22406A
          234069254069263E69263E682740682740682740682740672940672942672942
          662A42662A42662A40662A40662A3E672A40662C40662C40662C40662C40662C
          40662A40662A4067294067294068274068274069264069264069254069254069
          25406A234269254467274267294267293E67293E672A3D672A3B672C3B672C37
          62293F6932436A36274D194A6E3A3D5D2C5D7B4A475F37424F37EEF3E4FFFFF7
          FBFFF4F4F7EEFAFCF6FEFFFBFBFCFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFA
          FFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFCFAFCFCFCF2F4F4FB
          FDFDF6FBF9F5FDF3F5FFEFE1F5D83F593143633242682E426B2D325E1B386723
          3A69243B68233E6B263963223C6527345921567744415E30435E324762374863
          385A754A3A552A3F5A2E405D2F43603240602F4063313E643040642E3E652D40
          662C3E67293E68273E69263863204D7934295411547F3C37612050793B365F21
          416529517039546E3E47603450653FECFEE1EFFCE6F6FFF3F1F8F1FAFFFDFCFE
          FEFCFEFFFCFEFFFCFEFFFCFEFEFCFEFEFCFEFEF5F7F8F5F6FAFBFDFEFDFFFFEB
          F0EEF0F8EED6E2CEEEFFE35A724A3754234A6833507138406128476A324D6D37
          4867344F6C3B3C582A2F481C425D323751293854295673452F501D42652C4267
          29406925406A23406A234069253E6A253E69263E67293E672940662A40662A42
          652C42652D42642E44642E44633044633044633042633042633040642E426330
          42633042633042633042633042642E42642E42652D42652D42652C42662A4267
          294267294267294267274267274268264268264467274267274267293E67293E
          672A3D672A3B672C39672C38652C416C3328531A4A733A345B234B71373D6329
          3C5928556347FEFFF3F6FBECF4F8ECF8FCF1FEFFF8FDFEFAFBFCF8FEFFFDFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFD
          F9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB
          FCF8FAFBF7FDFEFCF5F5F5FAFCFDFCFEFEEEF2ECF5FFEFEFFFE5435A34456234
          3E632B436C2F3B662542702E3A69252F5B184F7A39315A1C4469314B6C39E1FE
          D1E3FDD5EBFFE0EFFFE3E9FEDEE2F7D7506544455A393B533058704D39542D42
          603542613442623340633142642E40652D40662A3E6729436E2B345F1C436F2A
          2F5B1645712C3E6A2538641F416A273E602335551C4D6934496335415734F0FF
          E5E4F2E0F7FFF5F9FFFAFAFFFDFAFFFEFCFEFEFCFEFEFCFEFEFCFFFDFCFEFEFB
          FDFEECEEEFF5F7F8FBFDFDF2F7F5EFF6EFF5FFF0E8F6DEEBFFDC60784E344E1E
          43602E405D2B446330446032405B2F496139384F295A6E4BD9EECDEFFFE4E5FD
          DBE9FFDC4D693E44623142652D4267294069264069264069263E68273E68273E
          672A3E662C40652D42642E426330446231446134456035475F35455F37455F37
          4460354460354461344461344461344460354460354460354461344461344461
          3344613344623144633044642E44642E44642D44642D44652C44652C44662A44
          66294267294267293E672A3E672A3B672A3B672C39672C37642B3B682F426E33
          2F5B204F783B355E21496F334B6A37475637F7FDEAF1F6E7F9FEEFFAFEF3F5F8
          EFF6F8F2FFFFFCFEFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7
          FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFEFFFDFCFEF8FDFFF9FFFFFEFEFEFEFCFBFDF9FBFCFAFEF9
          FAFFF7ECF9E3E8FBDA435E333E5F2C3D6329416C2D245210447230376221426D
          2E446B333256224B6A3DE7FFDBE8FFDFEEFFE6F1FFEAF0FFEAF1FFEBF4FFEEE9
          F8E3F3FFEECEE1C8506447425A3837512D4B663F4664393D5A2C3A5A29476933
          3D632942692B3E662536611E4975304A783039671F4B79312E5A133F65235275
          35325217486631334E23526845E6F9E0F8FFF4F3FFF3F5FDF6EDF3EEF6FBF9F7
          FAF8FAFDFBFBFCFAFBFCFAFDFFFFFCFEFFFBFDFEFAFCFDF9FEFDF8FEF9F7FFF4
          F5FFEDEDFCE05368423B5127465F33445D314A653A374F274A603DECFEDFEFFF
          E4F2FFE8F0FFE9F0FFEAEEFFE9EAFFE4E6FFDD49643C395928395C244B6F333E
          65273960224770323B6427426931375E27496D39426233E6FFD6E6FFD8EBFFDE
          E4F9D8EDFFE2E7F9DCDAECCF576B4E475C3C435B39566E4C3C5432455C3C455C
          3C455C3C455D3B455D3B455D3A455D3A455E38506A423C572C415C31334E2255
          70443E5A2C4965374663313D5D264C70342F5317466E343C642A3763283A662B
          47753A36642937652A325E233A662B446C323A6228486E343E5C2B49573BFCFF
          EFFCFFF2FAFFF0FBFFF4FEFFF8E8EAE4FEFFFBFEFFFDFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFD
          FBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFDFCFEF8FDFFF9FEFFFD
          FEFDFFFCFBFFFBFAFEFCFCFCFCFFF8EDF8E4EEFFE3415B334C6C3B42672F416B
          2E3B66273E6C2A3964254B75382A511A50724345633A4B6341ECFFE6E8F7E2EB
          F8E8EBF5E9F1FBEFF7FFF5E3EDE1E5F2E4F9FFF4D5E3D1EDFFE7ECFFE342583B
          3D5533526B45446035526F4146673433561E4C7236517938335E1B26520D4674
          2C38661E4470294169222F531156783B5071384F6D3C3651263C5432EBFEE3DE
          EEDCF5FFF4ECF5EBF3FAF3ECF0EBEFF2F0F9FAF8FFFFFEFDFFFFFCFEFEFBFDFE
          FAFCFDF9FDFEF8FDFBF7FFF5F6FFF0F5FFEBD6E6C75566444F643E3D512E4F64
          43EDFFE0E9FBDEF2FFE9F4FFEEF6FFF0F5FFF2F4FEF2F2FFF1EFFFEDEAFFE62F
          47256480554E6E3D40632B40662C466C30345D203B63294269313C622E385829
          3C582DDAF3CDEBFFDFE3F4D9F6FFEDF4FFECEFFBE9FAFFF4DEECDAE4F3DEE5F7
          E0E9FBE4E9FCE3EEFFE9EEFFE9F0FFE9EEFFE9F0FFE8EEFFE8F0FFE6EEFFE6E9
          FBDEEAFFDFEDFFE0EDFFE14255343C522F3B4F2C3D552D3D5A284B6E364D7038
          2F561E4971374770363662273563283D6B30436F342854193B642B355C243F63
          2D3256204E693D39462CEDF3E2FBFFF1F6FAEEF0F4E9FEFFF8F2F3EFFEFFFBFE
          FFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFF
          FBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FEFFFDFBFEF5FDFFF7FFFEFDFFFCFEFDF9FFFDF9FFFEFBFDFDFEFAF6FFF0E0EF
          D4374E28375426456A32335D204B7637386624406B2C345D234C723E3E5F3238
          552E455B3EDFF0DBF8FFF7FAFFF9F9FFFAF7FCFAFBFFFEEDF2F0E3EAE5F6FDF6
          FAFFF9E0EBDBF1FDE9EEFDE8EBFBE34053382F4424435C36466237506E3D3153
          1D345A203D66284C763545702D2E5B1639651E446E27375E1A4E733334581C42
          652D5A7847345025516946EAFDE2DDEDD6F3FEEEF9FFF6F4F8F2F6FAF5FBFCFA
          FDFDFDFDFFFEFCFEFEFBFDFEFBFDFEFAFCFDFAFCFCF7FDF8F6FEF3E7F1E0EFFB
          E5F6FFE9546347435237E4F4DCF8FFEFEEFAE8F7FFF3F8FFF6FBFFF9F8FEF9F7
          FEFBF5FFF9F4FFF5F0FFEE4D6347344E2A2F4E21436431375C243E642A335B21
          4D753B3E652D385E2A4D6D3E3F5A32F1FFE7EFFFE7EEFAE6F8FFF2F3F9EEE7EC
          E3E8ECE6FAFFF8F5FFF3F7FFF6E7F4E6F5FFF4F1FEF0F1FEF0F3FDF0F1FEF0F3
          FEEEF1FEEEF3FFEDF1FFEDFAFFF2C8D7C2F6FFEEEAFAE3EBF8E2F8FFF0E9F7DF
          47593A4E693E3556233D5E2B355C253A6129345D233D692C4571343561244874
          39446D34375E2745683649693A436033465C396D7963F2F7E8FAFEF2FAFEF3EF
          F2E9FDFFF9F7F8F4FCFDFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFEFFFDFBFEF5FDFFF7FFFEFDFFFCFEFDF9FFFCF7
          FFFDF9FEFFFDFCF3F9EEF0FDE74F654254714431551F4670332B5819406E2C32
          5D1E4F793C395D274161324A653E4C6246F6FFF2F2FCF0EAF0EBF8FDFCF6FAFB
          F4F8F9FDFFFFFAFFFEF5F7F7F0F4EFFDFFF9F7FFF4EFF8EBF1FCECF7FFF1F1FF
          EA374B2E2A4220455F374360334C6D3A43683032581C345D1F4A7433416C293C
          6521416824446A284F74363155193659215A7A492744173E5633E1F5D8F3FFEC
          F1FCECF1F9EEFDFFFCFFFEFDFAFAFAFEFFFDFCFFFDFBFDFDFBFDFEFAFBFFFAFC
          FDF7FCFBF7FDF8F2FAEFF8FFF2E7F2DEF1FCE8F5FFEEEEFAE8FBFFF7EEF6EBFA
          FEF8FCFFFBFCFEFEFBFDFEF9FDFEF8FEFDF8FFFAF4FFF3EEFFE84C64424F6B40
          5979484266303D632930581E3F672D3C632B3A5E28537344445F37CEE3C3F2FF
          EAF7FFF1F8FDF4FFFFFCFEFFFDEFEFEFF7FAF8E8EEE9F7FEF9E9F1EAEDF5EEF7
          FFF8F7FFF8F8FFF8F7FFF8F8FFF6F7FFF6F8FFF5F7FFF5F3FBF0E4EEE1FAFFF6
          EBF5E8E6EFE2DBE6D6F8FFF4ECFCE5465E3B426134395B2C5D814D446B33355E
          24355F223561243C682B416A30355C25486B39415F343E59324B63413E4F34CE
          D6C5FFFFF7F0F4E9FEFFF8F8FAF4FDFEFAF8F9F7FEFEFEFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFA
          FCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFDFBFEF5FCFF
          F5FFFEFAFEFBFDFFF8FFFEF6FFFFF8FFFFFDFDF4F7EEF7FFEED1E4C347623754
          78443861272F5B1E3D6B293C6825406B2A33591F4D6E3B445F37354B2EE9F8E3
          EFF9EDE4EAE5FCFEFEFDFFFFF0F2F3F9F8FAFDFFFFF9F9F9FFFFFEFDFEFCEEEF
          EBFFFFFCFBFFF7D8DED3E7F1E1EEFAE6F2FFEA465D3D27411D3F5D32385B2951
          753F456D332F581B3F682A3C6423416A273F67264C7433436A2C2D53173C6228
          50723C4C693C546D47ECFEE1EAF7E1FBFFF7F1F5EFFFFFFFF4F4F4FEFFFDFCFF
          FDFCFEFEFBFDFEFAFBFFF9FAFEF9FBFCF9FBFBEAEEE9F9FEF5EFF5EAF8FFF2F9
          FFF4EDF5EBFBFFFAFAFEF9FCFDF9FDFEFCFDFCFEFAFBFFFAFBFFF8FDFCF7FEF9
          F4FFF3EBFEE5334B294562352B4C193C61294B71353C65273F682A3F682B446A
          30335421466136627554F2FFE8F4FBECFEFFFAEEECEBFCFAFAF9F6F8F7F6F8F0
          F2F2FBFFFFFBFFFEF5FAF8F8FEF9F8FEF9FAFEF9F8FEF9FAFEF9F8FEF9FAFEF9
          F8FEF9F5F9F4FBFFFBDDE1DBFBFFFBF4F8F2FBFFF9DBDFD9F5FFF04C62453E5B
          343A5B2F3557283E652E4770363B6528366023446E313D642C3B5E2CE8FFDBD3
          EBC9E2F5DAF2FFECF9FFF4F9FFF3FFFFF9EAECE6FCFDF9FAFBF7FFFFFEFDFDFD
          FEFDFFFEFDFFFEFDFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FF
          FFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFEFFFBFAFEF3FCFFF5FFFEFAFEFCFCFEF6FFFDF5FFFFF7FFFFFBFDFA
          FAF4F7FFECF0FFE3344F243C5D2A426B3138642738682645732B28560E4B7234
          456731365227506545F3FFECF6FFF3FDFFFBFBFEFCFDFCFEF6F5F7F8F7F9F6F6
          F6EEEEEEFFFFFFFCF9FBFDFAFCFBF9F9F4F5F3FFFFFCEFF4EBF4FDF0E7F3E1ED
          FFE8E3F9DC28421E47653A4767383A5E28395E263D662942692B4D7436355D1C
          3159184E77344E76353E65273B6125466832445F33E6FCD9E6F4DCEDF7E7EDEF
          E9EEECECFEFCFCFEFFFDFCFFFDFCFEFEFBFCFFFAFAFFF9F9FFF9F9FFF9FAFEF6
          F8F8F7FBF6FDFFFBF3F7F1EEF2EDF5F8F6F0F2F3FFFEFFFDFBFAFFFDFCFFFCFE
          FBFAFEF9FAFEF8FCFDF8FEF9F3FFF2F6FFEE3C5431536E42496B3543662D3D64
          263E68273964213D6726446B2D385A244A66383B4F2CF0FDE5F9FFF1FAFAF4FB
          F6F7FFFEFFFFFAFFFFFBFFFAF9FDF1F3F4FBFDFDF9FBFBF6F9F7F6F9F7F8F9F7
          F6F9F7F8F9F7F6F9F7F8F9F7F6F9F7F9FAF8FDFFFEFCFDFBDCE0DBF6F7F5F9FC
          FAFAFBF9DCE4DAE3F8DF405B3955744D395A2D3C622E396127456F323A652642
          6B2E3559233E5D30D9F3CFF1FFEBEBF9E7F7FFF6E7EEE7F4F8F2FFFFFBF8F9F5
          FDFEFCF7F8F6FFFFFFFEFDFFF7F6F8FEFDFFFEFDFFFFFEFFFFFFFFFFFFFFFFFF
          FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFA
          FFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFBFAFEF3FBFFF4FFFEFAFEFCFCFE
          F6FFFEF4FFFFF6FFFFFBFDFFFFFBE0E8D7F0FFE3546E463E5E2D396028447033
          3364203260175382362D56134B6E35476436495F3CE4F4DCEBF6E6FBFFF7E8EC
          E7F3F3F3FAF8F8FFFDFDFFFFFFF7F5F5FFFEFEFFFCFFF6EFF6FFFBFFEEEBEDFD
          FDFDFBFEFCEDF4EDF1FBEEE4F2E0E2F5DCE6FEDE3350293A582D3C5E2F4A6E3A
          40652D3D652B416A2D3D66284974313F6B26315D18436E2B446C2B34571E3F5C
          2B3F572FF0FFE3F7FFEEF1F4EBFFFFFEDFDDDDFEFFFBFCFFFBFCFEFEFBFCFFFA
          FAFFF9F8FFF9F8FFF9F9FFE4E6E7EBEDEDF7FAF8FCFFFDFEFEFEFEFDFFF9F7FD
          F0EFF3FEFCFCFFFDFCFFFDFFFDFCFEFAFBFFF9FDFEF8FEF9F3FFF2D4E5CA4F68
          422C49184F72393A5F21345D1A48742F436F2A3A66214069264C6F364B68364F
          643DF0FEE2FFFFF4F5F6EDFEFAF9FFFCFEF4EEF3FCF8FDF6F5F9EDEFF0F9FBFB
          FBFDFDFEFFFDFEFFFDFFFEFDFEFFFDFFFEFDFEFFFDFFFEFEFEFEFEFCFAFAE6E6
          E6F5F3F3FAFBF9FCFAFAEBEBEBF9F7F7F3FAF3ECFFEA3C56382D4C27496A3E3E
          6430335B214C75373E6729476D31355923415D32576E4EE0EEDCE1EAE0FBFFFF
          EFF1F2F6F7F5FDFEFCFFFFFEFFFFFFF9F9F9FBFAFCF8F7F9F5F4F8FEFDFFFEFD
          FFFEFDFFFFFFFFFFFFFFFFFFFEFFFFFCFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF5FFFFF9FCFFFBFBFDFD
          F9FEFDFAFDFBFAFDFBFFFDFCFFFEFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFBFA
          FEF3FBFFF3FEFEF8FFFCFBFFF8FDFEF6FDFFF7FEFFFAFFF8F7F3F1F5E9F4FFE9
          E5FBD84966394A6E38305A1D3C6B27416F26406D2438641F496F33415F2E4660
          38405235F4FFECF6FEF3EDF1ECFFFFFEFDFBFBF4F2F2FFFEFEFDFBFAFFFEFEFF
          FAFFFFF9FEFFFBFFFFFCFFF7F6F8FBFBFBFBFEFCFBFFFBF5FFF3E8F6E4EEFFE8
          E5FADA5E7653405A32405D303F5F2E486C36355D23456E313A64233A66214A76
          2F3D692445702D486D2F40602A435E333D502FF7FFEEE8EEE3FDFEFAFCFDFBFD
          FEFAFCFFFBFCFEFEFBFDFEFAFBFFF9F9FFF9F9FFFAFAFFFDFEFFF6F8F9F7F9FA
          FDFFFFF6F6F6F0EFF1FBFAFCFFFEFFFFFDFCFFFEFDFFFFFFFEFEFEFEFEFEFCFF
          FDF9FFF9F6FFF1F2FFEAE4FAD747623642622C4065274F7835406C25305E153B
          6720446F2C3A5F2141612B3D552BEFFFDFF1F7E4FFFFF6F4F0EFFFFCFEEFE8EF
          FFFAFFF8F4F9FBFAFCFCFCFCF3F4F2FDFEFCFFFDFCFFFDFCFFFDFCFFFDFCFFFD
          FCFFFDFDFFFDFDFEFCFCFCFAFAF7F5F5FFFFFFFAF8F8FFFFFFFFFCFEFDFFFCF7
          FFF4E1F6DD3B533345633A3B5E2C436B313E67293A6423436C2E3E632B476437
          394E2EF5FFEFF8FFF8E4E5E9F7F5FBFFFFFFF2F3F1F1F1F1FFFFFFFFFFFFF4F3
          F5F0EFF1FEFDFFFEFDFFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFDF8
          FDFEF5FFFFFAFCFFFBFBFEFCF9FFFAFBFFFAFBFFFAFFFEFEFFFDFFFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFDF9FDF7F9FE
          F5F9FDF7FAFEF8FEFFFBFFFFFEFFFFFFFFFEFEFBF8FAF1EEF0FBF8FAF7F4F6FF
          FEFFFCFBFDFEFEFEF7F8F4FEFFF7F6FAEEFDFEF4FBF8F3F8F3F2FFFEFFFFF8FB
          FFF9FCFFF8FBFCFBF7F8FFF2EFFDE5455C36446231345A2046702F3C67244873
          303C6625476D313B5D27466336425736F1FFE9F5FFF2F8FFF8FBFDFDFEFDFFFF
          FCFEFFFDFDFFFDFCFFFEFDFFFEFDFFFEFEFFFEFEFEFEFEFEFDFFFEFDFFFEFEFE
          FCFFFDF7FBF5F9FFF4F7FFF1F7FFEDE1EED446553543533151673D4B6938466B
          33325A204A7335406C293966213E6C2444712C46702F395E264363344D664037
          4A31F6FFF1F5FDF3F9FDF8FCFFFBF3F4F2FFFFFEF7F7F7F4F3F5FFFEFFF7F6FA
          FBFAFEFEFCFFF7F6FAF3F2F4F4F4F4F8FCF7EFF3EDFCFFF8F2F7EEFBFFFAE7EA
          E8FAFEF9FCFDF9DFE1DBFFFFF9EFF5EAF5FCEDF3FEEAF6FFEA4D63404662343E
          6129436E2B3F6D243263173B69213B6724416A2C42652D435F314F643EECF6DF
          FDFFF3FEFDF9FFFAFCFFF8FFFFF8FFFDF9FEFDFDFDFEFFFDFFFFFCFFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFCEDF3E8F2FEEA415237455D3A49693A375E26416C2B
          3965223864214871344566333E552FF8FFEFF5FAF1E9E6E8FFFCFFFFFFFFFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFFFBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFF
          FAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFEFFFDFDFFF9FBFFF7FAFEF8FBFFF9FDFEFAFEFFFDFFFDFDFFFDFDEA
          E7E9FFFEFFF4F1F3F9F9F9E7E7E7F2F4F4FDFDFDF3F7F2F8FDF4DDE1D6F5F6ED
          FFFFFBFBF6F3F6F1F0FFF6F9F7F0F5FEF7FCFEF9FAFFFFFBEAF4E3394E2D506B
          3F54743D3B62243C66253E6827335C1E446D303F612B4562343E5633E3F6DBF3
          FFF0F7FFF8FBFDFDFCFEFFFFFCFEFFFDFDFFFDFCFFFFFBFFFFFBFEFFFBFEFFFD
          FEFFFDFEFDFFFEFDFFFEFDFFFEFEFEFEFFFDFCFEF8F4F8EDF5FBEAE2E9D4F3FC
          E2343D2241512F3451244569354F763E2A53163A652444712C3A6A223D6A2535
          5F1E456D33496938425D35455B3EEAFCE5F5FFF2F2FAF0F9FDF8ECEDEBF4F5F3
          F8F9F7FDFDFDFFFFFFF5F4F6FFFEFFF0EFF1F7F9FAF5F7F7FCFFFBFDFFF9FBFF
          F5EBF3E2F5FFEEE1EBDEFAFFF8F7FFF3E5ECDDFBFFF3F4F9EAFCFFF2FDFFF5EC
          F6E5EDFAE42E4023435D354A6B383862214C7A313D6E223A69243664223C6527
          395F253C59283F542DECFADEE6EEDDFCFEF8FDFAFCFFF8FFFFF8FFFEFAFFFFFD
          FDFEFFFBFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF9F0F8E74C5A42
          394E2D345326537A42345F1E41702B43702B3B652440622C536D45E5F3DBE7EB
          E0FFFEFFFCF6FBFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFDF8FDFEF5FFFFFBFCFF
          FBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFFFDFDFEFCFDFEFCFDFEFCFD
          FDFDFDFDFDFCFCFCFCFCFCFFFFFFEDEFEFE0E0E0FAFDFBFDFFFEF4FAF5F0F4EF
          FBFFFCE3EAE3F2F9F2FBFFFAF0F1EDF9F7F6FFFEFFFFFDFFEFE8EDF5EEF3EDEB
          EBE7EBE5F5FFEF62755439542836561F385F213E6827406B2A3D66284871343A
          5C26405D2F506943F5FFEDF2FFEFF6FEF7FBFDFDFCFEFFFFFDFDFFFDFDFFFDFC
          FFFFFBFFFFFBFEFFFBFEFFFDFEFFFDFEFDFFFEFDFFFEFDFFFEFEFEFEFFFDF0F1
          EDE4E7DEFEFFF4EFF5E2E2EAD3F4FDE34C5B3B5874493659273158214C743A47
          72333E6A273C692434611C4873303F682B40612E4763383F5735495C41F1FDEB
          F7FFF3FCFFFAFCFDF9FFFFFCF8F9F5F7F8F6F5F6F4EDEFEFFDFFFEF0F3F1F7FD
          F8FBFFF9D1D9CEF5FFEFEEFBE5404D35556448495B3E36482B516044F4FFE6F5
          FFE8F6FFE9E3ECD7EAF3DFF1FBEAF5FFED48593E455E383757263C6528396621
          3D6B223B6A253765233E67293E642A466433445C34F3FFE6EFF7E6FCFEF8FDFB
          FBFDF9FEFDF9FFFEFAFFFFFDFDFEFFFBFEFFFBFFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEEBEEE5F9FFF1EFFCE6566B4A5A774A3458222A53153C682534611C315B
          1A4E703A3F593146543CFCFFF7E3E1E1F4EEF3FFFFFFFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFF
          FBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFFFFFDFFFE
          FDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFE
          FBFDFEFBFDFEFBFDFCFBFDFDFCFEFDFCFEFDFDFDFAFDFBF4F7F5EBF1ECFAFFFA
          DEE5DEEEF6ECF2FBF1E7F1E5EBF4EAF1FCF4EFF6F1DEE4DFF0F3F1FBFCFAF5F3
          F3F9F3F8FFFCFFFFFDFFFAF8F8F9FDF7F4FFEEE9FBDC3954284969334A6E323F
          682A426D2C446D2F4770333A5C26406031516A44CEE2C5F2FFEEF6FFF5F9FEFC
          FCFEFFFDFDFDFFFDFCFFFDFCFFFFFBFEFFFBFEFFFBFEFFFDFEFFFDFEFDFFFEFD
          FFFEFDFFFEFDFFF1F1F1F6F7F5FFFFFBD5D9CEF3F8E9FAFFEDF1F8E3DEECD034
          4D27496A3D456836284F18376023416C2B3C692449763137621F3B642641642C
          476436556E483C5131E1F1D9F7FFF0EAEFE6FCFDF9FEFFFBF4F5F1F9FAF6FDFF
          FCF7FBF6F3FAF3FBFFF9F4FEF1EAF6E44B5B4448593E4E60434C5F3E3F542E47
          60344A6436485F3341542D374924F1FFE1F4FFE7F6FFECEDF7E6F4FFECECFCE4
          49613F537245355B213964213D6B2339682339682440692B42682E4E6D3A4E66
          3CCCDCBDFBFFF2FBFEF5FDFBFBFDF9FEFEFAFFFEFBFDFFFDFDFEFFFBFEFFFBFF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6F9F0FDFFF7ECF9E3485D3D3652275074
          3E37602344702D497532436D2C4C6E384A653A3C4B30EEF5E8FAF8F7FFFFFFFF
          FFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFB
          FFF9FBFFFAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFFFDFFFCF5FCFDF5FFFEF7FEFDF9FEFDFCFFFEFEFEFCFFFD
          FBFFF9EFF7EDF6FFF4DDE7DAF3FFF0EFFDEBEFFDEBE4F5E0F6FFF4EBF9EDF6FF
          FBE6F1E9F8FFF9F8FEF9FCFFFDF9F9F9ECE9EBEBE8EAFEFEFEE1E5DFDCE8D6F0
          FFE3445C324E6B3932551C3E67293964253B64263D662942652D49693838522A
          667A5DF1FFEDF6FFF5F9FEFCFCFEFEFEFEFEFDFEFCFFFDFCFFFFFBFEFFFBFEFF
          FBFEFFFDFEFFFDFEFDFFFEFDFFFEFDFFFEFDFFFFFEFFF4F4F4F7F8F4FDFFF7E5
          E9DEFBFFF1F8FEEDF9FFEFE8FFDF2D4A233D5B30527543416830376022487431
          35621D3D69244B7534476B2F3D5D273F5A2E546B454B5E3DF0FEE6EEF5E8F8FA
          F4F8FAF4F9FBF5FCFFFAFBFFF9F1F9EFE3EDE0EFFBE9E5F5DD2D4124556A4949
          623C3D572F5772473E5B2A537539406323436328536F3A3E55284B5D38EEFCE0
          F2FEE8F6FFEFEEFAE8F2FFEB465D3D2E4A1F51753F365F21406D283867233D6C
          283D66283D632943622F425A306F8261EFFBE5FBFFF4FBFCFAFEFBFDFEFAFFFF
          FCFEFFFDFCFEFFFBFEFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBE3EA
          DDEEF9E547593C4F6A42375B2750783E3E692836621F386123355820425D314E
          6043F8FFF1F1F3EDEEEFEDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFDF8FDFEF5FF
          FFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFFFAF2FCFCF2FEFDF5FF
          FDF9FFFFFCFEFDFEFCFBFFF7F8FFF4F2FEECF6FFF0F1FFE9EDFFE5EAFDE22D43
          264E6447475E42475C46E3F5E4EFFFEED7E4D4F3FDF0F0F8EEF3F7F1FDFFFCFA
          FDFBFCFFFBECF4EAF6FFF0D7E9CC3F572F4E68384868313F682B3B6627416A2C
          3C65283F642C4A6B3838532B3D5434EFFFEBF5FFF3F9FFFAFCFEFEFEFEFEFDFD
          FDFFFDFCFFFFFBFEFFFBFEFFFBFEFFFDFEFFFDFEFDFFFEFDFFFEFDFFFEFDFFF8
          F7F9F7F6F8F8F9F7F6F7F3FFFFFBF8FBF2F6FAEFF0FAEAF4FFEEE0F8D84B6541
          325124456935456D33335D1C3C6924436F2A3E6926416928486B3242612E4D68
          3C314921EEFEDFF9FFF0FAFDF4FBFEF5FDFFF9EDF1EBE1E9DFF3FDF0F6FFF0F1
          FFE7435837536D454562353D5B2A43643133542151743B39601C3D651D517533
          39591E4F6A38374C254E5D41DBE7D1F4FFEFDEE8DBD7E5D35E74583550283D5E
          2B4B72343E69263D692642702E3F682A3E642842622C3D582C394D2AEBF9E1F9
          FFF3FBFCF8FCFCFCFEFBFDFFFDFDFFFDFCFEFFFBFEFFFBFFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEE3E5DFFDFFF8F7FFF0E8F9DE4560393D602E264D15406B2C3F
          6A294C753750733B456034485B3AF1FEE8EFF5EAFFFFFBFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFF
          FFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FFFDFFFBF2FCFCF3FDFDF6FDFDFAFCFEFCFBFAFFF6F6FFF0F3FFEAEEFFE6D9F0
          D0455D3A4A653E3F5A324661394B663E426037395432506B4A2E462651674AEF
          FFE7EFFFE8F1FDEBD9E2D5F9FFF7D3DBD1F7FFF3DEEAD6E2F3D84E64413D562A
          43632D41692F3C692A4A753640692C3A60264567314A663B4F6745EEFFE9F5FF
          F2F9FFFAFCFFFDFEFEFEFDFDFDFFFDFCFFFEFAFEFFFBFEFFFBFEFFFDFEFFFDFE
          FDFFFEFDFFFEFDFFFEFDFFE7E6EAFFFEFFE9E8EAFAFAFAFCFDFBFDFEFAF7F9F3
          F9FFF4E3F1DFE1F6DD3E55353D58314363344368303B6426446F2C3C68233F6B
          26426B283C612346672E415E2C4C66384E633DEAF6E0EFF6E9F5FBF0FBFFF6E5
          EDE3E6F0E3F5FFF1D4E7CC4F67443E5B2E5473403B5E263C62284E74383E672A
          325B1D4D793239641B294F0D4A6C30445E2E546943425136FAFFF4D3DDD1FAFF
          F8F3FFF0F1FFEB47603A3F5F2E43692D4A75323E692843712F416A2C43692D4B
          6E36456133415630F3FFE7F7FFF1FAFEF8FCFCFCFDFCFEFFFDFDFFFEFDFFFFFB
          FFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFDF9F0F6EBEFF9E9E9F9E14F
          674439592A466A343C6528446E2D365F213C5F273653254F65424D5B43F2FCEC
          F9FEF5FFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFA
          F9FFFAFBFFF9FBFFFAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFFFDFFFDF5FCFEF6FDFEF9FBFEFCFBFCFFF5F8FF
          EFF1FFE5EDFFDF445D3755714648653736562542633048693635562343643151
          74423053215474453D5A2D455F373E5431EEFFE3F4FFEBEDF8E8F8FFF3E0EBDB
          EFFBE7EAFBE0EEFFE0455D3543613041692F315E1F416C2D3E692A3E64284367
          31486538435B38EEFFE8F3FFF0F8FFF9FAFFFDFCFEFEFDFDFDFFFDFCFFFDFCFE
          FFFBFEFFFBFEFFFDFEFFFDFEFEFEFEFDFFFEFDFFFEFDFFF9F8FCE3E2E6FCFBFD
          FCFBFDFBFBFBFBFCFAFEFFFDF0F4EEEEF8ECE5F5E3EBFEE5445C3A3652274A6B
          383C622836601F416D2844702B436C283D6623426729406128405E29475D33F8
          FFEBFAFFF2F6FDF0F6FFF2F1FBEFF8FFF5CBDDC64C6343435F34385A243C6024
          48702F3B65243B66253C6728487332335E1B416B2A466A2E42622C476237495B
          3C4E5A46E9F3E7F2FAF3F7FFF8E8F5E7F0FFEB48603D42602F476B2F37621F3A
          65243F6A293B64263F65294C6F37405E2D506840EDFFE2F6FFF0F8FFF6FAFDFB
          FDFDFDFFFDFDFFFEFDFFFFFBFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9
          FAF6F6FBF2F8FFF4F2FFEB39512F3E5A2F4D713D2F571D426B2D2D541654773F
          456332415832435538F3FFEBF0F9ECFDFFFBFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFDF8
          FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFFFFFDFFFEFDFFFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFEFEF5EFF4FFF9
          FCF1EEEAF8F9EFFDFFF2E9F7DBF0FFDF445F334B6A3740632B45682F41672B36
          5C203F652941672D43692D3B62243D65243F64263E602442612A314B1B5D754D
          EBFDDEEDFDE6ECF8E4F5FFEFF2FEEAE9F9E1EAFCDF485B3A4D683D3E652D3B68
          293D68293D682940662A40652D446133455E38EAFDE2EEFCEAE8F1E7ECF2EDF3
          F6F4F7F9F9FFFFFEFFFFFEFEFFFBFEFFFBFEFFFDFEFFFDFEFEFEFEFEFEFEFDFF
          FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFEFEFEFEFEFCFFFDF9FFF9ECF6
          EAF0FEEC485B403F5A3349693A4B70383B62243E69263E6A2540692540692542
          672744662944652C476131485839F6FFEDE9F3E3F8FFF2F1FBEEE8F6E4EFFFE7
          3D5630375524496D31456E2B39651E44702B4874314974333A64273A6129456B
          373454253A552D4F664634442DF2FCF0EFF6EFFAFFFDEEF5F0F2FEF2EFFFEB3B
          53303D5B2A4B6F333E67243963223C67263E68273B622440632A31501D5E794E
          E9FEDEF3FFEBEDF5EAEFF3EEF9FCFAFCFDFBF9FAF8F7F6F2FEFDF9FFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFEFEFEFCFDFBF8FCF6F1F9EEEBF7E3EFFFE63F5A323F5F2E
          486D353D6327375D213E6128547340435E33374A29EFFFE5E0ECDAFAFEF8FDFE
          FCFEFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFFFBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFF
          FAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFEFEFEFFFEFEFFFEFFD2CFCBFFFFF6F9FFF0EAF8DC3D522C415D2F44642E35
          591D41692847702D3D66234B73323F6726385F21446C2B416B24487028416921
          395E1A4C6E2E44632C334D1F586E4BF0FFE6E2F2DBDBE7D5F0FCEAF4FFEDF6FF
          EE3E50333E57313E652E3B68293D68293D68273E672940662C426231445F3745
          5B3EE6F5E0F8FFF6EBF1ECFDFFFEFCFEFEEFF0EEF2F3F1FEFFFBFEFFFBFEFFFD
          FFFFFEFFFFFFFEFEFEFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
          FFFEFDFFFEFEFEF2F4F4FBFFFBEFF9EDEDFDE63249293B572C3F602D365C203E
          68273E6A2540692540692542682642672744662945632E50613FF2FFE7E9F4E0
          E8F4E2E1EEDEEDFEE9E4FADD3B552D4E6E374C7131436E253E6C203A661F325E
          1B3762233A622B3255295675503F5A38E3FADEF1FFEDE2EFE1F5FCF5FAFFFEEA
          EEEFF7FCFAF6FFF5E8F7E2485D3C516D3F3052163D6524426C2B467130436D2C
          3A63254C723847693336522758704EE8F8E1F6FFF3FAFFFAFCFFFDF7F8F6FDFE
          FCFCFBF7F6F5F1FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFBFCFAFFFFFCF9FEF5
          F8FFF2EAFDE23D5630415E30486A344D733740662A45682F476731385327576E
          48D4E9C8F3FFEAF9FEF5FDFEFCFEFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFDF8FDFEF5FFFFFBFCFF
          FBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFFFDFAF9F5FDFEF5F1F8E9E6F3DB57
          6846546D413F5F2941682A4B74313D692239651E2F5B16426B283E6625466B2D
          4065253C641C4A71264B72273F641E50723158783F445E2E3E552F445639EDFD
          E6F0FEECF3FFEFEDF9E7DCE9D34E5D424159363E64303968293B68293D68273E
          672940662C4263304460353F5636F3FFECF5FFF2F7FEF7F6F9F7F0F2F2FDFDFD
          FFFFFEFEFFFBFFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFEFEFEFEFDFFFEFD
          FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFBFAFCFDFFFEF0F7F0E1EDDBEA
          FDE23C552F4F6F3E466B333E67293E69263E6A253E6A25406926406827426729
          44642D495E37EAF9DDF4FFEAF7FFF1F1FFEDEFFFEAE2F9D9516C413F6027375E
          1A376217416F233F6B24426C2B426931476B3D556E52E4F9E3E7FAE7F5FFF4D3
          DFD3F2FAF3FBFFFFF9FBFCFDFEFFF5FAF9ECF4EDF0FEECE7FCDC2C471B55753E
          4267293761203C67263F6928365F2142682C4F723A3F5C2F38502DEAFBE0F7FF
          F1F2FAF0FAFEF9F6F7F5FFFFFEFFFFFCF9F8F4FFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FEFEFEEBE9E9FFFFFEE6EAE4F0FBEBE5F5DD5C74524763383657242A50164E74
          38486C30375A224F6D3C4D683D475E38D4E5CAF9FFF4FDFEFCFEFFFDFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFF
          FBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFFFFFDFFFE
          FDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFFFDED
          EFE9EFF6E9FBFFF2E6F8DB4D653D3C5B28385E243D68252D59123A671E406C25
          416D28426A293C6123476A314E70344163224063204366233E602038581D3B57
          22425B2F4C623F35462BF5FFEFDFECDCF1FEEEE4EFDFFAFFF2E8F6DE4D65423E
          643039682A3B68293B69273E67293E672A42642E446134475F3DE7F9E2DBE8DA
          F8FFF9F8FDFBEAECECFAFAFAFFFFFFFFFFFEFFFFFCFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFEFEFEFEFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFDFFFF
          FEFFF7F6F8E5E9E4F6FFF2EFFFE73D5532415E313E602A40662A3E68273E6926
          3E692640682740682742672944642D536A3E3F5231E3F4D9D5E5CEE4F5E0EFFF
          EA3E55354C673B46672E476C28456E234A752A416A274770333255232B4A25EE
          FFEFF4FFF9EEFCF1D5E0D6FAFFFCE6EBE9F1F3F3F4F6F7F1F0F2F1F3F3ECF3EC
          EFFBE9F4FFE9476139415E2C395C23456E303A6524416B2A3F6928365D1F375C
          24456536506B44EFFFE6F5FFEFE2ECE0F8FFF8FAFEF9FFFFFEFEFDF9FFFFFCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFDFDF4F5F3FDFFFBE8F2E5F2FFEBDBF0
          D0405A324D6B3A43662E2D5317486C304E71383A5926395628445F34F0FFE3F9
          FFF4FDFEFCFEFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFB
          FFF9FBFFFAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFEFEFEFCFFFDF8FDF4E7F2E2EDFDE53F54333550252F511B466F32
          406C2947752D4A78302F5B163B6322466A2E4767303E5B2936532256713F4561
          2C46622D536E3C4C6638465C324C603D4D5F424A5A43F2FFEFE2EFE1F2FEF2F5
          FFF0DFEBD9EBF8E24B63413E633139682A3B68293B69273E68273E672A42652D
          446133364E2BF3FFEDEEFBEBE6EFE5FBFFFCF0F5F3EDEFEFFBFDFDFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFDFEFFFDFEFEFEFEFFFDFE
          FEFEFEFFFDFEFEFEFEFEFEFFFBFFDFDBE0FFFFFEF5FBF0DBE7D3596E4E456035
          3A5B2840662C4067293E68273E68273E68273E672940662A42652D466032495E
          38F0FFE3ECFFE6F1FFEDDCEED7344B2B4C673B46672E4C712D476D254D752E3D
          6224436731335126597256ECFCF1EAF3F0FAFFFCEBF1ECFBFFFAFDFEFAFFFFFE
          FFFFFFFEFCFCFCFDFBFBFFF9F0FBEBE5F6DB3B53303F5A2E496B35497235345F
          1E3965224B7635426B2D395F25416130425D35C4DABDF3FFEFE9F3E7FBFFFBFA
          FEF9FDFEFAF9F8F4FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEF9F6F8F6F6
          F6E2E6E1E8F0E5F6FFEEF5FFEC344E2642602F40632B51743B3E62262D50174F
          713B405E2D3B582BEAFFDEF7FFF3FCFDFBFEFFFDFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFBFFFDF8FDFEF5FF
          FFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFFFFFDFFFEFDFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFCFFFBF8FFF7D3E1CFEAFDE4
          374F2D4462374E723C426D2E3A662346732E335F1C406A29577D4133551F3D59
          2B698157495E384054313B4F2C3C502D4B5F3C4A5D3C47593A4C5D423C4B36F0
          FDEDEBF7EBF2FDF3F6FFF7EFF9ECF5FFEFF5FFEC3A52303E633139682A3B6829
          3B69273D68273E672940652D4262314B643EC0D3B8F8FFF5E9F2E8EFF5F0F7FC
          FAFDFFFFFBFDFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFE
          FFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFFFEFEF9F2F9FCF5FCF1EFEF
          EEF3EAF8FFF2D8ECCF3D572F52724142652D40662A3E67293E67293E67293E67
          2A40662A42652D425C2C495F35EBFFDFE0F3D8D9EAD5F6FFF131482858734838
          5920406521385E164E732F416327436334516A48D0E5CFF4FFF7E2E8E7F0F5F3
          FBFFFAF3F5EFF9F9F3F7F6F2F7F6F2FDFCF8EBECE8EAEFE6E8F3E3F8FFF1445B
          3B48613B4060313D652B36612035611E44702D456F2E416A2D486C383D5B3065
          7D5DE7F9E2F3FFF2FAFFF8F1F5EFFEFFFBFAF7F3FFFFFBFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFEFEFEFEFAFFF8F7F9E4E5E1F9FFF6F3FFEDE2F5DA3C552F4360323F
          612B395C23486C30476B2F3B5E263C5D2A4663354D6340F7FFF3FCFDFBFEFFFD
          FFFFFEFFFFFEFEFFFDFEFFFDFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFBFFFDF8FDFEF5FFFFFBFCFFFBFBFFFAF9FFFAFBFFF9FBFFFAFFFDFF
          FFFDFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
          FCFFFBF5FEF4EEFEECEAFFE6657E5C4162362D531F416B2E366422386624315C
          1B4A733640642E304D1F4A643CD7ECCBF4FFEAF1FDE9F7FFF1F1FDEBF5FFEDEE
          FAE6EAF6E4F4FFF1E8F4E8F5FFF8EBF6EEF6FFFAE7F2E8F6FFF3F6FFF0CDDBC3
          5E76543E633139682A3B68293B69273D69263E682740662C4262313E57314B5F
          42E2F0DEF7FFF5F0F6F1F9FEFCFDFFFFEDEFEFFFFFFFFFFFFFFFFFFEFFFFFEFF
          FFFCFFFFFCFFFFFCFFFFFCFEFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFB
          FFFEFEFFF9FFFDF6FDFCFAFAFEFFF8F0FAE9F4FFE939522C44643542642E4066
          2C3E672A3E672A3E672A3E672A40662C42652D4C693740592D445A37E5F9DCF1
          FFECDCEFD63B5232425D3244642B5577363F631D51743144632C3B572C455B3E
          F4FFF5EFF6F1EEF3F2FBFFFAFDFFF9FFFFF8FFFFF5FFFFF8F1EFE7F9F6F1FFFF
          FAF3F6EDFBFFF7DDECD7EAFFE640573744623741692F4B76353D69263B67243B
          6524386124446834405E33304828E3F5DEF4FFF3F5FDF3F1F5EFFFFFFCF5F2EE
          FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFCFFCECDCFFFFFFEE5EDE3D7
          E2D2EEFFE65A734D476436395B254F72393E62263B5F234A6D354B6D373E5E2D
          38502DF7FFF3FCFDFBFEFFFDFFFFFEFFFFFEFEFFFDFEFFFDFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFDF8FDFEF5FFFFFAFCFFFBFBFEFC
          F9FFFAFBFFFAFBFFFAFFFEFEFFFDFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFEFEFEFCFFFBEFFBEFE8FBE6344C2E3A57304166343A63
          2A3763263E6B2C396627477134274F15365724E9FFD9E6F9D8F5FFEBF0FAEAF2
          FAF0F2F9F2E6EDE6F3FBF1F4FCF2EDF5EBF9FFFAF4FBF6F5FCF9F4FBF8F8FFFC
          F5FDF6E3EBE0DEE8D8F9FFF0E6FBDB4062333D662C3D672A3D68293D68273E68
          2740662A42642E4B673C425A38F2FFEDF1FBEEF5FCF5F7FAF8EEF0F0FBFAFCFE
          FEFEFEFEFEFFFFFEFFFFFEFFFFFEFFFFFCFEFFFDFEFFFBFEFFFBFEFFFBFEFFFB
          FEFFFBFEFFFDFEFFFBFEFFFDFFFEFEFEF8FDFFF9FEF7F5F5FCFEF8ECF6E6F0FF
          E8354B2847643742633040662C40662A3E67293E67293E67293E662C40652D3E
          5E284C683A3A532DEEFFE3DAEDD4EAFFE43A523049663932531A537838385F1B
          456A2A476731425E333A5034EAFAE9F1F9F2FDFFFEEEEFEBF8FAF4F5F6EDFCFA
          F2FFFCF4FFFEF9F6F3EEFFFFFAE2E5DCF0F6EBF2FDEDEFFFE844573C45603937
          5E27436E2F335E1F3B6528466F323B6329426630426233405B34F1FFE9F5FFF1
          F9FFF7FBFFFAFFFFFEE9E8E4FFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEF9
          F7F7FFFFFFEFF0EEFBFFF9F5FFF2EBFBE4E4F9D84964394968353E6128355A1C
          4E73353A5D243B60284869364B663FF7FFF0FCFEF8FEFFFBFFFFFEFFFFFEFEFE
          FEFEFEFEFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7
          FDFEF5FFFFF9FCFFFBFBFDFDF9FEFDFAFDFBFAFDFBFFFDFCFFFEFDFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9FFFAECFBEDE3FA
          DE3D5B324569333D6629406B2A3B672A3A662B40692F3E652D41642C425F2DEF
          FFDBF4FFE7FCFFF5FBFCF8FEFFFDFCFFFDFCFFFDFDFFFEFDFFFEFDFFFEFDFFFE
          FCFFFDFCFEFEFCFFFDFDFFFEFDFFFCFCFFFAFBFFF7FAFFF5F7FFEE4B673C3256
          20395E264C72363B64263861234972343C642A466A3637552AEBFFE2E7F6E1EC
          F4E9FBFEFCFAF6FBFFFBFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFEFEEAE8
          E7FFFFFCFDFFF7F5FEF1F3FFEBF2FFE7445C3445623144652C4067293E68273E
          69263D69263D68293E672A496E363B5C293B572CE6FEDBEDFFE4233A1A45623B
          42643530571F4F7A3B3762213E692A4569353D5B303A5033EAF8E6F9FFF7FCFF
          FBFFFFFEFFFFFCFFFFFEFFFEFDFFFDFCFFFCFBFFFEFDFAF7F3FDFDF7FCFFF5F8
          FFF0EFF9E85C6953374C2B476A383E672E385F2B385F2B3B612D3D642D42672F
          4668324C693BEEFFE1F0FFE9ECF4E9F2F5F3FFFFFFF9FAF8F8F9F7FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFBF3F2EEF1F2EEEFF6EFFAFFF7EDFDE5
          394F2C3D5B2A4E6F362F54164A6F2F3F65293A61293F632F506E45E9F7DFFBFF
          F5F2F7EEF9FDF8F3F3F3EFEEF0FCF9FBFBF8FAFFFEFEFFFEFDFDFEFCFDFEFCFB
          FEFCF9FEFDF9FEFDF9FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFD
          FBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEF9FFFAEAFAE95E76584464354A703435601D44712C3865263D692E41
          683140642E43632C445E2EF0FFDCF6FFE9FEFDF9FDFAFCFEFEFEFEFFFDFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFEFFFFFEFEFFFBFEFF
          FBFCFEF8F8FFF2304721698756456731375C24476D31466F312F5A1B36602343
          6A3347693AE4FEDAEDFFE7FBFFF7DCDDD9FFFBFFEBE7EDFFFDFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFDF4F3EFFFFFFCF0F5ECF5FBF0F4FFEEE5F4D931472447
          613344642D4267293E69263E69263D69263D68273D6829456B31385C28456235
          E8FFDCE6FEDC516A483F5C353D61323D682F4978393666244470333E64303654
          29455C3CF7FFF1F9FFF7FCFFFBFFFFFEFFFFFEFFFFFFFFFEFEFFFCFEFFFBFDF8
          F3F4FFFDF9FBFBF5FEFFF7ECF0E4F8FFEFDEE9D5556748345627406831486E3E
          436939426637466C38446A303B5E25405F2CD7F1C9E9F9E1FAFFF8E6EBE9F6F8
          F9FFFFFFF6F7F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6F3EEFAF7F2FEFCFB
          FFFFFEF7FAF8EBF3E9D9E5D35166463C572B4D6D364D72343358184C73354870
          36395F2B3E5C31536449E9F3E2E4EBDEEEF2ECFBFCFAFFFEFFFFFBFFFFFEFFFF
          FDFFFFFEFDFDFEFCFDFEFAFBFEFCF9FEFCF9FDFEFAFEFFFDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFF
          FBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9FFF9F3FFF1162E0E517140466D2F39
          6520426F2A3865263B672C41683140642E43632C445E2EEFFFDCF6FFEAFEFCFB
          FDF9FEFEFEFEFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFE
          FEFFFFFEFFFFFEFFFFFCFEFFFBFDFEFAF8FFF25369463B582A2849164367313D
          63293E672A3C6728456F32436A324163344C6642DFF2D9D7E0D3FAFBF7FFFDFF
          F6F2F7FFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDF7F6F2FCFDF9F0F4EEFC
          FFF8F4FFEFE9F7DF647A5747613344642D4267293E69263E69263D69263D6827
          3D672A40662C3B5F2B486538E6FFDAE2F9D94E67453A57303E5F32325B223764
          252E5E1C4370313C632C405F32516946D3E3CCF8FFF5FBFFFAFEFFFDFFFFFEFF
          FFFFFFFDFFFFFCFEFFFBFDFEF9FAFFFFFEFAF9F5F6F9F0ECF0E4F0F8E7F9FFF0
          2C3E210F2F002B521B3E6331385C2D385C2D446A36466C323A5D244766334E68
          40EEFEE6D5DFD2F5FAF8EFF1F2E4E4E4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFFFFFCFAF7F3FDFBFAFAFBF9F1F4F2F1F9EFFAFFF4D0E4C74E693E3757
          213D62243A5F1F3D6426375D234067304C6B3E3C5033F5FFEDF7FFF1FAFFF8E7
          EAE8F3F2F4F6F2F7E7E4E6FFFDFFFFFEFDFDFEFCFDFEFAFBFEFCF9FEFCF9FDFE
          FAFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9FFF9F4
          FFF03B5432506E3D345B1D47732E3E6C243F6A2B3C652B41683040642E43632C
          445E2EEFFFDCF6FFEAFCFDFBFDF9FEFEFEFEFEFFFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFEFFFFFEFFFFFCFEFFFBFDFEFAFAFFF4EB
          FEDD4A65394B69385B7D473B6127365F223762233660233B622A3C5F2D425D36
          EFFFE7FBFFF5EAEEE8FBF8FAFDF9FEFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEF7F5F4F8F9F7F7FBF6FDFFF9EAF5E5F6FFECC1D6B547603444642E42662A
          3E68273E68273D68273D68293D672A3E652D446834415F34E3FED7E5FCDC2E45
          253F59354263364069304370313E6D29457331396127436332364F295F7055F7
          FFF4FAFEF9FDFEFCFEFFFDFFFFFFFFFDFFFFFCFEFFFBFDFFFCFEFCF8F7FEFDF9
          F1F4EBFFFFF7F6FDEEDDE7D65F7154345326416831486D3B3F64323A5F2D4067
          30446A303F652B486936365227E0F3D8F1FEF0FAFFFBF7F9F9F9F9F9FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCF8F6F5FFFFFFFEFEFEF6F8F8F2F9
          F2F3FEEEF3FFE9475F374562303D5E255F8446466C30385E24365D253C5C2D4F
          6443E0EED6F3FDECE7EFE4FDFFFCF2F4F4E0DFE1FFFEFFFFFEFEFFFEFDFDFEFC
          FDFEFAFBFEFCFBFEFCFAFEFFFAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFA
          FCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEF9FFF9E5F4DF57714D41602D2E561549752E4270283F6A2B
          3F682E41683040642E41642C425F2EEFFFDCF6FFEAFCFDFBFBF9FFFEFEFEFEFF
          FDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFEFFFFFEFF
          FFFCFEFFFBFDFEFAFAFFF4E8FADB3B562B4C693B294A173E632B4C75383A6526
          446E3131591F5174423C572FECFFE3E3EFDDFCFFF8DEDCDCFEFBFDFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FAFAFAF6F9F7FAFEF8E4EEE1F6FFED
          ECFFE047603444642E42662A3E68273E68273D68273D68293D672A3F662E4569
          35405E33E3FDD9EBFFE45B7154465F3D47653A416831416C2D3E6D294773303E
          672A4C6E38375427334828F5FFF2F7FEF7FAFEF9FCFFFDFEFEFEFEFDFFFFFBFF
          FFFCFEF9F6F8F8F6F6FFFEFDF7F9F3F9FDF2F7FEF1EEF8E8E2F3D84F6B404569
          354366344467353F65313A61293E6428456B2F3A5C26425E33F6FFEDF0FDEDDC
          E3DCF2F4F4FEFEFEEFEEF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F7F9F7
          F7FFFFFFFEFEFEF9FBFBF5FBF6E0EADDE3F3DB4E6441405C2E3E5E28375A2140
          662A4A70343C642A3B5B2A4E653F5E7053EBF8E2F3FDEDF6FAF4F5F8F6FDFCFE
          FEFDFFFEFEFEFEFFFDFDFEFCFDFEFAFBFEFCFBFEFCFAFEFFFAFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FF
          FFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFFF9E6F5E0445C3942612E
          416626446E274A762F3762213F682E41683040642E41642C425F2EEFFFDCF4FF
          EAFAFDFBFBF9FFFEFEFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFE
          FEFEFFFFFFFFFFFEFFFFFEFFFFFCFEFFFBFDFEFAFAFFF4F5FFEB3E552F567146
          4666353D612B3A6228366122345F204870362D511D405C31475C3CF1FDE9E6EE
          E3FFFFFEF2F0F0FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F7FFFEFEFEFEFE
          F2F5F3F9FDF7F1FBEEF6FFEDE6FBDB475F3544633042652C3E67293E67293D68
          293D672A3D662C3B622A3C5F2D436138E6FEDCEDFFE4C7DABF475E3E445F373B
          5F29345D1F325F1A426F2A3E6827486B32496736526845F4FFEEF6FDF6FAFEF8
          FBFFFAFEFEFEFEFDFFFFFCFFFFFBFFFBF8FAFEFBFDF5F3F2FFFFFCE6EBE2E8EE
          E3FAFFF6F3FFE9415C343353223255234064304269323960283A602443692D4B
          6D37345326DCF3D3E4F3DEEAF3E9FBFFFEFEFDFFF9F8FAFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFEFFFEFEF4F3F5F1F0F2F3F5F5FDFFFCF2FAEFF6FFEDE7
          F9DA445C325A77463E5E2840632A3B6125486E343F612B405B303D502FF3FFE9
          E4F0DEFAFFF8F3F7F2E7E9E9F6F6F6FEFEFEFEFFFDFDFEFAFDFEFAFBFEFCFCFF
          FDFAFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFA
          FFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FBFFF9EFFFE83B542E4C6C36466B2B426C254470293661203E682B4168304064
          2E41642C425F2EEDFFDCF4FFEAFAFDFBF9FAFEFEFEFEFFFFFEFFFFFEFFFFFEFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFEFFFFFEFFFFFEFEFFFDFDFEFA
          FAFFF5DCEAD2516645314B235976493658222F571D4B76373D6829436B31466A
          344463363D5533E4F4DDF8FFF4F4F5F1F6F6F6FEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF6F3F5FDFAFCFEFDFFF5F7F7FBFFFAF7FFF5F3FFEBE3F8D8475F354463
          3042652C3E67293E67293D68293D672A3D662C386128385D2B446239E7FEDEEC
          FFE6F4FFEE485C3F445D374B6C394871343E6A273F6C273863203A5F213E5E28
          455F37F1FFEAF4FEF2F7FFF5F9FFF9FCFFFDFEFDFFFFFCFFFFFBFFFEFAFFFFFC
          FEEFEFEFFFFFFEF1F5EFEFF4EBF3FAEDD7E4CE5269434A67394767364A6E3A48
          6F3741692F3B64273A6326395E263D5D2E48603EF1FFECE9F3E7F1F7F2F8F7F9
          F4F3F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F7FFFEFFF3F2F4FAF9FBF5
          F7F7FBFEFCEBF3E9E5F1DFF1FFE5435734324D224D6B3A42642E355B214E7438
          42652D4C683A364D27F0FFE5F2FFEBE8F2E5F1F8F1FDFFFEF3F5F5FEFEFEFEFF
          FDFDFEFAFDFEFAFBFEFCFCFFFDFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFD
          F9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFBFFF9ECF8E44B613E4C6A35355A1A456F283966
          1D3E6928416B2E4168303E652D41642C425F2DEDFFDCF3FFE9F8FEF9F9FBFCFE
          FEFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFE
          FFFFFEFFFFFEFEFFFDFDFEFAFAFFF6F0FCE8EFFFE4485E3B456136436431426A
          303D6628305B1C37602342672F3C5B2E3D5532EDFDE5F4FFEFE4E8E2FDFEFCFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFDF9F6F8FCFBFDFCFEFEF8FCF7E9F3
          E7E8F4E0EAFFDF475F3744633042652D3E672A3E67293D68293D662C3D662C3B
          632C40653344613AE8FEE1EFFFEADCECD54B5C4148603D345123476D333F6A27
          3A6621436C284D75344E7138445F33F1FFE7F4FFEFF6FFF3F9FFF7FAFFFBFCFE
          FEFEFDFFFFFBFFFEFAFFFFFCFFF9F8FAF1F2F0FDFFFCFCFFFAE9EFE4F5FFEC43
          56354560344461333D5E2B3C6129416A2D416A2C3B6427446B333D602E3F5A33
          E6F9DEF5FFF0FAFFFAF5F5F5FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
          F0F2FDFCFEEEEDEFFDFCFEF5F7F7FCFFFDFBFFF9F8FFF4F9FFEFE7F6DA3E552F
          4863373F5E2B476A3240662A3E62264968354E693ED9F1CEF0FFE8F4FFF1F6FF
          F5F9FEFCFAFCFCFEFFFDFEFFFDFDFEFAFDFEFAFBFEFCFCFEFEFDFFFFFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7
          FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFFF9EDF9E54A5D
          3C3E5B29496B2E48702939661D386322416B2E456E342E551D3D602748683248
          6036F1FFE5F1F8F1FDFFFFFFFFFEFFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFF
          FFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFFFFFEFEFFFDFCFFFAF4FEEDF3FF
          EB4F64444660383E5E2D456C3440692B366120376022476D334666373B562FEE
          FFE5F2FEEAEAF0E5F8FCF7FDFEFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF1EE
          F0FEFDFFFBFDFDF2F6F1F9FFF7F1FDE9DEF3D3475F3744633042652D3E672A3E
          67293D68293D662C3D662C3D652E466B3936532CE8FEE1E6F5E0F4FFEE3F4C36
          4257374E693D2F521A436D2C4A76313D66223A62214F7337436130465B3BF2FF
          ECCEDCCAF3FDF0FBFFFBF4F7F5F9F9F9F9F8FAFFFBFFFFFBFFFDFCFEFDFDFDFC
          FFFDFBFFF9FAFFF6F6FFF0F2FFE7465E364B663A405F2C3C61293F682B416C2D
          386225355E24496F3B3F5D32EBFFE2EDFCE7EDF5EAF1F2F0FCFAFAFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFBFDFEFBFCFFFBFDFEFBFDFEFDFDFDFDFEFCFDFFF9
          FBFFF6F4FEEEF4FFEB405233475F37466335496C343F652942692B476A324462
          313D572FE8FDDDEFFEE9DFE9DDFAFFFBF4F7F5FFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFD
          FBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFBFFF9F6FFF05466474761332B4D1150773338621B325C1B3A642735
          5E243E662C4B7135385821344D21F1FFE4E4EEE2F3F8F6FCFFFBFFFFFCFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFFFF
          FEFEFFFDFCFFFAEEF7EAECF9E3314326445C394B6B3C3E622C4E773A436E2D48
          7133396127476B37344F274F6444EDFDE6DEE7DAF8FCF6FDFEFCFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBF8FAFFFEFFF4F3F5F1F3F3F6FAF5E3EDE1CBD7C3F2FFE747
          5F3544633042652C3E67293E67293D68293D672A3D662C406930305425405C38
          E9FFE3E6F4E2F9FFF4ECF8E646573C3850285978453A61232F5A173B6421476F
          2E3F6327395825344C29E6F9DEF2FFEBF1FFEDDDE7DBEDF4EDFDFFFEEFEEF0FF
          FCFEFFFBFFFDFCFEFDFDFDFCFFFDFBFFFAFAFEF8F6FFF2E2F0D842553450683E
          4664333358203A6326467334305C1F4D763C385F283656273B542EEBFCE1F4FE
          EEFFFFFBF6F4F4FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFEFBFDFEFBFDFE
          FBFDFDFDFEFCFDFEFAFDFEFAFDFFF9F9FFF4F7FFF1F1FFE7455A39425D314A6A
          34486C303B62243E622641632D496639E6FEDCD3E5CEF5FFF4E2EAE3FBFFFEFD
          FFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFF
          FBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFFFAF2FBEEE7F6DB40572B6282493C
          601E4A732F4F79383C6629456F32325B1E3B632245692D577443DBEFCCFAFFF5
          EEF5EEFCFFFBFEFFFBFFFFFCFFFFFCFFFFFEFFFFFEFFFFFFFFFFFFFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFEFFFFFEFEFFFDFCFFFBF3FBF0F4FFEE4A5A42465B3A38
          552840642E396225406A293A65243861244266304C693C3B5331F8FFF0F8FFF3
          DEE6DCFBFEFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EFEFFFFEFEF9F9F9FDFFFEF1
          F5EFF7FFF4F4FFEBD3E8C8475F3544633042652C3E67293E67293D68293D672A
          3D662C3F6A31345A2A3F5B37EBFFE7F2FDEDD2DACFFAFFF6495640576B484C68
          3A2A4D14517938436B2A325A19365A1E4F6E3B445E36475E3EE2F5DAE6F6DFF4
          FFEFF2FAEFF5F9F4F5F8F6FDFCFEFDFCFEFDFCFEFEFEFEFEFFFDFDFEFAFAFEF8
          F9FFF4F7FFEE4A593D39502A425E30476A324A7336265314467536325E213C65
          2C385C28466237E7F9DAE4EFDBF9FCF3ECEAE9FEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBFDFDF9FEFDFBFDFDFBFEFCFDFEFCFDFEFAFFFEFAFDFEFAF9FAF6F7FC
          F3EEF9E946573C4B623C4866353B5E254067293F6726395D21415F2E37502ADB
          EED3E9F7E5F0F9EFF1F7F2FDFFFEFDFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFEFF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFFFAEF
          F4EBF6FFED50653E3C5B243A5D1D3B64213F682A315B1E4670333A6526416A27
          3D62222E4C174B633BE9F8E3E6EEE4FCFFFAFEFFFBFFFFFCFFFFFCFFFFFEFFFF
          FEFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFFFFFEFEFFFDFEFFFBF2
          F6F0F3FCEFEFFBE7485D3D536F44375923395F233F69283D6827456E30395E26
          517142354D2AE9FCE1D7E5D3F6FEF3FBFFFAFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF8F8F8FDFFFEE1E5DFE6F0E3EDFAE44D624147603444642E42662A
          3E68273E68273D68273D68293D672A3E69303E643436522EECFFE8F3FDF0EFF7
          EDFDFFF8E5EFDE415334435E32486B334A713331581A436A2C52753C3B5D2751
          6D42425B35ECFFE0EEFFE5D6E6CFE8F3E3FDFFF9FAFEF9FDFDFDFDFCFEFDFCFE
          FEFEFEFEFFFDFEFFFDFAFEF9F9FEF5E1E8DBF2FEE83549264D693B476A321F48
          0B497637406F30416D30537C42385D253E5C2BECFFDDF9FFEEEFF3E7FFFFFCFE
          FFFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9FEFDF9FEFCFBFEFCFBFFFAFDFEFAFDFE
          FAFFFDFCFFFDFDFBF9F9F3F6F4FBFFF9ECFBE63F54334562354B6E363A622146
          6F2C3C64233B5D27435F34ECFFE5EDFEE9E6F0E4F8FFF8FDFFFCFDFFFEFFFFFE
          FFFFFEFFFFFFFFFFFFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFA
          FCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFBFEFCFDFFFBEDF9E73C512B415C2A5A7C3F456E2B40692B
          467033315C1D467130466F2B3F652347682F4B6438E4F5DAFAFFF7FCFFFAFEFF
          FBFEFFFBFFFFFCFFFFFEFFFFFEFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFEFFFDFEFFFDFCFFFBF0F8EDF6FFF0475B3E2D471F547542365C20
          426C2B335F1C527B3D3D622A3555264A633D43573AF3FFEDE7F0E3FBFFFAFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFDEBECEAFDFFFCFCFFF8E9F4E4FAFFF0
          3C513047603444642E42662A3E68273E68273D68273D68293D672A426D343E64
          32425E3AECFFE9D0DACEF4F8F2EEF0EAFAFFF256654A4A623A45643133561D4E
          7438446A2E34592140622C456234405D30334D25EAFFDEF0FFE6EEFAE8E5EBE0
          FCFFFAFDFEFCFDFDFDFDFDFDFEFEFEFFFFFEFEFFFDFBFFFAFAFEF8EFF4EBF9FF
          F039492A375024385B234E773A325F203867283261221E4A0D476F3536562055
          6A43F2FFE4EFF4E5FEFEF8FEFFFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9FEFCF8FF
          FCF9FFFAFBFFF9FDFFF9FFFEFAFFFCFDFFFCFEFAF6FBF0EFF1F7FBF6F7FFF447
          5B3E3B572C4668323E66253D66224B7431436830345326314828DEF0D9F2FCEF
          FBFFFBFDFFFCFDFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFDFFFEFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FF
          FFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFEFCE5E9E4F9FFF34B5C3B
          4B65353F612538601F355E21386225497435487431345E17426A235173373E5B
          2A586A4BD5E1CFFBFFF7FEFFFBFEFFFBFFFFFCFFFFFEFFFFFEFFFFFFFFFFFFFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFEFFFDFAFDFBDFE6DFDBE6D6
          5F7257334D253C5D2A486E323D67263A6623325D1C476D334969383E59324257
          37F5FFEEEDF6E9FBFFFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFAF8F7F3F6F7F3
          F6FAF4E1E6DDDFEADAF6FFEC3E543147613344642D4267293E69263E69263D69
          263D68273B672A346025345D2A415D39F1FFEEF7FFF5FAFEF9F8F9F5F0F6EBEE
          FCE44157343E5C2B688B53345A20274D13557943395D2741602D4E6C3B546F43
          304721ECFEE1E3F0DAF7FFF3E8ECE6FDFEFCFDFDFDFEFEFEFEFEFEFFFFFEFFFF
          FEFBFFFAFAFEF9FAFCF6E6EDE03F4E32566E44496B3540692C426F302C5B1C46
          7536477435426B2D476A32435C30E9F8D8F5FBE8F7F8EFFEFFFDFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFFFFF9FEFCF8FFFAF9FFF9FBFFF9FDFFF9FFFEFAFFFCFDFFFBFFF4
          F0F6FFFEFFF5F7F7EEF8ECEDFFE7445F3743632D42692B436F282D5914456B2F
          466637354E2CF4FFEFECF9EBF5FDF6FCFFFBFDFFFEFFFFFEFFFFFEFFFFFFFFFF
          FFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFA
          FFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FDFDFDFBFEFCF4FDF0EDFDDE375123507138436A2C456E31426C2F345F203864
          213C671E5078304264273F5C2A445736F4FFECFBFFF6FDFFF9FEFFFBFFFFFCFF
          FFFEFFFFFEFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFD
          FEFFFDD8DBD9FBFFFCF7FFF4F1FFE9445D373D5D2C3D63274771304A76333964
          233E642A3D5E2B567149435838E3F3DCF7FFF2FBFFFAFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF4F2F1ECEBE7FFFFFCFCFFF8E1E7DCFAFFF4DBEACF5C724F4761334464
          2D4267293E69263E69263D69263D68273B68293F6B30406936324E2ADDF1DAFB
          FFF9E8EBE9EDEEECFBFEF5F5FFEBEEFFE04865382344114A6F374F743C345822
          4C703A45652F33521F4E6A3C506840E9FBDCF7FFEDE7F1E1FDFFF9FDFEFAFDFE
          FCFEFEFEFFFFFFFFFFFEFFFFFEFCFFFBFAFEF9F8F9F7FBFFF4F6FFE96179512C
          4E183F682B2C5B1C3D6F2F3A6D2A2E5E1C45702F43672B2D4717455533FDFFEF
          EAEBE1FEFFFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEF8FFFAF8FFF9F9FFF7FBFFF7FD
          FFF7FFFFF9FFFCFDFFFBFFFBF6FFF3F0F9F5F6FAFAFFFBEDFFE83E59323E5D2A
          446B2D335F1847732C3C62264464334C6642E7FAE1F4FFF3E4ECE5FCFFFBFCFF
          FDFFFFFEFFFFFEFFFFFFFFFFFFFEFDFFFDFCFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFD
          F9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFDFEFCEFF3EEFCFFF6F1FFE4486036405E294366
          2D436B31386225406B2C46722F47742B446E273B5E1E5B79443850283F5134F9
          FFF2FDFFF6FEFFF8FFFFFBFFFFFCFFFFFEFFFFFFFFFEFFFFFDFFFFFDFFFFFEFF
          FFFFFFFFFFFFFFFFFEFEFFFBFCFFFDF8FAFAFAFEF9EDF6E9F1FFE947603A3F5F
          2E40662C345E1D34601D45712E466F32436733446035445C3A56694EEBF7E5FB
          FFF9FCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFBF9F8F7F6F2F3F6EDF6FFF2E9F5
          E15365483E562E45623142652C4067293E69263D69263D69263D68273D68292E
          59203C6230405C38F2FFECE4EDE3F9FCFAF1F2F0FCFEF8ECF6E6EEFFE43E5633
          506D403C5C2B496B3541652F3B6028375D2355783F40622C3F5C2E4C653F3348
          28ECFCE5F6FFF1FBFFF7FBFFFAFEFFFDFFFFFEFFFFFFFFFFFFFEFEFEFDFDFDFB
          F9F9FFFFFBF2FDE93F53305371403D652B3B68293363213A6D29346521416D2A
          4A7034405D2C485A35EEF8E1F8FCF0FEFFFAFEFFFDFFFFFFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFDFFFEF9
          FFFAF8FFF9F9FFF9FBFFF9FDFFF9FFFEFAFFFDFDFFFBFFF7F2FBFBF9FFF5F7F8
          F9FFF9EEFDE8ECFFE03E592D4C6C353A652245712C41672B4869363550283F56
          36F0FFEAF7FFF4FAFFF8FCFFFBFFFFFEFFFFFEFFFFFFFFFFFFFEFEFEFDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7
          FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF9FBFF
          F3F1FEE6495C3B445D313F5E2B4C7238345D1F3D68273D69263D6A253E692640
          672942652C446231455F37F1FFE4F5FEEAEEF5E6F8FCF1FEFFFAFFFEFDFEF9FB
          F9F3F8FEF7FEFFF8FFFEFAFFFEFDFFFEFFFDFBFFFAFAFEF8F9FDF7FDFFFFF1F4
          F2F5FDF2F1FFEA3B53303C5C2D4B71373F692835611E3E6A274770324368304D
          6A3C3A532D364B2BF3FFECFAFFF8E8EDEBEEF1EFF9FBFBFCFCFCF7F6F8EFECEE
          FFFCFEFFFDFFFFFEFFFEFDFFFEFEFEFBFDFDF9FEFCFCFFFDFCFEFEEDE7ECFFFB
          FFFFFFFFFBFDF7EFF9E9EEFEE6485E3B3E5B2E42642E40662C3E67293D68273D
          68273D68273D68273D672A446B343B5D2E3D5831F0FFE8F4FFEFF9FFF9FBFEFC
          F0F3F1EEF2ECFBFFF7E9F9E24E6343324C245876453B5E26345A1E3C67264671
          303D68293F662E3F62304C6A3F2C4422F1FFE9EFFBE7F6FFF2F2F6F0FFFFFEFF
          FDFDFDF7FCFFF9FEFFFAFFFFFBFFE2E2E2FDFFF73C4D3249633B3E622C3E692A
          4A793434661E386A22426E2B3961274565363C5431E6F7DCFAFFF3FDFFF6FEFE
          F8FFFCFBF8F6F6FFFDFFF3EFF4FEFDFFEFEEF0FDFFFFFCFFFDFBFFFAFBFFFAFB
          FFFAFBFEFCFCFEFEFDFFFFFCFFFDFCFFFDFCFFFDFEFEFEFEFEFEFDFCFEFDFCFE
          FCFBFFF9F8FCFAFAFAFEFFFBF6FCF1EDF6E2F6FFE933422251673D4E71392851
          1340662C395C24436130415C31E7FCDBF0FFE8F5FFEFF8FFF6F7FBF6F1F4F2FF
          FFFFF3F3F3FFFEFDF6F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFD
          FBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEF9FCF3EFF6E7F2FBE7F5FFE82C431D47643630541E4E773A3D
          68273D69263D69263E682740672940662A42652D446231384C29E2EFD5F0FCE6
          E1E8D9EDF0E7FEFCFBF3EEF0FCF4FBFFF7FEFFF8FFFFFAFFFFFCFEFEFFFDFBFF
          FAFAFFF6FAFEF8EFEFEFFAFDFBF7FFF4E8F8E1465E3C4F6F402E541A3D672645
          722D43702B3862212C521840612E4D6A3D58714BEAFDE2F2FCEFF6FDF6FBFFFC
          FDFFFEF9F9F9FEFDFFF8F5F7F9F6F8FFFDFFFFFEFFFEFDFFFEFEFEFCFFFDF9FF
          FAF9FFFAFBFEFCFFFDFFF7F1F6F2F0F0FDFFF9F0FBE7EFFFE437512949693840
          652D3D672A3D68273D68273D68273D68273D68293E662C325622425E334A623F
          E0F3D8EDF9E7E4ECE2FAFDFBFDFFFFF3F6F4F8FCF6FAFFF6F0FFE8435837334E
          225B7A47476D314A7534376622366422426C2F3F662F3A5D2B5F7D523C5432F0
          FFE6EFFBE7F9FFF3F6F9F0EFEDECF6F3F5FFFAFFFCF6FBFBF7FCF7F7F7EFF5EA
          F2FFE9354E284C6D3A345D1F3865203B6C22487830325D1C3E662C496B3C314C
          25405737F0FFE8EBF0E1F3F1E9FFFDF9FBF6F7FDF9FEF7F3F9FFFDFFF4F3F7FD
          FFFFFCFFFDFBFFFAFBFFF9FBFFFAFBFFFAFCFEFEFDFFFFFEFEFEFEFEFEFEFDFF
          FEFDFFFEFDFFFDFCFFFDFCFFFCFBFDF5F4F6FDFEFCF0F3EAF0F4E8FCFFF1D4DB
          C65760464455334462314D753B3F652B3F652B466630415F2E4A623ADEF0D1E5
          F1DDEBF4E7F9FDF7F3F6F4FCFCFCF5F5F5FFFFFEF8F6F5FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFF
          FBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBF5FCEFF6FEEDD9E8CD62
          7855597649496A3720480E3D68293D68273E68273E682740672940662A42652C
          4463304159315B6B4CEFFEE3F5FFECF9FFF3FBFDF7F7F5F5FBF5FAFFF8FFFFF8
          FFFFFAFFFFFCFEFFFDFDFDFEFCFDFEFAFCFDF9FFFFFFFAFBF9EFF5EAF1FEE8E7
          FDDA2B481A52783E3F6A27326018406E26416C293F682A486D35426231284419
          556A4AF2FEECFAFFF8F8FCF6FBFFF9F6F7F3FFFFFEFFFDFDFAF8F8FFFEFFFFFE
          FEFEFEFEFEFFFDFCFFFDFBFFFAF9FFFAFBFFFAF8F5F7E6E1E2F2F3EFF9FFF5E2
          EFD94055345B774C385C283E662C3D68293D68273B6A263B69273B69273D6829
          3E662C4F6F404C673FD3EBC9F3FFEDF2FDEDF7FFF5EBEEECFDFDFDF9F9F9EDF1
          ECF6FEF3F8FFF0E7F9DC38512B324F2250713E2D5619487334436D302D551B51
          78412B4F1B3C5B2E49633B4156354B5D40E5F2DCEDF7E7F9FFF4FCFEF8E3E2DE
          EAE8E7FFFEFDFFFFFBEEF8E8EDFEE3445E36395A27466F32436F2C3868204473
          2E3863223C642A395C2A59754A425A37E7F9DCFBFFEEF8F9EFFFFFFBF7F5F4F4
          F0F5F7F3F9FEFCFFFDFCFFFFFEFFFEFFFDFBFFFAFBFFF9FBFFFAFBFFFAFCFEFE
          FDFFFFFEFFFDFEFFFDFEFEFEFEFEFEFEFDFFFDFCFEFDFCFFFDFCFEFDFCFEFFFF
          FEF7F9F3F1F5EAFFFFF5F8FEEBEFF7E04F603F3E5C2B456C34395F25466C3236
          56204D6B3A3B5329ECFFDEF7FFEEF1FAEDFDFFFBF4F7F5F1F1F1F5F5F5FFFFFE
          FEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF
          F0ECF9FEF5F0F7E8F4FFEBE7FCDC3F5931486839486C363E672A3E67293E6827
          3E682740672940672942662A44642E415C30556B48DDEFD0EAF9DEEBF5E4FDFF
          F8F6F7F3F6F4F4FEFAFFFFFAFFFFFAFFFFFBFFFFFCFEFFFDFDFFFDFCFFFDFCF4
          F1F3F4F5F3EEF4E9EFFCE6F2FFE54663353C622835601D3A6820406E263D6924
          3E682743692D4367313A5A293A532DF3FFEAF9FFF5E8EEE3F8FDF4F8FAF4FDFE
          FAFDFBFAFFFEFEFFFEFEFFFEFEFEFFFDFEFFFDFCFFFBFBFFFAF9FFF9FBFFFAFF
          FFFEF6F7F3FDFFF8F7FFEFE9FCE13A532D4262333A5E283D672A3D68273B6A26
          3B6A263B69273B69273D68293E652D3B572C344C29ECFFE3EBFBE4F2FBEEE6EA
          E4FDFEFCEDEDEDFEFEFEE4E5E3FCFFF8F2FCECDCECD5EDFFE248603D314D2250
          74403D642C4067304266303D612B40612E3F5D2C4D6A3C4B663B3F5630455738
          F3FFE7DFECD6E5EFDEF1F8EBFDFFF8F7FBF0D8DCD0F0FBE7EFFFE2E9FFD93657
          24456E3137622135641F3968244772313E672A3458243B5B2C405B30506342E7
          F0DBE7E9DDFAFBF2FDFBFAFFFCFEFFFDFFF7F5FBF7F6FAFFFEFFFEFFFDFBFFFA
          FBFFF9FBFFFAFBFFFAFCFEFEFDFFFFFDFEFCFEFFFDFEFFFDFEFEFEFEFEFEFEFD
          FFFDFCFFFDFCFEF3F3F3FDFEFCFFFFFBFAFDF4F3F7EBEAF0DFFCFFEF39482945
          6234395E26375C24476A3249693244633040582E4E6342E3F3DBDDE8D8F5FCF5
          FCFFFDFCFCFCFFFFFFFCFAFAF7F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFA
          FCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEEFF3EDEBF1E6F1FDEBD4E4CCEBFFDF4B673C
          35552440652D40662A40672940672940682740682742672942652C476534435F
          34445D37EBFFE0EEFEE7DBE6D6DADFD6FFFFFCFCFCFCFEFAFFFFFBFFFFFBFFFF
          FBFFFFFCFEFFFCFEFFFBFDFFFBFDFEFCFCFFFFF9F1FCE8E4F7D63B562A3B5E26
          476F2E45712C3D6B2339671F3966213963223E672A51763E4F6C3FC5D6BBFAFF
          F3EDF4E5FCFFF6F7FAF1FAFCF6FAF8F7FFFFFEFFFEFEFFFEFEFEFFFDFEFFFDFC
          FFFBFBFFFAF9FFF9F8FFF8F7FCF3F8FFF2EDF7E6EAFBE0536B49536F44375B27
          4A72383D68293B6A263B6A263B6A263D68273D68273D682940642E4D66405668
          4BEDFDE5D9E5D3EDF3E8FDFEFAEBEBEBFEFBFDFEFBFDFAFAFAFCFDF9FCFFF8F1
          FCECEEFEE7EDFEE358704E3250274162354567384A6A3940612E43632D4C6C36
          395923375422486534546C42384F29455A393E5333EEFFE4E5F3DBF4FDE9FBFF
          EFF6FFEADFF5D2DDF9CE2D511D3C642A4C7738366422346220366122446D305D
          824A3B5C29456231495E37F7FFE8F8FDEEF5F9EEF7F8F4FEFEFEFFFEFFF6F5F9
          FDFCFFFFFEFFFEFFFDFDFEFAFDFFF9FBFFFAFBFFFAFCFEFEFDFFFEFDFEFAFDFE
          FAFEFFFBFEFFFDFEFEFEFEFEFEFEFDFFFDFCFEF4F4F4FDFEFCE8E9E5EDEFE9FB
          FFF4E8ECE0FFFFF5ECF9DF425D324A6B3845683034571F4C6C353C5B284C6539
          394F2CF2FFE8EFFBE9F1F9EFF8FBF9FDFDFDFFFEFFFBF8FAFEFCFCFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FF
          FFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FEFFFDFAFEF8
          E4EDE0E6F2DEF2FFE730492354714442623140652D40662C4067294068274068
          274267274267294367313E5E2D39552A3F5832E7FBDEF8FFF1E6F0E0F2F7EEFA
          FEF9FCFCFCFFFCFEFFFBFFFFFBFFFFFBFFFFFAFFFFFAFFFFF9FEEDEAECECEEE8
          E8F2E1F7FFEC435D354665323D63273A652234611C43702B46732E406C29325D
          1E365E242F4F1E687A5DF0FBE7F7FFEEFAFFF4F1F5EAFDFFF9FDFCF8FFFFFEFF
          FDFDFFFEFEFEFEFEFEFFFDFCFFFDF9FFFAF9FFFAF8FFF6F3FDEDF5FFEDCDDEC3
          516645314C244C6C3B2E551D3A65263B69273B6A263B6A263B6A263D68273D68
          293D672A406430405534EFFDE5F0FCE8F7FFF1FBFEF5F4F5F1FFFFFFF1EEF0F8
          F5F7FFFDFDF5F3F2F8F9F5F9FFF7E6F0E3E8F4E2E8F8E14B614437512D4B663E
          375427567443385822395A2156783C496A3134551C42622C5876453653265571
          463A532D374D2A384829EFFEDFD8ECC9DBF3CBE8FFD8466A36446B33315B1E47
          72333F6A2B355E203A6325375D233D6027375720506A3CD5E4C5FDFFF2F2F9EC
          F2F4EEFAFBF9FBFAFCF6F5F9FFFEFFFFFEFFFEFFFDFDFEFAFDFFF9FBFFFAFBFF
          FAFCFEFEFDFFFEFDFEFAFDFFF9FDFEFAFEFFFBFEFFFDFEFEFEFEFDFFFEFDFFEB
          EBEBF8F8F8FAFBF9FFFFFCFEFFF8F5F9EEE7EBDFF9FFEF415A3429491843622F
          4767313E5E274767313E5A2C4F6640D3E5C8F8FFF2EFF9EDEFF5F0F7F9F9FAF9
          FBF9F6F8FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFA
          FFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF8F8F8FFFFFFFDFFFCF4FCF2F9FFF4E9F9E2E8FDDD27401A4461344262
          3142652D42662A426729426727406926406827446D30446B334467354665383D
          5831E3FADAECFCE5F3FEEEF8FFF6FAFEF9FFFDFDFFFDFFFFFCFFFFFBFFFFFAFF
          FFF9FFF8F1F8FFFCFFF3F4F2FDFFF7DEECD4EBFFDE3F5B2D43662E466D2F335F
          1C406C293665213E6C2A3C692A4771344F733F344929EBF8E2F5FFEEF6FDEEF2
          F6EBFEFFFAF8F6F5FFFEFEFFFCFEFFFDFFFEFDFFFEFEFEFCFFFDF9FFFAF8FEF9
          F7FFF5F3FFECCDDFC2EAFFDE3A542C5070413F632D3D6629416C2B3B6A263B6A
          253B6A263B69273D68293D672A3E652D426233586A4DF5FFEEF9FFF3EAF0E5EB
          EDE7FDFBFAF9F4F5F6F1F3EEE9EBFFFEFFEFEDEDF3F3F3E5E9E4E9F0E9FBFFF9
          F9FFF6EAFBE651674B3B523247603A4560344764324A6B323C5E21486B2B466B
          2B44692B44672E395C243C5D2A496B3C4764374860383F542D576D434E693DEA
          FFD9D0F4C0345B24345D2439622838622548713349723431581A4D72344D6F32
          3D5B26566745D9E6CEE9F3E2F5FBF0FDFFFEFBFDFEF6F5F9F1F0F2FFFEFFFFFE
          FDFDFEFAFDFEFAFBFFFAFBFFFAFCFEFEFDFFFEFCFEF8FDFFF7FDFFF9FEFFFBFE
          FFFDFEFFFDFEFEFEFEFEFEFDFDFDF8F8F8FFFFFEF1F2EEE4E5E1FFFFFBFDFFF7
          E1EBDAE7FCDB4D6A3D3F5C2B4C6B3830501A4F6F39405D2C3F5931526747D7E7
          D0E8F2E5F2F9F2FDFFFEFBFDFDF4F3F5F1F0F2FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFD
          F9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEEEDEFFBFEFCFDFFFBEEF6EBF2FE
          ECD7E7CFEAFFDF455E3844613444633042652D42662A4267274069263E682737
          6223497336335A223F65313D5C2F344F28EEFFE5E9F9E2F6FFF1F8FFF5FEFFFA
          FFFFFEFFFEFEFFFCFEFFFAFFFFF8FFF5EDF7FEFAFFE3E1E1F0F5ECF1FDE9ECFF
          E1415B33426231496F35355E20416C2B2F5D1B3E6C2A3D6A2B3864273C622E43
          5837F9FFEFF3FEEAF6FFF0FAFFF5FCFEF8EAEBE9FBFBFBFFFCFEFDFCFEFEFDFF
          FCFEFEFAFFFDF8FFFAF7FEF9F5FFF4E6F9DEEAFFDD3C562E3F5C2E40642E365E
          243661223F6B283B6A253B6A253B6A263D68293D672A3E652D3E6430446035F5
          FFEEF5FEF1FBFFF6F5F8EFFFFFFCF3F1F0FEF9FAFFFEFFFFFEFFF3EEF0F8F5F7
          FFFEFFFAFAFAF2F4F4FDFFFEE8EFE8F1FEF0EFFEE945553D495E3E4D653D4562
          3143622B5072354A6E2C2C52103F68253D6524456B2F3F672D2D541D476B373D
          5A29526C3E3E5828425F2E4361303758254A6E38466D364B723A3B642A3A6326
          3C652748702F2D55144D73313E5F263D522BEEFDE2F7FFEFEDF6E9EDF3EEF1F3
          F3FEFDFFFDFCFEFFFFFFFFFEFDFDFEFCFDFEFAFBFFFAFBFFFAFCFEFEFDFFFEFC
          FEF8FDFFF7FDFFF9FEFFFAFEFFFBFEFFFDFEFEFEFEFEFEFAFAFAF9F9F9FFFFFE
          F2F3F1FEFFFDF3F4F0F9FBF5F8FFF0E6F8DB425C343C572B4F6C3B45632E3D5D
          27476433445F33394F2CECFFE4F4FFF1E9F2E8EEF4EFF1F3F3FCFBFDFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7
          FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFCFEFEFCFFFDFAFEF8F7FFF4F6FFEFF4FFEA4659384F673F4965374564313A
          5D244F7436365E1D3B66233863223A67283D672A3960283C612F2D4E225D7851
          E7FEDEEDFFE7EEFCEAEBF4E7FBFFF7F5F4F0FFFEFDF7F2F3FCF6FBF8F1F8FCF8
          FEEEECECF2F6F0F6FFEFECFDE2334B284766394064303E652D3D662C3D672A3B
          672A3B672A39682A3D6430415936495A3FF3FFEAF8FFF1F7FFF4F2F6F0F8FBF9
          FDFFFFFDFCFEE5E6EAF9FBFCEEF3F2F2F7F5F7FEF9F3FBF4F4FFF1E7FFDD5D7A
          4D314E2040622C3B61273E67293C68253665203A69243C6B27366120446E3141
          6831395D29426233314926F8FFF2FBFFF7FDFFF9FEFFFBFFFFFBFFFEFDFFFDFE
          FFFDFEFFFDFFFFFDFFFFFBFFFEFAFFFCFBFDF9FBFCF8FAFBF6FBFAEFF6EFF9FF
          F6DCE8D6E6F6DE475A3941592F4C693742632A4A6C2F3F652347702D3F672639
          62243B64273F672D40672F44642E4866314562304D6C393F602D365822456933
          385F283E652D3E662C40662A40672940682740692640692542662A465F333D4F
          30F5FFEDEFFAEAF8FFF8F8FBF9F7F6F8FAF9FBFFFDFDFFFDFCFFFDFCFDFEFAFC
          FFFBFCFFFBFBFFFFFDFFFEFDFFF9FDFFF7FDFFF9FDFFF9FEFFFBFEFFFDFEFEFE
          FEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFEFFFDFBFFF6DFEDD5ECFF
          E04A623A4560344663313F5D283D5C29425F31465F393D5134F3FFEDE9F3E6FA
          FFFAF7FAF8F9F9F9FEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFD
          FBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFEFFFCFEFEFCFFFDFBFFFAFAFEF8F8FFF2F6FFEFF6
          FFEA384B2A4058304C683A55753F3D6125436B2A416C29416D2A447230426D2E
          3962284A713A43683634532657724B2C4323E5F8DDF4FFECF5FFEFF4FAEFEBEE
          E5FDFCF8F4F2F1F9F5FAE8E4E9FFFFFEF6FBF2F8FFF3EBFBE3465E3C425D3542
          62334064303E652D3D662C3B672C3B672A39672C3D643049643D3E5235ECFCE4
          ECF8E4F4FEF1F8FFF6FBFFFCEBF0EEFAFCFCF8FDFCFBFFFFF2F9F6F8FFF9EBF6
          ECF1FDF1EEFFE957724B3454234769334C72383A6325426D2C46722F3F6E2940
          6F2B3661204D773A3F662E345725527144466139EEFFE3F9FFF5FBFFFAFDFEFA
          FEFFFBFFFEFDFFFEFDFFFEFEFFFEFEFFFEFFFFFDFFFFFDFFFFFBFFFCFBFFFBFA
          FEF8F9FDF8FAFBE5E8E6F4FCF2FBFFF7F5FFEDEDFCE04D613E334C2058754341
          60294A6C303F642639602250763A3B6427436B313E652D40632B4568303B5B25
          3E602A42642E45673150743E4368303E652D3E662C40662A4068274068274069
          26406925426729537042455B38EAFEE1DFEED9DEE8DCFBFFFCF5F5F5FAF9FBFF
          FDFDFFFDFCFFFDFCFDFEFAFEFFFBFCFFFDFBFFFFFBFFFEFDFFF9FDFFF9FDFFF9
          FEFFFAFEFFFBFEFFFDFEFFFDFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFF
          FFFEFFFDFBFFF9F8FFF2EDFEE3415433536B43385524415F2A4E6D3A48663530
          4B20566E4CEDFFE7E8F5E5F5FDF3F9FDF8EDEDEDFCFCFCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFF
          FBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFCFEFEFEFEFEFEFEFEFD
          FEFCFCFDF9FBFDF7F9FFF3E5F0DCF1FFE54A603D4C673C2B491850733B284E12
          3B652436621F3C68253E69283560213F682E4B723A3B5F2B3554274A683F4660
          3CEAFEE1EDFDE5F0FCE8F9FFF2F3FAEDFFFFF9F7F8F6F9FCFAF8FCF6F3FBF0E3
          EFDDF0FFE8E6FEDC47623A4261344063313E652E3D662D3B672C3B672C3B672C
          3D652E3D5B323C5432EEFFE3E7FADFEBFAE5F1FCECECF5EBF8FFF9F6FCF7F4FB
          F6F0F8F1F1FCF2E0EFE1E1F4E160735E40583A3754273D5F294F723A42682C36
          601F3E6A273C692436621F436E2D3560213F662E2E511F5672472F48222E4322
          EDFDE5FBFFF6FDFEFCFDFEFCFEFFFDFEFFFDFEFFFDFEFEFEFEFEFEFFFFFFFFFF
          FFFEFEFEFDFCFEFCFBFDFBFAFCFBFAFCF8FAFBFDFFFEDBE2DBF9FFF6E9F4E4EE
          FBE5ECFEE1E7FBD83C542C506B3F405E2D466532385A24395E26395E2641662E
          3F642C3C6129486E3444672F466B33486D353A5F27395E263D622A40652D4066
          2C40662A4068274068274069263E6A25406729385926415C34DEF5D5F0FFEBF7
          FFF4E2E8E3FFFFFFFDFCFEFFFDFDFFFDFCFFFDFCFDFEFAFEFFFDFCFFFDFBFFFF
          FBFFFEFEFFFBFEFFFBFEFFFBFEFFFBFEFFFDFFFFFEFFFFFEFFFFFEFFFFFFFFFF
          FFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFBFFFAE2EADFEBF7E3EEFFE42E442146
          6135506D3B3D5D274766334A673A4059333B4E33F8FFF2F3FBF0E1E5DFFFFFFC
          FAFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FEFEFCFEFEFEFEFEFEFEFEFEFEFEFDFDFDFCFDF9FCFFF6FCFFF6F7FFEDEDFFE2
          4057314A653943652F4E7138486F31456F2E3A6623406B2A3E6928335E1F345E
          214168304C703C4063311B3A0D566F49475C3BF1FFE6E6F5DAECF8E2F0FAE9F4
          FCF1F8FFF5F0F9ECEAF6E4F4FFECEEFFE5D7EDCA415B3344613342623140642E
          3E652D3D662C3B672A3B672A3D662D46683948633B2E4922E5FDDBE5F8DDF4FF
          EFE9F6E6F8FFF7F8FFF8EAF7E9F5FFF2EBFCE7EFFFEB556C502D4527314E274E
          6E3D456830375D21365D1F3F6928406C293A662344702D325D1E436B313C602C
          4C6B3E405835526747F0FFE6EEFAE8FBFFF9FDFEFCFDFEFCFEFFFDFEFFFDFEFF
          FDFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFCFCFCFBFBFBFBFBFBE9
          ECEAF9FDF8EEF6ECF8FFF5F3FDEDF2FEEAF4FFEAE8FADD2338173C552F3C572C
          5E7B4E40603140602F4F6F3E4569353D622A40652D3C6129466B334D723A395E
          26355B214C723840662C40662A4067294067294068274069263E69263E67293B
          5F2948673A4E6745EDFFE7E1ECDCEBF2EBFAFCFCF6F5F7FFFCFDFFFCFDFFFDFC
          FDFEFAFEFFFDFCFFFDFBFFFFFBFFFFFEFFFDFEFFFBFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFEFFFDFB
          FFF9EDF6E9FAFFF1435536455D3343602E3959233B5B25395726445F374A6141
          DEEED7EBF5E8FBFFF9F7F9F3ECEDE9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFA
          FCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFBFEFCFCFFFDFEFFFDFEFEFEFFFEFEFFFDFDFFFDFD
          FEFDF9EAEDE4F0F7E8ECFAE24558374964393858273F612B355B1F4B7234355F
          1E3A64234C7635416C2B3661223C66293C642A4A71395175414767382844194E
          67414A603DEDFFE0F4FFE9E7F4DEF7FFEEF2FFE8ECFEE1D3E5C6E3F9D6EFFFDF
          425D3144623142642E40652D3E662C3E672A3D68293D68293D672A355A224465
          324161323B572CE2FCD8EBFFE2EEFFE6E6F9E0E7F9E2E7FBE4EBFFE53A523247
          613D3E5C3348663B4C6C3D40622C41642B395F23446B2D4C76353A652235601D
          497332416A2D50743E3F5C2E3C562E47593A3E4C34E4EFDBEFF8EBFBFFF9FBFE
          FCFBFEFCFCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFDFFFEFDFFFEFCFFFDFBFEFCFB
          FEFCFAFDFBF9FDF8F9FDF8FDFFFCF9FDF7F1F5EFEFF6EFF9FFF7F3FDF1F8FFF5
          EDFBE9F5FFEEEAFDE2314626425A383D563049643C446035335324476D394067
          2F365D25345B2341672D41672D4064284C703442662A4267294067294067293E
          67293E67293E67293E672A2E551E4C6E3F405A36E3F9DDF5FFF2EEF6ECFBFEFC
          FBFBFBFFFCFDFFFCFDFFFDFCFDFEFCFEFFFDFCFFFDFBFFFFFBFFFFFFFFFFFFFF
          FEFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFEFEFEE9EBEBF9FFF9F1FDEBEFFFE430482056734245652E
          42652D3F602D47633849613F57684DF2FEECEBF4E7EAEDE4FFFFFBFFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FF
          FFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFAFFFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFAFBFFFAFEFFFB
          FEFFFDFFFEFEFFFCFEFFFBFDFFFCFBFFFFFCF1F7ECF1FCE8ECFEE1354E285A7A
          4B41622F40662C3F662839612038601F456F2E456F2E406B2A45702F38632433
          5D203860263F632D5878473E5B2E3C572C435D35455B38586B4AECFEDFE5F8D7
          E8FCD9F2FFE0E6FED4DBF7C944613044642E44642D42652C40662A4067293E68
          273E68273E6827426B2D456B2F395E264D6D3C3F5E31D7F2CAE7FFDD445D3B53
          6A4A546D4B3A54303E5C314B6B3C3D612D375C2442682E3D60274A6E32436A2C
          476E30456F2E36611E3761203D662830561C4465323954294D624149583DFAFF
          F1F3FAEDF1F6EDFBFFFAFBFEFCFBFEFCFCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFD
          FFFEFDFFFCFCFFFBFBFFFAFAFEF8F9FDF7F9FDF7F8FDF4FDFFFBF7FBF5F8FCF7
          FBFFFAF5FBF6EEF4EFF0F6F1EFF7F0E5EFE3EEFBEBF3FFEDE8FBE243573A4A5F
          3E42583559754A325725375F284970393F662E395F2543692D4267293A5F2142
          67294267294067294067293E67293E672A3E672A3E662C547B442E522334512A
          4E6447F0FEECEBF3E9FDFFFEF0EEEEFFFCFDFFFCFDFFFDFCFFFDFCFEFFFDFCFF
          FDFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFCFFF5F8F6DEE7DA
          E1F1D9556D453C5A2945652E3B5E264B6C393754263149264B5F42F2FEEAF7FF
          F1F8FEF3F7F9F3FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDFAFCFCFAFDFBFFFEFA
          FFFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFBFFF9FBFFF9FDFEFAFEFFFDFFFDFDFFFBFDFFFBFDFFFAFBF2F0EFFDFF
          F7E5EFDEF5FFEBE4FCD92D4B202E4E1D51763E45692D5075374267273E66253B
          6623376320416D2A3968243A68264B76373861244368303B5C295775444B683B
          425D323A522A415931576F45486135415B2D455F2F4C6937405E2944652C4466
          2A4267294068274069263E6A253E6A253E6A252D59143E69264A73353C62283A
          5B2857774838562B3B5930324D252F4D225A7A4B3E5F2C3E632B396224345F1C
          4A75323E6527466A2E3A61233D64263C66253E68274C7537416A2D5A7F472646
          155A744C354A2AEBF8E2F5FFEFF5F8EFF0F2ECFBFEFCFBFEFCFBFEFCFCFFFDFA
          FFFDFAFFFDFAFFFDFAFFFDFBFFFCFAFFFBFAFFFBF9FFF9FAFFF6F9FFF4F8FEF3
          F8FEF3EFF4EBFDFFFBFDFFFCFDFFFCE0E2E2F9FEFDFBFFFFFAFFFFF7FEFBE7EE
          E9F3FDF1E7F4E4F0FFE9F0FFE63D4F30344D275478492E58234169324970383D
          6329466C304A6F314368284267274267274068274067293E672A3E662C3D662C
          3D662D3760273C612F4C6A413D5537E5F3E1F5FDF3F5F6F4FEFCFCFFFCFDFFFC
          FDFFFDFCFFFDFCFEFFFDFCFFFDFBFFFFFBFFFFFFFEFFFFFEFFFEFDFFFEFEFEFE
          FEFEFEFEFEFEFFFDFEFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFF
          FEFDFFEEECF2F9FBFCF5FDF3F6FFEDE4FBD535532241612A496C343F612B3F5D
          2C627B553C513148553FF6FFEFF1F8EBECEFE6FFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF5FFFFF9FCFFFBFBFDFD
          F9FEFDFAFDFBFAFEF9FFFEFAFFFEFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFAFBFFF9FDFEFAFDFEFCFFFDFDFEFB
          FDFFFAFCFDFAFCFCFAF9F7F9F3F7FDF2DEEAD8F1FFE9E5FCDC4C64413B582B3D
          5D274A6C30385C2040652748702F3B66233F6B283D6926426E2B244F0E4E7739
          3B64273E642A3C602A4B6C394B6B3A4D6A39486534415E2C43602E54723D2C4B
          1446672E53743B42662A4267294267274069264069263E6A253E6A253D6A2541
          6E292F5B18325C1B446D2F456A32254915597C4A3E612F4C6C3B4165313B5D27
          40662C2F581A4873303A68203A661F406926426A293D652448702F3C6527345D
          20446C32395D273F5F304C673F465B3BF3FFEBF1FCECE5EDE2EAECE6FFFFFEFD
          FEFCFBFEFCFBFEFCFCFFFDFCFFFDFAFFFDFCFFFDFAFFFDFCFFFDFAFFFBFBFFFA
          FAFEF8FAFEF8F9FEF5F8FDF4F8FDF4FDFFFBF8FCF6F7FBF6F2F5F3FDFFFFF5F7
          F8EBECF0F4F7FBFBFFFFF0F5F4FBFFFCF8FFF6E9F2E5EDF7E6F4FFEBEBFFE2E2
          FEDA577A4E2F50233E60313C5C2B41632D44642D42632A42662A42662A42662A
          40662A40662C3E662C3E662C3D662D365D25466B39406037263E1EEEFFEAE6F0
          E3F7FBF6FDFEFCFFFDFDFFFDFDFFFDFDFFFDFCFFFEFDFEFFFDFDFFFEFDFFFFFE
          FEFEFEFDFFFEFDFFFEFDFFFEFEFEFEFEFEFEFFFDFEFFFDFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFFFEFDFFFAF8FEE8E7E9F7FBF6F4FFEFE7F9DCE5FF
          D73D592B4564314868324564313552254B634045593CE5F5DEFAFFF5EBF3E8FD
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFFFCF8
          FDFDF7FFFDFCFCFFFDFBFEFCF9FEFCFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFDF9F9FDF7F3
          F8EFFBFFF8D2DACF55624C3C572C5F7F4946662F375A214C70343960223D6524
          45702D3D68254A7532355F1E376022436C2F3861243F672D40682E42652C4265
          2C42662A42662A42662A4267294067294067294068273E68273E69263E69263E
          69263D69263D69263D69263D68273B69273D68293D68293E672A3E662C3E652D
          3E652D40652D3E662C40662A3E67293E68273E69263E6A233E6A2338651C3965
          1E34601B3C66254A70343E632B4063314C6A3F3A54304B6145DBECD7F7FFF6E7
          F0E6F5FCF5E4E9E7F9FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFF
          FDFFFFFFFFFFFDFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFEFFFDFFFFFDFFFFFDFFFFFDFFFEFDFFFEFD
          FFFCFCFFFAFCFFFAF9FFF5F1FFEBEFFFE7E7FADF394E2E475C3B4E653F3A542C
          546F434B683A4262313C5E284A6F37385E2450763C43692F3C642A4367312E50
          2148663D4A6543E1F6DDF1FFEFF6FFF7EAF0EBFCFFFDFCFEFEFEFEFEFFFEFEFF
          FEFEFFFEFDFFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9ECEC
          ECFAFDFBE6EDE6F7FFF4E0F0D95264453B532B45623140602A4C6B3849663847
          613D344B2FF3FFF2EBFAECF5FEF4FDFFFBFBFEFCF5F5F5FFFEFFF2EFF1FFFCFE
          F7F5F5000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFE
          F8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
          F4F4F3F3F3F6F6F6FCFCFCEBEBEBF0F0F0FFFFFFDBE3D8455A3A3C592C4E6A3C
          42602F3E5E2843662E3E6226385F213159183B6524436D2C3F6928456F2E3661
          203D68293F682A4067294067294068274068274068274068273E68273E68273E
          69263E69263D69263D69263D69263D69263D69263D69263B69273B69273D6827
          3D68273D68293D68293E672A3E672A3E67293E67293E68273E69263E69263E6A
          253E6A253E6A2346732A3B681F44702B396022476C344464333F5D3239523049
          5F43ECFDE8EFFCEEE3EEE4E2E9E4DBE2DFFBFFFFF4F6F6FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFBFFFAE6EEE3F7FFF2F0FBEB
          F9FFF3EFFCE6E9F9E150624534492838502D415C34405D304363324B6C393155
          1F41652F4468323E612F48673A45623B3952305C7259DEF1DEEDF9EDF7FFF8FA
          FFFDFAFFFEFEFDFFFEFDFFFFFEFEFFFEFDFFFFFBFFFFFBFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF4F5F3FFFFFEE1E3E3E5E8E6E6EDE6F5FEF1F3FFEA4B5E3D46
          5F33425F2D3C5C265977464B6940213E1DE3FDE5D9ECDBE2EFE1EBF3E9FAFEF9
          F3F5F5FAF9FBF4F0F5FFFDFFF8F6F6000000FEFFFDFFFCF8FDFCF8FFFDFCFCFE
          FEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFAFAFAFFFFFFF2F2F2EAEAEAFCFCFC
          FDFFFBECFCE5DFF6D6425835546D473F5A2F4865374E6D3A4A6D354C70343B62
          244C7433345F1C3C682335611C406C27416C2940682740672940682740682740
          68274068273E68273E68273E69263E69263D69263D69263D69263D69263B6A25
          3B6A253B6A263B6A263D69263D69263D68273D68273E68273E68273E68273E68
          274069264069264069264069254069254069252F5814416A273B6224446A3036
          57243D5A2D58734C445A3DCADEC7EDFDEBD6E2D6F2FBF1FAFFFBE9EEECFAFCFC
          F6F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
          FEFFFDFDFFFBF8FFF5DFE7DCF2FCEFE9F4E4F7FFF3D1E1CAEEFFE6ECFFE3546C
          4A3C54312D4820526E4338572A4564374A693C3C5A2F49643C425C38465C3F2D
          412AF0FFEFEDF8EEEBF2EDFAFFFEFAFEFFFEFDFFFEFDFFFFFEFEFFFEFDFFFFFB
          FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F5FCFDF9EFF0EEFDFFFEF4
          FAF5DBE3D8F2FEEACDDFC2526A424460323D5B2A49663837552C5A75532B472A
          EDFFECF6FFF5F2FAF0FDFFFBF4F7F5F0EFF1F3F2F6FFFEFFFFFDFD000000FEFF
          FDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FBFBFBFAFAFA
          FAFAFAFEFEFEFDFDFDF7F7F7EAEEE9FAFFF7F1FFEBDDEDD6F0FFE8576C4C3049
          23466135405E2D4868312D5115496E2E365F1C47702C416D26416D2634601B40
          68274067294068274068274068274068273E68273E68273E69263E69263D6926
          3D69263D69263D6A253B6A253B6A253B6A253B6B233D6B233D6B233D6A253D6A
          253E6A253E6A253E6A253E692640692640692640692640692640692640682747
          6C2E51743B4C6E383959283A572A58714BD7EECEE3F6DDF4FFF2C4D1C3F8FFF7
          FAFFFAE8EDEBF9FEFCFDFFFFFBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFCFFFDFDFFFCFDFFFCECF3ECF6FEF4E0EA
          DEEEF8EBE3F1DFE9F8E3DCEED7E5F8DDF0FFE9E8FFDF516A483E5735445E3A4E
          66433C54323F53364F6249576553E6F3E5FAFFFBF9FFFDFAFFFEFCFEFFFCFEFF
          FEFEFEFFFEFEFFFEFDFFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC
          FDF9FFFFFCFEFFFDEDEEECFDFFFEF9FFF9C6D1C1F7FFEDEBFEDD475F37557044
          2F4C1F3D5830435F3B466042E2F8DFE6F3E3E0E8DDF8FCF6FCFFFDFCFBFDFFFE
          FFFBF8FAF7F5F5000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFA
          FEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFECECECFDFDFDFFFFFFF5F5F5F8F8F8FEFEFEF9F9F9F8FBF9EBEEECE7EE
          E7F7FFF6F3FDF0E4F0DC55664B516443475F354C693840602951733741662648
          6F2B3F6922436E253E68214068274067294068274068274068274068273E6926
          3E69263E69263E69263D6A253D6A253D6A253D6A253B6A253B6B233D6B233D6B
          223D6B223D6B223D6B233D6B233E6A233E6A233E6A233E6A2540692640692642
          682642672742672742662A4D6D373E5C2B385528476139475F3CD9EDD0F1FFEB
          F1FFEDDCE9DBEBF4EAFBFFFBEDF0EEEFF2F0F3F5F5FBFAFCFEFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEF1F0F2FBFA
          FCF8F7F9F4F6F6F9FCFAF5FBF6FBFFFBE4EDE3F7FFF5CEDBCDF6FFF3E8F8E6DB
          EBD9E6F9E4EFFFEDF0FFEAECFDE2E7F8DDF0FFE9F2FFEEF1FBEEF0F9EFF5FBF6
          E8EDEBFCFEFEFCFEFFFCFEFFFCFEFEFEFEFEFEFFFDFEFFFBFEFFFBFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFBFBFDF7F5F6F2F1F2F0EDF0EEFBFFFCEAF3E9
          DCE8D6ECFDE2354A29435D35486439435E364560393C5533495F42F4FFEEF0FA
          EDF1F9EFF6FAF5FBFBFBFEFDFFF9F6F8FDFBFB000000FEFFFDFFFCF8FDFCF8FF
          FDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFCFCFCF6F6F6F8F8F8F7F7
          F7F1F1F1FFFFFFFBFAFEF8FAFBF3F5F5E0E6E1FBFFF8E3EFDDF5FFE931442336
          4E244D6A3942612A45672B416424355C184269254A732F406827406729406729
          4068274068274068273E68273E69263E69263E69263D6A253D6A253D6A253D6A
          253B6B233B6B233D6B233D6B223D6B223D6B223D6B223D6B223E6B223E6A233E
          6A233E6A2540692640682742662A42662A42652C44642E425D31405731374D2A
          EEFFE3EAFBE0EDFDE6EDFBE9E6F0E3F7FFF6FBFFFCE2E5E3EAECECFDFFFFF9FB
          FBECEBEDFCFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFEFDFFFBFAFEFCFBFFFFFEFFFBFAFEF4F3F5EFF1F1FDFFFFF7FCFAD5
          DBD6F8FFFAE7EFE8F0FBF1F6FFF7F2FEF2F6FFF6EBF8EAEDF9E7F8FFEFE9F3E3
          E9F2E5EFF7EDE2E9E2F7FAF8FDFFFFFCFEFFFCFEFFFCFEFFFCFEFEFEFEFEFEFF
          FDFEFFFBFEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFF9EEF0EAFCFDF9
          FFFFFEE9EBEBE1E4E2FAFFFBF5FFF3F0FCEAE9FADF4B603F4F684239522C4C67
          3F445F384A6240D2E2CBFAFFF7F0F8EEEFF5F0F6F8F8FAF9FBF9F6F8FFFFFF00
          0000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFC
          FFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEBEB
          EBF1F1F1F6F6F6FEFEFEFFFFFFF5F5F5FFFEFFF7F3F9F8F4FAFFFBFFF8F8F8F5
          F7F1F1F8EBE0EBD7F1FFE54758376F845D2C46184966344C6B34406226406226
          3F642642662A4267294267294267294067294068274068274068273E69263E69
          263E6A253E6A253D6B233D6B233D6B233D6B233E6A233E6A233D6B233D6B233D
          6B233D6B233D6B233D6B233E69263E682740672942652C44642E446330446231
          4560354C5F3E4F6045ECFCE4D3E3CCEFFBE7F2FDEDF1FBEFFAFFFAFAFFFBF7FA
          F8FCFEFEF2F1F3E8E7E9FFFEFFFCF9FBFDFAFCFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFFFDF9FEE9E5EBF7F3F9F0ECF2FF
          FDFFFEFDFFFCFBFFF9FBFCFAFCFCE2E7E6F9FEFDF8FDFBE3E8E6E8EFEAF1F8F3
          FBFFFBEEF4E9F7FEF1EEF4E9F8FDF4FAFEF9FCFFFDF4F4F4F6F8F9FCFEFFFCFE
          FFFCFEFFFCFEFEFCFEFEFCFFFDFCFFFBFCFFFBFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFAFAF4FDFDF7FFFFFCE6E7E5EFF1F1FDFFFFF6FBF9F6FDF8F3FDF1F0FE
          ECE2F3D84156365167444C663E395429465E3B52624AD8E5D5EAF4E8F4FBF4FD
          FFFFFBFDFEF6F5F7F4F4F4000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFC
          F9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEF4F4F4FFFFFFF8F8F8F3F3F3FDFDFDF6F6F6FBFAFCFE
          F7FEFFF8FFF0ECF1FFFFFFFCFBF7F6F9F0FAFFF2E1ECD8F1FEE4F1FFE2455936
          475F3748613546623447643344642E44642D42652C44662A42662A42662A4066
          2A4267294068274068273E69264069263E6A253E6A253D6A253E6A253E6A253E
          69263E69263D69263D6A253D6A253D6A253D6A253D69263E68273E672A42652D
          426330446134455F37455E38475C3CF4FFEBD5E1CFF5FFEEF3FDEDFAFFF7F7FF
          F5FBFFFBF5F8F6FDFFFFF4F6F7EFEEF0FBFAFCFFFEFFEEEDEFFFFEFFFFFCFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFFFA
          F6FBFAF6FBFFFDFFFBF7FCE8E4E9FFFDFFEAE9EDFEFDFFFCFBFDF7F9FAFDFFFF
          F2F4F5FDFFFFF0F5F4FDFFFFF0F3F1FCFEF8F3F6EDFAFCF6FCFDF9F2F3F1FEFE
          FEF1F0F2FFFEFFFCFEFFFCFEFFFCFEFFFCFEFEFCFFFDFCFFFDFCFFFBFCFFFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9F9F3FFFFFBF0F1EDFDFEFCF9F9F9F0F2
          F3F7F9FAF8FDFBF5FCF5F7FFF5F6FFEE4152374F624149603A3D552B4A613B36
          492EEEFCEAF9FFF6EBF3ECEEF3F1EFF1F2FBFAFCFFFEFF000000FEFFFDFFFCF8
          FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFEFEFEFFFCFDFFFCFDFFFCFDFFFDFCFEFDF9FCFFF6FCFFF5
          FAFFF2F8FFF1ECF9E3ECFAE2ECFEE1EBFDDE445938546A473F572F4663324D6D
          373F5D2849693341612A4E71393C5D244C7034466A2E41682A43682A2C541341
          69284B7633335C194C76353E672A3E672A3D68293D68273D68273D69263D6926
          3D68273D66293F662E47673639552A506845405437E7F8DDF5FFEDF7FFF1F7FF
          F4FAFFF5FAFFF6FBFFF9FBFFFAFCFFFDFEFEFEFDFCFEFDFCFFFDFCFFFEFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
          FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFCFEFFFEFDFFFEFEFEFEFFFDFFFF
          FBFFFEFDFFFEFEFFFEFEFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFDFFFFFDFFFFFD
          FFFEFCFFFDFCFFFDFCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFF
          FBFFFFFBFEFFFDFEFEFEFCFEFFFCFEFFFAFEFFF5FAF8F7FFF8E4EEE1F4FFEC3E
          4D31485C39465C324C643C485C3F394833F6FFF1F1FAF0EEF3F1FDFFFFF9F8FA
          FAF9FB000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFE
          F8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFFFDFFFDFCFFFEFAFFFEFA
          FFFEFAFFFFF9FFFFF9FDFFF7FDFFF6EBF1E6F9FFF5F7FFF1E9F5E3F8FFF0F2FF
          E9E6F3DD5365484860384761334C66384662344865343D5A2954713F35551F45
          652E3E5E273B5C235D8047406428284C10507438345A2040652D3E652D3E662C
          3D672A3D68293D68273D68293D6829446B333155214B6A3D4C6642E4F7DCE4F3
          DEF6FFF1F4FCF1FAFFF6FBFFF9FBFFFAFBFFFAFBFEFCFBFDFDFDFCFEFDFCFEFD
          FCFFFDFCFFFEFDFFFEFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFDFFFDFE
          FFFEFDFFFEFEFFFEFEFFFEFEFFFEFEFEFDFFFEFEFEFEFDFFFEFEFEFEFDFFFEFD
          FFFEFDFFFEFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFDFFFFFEFFFFFEFFFFFEFFFE
          FDFFFFFFFFFDFFFFFDFFFFFDFFFEFCFFFDFCFFFDFCFFFDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFFFFFBFFFFFBFFFFFBFFFFFBFEFFFDFEFEFEFEFDFFFCFEFFDB
          DDDEFBFFFEEFF6EFF5FFF0F1FFE74555364658333A4F2944583B465841ECFAE8
          D5DFD3F5FBF6FBFFFFF9F8FAFFFEFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFE
          FEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FEFFFDFDFFF9FDFFF7FFFFF9FDFFF9FEFFFAFEFFFAFEFFFAFEFFFAFDFFF9FDFF
          FBEBEFE9F9FFF9F6FEF4F8FFF5FAFFF7EEF8E7F1FFE2EFFFE0E0F5CF4C633D3A
          522A415931566E444C6539496335506C3E4A673634512039562451703D54743E
          4867344063313E64303E652E3D662D3D672A3B68293B672A3D672A3B622B4568
          36DAF8CFEAFFE2EBFDE6F8FFF7EAF1EAF5F9F4FCFFFBFEFFFBFEFFFDFEFEFEFE
          FEFEFDFCFEFCFBFDFCFBFFFDFBFFFDFBFFFEFDFFFEFDFFFEFDFFFEFEFEFEFEFE
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFFFFFCFFFFFEFFFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFF
          FEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFDFFFFFDFFFFFDFFFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFEFDFFFEFCFFFDFCFFFD
          FCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFDFFFFFBFFFFFBFF
          FFFBFDFEFCFDFDFDFBFDFEFAFCFDECEEEFEFF2F0F0F8EEE9F3E2EDFAE04B5A3A
          4C5D3B51664641543B4B5947F9FFF7E9EFEAE4E9E8F7F6F8F2F1F3000000FEFF
          FDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFEFFFDFAFFF6FAFFF5FBFFF7FBFFF9FEFFFAFEFF
          FBFFFFFCFFFFFEF1F2F0FFFFFEF6F6F6F5F8F6F3F4F2F5F9F4EBECE8FCFFF7E6
          F1DDEBFADFF6FFEAE6F5D9F2FFE5F3FFE4E1F1D24154334054313E532D40552F
          4C643C4961393D552B40582E3954284262334063313E64303D662D3D672A3B68
          293B68293B672A3A61294D6F40E4FFDAE5FBDEF0FFEEDCE5DBEDF0EEF6F8F8FF
          FFFEFFFFFEFFFFFFFFFFFFFEFDFFFDFCFEFDFCFFFCFBFFFDFBFFFDFCFFFEFDFF
          FEFDFFFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFCFFFFFCFFFFFCFFFF
          FCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFE
          FDFFFEFDFFFFFDFFFEFEFEFEFEFEFEFEFEFEFEFEFEFFFDFEFEFEFEFFFDFFFFFE
          FFFFFEFDFFFEFCFFFDFCFFFDFCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFFDFDFFFDFCFFFEFAFFFFF9FFFEFAFDFEFCFDFDFDF1F0F2FBFDFEF2F4F5
          FDFFFCEEF5E8EFFBE558664A4E5E3F5065453B5135465742E1EEE0F8FFF9F5FA
          F9EFF1F2FFFEFF000000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFA
          FEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFFFDF7FFF5F7FF
          F4F8FFF6F9FFF9FBFFFAFCFFFDFDFFFEFDFFFFF9F9F9E3E3E3FFFEFFFCFCFCF8
          F6F6FFFFFEFEFCFBDADCD6F8FEF3E6EFE2F4FDF0DCE6D6EAF4E4F9FFF2EAF5E1
          F3FFEAEBF9E1ECFBE0F5FFE9D4E6C9F2FFE5DCEECF57694A3D53304260354063
          313E652E3D662C3D68293B69273B69273B6829476F353B5E2C46643BE1F7DACA
          D8C6F7FFF6FDFFFFF5F4F6FFFFFFFFFFFEFFFFFFFFFFFFFEFDFFFEFDFFFEFDFF
          FDFCFFFBFCFFFCFDFFFCFDFFFCFEFFFCFEFEFCFFFDFBFEFCFBFEFCFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFFFEFDFFFCFEFFFEFEFEFCFEFEFCFEFEFCFFFDFEFFFD
          FEFFFBFEFFFDFEFFFDFEFFFDFFFFFEFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFCFEFFFDFCFFFFF9FFFFF7FEFFF6FEFEF8
          FCFDFBF5F4F6FBFAFEFEFDFFF7F7F7F8FAF4F9FFF1E7F0DB4351352F44245D73
          564C5D484A5749E4ECE5FBFFFFF5F7F8F8F7F9000000FEFFFDFFFCF8FDFCF8FF
          FDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFCFFFEFEFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFCFFFDF6FEF7F6FFF5F7FFF8F9FFFAF9FEFCFAFFFEFDFFFFFDFFFFFF
          FEFFE1E0E2FDFAFCFBF9F9FFFEFEEAE8E7F6F4F3FFFFFCF0F1EFDFE2E0E9EAE6
          FDFFFCF2F4EEDDE2D9FDFFF8DEE7DAEBF4E7FBFFF5E5EFDEECF8E4EBF7E1F8FF
          EFE4F1DB495B3E4460354064303E652E3D672A3D68273B6A263B6A263B6A2635
          5F224B6F3939572CEEFFE5F5FFF1E1E9DFEFEFEFFEFDFFFEFFFDFEFFFDFEFEFE
          FFFFFFFFFEFFFEFDFFFEFDFFFEFDFFFCFDFFFCFEFFFCFEFFFCFEFEFCFFFDFAFF
          FDF9FFFAF9FFFAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFCFEFEFCFEFEFCFEFE
          FCFFFDFCFFFDFCFFFBFEFFFBFEFFFBFEFFFBFEFFFBFEFFFDFFFFFEFFFFFFFFFF
          FFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFAFFFFFAFFFEFCFB
          FEFEF8FEFFF5FEFFF4FEFFF6FEFDF9FBFBFBFAF9FDF9F7FDF9F8FCFFFFFEFAFE
          F3E3EBDAF0FDE53A4F2F41583840523B374638FAFFFBDCE2E1FDFFFFF5F7F800
          0000FEFFFDFFFCF8FDFCF8FFFDFCFCFEFEFBFEFCF9FFFAFAFEF8FAFEF8FFFDFC
          FFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFFFDF7FEF9F5FFF9F6FFFCF8FEFDF9
          FFFEF9FEFFFBFFFFFDFFFFE9E8EAFFFEFFFFFEFEE6E4E4FEFBF7FFFFFBFAF7F2
          F1EEEAFEFBFDF8F7FBFCF8FDE0DFE3F4F1F3FAFAFAF1F2F0F5F9F4FCFFFBFCFF
          FAFAFFF6F5FDF2F0F7EAF0F9ECF7FFF1EDFDE544603540642E3E652D3D68293D
          69263B6B233B6B233B6A253E69283C632B416033DCF4D2F0FCE8F9FFF6FFFFFE
          F0EEEEFEFFFDFEFFFBFEFFFDFEFFFDFEFEFEFEFEFEFCFEFFFBFDFEFCFEFFFCFE
          FFFAFEFFFAFFFEFAFFFDFAFFFDF9FFFAF9FFFAFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFEFEFAFFFEFAFFFEFAFFFDFAFFFDF9FFFAFBFFFAFBFFF9FEFFFAFEFF
          FAFEFFFBFFFFFEFFFFFFFFFFFFFFFEFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFF9FFFFFAFFFFFCFBFFFDF8FEFFF4FDFFF1FDFFF3FDFEF5FFFFFFFBF7
          FCF2F0F6F0EEF4FAFAFAF2F4EEFCFFF4E4EFDBEBFFE02F46264C5E47344433F6
          FEF7E9EFEEFCFEFFF5F7F8000000FEFFFDFDFCF8FDFCF8FDFEFCFCFEFEF9FEFC
          F9FFFAFAFEF8FAFEF8FDFEFCFFFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFEFEF8
          FFFCF6FFFCF8FEFDF9FFFEFAFEFFFBFFFFFBFFFFFDFFFFFFFEFFEEEDEFF2F0F0
          FFFFFEEAE9E5EFECE8FDFAF5FFFEFAF5F1F6F8F4FAF8F4FAFAF6FCFBF7FCF4F1
          F3FCFBFDFFFFFFFDFFFFF4F7F5F2F6F1EEF2EDFCFFFAFBFFF9E7ECE3F7FFF147
          5D3A44613342633040662C3E68273D6A253B6B233B6B233F6B28477033456534
          39522CF1FFE7F0FAEAF2F4EEFDFCF8FEFFFAFEFFFAFEFFFBFEFFFBFEFFFDFEFE
          FEFBFDFDFBFDFEFCFEFFFCFEFEFCFEFEFAFFFDFAFFFDF9FFFAF9FFFAF9FFFAFD
          FFFEFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFAFFFEFCFFFDFAFFFDFCFFFDFBFF
          FAFBFFFAFBFFFAFEFFFBFEFFFBFEFFFBFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFAFFFEFAFFFFFBFCFEFEF8FDFEF4FDFF
          F3FDFEF4FDFDF7FEFCFBFCF9FBFBFAFEF9F8FCF9F8FAEFF0EEF7F9F3F6FDF0E6
          F6DFE4F7DEF2FFEEF5FFF3EBF2EDFBFFFFF8FAFBFDFFFF000000FEFFFDFDFCF8
          FBFAF6FEFFFDFCFEFEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFEFDFFFEFD
          FFFEFDFFFEFDFFFEFDFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFEFCFFF8F7FFED4556354E653F425E3040632B46702F2F5C17
          4270283865204972343B5D27466136EDFFE2F2FDE9FEFFF7F4F7EEF2F3E9FFFF
          F8FDFEF5E5E6DDFAFCF6FFFFFCE1E2E0FBFBFBFEFEFEFCFEFEFCFEFEFBFEFCFB
          FFFAFBFFF9FBFFF9FBFFF9FEFFFBF6F7F3F8F9F7FEFFFBFCFDFBFDFEFCFEFCFB
          F1EFEEFFFDFDFFFDFDFFFCFEFFFBFFFFFBFFFFFBFFFFFAFFFFFBFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
          FFFFFFFFFDFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFFFFFFFFFFFEFFFFFCFFFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFF
          FFFFFFFFFFFFFFFEFFFFFCFBFFF9F9FFF7FBFFF9FBFFFAFBFEFCFBFDFDFDFDFD
          FDFDFD000000FEFFFDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFF
          F9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFBF8FFF0EFFCE4526243
          566E465675423B61254A753237641F47742F38622141642B4B683A445835ECFB
          E0F1F9E8F1F6E7FEFFF6FAFEF2E6E7DDFDFFF7F4F6F0F1F2EEE9EAE8FEFFFDFE
          FEFEFDFDFDFBFDFDFBFEFCFBFFFAFBFFFAFBFFF9FBFFFAECEFEDF6F7F5FFFFFE
          FAFBF9F8F9F7F9FAF8F1F2F0FFFFFFFFFDFDFFFDFDFFFCFEFFFBFFFFFBFFFFFB
          FFFFFAFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000FEFFFDFDFCF8F9FAF6FEFFFDFAFF
          FEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFBFBFFF4FCFFF1EAF7DD40543139552745683031591845712C3E6B263C67
          2440662A3758253F572D485B3AEFFEE3F3FEEAF3FBEAEEF5E8FDFFF6FBFFF7E5
          E9E3F8FCF7FCFFFDE5E7E7FBFDFEFBFDFEFBFDFEFBFDFDFDFDFDFDFDFDFDFEFC
          FBFDFDF9FBFCF9FAFEFCFEFFEEF0F1FAFCFDFDFFFFE8EAEBFEFEFEFDFDFDFDFD
          FDFDFDFDFDFCFEFFFCFEFFFCFEFFFCFEFFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFF
          FDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFFF7F0F7E8FBFFF14C5E3F4661363E60
          2A456B2F37621F2F5C174B77343D66283C61293E5B2D4A643C3F5330ECFBDFF2
          FEE8EEF8E7E9F2E5F7FFF4F2FAF0FBFFFCEEF1EFF6F8F8FBFDFDFBFDFEFCFEFF
          FCFEFFFEFDFFFEFDFFFEFDFFFCFEFFE7EAEEEBEEF3F1F4F8F3F6FAFBFEFFFCFD
          FFEFF1F2F0F2F3FBFDFDFDFDFDFDFDFDFDFEFCFDFEFCFFFDFCFFFDFCFFFDFCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8
          FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFCFBF7F4F7
          EED1D8C9F3FFE739502A3B582A587B42416B2A3F6B28406C29325D1C517A3D30
          541E375726486337516842394A2FEBF8E2F4FFEEF6FFF1F0FAEDF6FFF5F7FEF7
          FAFFFBF9FEFCFAFFFEFCFEFFFDFFFFFFFEFFFFFEFFFFFEFFFCFDFFF8FDFFF9FE
          FFF5FAFDF7FCFFE8EDEEE5E9EAFAFEFFF5F9FAF9FEFDFBFEFCFBFEFCFBFFFAFB
          FFFAFDFEFAFDFFF9FDFEFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFDFCF8F9FAF6FE
          FFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFEFEDBD9D9FFFFFCF9FFF4DDE9D5EFFFE4324D222B4C1950763A38
          62214773302E5918366120466F32466B3332541E3A57293E56333D5134F1FFE9
          E4F7DEECFBE6F2FFEEEBF8EADBE5D9F7FFF6F8FFF8FBFEFCFCFFFDFEFEFEFEFE
          FEFEFEFEFCFEFEF3F9F8E8F3F0E8F1EEF1FAF7F4FDFAF7FEFBF6FDFAE7ECEAF9
          FEFCF9FFFAFBFFFAFBFFFAFBFFF9FBFFF9FDFFF7FDFFF9FFFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFD
          FFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBF7FCE7E5E5F2F4EEE4EEDEF6
          FFEEEBFFDE2C491C365A243D6629335C1E406B2A315D1A4F7A39396224365F22
          5479413D5C2F425D36435B38475F3DEDFFE4E0F3D8EFFFEAF2FFECF4FFEEF5FF
          F0F7FFF4F8FFF5FAFFF6FAFEF8FCFEF8F9FDF7E5F1E5E6F7E9F6FFF7E2F0E4EF
          FDF1F6FFF7D6E1D7F7FFF8F8FFF9F8FFF9F9FFF9F9FFF9F9FFF9F9FFF9FBFFF9
          FBFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFD
          F8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFA
          F4F9FFFCFFFFFFFEF2F7EEE5F1DFD7E9CCECFFDF2B4B1C41652F426A30436C2E
          35601F3863223661204671303A6326486C363C5C2B4464354F6C3F3F5A324F68
          42324A28E9FEDEEFFFE4F2FFE8F3FFEAF6FFEDF6FFEFF8FFF0F7FEEFF5FFEEEB
          FEE5ECFFE5DBF1D5596E5532432E4353414F5C4CE5F2E4F8FFF7F8FFF7F9FFF9
          F9FFF9F9FFF9F9FFFAFBFFFAFBFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFDFCF8
          F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFBFFFAF6FCF6F6F6F7FBF6ECF5E8F7FFEECFE4C4
          50694351714233572143692F3B6427416A2C426C2B3964233E67293D63274A70
          36355A224466303B5C29456332496638435E3250683E4B603A4D613E536443EF
          FFE0F4FFE6F6FFE9EFFFE04961374966393B572C4F6A4348603E3C5235495C43
          495947F3FFF2F6FFF4F8FFF8FAFFFBFCFFFBFCFFFDFCFFFDFCFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFFFDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFF
          F9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF4F0F6F1EDF3F6F5F7
          FFFFFEEAEFE6EAF4E4F5FFEED0E5C52F48224E6B3E466635436731385E244069
          2C4871343E6729466D2F4A7133406729476D31486B323E61284D6D364C6C3636
          5321466030425B2F2C42185D724B465B3444553350663C42602B41612A50703A
          456332405B30455D3A60745741533CF3FFF0F6FFF4F8FFF8F9FEFCFCFFFDFCFE
          FEFCFEFEFCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFDFCF8F9FAF6FEFFFDFAFF
          FEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFEFFFCFAFFFBFAFCFFFFFFF2F6F1E5EDE3F4FEEEF6FFEDEFFFE4364C
          294E6840314E215876453C5D2A385A243D622A375D213D66283E67293C65273F
          6628335A1C3F64263A5C2047682F56753E506E394A6533496333415B2B3D5428
          4963334F7135375C1E4B6C333857244D683C3A532D405437F2FFEBF6FFF1F6FF
          F5F8FEF9F9FEFCFCFEFEFEFDFFFEFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFF
          FDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF2F1F5FDFCFFF8F7F9F5F5F5FCFFFDFBFF
          FAF5FAF1EEF7EAECF8E4DEEED6E9FBDE5268453E58303752275673464666353F
          642C4B7437436C2F426B2E3D64264D74364C7133456A2C3F63273C5E2237581F
          42622B41612B4B6B3547643243612C44662A3F63274F6F383E5C2B567146485E
          3BF0FFE6EEFDE8F6FFF3F7FEF7F8FEF9FBFDFDFEFEFEFEFDFFFEFDFFFEFDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8
          FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAECEDFDFF
          FFFBFDFEEDEFF0F7F7F7FEFEFEF9FAF8FCFFFAFDFFF9F1FBEBF9FFF0E7F5DD4B
          5D40556847354B28466038486839476B3731552141652F2C5119456B3131571D
          375D21496F3343672B4B6E354A6D3441642C40622C486A3440622C4666304968
          353F5B2D4E6840344928E6F9DEF0FFEAEFFCEEF6FFF5F8FEF9FAFDFBFDFDFDFD
          FDFDFFFEFEFFFEFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFDFCF8F9FAF6FE
          FFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFCFEFEFBFDFDFCFEFEF4F6F7F9F8FAF6F5F7EBEAECF8F8F8ED
          EBEAE8EAE4ECF2E7F7FFF1D8E3CFF7FFED5665493C513039572E325327325326
          5072434568365175413A5E28496E363D6329385E24476C343F642C3E632B365A
          244569334063314665383B562E435B38395030F1FFEBE9F9E7F0FDEFEBF4EAF8
          FEF9FAFDFBFCFCFCFDFDFDFFFDFDFFFDFDFFFEFDFFFEFDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFDFDFCF8F9FAF6FEFFFDFAFFFEFAFFFDF8FFFAF8FFF8FBFFF9FEFFFD
          FFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFBE6EBE9F2F4F4F6F8F9FD
          FCFEFFFEFFF4F0F5F9F5FAFFFEFFFFFDFDF8F7F3F9FCF3FFFFF7EBF3E2F6FFEB
          E9F9E1455D3D415F3C53724D36552E3B5C303D5E313E63313E64304168313E65
          2E4168313D642D446B3440663243693540643645603E4E6549F2FFEECCDFCAF1
          FFF0EEFCF1EFF9F3EFF6F3F8FDFCFAFCFDFCFBFDFEFCFCFFFCFDFFFDFCFFFEFB
          FFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFFFDFDFCF8FBFBF5FEFFFDFCFFFDFAFFFD
          F8FFFCF8FFF8FBFFF9FEFFFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FFFDEFF2F0FDFFFFF4F6F6EDECEEFCFBFFFCF8FDFDF9FEF4EEF3FFFDFFFDFBFB
          F2F1EDFCFFF6FCFFF5D7DED1F4FEEEF2FFEDE7FDE4DFF6DA4F6749435B3B3851
          2F556F4B37542D3F5A32446239435E36426037466139446239415F36486341EA
          FEE7E8F8E7E8F7E9F5FFF5F4FFF7F1F8F3F5FCF9FBFFFFFAFCFDFCFBFDFCFBFD
          FEFCFCFFFDFDFFFDFCFFFFFBFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFDFDF7
          FDFEF5FDFFF9FCFFFBF9FEFDF9FEFDF8FDFBFAFEF9FDFEFAFEFFFDFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
          FFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFCFFFFFCFDFFFBF5FDF2F5FE
          F1F5FFEFF5FFEFF5FFEFF5FFEEF5FFEEF4FFEE535E4A44503C4E5945515D49DF
          EAD6EAF6E2F8FFF0E8F3E3F9FFF7F9FFFAF9FFFAFCFFFBFCFFFDFCFFFDFDFFFF
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FD
          FBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFBFDF7FBFEF5FBFEF5FBFEF5FBFEF5FBFEF5FBFEF5FBFEF5F2
          F5ECF9FCF3F9FCF3E0E3DAFFFFF9F0F3EAF4F7EEFDFFF9FEFFFDFEFEFEFEFEFE
          FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFF
          FBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFF9FDFFF7FDFFF7FDFFF7FD
          FFF7FDFFF7FDFFF7FDFFF7F6F9F0FFFFF9FEFFF8F7FAF1F2F5ECECEFE6EBEEE5
          FAFCF6FEFFFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FFFAFEFFF8FEFFFAFEFFF8FEFFFAFEFFF8FEFFFAFEFFF8FDFFF9F7FAF1F1F3ED
          FCFFF6FAFCF6FFFFF9FDFFF9FEFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8
          FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFDFEFAFDFFF9FDFEFAFDFFF9FDFEFAFDFFF9FDFEFA
          FDFFF9FFFFFCF7F9F3FDFEFAFCFEF8F5F6F2F0F2ECF6F7F3F4F5F1FFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FF
          FFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFCFDFEFAFDFEFA
          FDFEFAFDFEFAFDFEFAFDFEFAFDFEFAF4F5F1F1F2EEFFFFFCF9FAF6FAFBF7F1F2
          EEFFFFFCFDFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFA
          FEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFEFCFDFEFCFDFEFCFDFEFCFDFEFCFDFEFCFDFEFCFDFEFCFFFFFEFDFE
          FCFFFFFEF9FAF8FFFFFEF9FAF8FBFCFAF5F6F4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFD
          F9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFF
          FDFEFFFDFEFFFDF5F6F4FEFFFDFDFEFCFCFDFBFCFDFBFFFFFEFCFDFBFEFFFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7
          FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FD
          FBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFF
          FBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFE
          FEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8
          FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FF
          FFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFDF9FEFDF8FDFCF8FDFBFDFEFA
          FEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FEFEFEFFFCF7FDFEF4FFFFF9FCFFFBFBFDFD
          F9FEFDF8FDFCF8FDFBFDFEFAFEFFFBFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        mmHeight = 15875
        mmLeft = 6085
        mmTop = 3969
        mmWidth = 21431
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 1852
      mmPrintPosition = 0
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 37571
        mmTop = 1058
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'MID'
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
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 219340
        mmPrintPosition = 0
        object ppImage1: TppImage
          UserName = 'Image1'
          AlignHorizontal = ahLeft
          AlignVertical = avTop
          MaintainAspectRatio = False
          Stretch = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          mmHeight = 73554
          mmLeft = 2646
          mmTop = 45508
          mmWidth = 92604
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Mc ID '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 3175
          mmTop = 2646
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppDBText34: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'MID'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 14288
          mmTop = 2646
          mmWidth = 6265
          BandType = 3
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label9'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Mc Type '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 49477
          mmTop = 2646
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppDBText41: TppDBText
          UserName = 'DBText9'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'MTYP1'
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
          mmTop = 2646
          mmWidth = 5207
          BandType = 3
          GroupNo = 0
        end
        object ppDBText38: TppDBText
          UserName = 'DBText6'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'MTYP'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 77788
          mmTop = 2646
          mmWidth = 7874
          BandType = 3
          GroupNo = 0
        end
        object ppDBText35: TppDBText
          UserName = 'DBText3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'MNAME'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 27517
          mmTop = 39423
          mmWidth = 23368
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Brand / Model  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 3175
          mmTop = 39423
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 123825
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
        object x001: TppLabel
          UserName = 'x001'
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
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 123825
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Actual Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 97896
          mmTop = 123825
          mmWidth = 28046
          BandType = 3
          GroupNo = 0
        end
        object x002: TppLabel
          UserName = 'x002'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 127794
          mmTop = 123825
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Needle throw  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 134938
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
        end
        object x003: TppLabel
          UserName = 'x003'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 134938
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Feed pitch  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 97896
          mmTop = 146050
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object x005: TppLabel
          UserName = 'x005'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 127794
          mmTop = 146050
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Thread trimmer  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 146050
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
        object x004: TppLabel
          UserName = 'x004'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 146050
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Stitch length  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 157163
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object x006: TppLabel
          UserName = 'x006'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 157163
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Lubricating oil  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 97896
          mmTop = 157163
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object x007: TppLabel
          UserName = 'x007'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 127794
          mmTop = 157163
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label401'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Brand of needle  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 168275
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
        object x008: TppLabel
          UserName = 'x008'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 168275
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Type of needle  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 97896
          mmTop = 168275
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object x009: TppLabel
          UserName = 'x009'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 127794
          mmTop = 168275
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel48: TppLabel
          UserName = 'Label48'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Needle gauge  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 179388
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object x010: TppLabel
          UserName = 'x010'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 179388
          mmWidth = 66411
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
          Caption = 'Overedge  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 97896
          mmTop = 179388
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object x011: TppLabel
          UserName = 'x011'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 127794
          mmTop = 179388
          mmWidth = 66411
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
          Caption = 'Presser foot lift  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 191294
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
        object x012: TppLabel
          UserName = 'x012'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 191294
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel54: TppLabel
          UserName = 'Label501'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Differential feed ratio  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 97896
          mmTop = 191294
          mmWidth = 27781
          BandType = 3
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Gathering stitch  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 131498
          mmTop = 191294
          mmWidth = 21431
          BandType = 3
          GroupNo = 0
        end
        object x013: TppLabel
          UserName = 'x013'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Gathering stitch  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 155311
          mmTop = 191294
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Stretching stitch  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 131498
          mmTop = 197380
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object x014: TppLabel
          UserName = 'x014'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Gathering stitch  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 155311
          mmTop = 197380
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Thread  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 207963
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object x015: TppLabel
          UserName = 'x015'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 207963
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sewing area  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 97896
          mmTop = 207963
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'X(lateral)  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 131498
          mmTop = 207963
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object x016: TppLabel
          UserName = 'x016'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Gathering stitch  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 155311
          mmTop = 207963
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Y(longitudinal)  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 131498
          mmTop = 214048
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object x017: TppLabel
          UserName = 'x017'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Gathering stitch  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 155311
          mmTop = 214048
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Stitch system  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 97896
          mmTop = 134938
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object x018: TppLabel
          UserName = 'x018'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 127794
          mmTop = 134938
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Arrived Date '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 78052
          mmTop = 39423
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppDBText33: TppDBText
          UserName = 'DBText33'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BDT'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 97896
          mmTop = 39423
          mmWidth = 14139
          BandType = 3
          GroupNo = 0
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'UYEAR'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3260
          mmLeft = 140759
          mmTop = 39423
          mmWidth = 3937
          BandType = 3
          GroupNo = 0
        end
        object ppLabel35: TppLabel
          UserName = 'Label35'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Used Year  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 121973
          mmTop = 39423
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppImage2: TppImage
          UserName = 'Image2'
          AlignHorizontal = ahLeft
          AlignVertical = avTop
          MaintainAspectRatio = False
          Stretch = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          mmHeight = 73554
          mmLeft = 98690
          mmTop = 45508
          mmWidth = 92340
          BandType = 3
          GroupNo = 0
        end
        object memo01: TppMemo
          UserName = 'memo01'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'memo01'
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 10583
          mmLeft = 3175
          mmTop = 8731
          mmWidth = 187325
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object memo02: TppMemo
          UserName = 'memo02'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'memo02'
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 16669
          mmLeft = 3175
          mmTop = 20373
          mmWidth = 187325
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Needle lift  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 2117
          mmTop = 199761
          mmWidth = 14224
          BandType = 3
          GroupNo = 0
        end
        object x019: TppLabel
          UserName = 'x019'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Max Sewing speed  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 199761
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
