object frmhbbg: Tfrmhbbg
  Left = 6
  Top = 12
  Width = 777
  Height = 582
  BorderIcons = [biSystemMenu]
  Caption = '花邊報告'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 52
    Height = 13
    Caption = '質檢編號'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 80
    Width = 52
    Height = 13
    Caption = '物料編號'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 256
    Top = 48
    Width = 52
    Height = 13
    Caption = '質檢日期'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 496
    Top = 80
    Width = 52
    Height = 13
    Caption = '質檢人員'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 16
    Width = 29
    Height = 13
    Caption = '定位:'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 16
    Top = 80
    Width = 52
    Height = 13
    Caption = '上料清單'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 496
    Top = 48
    Width = 52
    Height = 13
    Caption = '工程編號'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 112
    Width = 52
    Height = 13
    Caption = '審核人員'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 144
    Width = 43
    Height = 13
    Caption = 'QC評述'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 384
    Top = 144
    Width = 44
    Height = 13
    Caption = 'QA評述'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 46
    Width = 129
    Height = 21
    DataField = 'Rno'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 552
    Top = 78
    Width = 129
    Height = 21
    DataField = 'Qc'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBComboBox1: TDBComboBox
    Left = 312
    Top = 78
    Width = 137
    Height = 21
    DataField = 'Pname'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    ReadOnly = True
    Sorted = True
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 72
    Top = 13
    Width = 129
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = Edit1Change
  end
  object DateTimePicker1: TwwDBDateTimePicker
    Left = 312
    Top = 48
    Width = 137
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'Rrq'
    DataSource = DataSource1
    Epoch = 1950
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ShowButton = True
    TabOrder = 4
  end
  object DBComboBox2: TDBComboBox
    Left = 72
    Top = 78
    Width = 129
    Height = 21
    DataField = 'Hdo'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    ReadOnly = True
    Sorted = True
    TabOrder = 5
  end
  object BitBtn3: TBitBtn
    Left = 51
    Top = 509
    Width = 54
    Height = 35
    Caption = 'ID'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
      777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
      79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
      777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
      79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
      CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
    NumGlyphs = 2
  end
  object BitBtn4: TBitBtn
    Left = 353
    Top = 509
    Width = 52
    Height = 35
    Caption = '退出'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = BitBtn4Click
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
  end
  object BitBtn5: TBitBtn
    Left = 105
    Top = 509
    Width = 73
    Height = 35
    Caption = '查詢ID'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    OnClick = BitBtn5Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 216
    Width = 737
    Height = 281
    Color = 11927551
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = '新細明體'
    TitleFont.Style = []
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterColor = clWindow
    Columns = <
      item
        FieldName = 'Rno'
        Title.Alignment = taCenter
        Title.Caption = '質檢編號'
        Width = 68
        Footers = <>
      end
      item
        FieldName = 'Rrq'
        Title.Alignment = taCenter
        Title.Caption = '質檢日期'
        Width = 62
        Footers = <>
      end
      item
        FieldName = 'Hdo'
        Title.Alignment = taCenter
        Title.Caption = '上料清單'
        Width = 117
        Footers = <>
      end
      item
        FieldName = 'Pname'
        Title.Alignment = taCenter
        Title.Caption = '物料名稱'
        Width = 175
        Footers = <>
      end
      item
        FieldName = 'Pno'
        Title.Alignment = taCenter
        Title.Caption = '工程編號'
        Width = 104
        Footers = <>
      end
      item
        FieldName = 'Qc'
        Title.Alignment = taCenter
        Title.Caption = '質檢人員'
        Width = 75
        Footers = <>
      end
      item
        FieldName = 'Sh'
        Title.Alignment = taCenter
        Title.Caption = '審核員'
        Width = 61
        Footers = <>
      end
      item
        FieldName = 'Chck'
        ReadOnly = True
        Title.Caption = '審核'
        Footers = <>
      end>
  end
  object DBEdit3: TDBEdit
    Left = 552
    Top = 46
    Width = 129
    Height = 21
    DataField = 'Pno'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object DBEdit4: TDBEdit
    Left = 72
    Top = 110
    Width = 129
    Height = 21
    DataField = 'Sh'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object BitBtn6: TBitBtn
    Left = 16
    Top = 509
    Width = 35
    Height = 35
    Hint = '打印 Lot report'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnClick = BitBtn6Click
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
  end
  object DBCheckBox1: TDBCheckBox
    Left = 312
    Top = 112
    Width = 97
    Height = 17
    Caption = '接受'
    DataField = 'Oyes'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBCheckBox2: TDBCheckBox
    Left = 536
    Top = 112
    Width = 97
    Height = 17
    Caption = '不接受'
    DataField = 'Noca'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object BitBtn2: TBitBtn
    Left = 178
    Top = 509
    Width = 111
    Height = 35
    Caption = '物料/工程查詢'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 15
    OnClick = BitBtn2Click
    NumGlyphs = 2
  end
  object BitBtn8: TBitBtn
    Left = 289
    Top = 509
    Width = 64
    Height = 35
    Caption = 'P.O.查詢'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 16
    OnClick = BitBtn8Click
    NumGlyphs = 2
  end
  object DBRichEdit1: TwwDBRichEdit
    Left = 64
    Top = 144
    Width = 297
    Height = 57
    ScrollBars = ssBoth
    AutoURLDetect = False
    DataField = 'Bz'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    PrintJobName = 'Delphi 5'
    ReadOnly = True
    TabOrder = 17
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1
    PrintMargins.Bottom = 1
    PrintMargins.Left = 1
    PrintMargins.Right = 1
    RichEditVersion = 2
    Data = {
      B40000007B5C727466315C616E73695C616E73696370673935305C6465666630
      5C6465666C616E67313033335C6465666C616E676665313032387B5C666F6E74
      74626C7B5C66305C666E696C5C6663686172736574313336205C2762375C2737
      335C2762325C2764335C2761395C2766615C2763355C2765393B7D7D0D0A5C76
      6965776B696E64345C7563315C706172645C6C616E67313032385C66305C6673
      32302044425269636845646974315C7061720D0A7D0D0A00}
  end
  object DBRichEdit2: TwwDBRichEdit
    Left = 432
    Top = 144
    Width = 321
    Height = 57
    ScrollBars = ssBoth
    AutoURLDetect = False
    DataField = 'Qaps'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    PrintJobName = 'Delphi 5'
    ReadOnly = True
    TabOrder = 18
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1
    PrintMargins.Bottom = 1
    PrintMargins.Left = 1
    PrintMargins.Right = 1
    RichEditVersion = 2
    Data = {
      B40000007B5C727466315C616E73695C616E73696370673935305C6465666630
      5C6465666C616E67313033335C6465666C616E676665313032387B5C666F6E74
      74626C7B5C66305C666E696C5C6663686172736574313336205C2762375C2737
      335C2762325C2764335C2761395C2766615C2763355C2765393B7D7D0D0A5C76
      6965776B696E64345C7563315C706172645C6C616E67313032385C66305C6673
      32302044425269636845646974325C7061720D0A7D0D0A00}
  end
  object DataSource1: TDataSource
    DataSet = qcdm.yhb1
    Left = 348
    Top = 8
  end
  object lmaster: TQuery
    DatabaseName = 'Impqc'
    Constrained = True
    RequestLive = True
    SQL.Strings = (
      
        'select yhb1.rno,yhb1.qc,yhb1.rrq,yhb1.sh,yhb3.color,yhb3.gh,yhb1' +
        '.pname,yhb1.pno,yhb1.bz,yhb1.qaps,yhb1.oyes,yhb1.noca,count(rno)' +
        ' as jh from yhb1,yhb3 where yhb3.rno=yhb1.rno group by rno,gh,co' +
        'lor,pno,qc,sh,pname,bz,qaps,oyes,noca,rrq')
    Left = 536
    Top = 8
  end
  object lbg1: TQuery
    DatabaseName = 'Impqc'
    DataSource = dslmaster
    RequestLive = True
    SQL.Strings = (
      
        'select rch,btbfd,ufd,ums,shl,gh from yhb3 where rno=:rno and gh=' +
        ':gh and color=:color')
    Left = 564
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'rno'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'gh'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'color'
        ParamType = ptUnknown
      end>
  end
  object lrmaster: TppBDEPipeline
    DataSource = dslmaster
    UserName = 'lrmaster'
    Left = 648
    Top = 8
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = lrmaster
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
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    Left = 704
    Top = 8
    Version = '5.5'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = '沛  ��  製  衣  廠 '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = '新細明體'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5556
        mmLeft = 76729
        mmTop = 1852
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = '花邊質檢報告(水) '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = '新細明體'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 77523
        mmTop = 9260
        mmWidth = 42598
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      DataPipeline = lrdetail
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Rch'
        DataPipeline = lrdetail
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Name = '新細明體'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 794
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'btbfd'
        DataPipeline = lrdetail
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Name = '新細明體'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 55563
        mmTop = 794
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ufd'
        DataPipeline = lrdetail
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Name = '新細明體'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 91811
        mmTop = 794
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ums'
        DataPipeline = lrdetail
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Name = '新細明體'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 125942
        mmTop = 794
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'shl'
        DataPipeline = lrdetail
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Name = '新細明體'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159544
        mmTop = 794
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'Gh'
        DataPipeline = lrdetail
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Name = '新細明體'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 181769
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'color'
      DataPipeline = lrmaster
      NewPage = True
      ReprintOnSubsequentPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand3: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand3BeforePrint
        mmBottomOffset = 0
        mmHeight = 207169
        mmPrintPosition = 0
        object ppLabel86: TppLabel
          UserName = 'Label86'
          AutoSize = False
          Caption = '綜合評述(QC)  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6615
          mmTop = 111919
          mmWidth = 24606
          BandType = 3
          GroupNo = 1
        end
        object ppShape28: TppShape
          UserName = 'Shape28'
          mmHeight = 18785
          mmLeft = 6879
          mmTop = 117211
          mmWidth = 187855
          BandType = 3
          GroupNo = 1
        end
        object ppDBRichText3: TppDBRichText
          UserName = 'DBRichText3'
          DataField = 'bz'
          DataPipeline = lrmaster
          ParentDataPipeline = False
          mmHeight = 17198
          mmLeft = 7673
          mmTop = 118004
          mmWidth = 186267
          BandType = 3
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
        end
        object ppLabel87: TppLabel
          UserName = 'Label87'
          AutoSize = False
          Caption = '跟進結果 '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6085
          mmTop = 166688
          mmWidth = 16933
          BandType = 3
          GroupNo = 1
        end
        object ppShape29: TppShape
          UserName = 'Shape29'
          mmHeight = 21167
          mmLeft = 6350
          mmTop = 171186
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppMemo1: TppMemo
          UserName = 'Memo1'
          CharWrap = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 19579
          mmLeft = 7144
          mmTop = 171980
          mmWidth = 186532
          BandType = 3
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          Caption = '質檢編號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 6085
          mmTop = 2646
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
          Caption = '顏色代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 57415
          mmTop = 2646
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          Caption = '工程代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 99748
          mmTop = 2646
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          Caption = '總卷數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 151871
          mmTop = 2646
          mmWidth = 10319
          BandType = 3
          GroupNo = 1
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          DataField = 'rno'
          DataPipeline = lrmaster
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 21431
          mmTop = 2646
          mmWidth = 25929
          BandType = 3
          GroupNo = 1
        end
        object ppDBText37: TppDBText
          UserName = 'DBText37'
          DataField = 'color'
          DataPipeline = lrmaster
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 72231
          mmTop = 2646
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          DataField = 'pno'
          DataPipeline = lrmaster
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 114565
          mmTop = 2646
          mmWidth = 33073
          BandType = 3
          GroupNo = 1
        end
        object ppDBText39: TppDBText
          UserName = 'DBText39'
          DataField = 'jh'
          DataPipeline = lrmaster
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 163513
          mmTop = 2646
          mmWidth = 9790
          BandType = 3
          GroupNo = 1
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          Caption = '物料代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 6085
          mmTop = 8731
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppDBText40: TppDBText
          UserName = 'DBText40'
          DataField = 'pname'
          DataPipeline = lrmaster
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 20902
          mmTop = 8731
          mmWidth = 30692
          BandType = 3
          GroupNo = 1
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          Caption = '供應商號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 99748
          mmTop = 8731
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object gys: TppLabel
          UserName = 'gys'
          AutoSize = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 114565
          mmTop = 8731
          mmWidth = 33073
          BandType = 3
          GroupNo = 1
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          Caption = '采購單號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 57415
          mmTop = 8731
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object cgdh: TppLabel
          UserName = 'cgdh'
          AutoSize = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 71967
          mmTop = 8731
          mmWidth = 25665
          BandType = 3
          GroupNo = 1
        end
        object ppLabel101: TppLabel
          UserName = 'Label1001'
          AutoSize = False
          Caption = '散佈疵點 '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6615
          mmTop = 54769
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 59796
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 65617
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 71438
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 77258
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppShape24: TppShape
          UserName = 'Shape24'
          mmHeight = 29104
          mmLeft = 6615
          mmTop = 59796
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape25: TppShape
          UserName = 'Shape25'
          mmHeight = 29104
          mmLeft = 194469
          mmTop = 59796
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 61119
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel71: TppLabel
          UserName = 'Label701'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 38365
          mmTop = 61119
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel72: TppLabel
          UserName = 'Label702'
          Caption = '長度(cm)'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 67733
          mmTop = 61119
          mmWidth = 12965
          BandType = 3
          GroupNo = 1
        end
        object ppLabel73: TppLabel
          UserName = 'Label703'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 61119
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel75: TppLabel
          UserName = 'Label705'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 102394
          mmTop = 61119
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 134409
          mmTop = 61119
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel77: TppLabel
          UserName = 'Label77'
          Caption = '長度(cm)'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 164307
          mmTop = 61119
          mmWidth = 12965
          BandType = 3
          GroupNo = 1
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 183621
          mmTop = 61119
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppShape30: TppShape
          UserName = 'Shape30'
          mmHeight = 29104
          mmLeft = 17727
          mmTop = 59796
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape31: TppShape
          UserName = 'Shape301'
          mmHeight = 29104
          mmLeft = 66940
          mmTop = 60061
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape32: TppShape
          UserName = 'Shape32'
          mmHeight = 29104
          mmLeft = 80963
          mmTop = 60061
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape33: TppShape
          UserName = 'Shape33'
          mmHeight = 29369
          mmLeft = 97896
          mmTop = 59796
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object ppShape34: TppShape
          UserName = 'Shape34'
          mmHeight = 29104
          mmLeft = 112448
          mmTop = 59796
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape35: TppShape
          UserName = 'Shape35'
          mmHeight = 29104
          mmLeft = 162454
          mmTop = 59796
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape36: TppShape
          UserName = 'Shape36'
          mmHeight = 29104
          mmLeft = 178594
          mmTop = 59796
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object fdh5: TppLabel
          UserName = 'fdh5'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 102129
          mmTop = 66940
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fcd5: TppLabel
          UserName = 'fcd5'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 116152
          mmTop = 66940
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object cas5: TppLabel
          UserName = 'cas5'
          Caption = '程度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 167217
          mmTop = 66940
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object js5: TppLabel
          UserName = 'js5'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 183357
          mmTop = 66940
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fdh6: TppLabel
          UserName = 'fdh6'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 102129
          mmTop = 72761
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fcd6: TppLabel
          UserName = 'fcd6'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 116152
          mmTop = 72761
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object cas6: TppLabel
          UserName = 'cas6'
          Caption = '程度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 167217
          mmTop = 72761
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object js6: TppLabel
          UserName = 'js6'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 183357
          mmTop = 72761
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fdh1: TppLabel
          UserName = 'Label704'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 66940
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fcd1: TppLabel
          UserName = 'fcd1'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19315
          mmTop = 66940
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object cas1: TppLabel
          UserName = 'cas1'
          Caption = '程度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 70115
          mmTop = 66940
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object js1: TppLabel
          UserName = 'js1'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 66940
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fdh2: TppLabel
          UserName = 'fdh2'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 72761
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fcd2: TppLabel
          UserName = 'fcd2'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19315
          mmTop = 72761
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object cas2: TppLabel
          UserName = 'cas2'
          Caption = '程度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 70115
          mmTop = 72761
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object js2: TppLabel
          UserName = 'js2'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 72761
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 83079
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 88900
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object fdh7: TppLabel
          UserName = 'fdh7'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 101865
          mmTop = 78581
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fcd7: TppLabel
          UserName = 'fcd7'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 115888
          mmTop = 78581
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object cas7: TppLabel
          UserName = 'cas7'
          Caption = '程度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 166952
          mmTop = 78581
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object js7: TppLabel
          UserName = 'js7'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 183092
          mmTop = 78581
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fdh8: TppLabel
          UserName = 'fdh8'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 101865
          mmTop = 84402
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fcd8: TppLabel
          UserName = 'fcd8'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 115888
          mmTop = 84402
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object cas8: TppLabel
          UserName = 'cas8'
          Caption = '程度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 166952
          mmTop = 84402
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object js8: TppLabel
          UserName = 'js8'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 183092
          mmTop = 84402
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fdh3: TppLabel
          UserName = 'fdh3'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 78581
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fcd3: TppLabel
          UserName = 'fcd3'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19315
          mmTop = 78581
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object cas3: TppLabel
          UserName = 'cas3'
          Caption = '程度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 70115
          mmTop = 78581
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object js3: TppLabel
          UserName = 'js3'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 78581
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fdh4: TppLabel
          UserName = 'fdh4'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 84402
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object fcd4: TppLabel
          UserName = 'fcd4'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19315
          mmTop = 84402
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object cas4: TppLabel
          UserName = 'cas4'
          Caption = '程度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 70115
          mmTop = 84402
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object js4: TppLabel
          UserName = 'js4'
          Caption = '匹數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 84402
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel100: TppLabel
          UserName = 'Label100'
          AutoSize = False
          Caption = '局部疵點 '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6350
          mmTop = 14552
          mmWidth = 17463
          BandType = 3
          GroupNo = 1
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 19844
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 25135
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 30427
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 35719
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 41010
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppLine16: TppLine
          UserName = 'Line101'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 6615
          mmTop = 46567
          mmWidth = 188119
          BandType = 3
          GroupNo = 1
        end
        object ppShape26: TppShape
          UserName = 'Shape26'
          mmHeight = 26723
          mmLeft = 6615
          mmTop = 19844
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape27: TppShape
          UserName = 'Shape27'
          mmHeight = 26723
          mmLeft = 194469
          mmTop = 19844
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppLabel80: TppLabel
          UserName = 'Label706'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 20902
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel81: TppLabel
          UserName = 'Label81'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 38894
          mmTop = 20902
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel82: TppLabel
          UserName = 'Label82'
          Caption = '分數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 79640
          mmTop = 20902
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 102129
          mmTop = 20902
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel79: TppLabel
          UserName = 'Label79'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 134938
          mmTop = 20902
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel88: TppLabel
          UserName = 'Label88'
          Caption = '分數'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 175419
          mmTop = 20902
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppShape37: TppShape
          UserName = 'Shape37'
          mmHeight = 26723
          mmLeft = 17463
          mmTop = 19844
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape38: TppShape
          UserName = 'Shape38'
          mmHeight = 26723
          mmLeft = 66940
          mmTop = 19844
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape42: TppShape
          UserName = 'Shape42'
          mmHeight = 26988
          mmLeft = 97896
          mmTop = 19844
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object ppShape43: TppShape
          UserName = 'Shape43'
          mmHeight = 26723
          mmLeft = 112448
          mmTop = 19844
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppShape44: TppShape
          UserName = 'Shape44'
          mmHeight = 26723
          mmLeft = 162454
          mmTop = 19844
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object jdh4: TppLabel
          UserName = 'jdh4'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 42069
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jcd4: TppLabel
          UserName = 'jcd4'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19050
          mmTop = 42069
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jdh3: TppLabel
          UserName = 'jdh3'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 36777
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jcd3: TppLabel
          UserName = 'jcd3'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19050
          mmTop = 36777
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jdh1: TppLabel
          UserName = 'jdh1'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 26194
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jdh2: TppLabel
          UserName = 'jdh2'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8467
          mmTop = 31485
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jcd1: TppLabel
          UserName = 'jcd1'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19050
          mmTop = 26194
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jcd2: TppLabel
          UserName = 'jcd2'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19050
          mmTop = 31485
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jdh9: TppLabel
          UserName = 'jdh9'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 101865
          mmTop = 26194
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jdh10: TppLabel
          UserName = 'jdh10'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 101865
          mmTop = 31485
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jcd9: TppLabel
          UserName = 'jcd9'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 114300
          mmTop = 26194
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jcd10: TppLabel
          UserName = 'jcd10'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 114300
          mmTop = 31485
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jdh11: TppLabel
          UserName = 'jdh11'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 101865
          mmTop = 36777
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jcd11: TppLabel
          UserName = 'jcd11'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 114300
          mmTop = 36777
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jdh12: TppLabel
          UserName = 'jdh101'
          Caption = '代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 101865
          mmTop = 42069
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jcd12: TppLabel
          UserName = 'jcd101'
          Caption = '疵點'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 114300
          mmTop = 42069
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object jff91: TppLabel
          UserName = 'jff91'
          Caption = '1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 178594
          mmTop = 26194
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object jff101: TppLabel
          UserName = 'jff101'
          Caption = '1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 178594
          mmTop = 31485
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object jff111: TppLabel
          UserName = 'jff111'
          Caption = '1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 178594
          mmTop = 36777
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object jff121: TppLabel
          UserName = 'jff121'
          Caption = '1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 178594
          mmTop = 42069
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object jff11: TppLabel
          UserName = 'jff11'
          Caption = '1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 82021
          mmTop = 26194
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object jff21: TppLabel
          UserName = 'jff21'
          Caption = '1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 82021
          mmTop = 31485
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object jff31: TppLabel
          UserName = 'jff31'
          Caption = '1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 82021
          mmTop = 36777
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object jff41: TppLabel
          UserName = 'jff41'
          Caption = '1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 82021
          mmTop = 42069
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
        object ppLabel106: TppLabel
          UserName = 'Label106'
          Caption = '質檢機員'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 8996
          mmTop = 195527
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'qc'
          DataPipeline = lrmaster
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 24606
          mmTop = 195527
          mmWidth = 33867
          BandType = 3
          GroupNo = 1
        end
        object ppLabel107: TppLabel
          UserName = 'Label107'
          Caption = '審核人員'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 137054
          mmTop = 195527
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppDBText25: TppDBText
          UserName = 'DBText25'
          DataField = 'sh'
          DataPipeline = lrmaster
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 152665
          mmTop = 195527
          mmWidth = 30956
          BandType = 3
          GroupNo = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = '疵點分數合計:'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 7673
          mmTop = 48683
          mmWidth = 21431
          BandType = 3
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = '成衣每片裁片平均長度:'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 51065
          mmTop = 48683
          mmWidth = 35190
          BandType = 3
          GroupNo = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = '預計總損耗:'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 8202
          mmTop = 97631
          mmWidth = 17992
          BandType = 3
          GroupNo = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = '預計總損耗百分率:'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 102394
          mmTop = 97631
          mmWidth = 28310
          BandType = 3
          GroupNo = 1
        end
        object cdhj: TppLabel
          UserName = 'cdhj'
          AutoSize = False
          Caption = 'cdhj'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 30692
          mmTop = 48683
          mmWidth = 11377
          BandType = 3
          GroupNo = 1
        end
        object cpcd: TppLabel
          UserName = 'cpcd'
          AutoSize = False
          Caption = 'cpcd'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 88636
          mmTop = 48683
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object yjsh: TppLabel
          UserName = 'yjsh'
          AutoSize = False
          Caption = 'yjsh'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 28310
          mmTop = 97631
          mmWidth = 15346
          BandType = 3
          GroupNo = 1
        end
        object shpercent: TppLabel
          UserName = 'shpercent'
          AutoSize = False
          Caption = 'shpercent'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 132821
          mmTop = 97631
          mmWidth = 20108
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          AutoSize = False
          Caption = 'cm'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 102129
          mmTop = 48683
          mmWidth = 5556
          BandType = 3
          GroupNo = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          AutoSize = False
          Caption = '綜合評述(QA)  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6350
          mmTop = 139436
          mmWidth = 24606
          BandType = 3
          GroupNo = 1
        end
        object ppShape1: TppShape
          UserName = 'Shape1'
          mmHeight = 18785
          mmLeft = 6615
          mmTop = 144727
          mmWidth = 187855
          BandType = 3
          GroupNo = 1
        end
        object ppDBRichText1: TppDBRichText
          UserName = 'DBRichText1'
          DataField = 'qaps'
          DataPipeline = lrmaster
          ParentDataPipeline = False
          mmHeight = 17198
          mmLeft = 7408
          mmTop = 145521
          mmWidth = 186267
          BandType = 3
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
        end
        object myDBCheckBox1: TmyDBCheckBox
          UserName = 'DBCheckBox1'
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = lrmaster
          DataField = 'oyes'
          Transparent = True
          mmHeight = 5556
          mmLeft = 48154
          mmTop = 103188
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = '接受'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 55298
          mmTop = 104246
          mmWidth = 7673
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox2: TmyDBCheckBox
          UserName = 'DBCheckBox2'
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = lrmaster
          DataField = 'noca'
          Transparent = True
          mmHeight = 5556
          mmLeft = 118798
          mmTop = 103188
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = '不接受'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 125942
          mmTop = 104246
          mmWidth = 11377
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = '質檢日期'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 74877
          mmTop = 195527
          mmWidth = 14817
          BandType = 3
          GroupNo = 1
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'rrq'
          DataPipeline = lrmaster
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 91281
          mmTop = 195527
          mmWidth = 21431
          BandType = 3
          GroupNo = 1
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'ID#'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 15081
          mmTop = 202142
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          AutoSize = False
          Caption = '波頂主體封度(mm)'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 45508
          mmTop = 202142
          mmWidth = 29898
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          AutoSize = False
          Caption = '波谷主體封度(mm)'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 83609
          mmTop = 202142
          mmWidth = 29898
          BandType = 3
          GroupNo = 1
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          AutoSize = False
          Caption = '實際長度(m)'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 121973
          mmTop = 202142
          mmWidth = 19315
          BandType = 3
          GroupNo = 1
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          AutoSize = False
          Caption = '預計總損耗率%'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 149754
          mmTop = 202142
          mmWidth = 25665
          BandType = 3
          GroupNo = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'm'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 44979
          mmTop = 97631
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = '預計損耗:'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 118004
          mmTop = 48683
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object cdsh: TppLabel
          UserName = 'yjsh1'
          AutoSize = False
          Caption = 'yjsh'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 134144
          mmTop = 48683
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'm'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 147373
          mmTop = 48683
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = '總長度'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 151871
          mmTop = 8731
          mmWidth = 10319
          BandType = 3
          GroupNo = 1
        end
        object zcd: TppLabel
          UserName = 'bgpj1'
          AutoSize = False
          Caption = 'kgfd'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 8731
          mmWidth = 14288
          BandType = 3
          GroupNo = 1
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          Caption = 'm'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 178594
          mmTop = 8731
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          Caption = '色組代號'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 178859
          mmTop = 202142
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          Caption = '預計損耗:'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 159279
          mmTop = 48683
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object yjshl1: TppLabel
          UserName = 'yjshl1'
          AutoSize = False
          Caption = 'yjsh'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 175684
          mmTop = 48683
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = '預計損耗:'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 8202
          mmTop = 91017
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object yjsh1: TppLabel
          UserName = 'Label30'
          AutoSize = False
          Caption = 'yjsh'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 24342
          mmTop = 91017
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'm'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 37571
          mmTop = 91017
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = '預計損耗:'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 102129
          mmTop = 91017
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object yjshl2: TppLabel
          UserName = 'yjshl2'
          AutoSize = False
          Caption = 'yjsh'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Name = '新細明體'
          Font.Size = 10
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 118534
          mmTop = 91017
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object lrdetail: TppBDEPipeline
    DataSource = dslbg1
    UserName = 'lrdetail'
    Left = 676
    Top = 8
    object lrdetailppField1: TppField
      FieldAlias = 'rch'
      FieldName = 'rch'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object lrdetailppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'btbfd'
      FieldName = 'btbfd'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object lrdetailppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ufd'
      FieldName = 'ufd'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object lrdetailppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ums'
      FieldName = 'ums'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object lrdetailppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'shl'
      FieldName = 'shl'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object lrdetailppField6: TppField
      FieldAlias = 'gh'
      FieldName = 'gh'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
  end
  object dslmaster: TDataSource
    DataSet = qcdm.qry7
    Left = 592
    Top = 8
  end
  object lbg2: TQuery
    DatabaseName = 'Impqc'
    DataSource = dslmaster
    RequestLive = True
    SQL.Strings = (
      'select * from lbg2 where rno=:rno and gh=:gh and color=:color')
    Left = 424
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'rno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gh'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'color'
        ParamType = ptUnknown
      end>
  end
  object lbg3: TQuery
    DatabaseName = 'Impqc'
    DataSource = dslmaster
    RequestLive = True
    SQL.Strings = (
      'select * from lbg3 where rno=:rno and gh=:gh and color=:color')
    Left = 452
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'rno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gh'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'color'
        ParamType = ptUnknown
      end>
  end
  object dslbg1: TDataSource
    DataSet = qcdm.qry8
    Left = 620
    Top = 8
  end
end
