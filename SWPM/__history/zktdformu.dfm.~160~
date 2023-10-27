object frmzktd: Tfrmzktd
  Left = 233
  Top = 137
  Caption = 'QN goal achievement indicator(Sewing Workshop) - Ledger Sheet'
  ClientHeight = 440
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 399
    Width = 814
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label5: TLabel
      Left = 440
      Top = 8
      Width = 44
      Height = 18
      Caption = '*  E-OT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lbl850: TLabel
      Left = 648
      Top = 8
      Width = 28
      Height = 14
      Caption = 'lbl850'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 32
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
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
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 176
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 25
    Width = 814
    Height = 374
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    FooterRowCount = 2
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnTitleClick = DBGridEh1TitleClick
    Columns = <
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'DATE1'
        Footers = <
          item
            Value = 'W/Ave'
            ValueType = fvtStaticText
          end
          item
            Value = #32317#35336
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = #32299#21512#26085#26399'|'#38928#35373
        Visible = False
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'DT1'
        Footers = <
          item
            Value = 'W/Ave:'
            ValueType = fvtStaticText
          end
          item
            Value = 'Total:'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = #32299#21512#26085#26399'|'#36914#34892#20013
        Width = 61
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'XJS'
        Footers = <>
        ReadOnly = True
        Title.Caption = #27599#31680#29986#37327'('#22522#20110'100%'#25928#29575')'
        Width = 40
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'PSECT'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'In-line Sect|Def.'
        Width = 41
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'EOT'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = #19978#32218#32317#31680#25976'|'#20462#35330
        Width = 39
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'CSECT'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        Title.Caption = #19978#32218#32317#31680#25976'|'#23526#27841
        Width = 42
        OnEditButtonClick = DBGridEh1Columns4EditButtonClick
      end
      item
        Color = 14088905
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LFLAG1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25613#32791#31680#25976'|'#27573#23398
        Title.Color = 14088905
        Width = 20
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SHJS'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = #25613#32791#31680#25976'| '
        Width = 44
      end
      item
        Color = 14088905
        EditButtons = <>
        FieldName = 'FLAGS'
        Footers = <>
        ReadOnly = True
        Title.Caption = #31532#19968#31680#38283#22987#26178#38291'|'#20195#30721
        Title.Color = 14088905
        Width = 16
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'LST'
        Footers = <>
        ReadOnly = True
        Title.Caption = #31532#19968#31680#38283#22987#26178#38291'| '
        Width = 17
      end
      item
        Color = clAqua
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'KSJS'
        Footers = <>
        ReadOnly = True
        Title.Caption = #31532#19968#31680#38283#22987#26178#38291'| '
        Width = 40
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'LST1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26368#24460#19968#31680#32080#26463#26178#38291'| '
        Width = 17
      end
      item
        Color = clAqua
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'KSJS1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26368#24460#19968#31680#32080#26463#26178#38291'| '
        Width = 42
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'ZKTD'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = #23526#27841'|'#25613#32791#31680#25976
        Width = 44
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SCLHJS'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = #23526#27841'|'#33853#24460#31680#25976
        Width = 44
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'QYJS'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = #23526#27841'|'#21069#31227#31680#25976
        Width = 44
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'AWF'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
            DisplayFormat = '0.00'
            ValueType = fvtAvg
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = #30452#25509#24615#24037#20154'(AL'#24037#22580')|'#38928#35373
        Width = 44
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'TRS'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
            DisplayFormat = '0.00'
            ValueType = fvtAvg
          end
          item
            Value = '*  Not'
          end>
        ReadOnly = True
        Title.Caption = #30452#25509#24615#24037#20154'(AL'#24037#22580')|'#38928#35373
        Visible = False
        Width = 44
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SGT'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30452#25509#24615#24037#20154'(AL'#24037#22580')|'#38928#35373
        Visible = False
        Width = 36
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'GZW'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30452#25509#24615#24037#20154'(AL'#24037#22580')|'#38928#35373
        Visible = False
        Width = 36
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SJRS1'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
            DisplayFormat = '0.00'
            ValueType = fvtStaticText
          end
          item
            Value = 'apply'
          end>
        Title.Caption = #30452#25509#24615#24037#20154'(AL'#24037#22580')|'#38928#35373
        Visible = False
        Width = 43
        OnEditButtonClick = DBGridEh1Columns11EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SJRS2'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
            DisplayFormat = '0.00'
            ValueType = fvtStaticText
          end
          item
            Value = 'to'
          end>
        ReadOnly = True
        Title.Caption = #30452#25509#24615#24037#20154'(AL'#24037#22580')|'#38928#35373
        Visible = False
        Width = 44
        OnEditButtonClick = DBGridEh1Columns11EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'ALRS'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
            DisplayFormat = '0.00'
            ValueType = fvtStaticText
          end
          item
            Value = 'KB'
          end>
        ReadOnly = True
        Title.Caption = #30452#25509#24615#24037#20154'(AL'#24037#22580')|'#23526#27841
        Width = 43
        OnEditButtonClick = DBGridEh1Columns11EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SJYC'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
            DisplayFormat = '0.00'
            ValueType = fvtStaticText
          end
          item
          end>
        Title.Caption = 'Current|Machine Qty'
        Visible = False
        Width = 45
        OnEditButtonClick = DBGridEh1Columns11EditButtonClick
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'PQTY'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = #29986#37327'('#27161#26751#25976')|'#30070#22825'|'#23433#25490'|'#38928#35373
        Width = 43
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'PRJ1'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = #29986#37327'('#27161#26751#25976')|'#30070#22825'|'#23433#25490'|'#20462#35330
        Width = 42
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'AQTY'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        Title.Caption = #29986#37327'('#27161#26751#25976')|'#30070#22825'|'#23526#27841
        Width = 45
        OnEditButtonClick = DBGridEh1Columns24EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'AQTY1'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        Title.Caption = 'Current O/P|Chase back'
        Visible = False
        Width = 45
        OnEditButtonClick = DBGridEh1Columns24EditButtonClick
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'DIFF'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'Current O/P|Total'
        Visible = False
        Width = 45
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'ZHJS'
        Footers = <
          item
          end
          item
            DisplayFormat = '0.00'
            ValueType = fvtSum
          end>
        Title.Caption = 'Chase Time Sect Hr|Chase back'
        Visible = False
        Width = 43
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'CEOT'
        Footers = <
          item
            DisplayFormat = '0.00'
          end
          item
            ValueType = fvtSum
          end>
        Title.Caption = 'Chase Time Sect Hr|Used'
        Visible = False
        Width = 49
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'DBXL'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Chase Time Sect Hr|Eff %'
        Visible = False
        Width = 46
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'EFF1'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
            DisplayFormat = '0.00'
            ValueType = fvtStaticText
          end
          item
          end>
        ReadOnly = True
        Title.Caption = #25289#25928#29575'('#38598#39636')|'#23433#25490
        Width = 46
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'PEFF'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
          end>
        ReadOnly = True
        Title.Caption = #25289#25928#29575'('#38598#39636')|'#20462#35330
        Visible = False
        Width = 46
      end
      item
        Color = clAqua
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'EFF2'
        Footer.DisplayFormat = '0.00'
        Footers = <
          item
            DisplayFormat = '0.00'
            ValueType = fvtStaticText
          end
          item
          end>
        ReadOnly = True
        Title.Caption = #25289#25928#29575'('#38598#39636')|'#23526#27841
        Width = 45
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 296
      Top = 8
      Width = 52
      Height = 14
      Caption = 'Cust Style:'
    end
    object DBText1: TDBText
      Left = 352
      Top = 8
      Width = 43
      Height = 15
      AutoSize = True
      Color = clBtnFace
      DataField = 'FLAG6'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 472
      Top = 8
      Width = 24
      Height = 14
      Caption = 'QN#:'
    end
    object DBText2: TDBText
      Left = 528
      Top = 8
      Width = 43
      Height = 15
      AutoSize = True
      Color = clBtnFace
      DataField = 'J2_JOB'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 584
      Top = 8
      Width = 10
      Height = 14
      Caption = ' - '
    end
    object DBText3: TDBText
      Left = 600
      Top = 8
      Width = 43
      Height = 15
      AutoSize = True
      Color = clBtnFace
      DataField = 'RWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 8
      Width = 23
      Height = 14
      Caption = 'Line:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 64
      Top = 8
      Width = 43
      Height = 15
      AutoSize = True
      Color = clBtnFace
      DataField = 'Pline'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 392
      Top = 8
      Width = 43
      Height = 15
      AutoSize = True
      Color = clBtnFace
      DataField = 'CSTYLE'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 128
      Top = 8
      Width = 36
      Height = 14
      Caption = 'Project:'
    end
    object DBText6: TDBText
      Left = 176
      Top = 8
      Width = 43
      Height = 15
      AutoSize = True
      Color = clBtnFace
      DataField = 'J_no'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 720
      Top = 8
      Width = 38
      Height = 14
      Caption = 'QN Qty:'
    end
    object DBText7: TDBText
      Left = 776
      Top = 8
      Width = 43
      Height = 15
      AutoSize = True
      Color = clBtnFace
      DataField = 'Scqty'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 637
      Top = 8
      Width = 10
      Height = 14
      Caption = ' - '
    end
    object DBText8: TDBText
      Left = 653
      Top = 8
      Width = 43
      Height = 15
      AutoSize = True
      Color = clBtnFace
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from line_shjs where pline='#39'T003U'#39' and dt1='#39'2016-06-01'#39
    FieldDefs = <
      item
        Name = 'PLINE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DATE1'
        DataType = ftDate
      end
      item
        Name = 'SHJS'
        DataType = ftFloat
      end
      item
        Name = 'ZKTD'
        DataType = ftFloat
      end
      item
        Name = 'SCLHJS'
        DataType = ftFloat
      end
      item
        Name = 'QYJS'
        DataType = ftFloat
      end
      item
        Name = 'FLAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SJRS'
        DataType = ftFloat
      end
      item
        Name = 'SJYC'
        DataType = ftFloat
      end
      item
        Name = 'SJRS1'
        DataType = ftFloat
      end
      item
        Name = 'SJRS2'
        DataType = ftFloat
      end
      item
        Name = 'PQTY'
        DataType = ftFloat
      end
      item
        Name = 'AQTY'
        DataType = ftFloat
      end
      item
        Name = 'DIFF'
        DataType = ftFloat
      end
      item
        Name = 'AQTY1'
        DataType = ftFloat
      end
      item
        Name = 'EOT'
        DataType = ftFloat
      end
      item
        Name = 'EFF1'
        DataType = ftFloat
      end
      item
        Name = 'EFF2'
        DataType = ftFloat
      end
      item
        Name = 'XJS'
        DataType = ftFloat
      end
      item
        Name = 'PSECT'
        DataType = ftFloat
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'LSTR'
        DataType = ftFloat
      end
      item
        Name = 'KSJS'
        DataType = ftFloat
      end
      item
        Name = 'ZHJS'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DT1'
        DataType = ftDate
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'DBXL'
        DataType = ftFloat
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FCCS'
        DataType = ftWideString
        Size = 8
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'FLAG3'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAGS'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'LST'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'DFLAG'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'MARKS'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'DSECT'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG1'
        DataType = ftFloat
      end
      item
        Name = 'TRS'
        DataType = ftFloat
      end
      item
        Name = 'CEOT'
        DataType = ftFloat
      end
      item
        Name = 'PQTY1'
        DataType = ftFloat
      end
      item
        Name = 'MPSECT'
        DataType = ftFloat
      end
      item
        Name = 'PEFF'
        DataType = ftFloat
      end
      item
        Name = 'LST1'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'KSJS1'
        DataType = ftFloat
      end
      item
        Name = 'MWFLB'
        DataType = ftFloat
      end
      item
        Name = 'MWFS'
        DataType = ftFloat
      end
      item
        Name = 'MWFA'
        DataType = ftFloat
      end
      item
        Name = 'MWFAC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBN'
        DataType = ftFloat
      end
      item
        Name = 'GSDMBN'
        DataType = ftFloat
      end
      item
        Name = 'RFIDP'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'MWFSC'
        DataType = ftFloat
      end
      item
        Name = 'MWFLBC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBNC'
        DataType = ftFloat
      end
      item
        Name = 'PRJ1'
        DataType = ftFloat
      end
      item
        Name = 'PRJ2'
        DataType = ftFloat
      end
      item
        Name = 'PRJ3'
        DataType = ftFloat
      end
      item
        Name = 'PRJ4'
        DataType = ftFloat
      end
      item
        Name = 'AQTY_SP'
        DataType = ftFloat
      end
      item
        Name = 'AQTY1_SP'
        DataType = ftFloat
      end
      item
        Name = 'DIFF_SP'
        DataType = ftFloat
      end
      item
        Name = 'DBXL_SP'
        DataType = ftFloat
      end
      item
        Name = 'EFF2_SP'
        DataType = ftFloat
      end
      item
        Name = 'SJRS3'
        DataType = ftFloat
      end
      item
        Name = 'CSECT_SP'
        DataType = ftFloat
      end
      item
        Name = 'CEOT_SP'
        DataType = ftFloat
      end
      item
        Name = 'MANTBL'
        DataType = ftInteger
      end
      item
        Name = 'AWF'
        DataType = ftFloat
      end
      item
        Name = 'EWF'
        DataType = ftFloat
      end
      item
        Name = 'ASAH'
        DataType = ftFloat
      end
      item
        Name = 'ESAH'
        DataType = ftFloat
      end
      item
        Name = 'GZW'
        DataType = ftInteger
      end
      item
        Name = 'SGT'
        DataType = ftInteger
      end
      item
        Name = 'ACT_POSTBOX'
        DataType = ftInteger
      end
      item
        Name = 'YHBH'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TTL_JS'
        DataType = ftFloat
      end
      item
        Name = 'CSECT_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'YH1'
        DataType = ftFloat
      end
      item
        Name = 'BH1'
        DataType = ftFloat
      end
      item
        Name = 'BH2'
        DataType = ftFloat
      end
      item
        Name = 'BH3'
        DataType = ftFloat
      end
      item
        Name = 'ALXJS'
        DataType = ftFloat
      end
      item
        Name = 'EXJS'
        DataType = ftFloat
      end
      item
        Name = 'CWO'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'QNF'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'QNPC'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'QNC'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'XLBX'
        DataType = ftFloat
      end
      item
        Name = 'XLBX_LJ'
        DataType = ftFloat
      end
      item
        Name = 'YCBX'
        DataType = ftFloat
      end
      item
        Name = 'YCBX_LJ'
        DataType = ftFloat
      end
      item
        Name = 'DBL'
        DataType = ftFloat
      end
      item
        Name = 'IECLS'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TMU'
        DataType = ftFloat
      end
      item
        Name = 'PFSAH'
        DataType = ftFloat
      end
      item
        Name = 'PFXJS'
        DataType = ftFloat
      end
      item
        Name = 'RSXC'
        DataType = ftFloat
      end
      item
        Name = 'DSZJ_RS'
        DataType = ftFloat
      end
      item
        Name = 'DSZJ_SJ'
        DataType = ftFloat
      end
      item
        Name = 'SDT'
        DataType = ftDate
      end
      item
        Name = 'ZDT'
        DataType = ftDate
      end
      item
        Name = 'XLBX_LJ1'
        DataType = ftFloat
      end
      item
        Name = 'YCBX_LJ1'
        DataType = ftFloat
      end
      item
        Name = 'PPCCFM'
        DataType = ftBoolean
      end
      item
        Name = 'SJSHL'
        DataType = ftFloat
      end
      item
        Name = 'MPSECT_SP'
        DataType = ftFloat
      end
      item
        Name = 'SJSHL1'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PQTY0'
        DataType = ftInteger
      end
      item
        Name = 'ZYCBX'
        DataType = ftFloat
      end
      item
        Name = 'ZYCBX_LJ'
        DataType = ftFloat
      end
      item
        Name = 'ZYCBX_LJ1'
        DataType = ftFloat
      end
      item
        Name = 'EOT_SP'
        DataType = ftFloat
      end
      item
        Name = 'PRJ1_SP'
        DataType = ftFloat
      end
      item
        Name = 'DBL_SP'
        DataType = ftFloat
      end
      item
        Name = 'MARKS_SP'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'GSL1'
        DataType = ftFloat
      end
      item
        Name = 'GSL1_SP'
        DataType = ftFloat
      end
      item
        Name = 'TBU'
        DataType = ftFloat
      end
      item
        Name = 'EFF3_SP'
        DataType = ftFloat
      end
      item
        Name = 'EFF3'
        DataType = ftFloat
      end
      item
        Name = 'XLBX_SP'
        DataType = ftFloat
      end
      item
        Name = 'XLBX_LJ_SP'
        DataType = ftFloat
      end
      item
        Name = 'XLBX_LJ1_SP'
        DataType = ftFloat
      end
      item
        Name = 'YCBX_SP'
        DataType = ftFloat
      end
      item
        Name = 'YCBX_LJ_SP'
        DataType = ftFloat
      end
      item
        Name = 'YCBX_LJ1_SP'
        DataType = ftFloat
      end
      item
        Name = 'ZYCBX_SP'
        DataType = ftFloat
      end
      item
        Name = 'ZYCBX_LJ_SP'
        DataType = ftFloat
      end
      item
        Name = 'ZYCBX_LJ1_SP'
        DataType = ftFloat
      end
      item
        Name = 'CFM1'
        DataType = ftBoolean
      end
      item
        Name = 'ALRS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'dt1'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    BeforePost = Query1BeforePost
    AfterPost = Query1AfterPost
    Left = 248
    Top = 200
    object Query1PLINE: TWideStringField
      FieldName = 'PLINE'
      Required = True
      Size = 5
    end
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object Query1DSEQ: TIntegerField
      FieldName = 'DSEQ'
      Required = True
    end
    object Query1DATE1: TDateField
      FieldName = 'DATE1'
    end
    object Query1SHJS: TFloatField
      FieldName = 'SHJS'
    end
    object Query1ZKTD: TFloatField
      FieldName = 'ZKTD'
    end
    object Query1SCLHJS: TFloatField
      FieldName = 'SCLHJS'
    end
    object Query1QYJS: TFloatField
      FieldName = 'QYJS'
    end
    object Query1FLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object Query1SJRS: TFloatField
      FieldName = 'SJRS'
    end
    object Query1SJYC: TFloatField
      FieldName = 'SJYC'
    end
    object Query1SJRS1: TFloatField
      FieldName = 'SJRS1'
    end
    object Query1SJRS2: TFloatField
      FieldName = 'SJRS2'
    end
    object Query1PQTY: TFloatField
      FieldName = 'PQTY'
    end
    object Query1AQTY: TFloatField
      FieldName = 'AQTY'
      OnChange = Query1AQTYChange
    end
    object Query1DIFF: TFloatField
      FieldName = 'DIFF'
    end
    object Query1AQTY1: TFloatField
      FieldName = 'AQTY1'
      OnChange = Query1AQTYChange
    end
    object Query1EOT: TFloatField
      FieldName = 'EOT'
    end
    object Query1EFF1: TFloatField
      FieldName = 'EFF1'
    end
    object Query1EFF2: TFloatField
      FieldName = 'EFF2'
    end
    object Query1XJS: TFloatField
      FieldName = 'XJS'
    end
    object Query1PSECT: TFloatField
      FieldName = 'PSECT'
    end
    object Query1CSTYLE: TWideStringField
      FieldName = 'CSTYLE'
      Size = 35
    end
    object Query1J2_JOB: TWideStringField
      FieldName = 'J2_JOB'
      Size = 10
    end
    object Query1RWO: TWideStringField
      FieldName = 'RWO'
      Size = 10
    end
    object Query1LSTR: TFloatField
      FieldName = 'LSTR'
    end
    object Query1KSJS: TFloatField
      FieldName = 'KSJS'
      DisplayFormat = '0.0;;;'
    end
    object Query1ZHJS: TFloatField
      FieldName = 'ZHJS'
    end
    object Query1LFLAG: TWideStringField
      FieldName = 'LFLAG'
      Size = 5
    end
    object Query1TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Size = 10
    end
    object Query1TSHOP: TWideStringField
      FieldName = 'TSHOP'
      Size = 10
    end
    object Query1DT1: TDateField
      FieldName = 'DT1'
    end
    object Query1CSECT: TFloatField
      FieldName = 'CSECT'
      OnChange = Query1AQTYChange
      DisplayFormat = '0.00'
    end
    object Query1DBXL: TFloatField
      FieldName = 'DBXL'
    end
    object Query1J_NO: TWideStringField
      FieldName = 'J_NO'
    end
    object Query1FCCS: TWideStringField
      FieldName = 'FCCS'
      Size = 8
    end
    object Query1ACOL: TWideStringField
      FieldName = 'ACOL'
      Size = 3
    end
    object Query1SCQTY: TIntegerField
      FieldName = 'SCQTY'
    end
    object Query1FLAG3: TWideStringField
      FieldName = 'FLAG3'
      Size = 3
    end
    object Query1FLAG6: TWideStringField
      FieldName = 'FLAG6'
      Size = 5
    end
    object Query1FLAGS: TWideStringField
      FieldName = 'FLAGS'
      Size = 5
    end
    object Query1CFM: TBooleanField
      FieldName = 'CFM'
    end
    object Query1LST: TWideStringField
      FieldName = 'LST'
      Size = 3
    end
    object Query1DFLAG: TWideStringField
      FieldName = 'DFLAG'
      Size = 3
    end
    object Query1MARKS: TWideStringField
      FieldName = 'MARKS'
      Size = 250
    end
    object Query1DSECT: TFloatField
      FieldName = 'DSECT'
    end
    object Query1LFLAG1: TFloatField
      FieldName = 'LFLAG1'
    end
    object Query1TRS: TFloatField
      FieldName = 'TRS'
    end
    object Query1CEOT: TFloatField
      FieldName = 'CEOT'
      OnChange = Query1AQTYChange
      DisplayFormat = '0.00'
    end
    object Query1PQTY1: TFloatField
      FieldName = 'PQTY1'
    end
    object Query1MPSECT: TFloatField
      FieldName = 'MPSECT'
    end
    object Query1PEFF: TFloatField
      FieldName = 'PEFF'
    end
    object Query1LST1: TWideStringField
      FieldName = 'LST1'
      Size = 3
    end
    object Query1KSJS1: TFloatField
      FieldName = 'KSJS1'
    end
    object Query1MWFLB: TFloatField
      FieldName = 'MWFLB'
      OnChange = Query1MWFLBChange
    end
    object Query1MWFS: TFloatField
      FieldName = 'MWFS'
      OnChange = Query1MWFLBChange
    end
    object Query1MWFA: TFloatField
      FieldName = 'MWFA'
      OnChange = Query1MWFLBChange
    end
    object Query1MWFAC: TFloatField
      FieldName = 'MWFAC'
      OnChange = Query1MWFLBChange
    end
    object Query1MWFBN: TFloatField
      FieldName = 'MWFBN'
    end
    object Query1GSDMBN: TFloatField
      FieldName = 'GSDMBN'
    end
    object Query1RFIDP: TWideStringField
      FieldName = 'RFIDP'
      Size = 2
    end
    object Query1MWFSC: TFloatField
      FieldName = 'MWFSC'
    end
    object Query1MWFLBC: TFloatField
      FieldName = 'MWFLBC'
    end
    object Query1MWFBNC: TFloatField
      FieldName = 'MWFBNC'
    end
    object Query1PRJ1: TFloatField
      FieldName = 'PRJ1'
    end
    object Query1PRJ2: TFloatField
      FieldName = 'PRJ2'
    end
    object Query1PRJ3: TFloatField
      FieldName = 'PRJ3'
    end
    object Query1PRJ4: TFloatField
      FieldName = 'PRJ4'
    end
    object Query1AQTY_SP: TFloatField
      FieldName = 'AQTY_SP'
      OnChange = Query1AQTY_SPChange
    end
    object Query1AQTY1_SP: TFloatField
      FieldName = 'AQTY1_SP'
      OnChange = Query1AQTY_SPChange
    end
    object Query1DIFF_SP: TFloatField
      FieldName = 'DIFF_SP'
    end
    object Query1DBXL_SP: TFloatField
      FieldName = 'DBXL_SP'
    end
    object Query1EFF2_SP: TFloatField
      FieldName = 'EFF2_SP'
    end
    object Query1SJRS3: TFloatField
      FieldName = 'SJRS3'
      OnChange = Query1ALRSChange
    end
    object Query1CSECT_SP: TFloatField
      FieldName = 'CSECT_SP'
      OnChange = Query1AQTY_SPChange
    end
    object Query1CEOT_SP: TFloatField
      FieldName = 'CEOT_SP'
      OnChange = Query1AQTY_SPChange
    end
    object Query1MANTBL: TIntegerField
      FieldName = 'MANTBL'
    end
    object Query1AWF: TFloatField
      FieldName = 'AWF'
    end
    object Query1EWF: TFloatField
      FieldName = 'EWF'
    end
    object Query1ASAH: TFloatField
      FieldName = 'ASAH'
    end
    object Query1ESAH: TFloatField
      FieldName = 'ESAH'
    end
    object Query1GZW: TIntegerField
      FieldName = 'GZW'
    end
    object Query1SGT: TIntegerField
      FieldName = 'SGT'
    end
    object Query1ACT_POSTBOX: TIntegerField
      FieldName = 'ACT_POSTBOX'
    end
    object Query1YHBH: TWideStringField
      FieldName = 'YHBH'
      Size = 5
    end
    object Query1TTL_JS: TFloatField
      FieldName = 'TTL_JS'
    end
    object Query1CSECT_DIFF: TFloatField
      FieldName = 'CSECT_DIFF'
    end
    object Query1YH1: TFloatField
      FieldName = 'YH1'
    end
    object Query1BH1: TFloatField
      FieldName = 'BH1'
    end
    object Query1BH2: TFloatField
      FieldName = 'BH2'
    end
    object Query1BH3: TFloatField
      FieldName = 'BH3'
    end
    object Query1ALXJS: TFloatField
      FieldName = 'ALXJS'
    end
    object Query1EXJS: TFloatField
      FieldName = 'EXJS'
    end
    object Query1CWO: TWideStringField
      FieldName = 'CWO'
      Size = 5
    end
    object Query1QNF: TWideStringField
      FieldName = 'QNF'
      Size = 5
    end
    object Query1QNPC: TWideStringField
      FieldName = 'QNPC'
      Size = 5
    end
    object Query1QNC: TWideStringField
      FieldName = 'QNC'
      Size = 5
    end
    object Query1XLBX: TFloatField
      FieldName = 'XLBX'
    end
    object Query1XLBX_LJ: TFloatField
      FieldName = 'XLBX_LJ'
    end
    object Query1YCBX: TFloatField
      FieldName = 'YCBX'
    end
    object Query1YCBX_LJ: TFloatField
      FieldName = 'YCBX_LJ'
    end
    object Query1DBL: TFloatField
      FieldName = 'DBL'
    end
    object Query1IECLS: TWideStringField
      FieldName = 'IECLS'
      Size = 5
    end
    object Query1TMU: TFloatField
      FieldName = 'TMU'
    end
    object Query1PFSAH: TFloatField
      FieldName = 'PFSAH'
    end
    object Query1PFXJS: TFloatField
      FieldName = 'PFXJS'
    end
    object Query1RSXC: TFloatField
      FieldName = 'RSXC'
    end
    object Query1DSZJ_RS: TFloatField
      FieldName = 'DSZJ_RS'
    end
    object Query1DSZJ_SJ: TFloatField
      FieldName = 'DSZJ_SJ'
    end
    object Query1SDT: TDateField
      FieldName = 'SDT'
    end
    object Query1ZDT: TDateField
      FieldName = 'ZDT'
    end
    object Query1XLBX_LJ1: TFloatField
      FieldName = 'XLBX_LJ1'
    end
    object Query1YCBX_LJ1: TFloatField
      FieldName = 'YCBX_LJ1'
    end
    object Query1PPCCFM: TBooleanField
      FieldName = 'PPCCFM'
    end
    object Query1SJSHL: TFloatField
      FieldName = 'SJSHL'
    end
    object Query1MPSECT_SP: TFloatField
      FieldName = 'MPSECT_SP'
    end
    object Query1PQTY0: TIntegerField
      FieldName = 'PQTY0'
    end
    object Query1ZYCBX: TFloatField
      FieldName = 'ZYCBX'
    end
    object Query1ZYCBX_LJ: TFloatField
      FieldName = 'ZYCBX_LJ'
    end
    object Query1ZYCBX_LJ1: TFloatField
      FieldName = 'ZYCBX_LJ1'
    end
    object Query1EOT_SP: TFloatField
      FieldName = 'EOT_SP'
    end
    object Query1PRJ1_SP: TFloatField
      FieldName = 'PRJ1_SP'
    end
    object Query1DBL_SP: TFloatField
      FieldName = 'DBL_SP'
    end
    object Query1MARKS_SP: TWideStringField
      FieldName = 'MARKS_SP'
      Size = 250
    end
    object Query1GSL1: TFloatField
      FieldName = 'GSL1'
    end
    object Query1GSL1_SP: TFloatField
      FieldName = 'GSL1_SP'
    end
    object Query1TBU: TFloatField
      FieldName = 'TBU'
    end
    object Query1EFF3_SP: TFloatField
      FieldName = 'EFF3_SP'
    end
    object Query1EFF3: TFloatField
      FieldName = 'EFF3'
    end
    object Query1XLBX_SP: TFloatField
      FieldName = 'XLBX_SP'
    end
    object Query1XLBX_LJ_SP: TFloatField
      FieldName = 'XLBX_LJ_SP'
    end
    object Query1XLBX_LJ1_SP: TFloatField
      FieldName = 'XLBX_LJ1_SP'
    end
    object Query1YCBX_SP: TFloatField
      FieldName = 'YCBX_SP'
    end
    object Query1YCBX_LJ_SP: TFloatField
      FieldName = 'YCBX_LJ_SP'
    end
    object Query1YCBX_LJ1_SP: TFloatField
      FieldName = 'YCBX_LJ1_SP'
    end
    object Query1ZYCBX_SP: TFloatField
      FieldName = 'ZYCBX_SP'
    end
    object Query1ZYCBX_LJ_SP: TFloatField
      FieldName = 'ZYCBX_LJ_SP'
    end
    object Query1ZYCBX_LJ1_SP: TFloatField
      FieldName = 'ZYCBX_LJ1_SP'
    end
    object Query1CFM1: TBooleanField
      FieldName = 'CFM1'
    end
    object Query1ALRS: TFloatField
      FieldName = 'ALRS'
      OnChange = Query1ALRSChange
    end
    object Query1marks_sp_wip: TBooleanField
      FieldName = 'marks_sp_wip'
    end
    object Query1marks_sp_cmp: TBooleanField
      FieldName = 'marks_sp_cmp'
    end
    object Query1muser: TWideStringField
      FieldName = 'muser'
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 280
    Top = 200
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 312
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 200
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 376
    Top = 200
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'PLINE'
      FieldName = 'PLINE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'SEQ'
      FieldName = 'SEQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'DSEQ'
      FieldName = 'DSEQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'DATE1'
      FieldName = 'DATE1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'SHJS'
      FieldName = 'SHJS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'ZKTD'
      FieldName = 'ZKTD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'SCLHJS'
      FieldName = 'SCLHJS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'QYJS'
      FieldName = 'QYJS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'FLAG'
      FieldName = 'FLAG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'SJRS'
      FieldName = 'SJRS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'SJYC'
      FieldName = 'SJYC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'SJRS1'
      FieldName = 'SJRS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'SJRS2'
      FieldName = 'SJRS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'PQTY'
      FieldName = 'PQTY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'AQTY'
      FieldName = 'AQTY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'DIFF'
      FieldName = 'DIFF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'AQTY1'
      FieldName = 'AQTY1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'EOT'
      FieldName = 'EOT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'EFF1'
      FieldName = 'EFF1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'EFF2'
      FieldName = 'EFF2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'XJS'
      FieldName = 'XJS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'PSECT'
      FieldName = 'PSECT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'CSTYLE'
      FieldName = 'CSTYLE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'J2_JOB'
      FieldName = 'J2_JOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'RWO'
      FieldName = 'RWO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'LSTR'
      FieldName = 'LSTR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'KSJS'
      FieldName = 'KSJS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'ZHJS'
      FieldName = 'ZHJS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'LFLAG'
      FieldName = 'LFLAG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'TPLANT'
      FieldName = 'TPLANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'TSHOP'
      FieldName = 'TSHOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'DT1'
      FieldName = 'DT1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'CSECT'
      FieldName = 'CSECT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'DBXL'
      FieldName = 'DBXL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'J_NO'
      FieldName = 'J_NO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'FCCS'
      FieldName = 'FCCS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'ACOL'
      FieldName = 'ACOL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'SCQTY'
      FieldName = 'SCQTY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'FLAG3'
      FieldName = 'FLAG3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'FLAG6'
      FieldName = 'FLAG6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'FLAGS'
      FieldName = 'FLAGS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'CFM'
      FieldName = 'CFM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'LST'
      FieldName = 'LST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'DFLAG'
      FieldName = 'DFLAG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'MARKS'
      FieldName = 'MARKS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'DSECT'
      FieldName = 'DSECT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'LFLAG1'
      FieldName = 'LFLAG1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'TRS'
      FieldName = 'TRS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'CEOT'
      FieldName = 'CEOT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'PQTY1'
      FieldName = 'PQTY1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'MPSECT'
      FieldName = 'MPSECT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'PEFF'
      FieldName = 'PEFF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = 'LST1'
      FieldName = 'LST1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField54: TppField
      FieldAlias = 'KSJS1'
      FieldName = 'KSJS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField55: TppField
      FieldAlias = 'MWFLB'
      FieldName = 'MWFLB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'MWFS'
      FieldName = 'MWFS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField57: TppField
      FieldAlias = 'MWFA'
      FieldName = 'MWFA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField58: TppField
      FieldAlias = 'MWFAC'
      FieldName = 'MWFAC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField59: TppField
      FieldAlias = 'MWFBN'
      FieldName = 'MWFBN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField60: TppField
      FieldAlias = 'GSDMBN'
      FieldName = 'GSDMBN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField61: TppField
      FieldAlias = 'RFIDP'
      FieldName = 'RFIDP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField62: TppField
      FieldAlias = 'MWFSC'
      FieldName = 'MWFSC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField63: TppField
      FieldAlias = 'MWFLBC'
      FieldName = 'MWFLBC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField64: TppField
      FieldAlias = 'MWFBNC'
      FieldName = 'MWFBNC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField65: TppField
      FieldAlias = 'PRJ1'
      FieldName = 'PRJ1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField66: TppField
      FieldAlias = 'PRJ2'
      FieldName = 'PRJ2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField67: TppField
      FieldAlias = 'PRJ3'
      FieldName = 'PRJ3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField68: TppField
      FieldAlias = 'PRJ4'
      FieldName = 'PRJ4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField69: TppField
      FieldAlias = 'AQTY_SP'
      FieldName = 'AQTY_SP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField70: TppField
      FieldAlias = 'AQTY1_SP'
      FieldName = 'AQTY1_SP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField71: TppField
      FieldAlias = 'DIFF_SP'
      FieldName = 'DIFF_SP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField72: TppField
      FieldAlias = 'DBXL_SP'
      FieldName = 'DBXL_SP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField73: TppField
      FieldAlias = 'EFF2_SP'
      FieldName = 'EFF2_SP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField74: TppField
      FieldAlias = 'SJRS3'
      FieldName = 'SJRS3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField75: TppField
      FieldAlias = 'CSECT_SP'
      FieldName = 'CSECT_SP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField76: TppField
      FieldAlias = 'CEOT_SP'
      FieldName = 'CEOT_SP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
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
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
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
    Left = 408
    Top = 200
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38894
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'LWPM  ----  QN Goal Achievement Indicator(Sewing Workshop) - Led' +
          'ger Sheet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5673
        mmLeft = 39423
        mmTop = 4763
        mmWidth = 158750
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 16140
        mmLeft = 1058
        mmTop = 22754
        mmWidth = 281517
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 18785
        mmWidth = 9779
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 248709
        mmTop = 7673
        mmWidth = 13547
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 264055
        mmTop = 7673
        mmWidth = 635
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 248709
        mmTop = 11113
        mmWidth = 6604
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 264055
        mmTop = 11113
        mmWidth = 635
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 12171
        mmTop = 24606
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 137848
        mmTop = 18785
        mmWidth = 5927
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Each'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 27252
        mmTop = 24342
        mmWidth = 4826
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 27252
        mmTop = 28575
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'O/P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 27252
        mmTop = 32808
        mmWidth = 3641
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Sect Hr Opt Perf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 38100
        mmTop = 24606
        mmWidth = 20913
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line Work (Opt Perf)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 82286
        mmTop = 24606
        mmWidth = 22056
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 65088
        mmTop = 29104
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CL '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 65088
        mmTop = 32279
        mmWidth = 3302
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 65088
        mmTop = 35454
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '1st Sect'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 77788
        mmTop = 29104
        mmWidth = 7662
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 77788
        mmTop = 32279
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 77788
        mmTop = 35454
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CCL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 97896
        mmTop = 29104
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
        Caption = 'Sect'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 97896
        mmTop = 32279
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
        Caption = 'Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 97896
        mmTop = 35454
        mmWidth = 2244
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Curr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 103717
        mmTop = 29104
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Behind'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 103717
        mmTop = 32279
        mmWidth = 6604
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 103717
        mmTop = 35454
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Curr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 112184
        mmTop = 29104
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ahead'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 112184
        mmTop = 32279
        mmWidth = 6138
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 112184
        mmTop = 35454
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def (On-Std)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 121444
        mmTop = 24606
        mmWidth = 14605
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Work'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 120915
        mmTop = 28840
        mmWidth = 4953
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Force'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 120915
        mmTop = 33073
        mmWidth = 5461
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 127794
        mmTop = 28840
        mmWidth = 7324
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Curr (excl BN) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 145521
        mmTop = 24606
        mmWidth = 16595
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Work'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 137319
        mmTop = 29104
        mmWidth = 4953
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Force'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 137319
        mmTop = 32279
        mmWidth = 5461
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 144727
        mmTop = 29104
        mmWidth = 7324
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 171450
        mmTop = 24606
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'O/P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 171450
        mmTop = 28310
        mmWidth = 3641
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(GA) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 171450
        mmTop = 31750
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Curr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 205317
        mmTop = 24606
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'O/P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 189707
        mmTop = 28840
        mmWidth = 3641
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Chase Time Sect Hr  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 230982
        mmTop = 24606
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'O/P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 206111
        mmTop = 28840
        mmWidth = 3641
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(CsT) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 205052
        mmTop = 32015
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'O/P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 214578
        mmTop = 28840
        mmWidth = 3641
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 214313
        mmTop = 33073
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label602'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Chase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 237861
        mmTop = 28840
        mmWidth = 6138
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'back'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 237861
        mmTop = 33073
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'#39's Time Eff %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 256117
        mmTop = 24606
        mmWidth = 16468
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 253207
        mmTop = 31485
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Curr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 268817
        mmTop = 31485
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 20108
        mmTop = 18785
        mmWidth = 13081
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
        mmHeight = 11113
        mmLeft = 42863
        mmTop = 27781
        mmWidth = 3175
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
        mmHeight = 15875
        mmLeft = 61383
        mmTop = 23019
        mmWidth = 3175
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
        mmHeight = 11113
        mmLeft = 75671
        mmTop = 27781
        mmWidth = 3175
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
        mmHeight = 11113
        mmLeft = 102923
        mmTop = 27781
        mmWidth = 3175
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
        mmHeight = 10848
        mmLeft = 111390
        mmTop = 27781
        mmWidth = 3175
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
        mmHeight = 15875
        mmLeft = 119856
        mmTop = 22754
        mmWidth = 3175
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
        mmHeight = 15875
        mmLeft = 24871
        mmTop = 23019
        mmWidth = 3175
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
        mmLeft = 127000
        mmTop = 27781
        mmWidth = 3175
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15875
        mmLeft = 135467
        mmTop = 23019
        mmWidth = 3175
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
        mmHeight = 11113
        mmLeft = 143934
        mmTop = 27781
        mmWidth = 1852
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
        mmHeight = 11113
        mmLeft = 153194
        mmTop = 27781
        mmWidth = 3175
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
        mmHeight = 11113
        mmLeft = 161661
        mmTop = 27781
        mmWidth = 3175
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
        mmHeight = 15875
        mmLeft = 170657
        mmTop = 23019
        mmWidth = 3175
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16140
        mmLeft = 187325
        mmTop = 22754
        mmWidth = 3175
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
        mmHeight = 11113
        mmLeft = 203730
        mmTop = 27781
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
        mmHeight = 11113
        mmLeft = 211932
        mmTop = 27781
        mmWidth = 3175
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
        mmHeight = 15875
        mmLeft = 228071
        mmTop = 22754
        mmWidth = 3175
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15875
        mmLeft = 251884
        mmTop = 23019
        mmWidth = 3175
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tplant'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 12700
        mmTop = 18785
        mmWidth = 7197
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tshop'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 35983
        mmTop = 18785
        mmWidth = 7154
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 45508
        mmTop = 18785
        mmWidth = 5503
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PLINE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 53181
        mmTop = 18785
        mmWidth = 8424
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 95250
        mmTop = 18785
        mmWidth = 13420
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 116681
        mmTop = 18785
        mmWidth = 11303
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 145521
        mmTop = 18785
        mmWidth = 11430
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 163513
        mmTop = 18785
        mmWidth = 7027
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 159544
        mmTop = 18785
        mmWidth = 2667
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 27781
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 2117
        mmTop = 31485
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Curr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 12700
        mmTop = 31485
        mmWidth = 4741
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
        mmHeight = 15875
        mmLeft = 33867
        mmTop = 23019
        mmWidth = 1852
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 33867
        mmTop = 27781
        mmWidth = 137054
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 34925
        mmTop = 31485
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Curr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 53711
        mmTop = 31485
        mmWidth = 4741
        BandType = 0
      end
      object title001: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 182034
        mmTop = 18785
        mmWidth = 677
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 187590
        mmTop = 27781
        mmWidth = 64558
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
        mmHeight = 11113
        mmLeft = 96044
        mmTop = 27781
        mmWidth = 3175
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText301'
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 112184
        mmTop = 18785
        mmWidth = 9186
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 63765
        mmTop = 18785
        mmWidth = 9144
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 75406
        mmTop = 18785
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 168540
        mmTop = 18785
        mmWidth = 2667
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FCCS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 172244
        mmTop = 18785
        mmWidth = 7874
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Used'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 229923
        mmTop = 28840
        mmWidth = 4953
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Net)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 53711
        mmTop = 34660
        mmWidth = 7281
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Eff %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 246328
        mmTop = 32279
        mmWidth = 5038
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Gr) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 34660
        mmTop = 34660
        mmWidth = 6943
        BandType = 0
      end
      object tst01: TppLabel
        UserName = 'tst01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5673
        mmLeft = 201348
        mmTop = 4763
        mmWidth = 24606
        BandType = 0
      end
      object title002: TppLabel
        UserName = 'title002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 182034
        mmTop = 14817
        mmWidth = 677
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 86519
        mmTop = 27781
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Last Sect'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 87048
        mmTop = 29104
        mmWidth = 8848
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 87842
        mmTop = 32279
        mmWidth = 3768
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 87842
        mmTop = 35454
        mmWidth = 4741
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
        mmHeight = 11113
        mmLeft = 220663
        mmTop = 27781
        mmWidth = 3175
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
        mmHeight = 11113
        mmLeft = 195792
        mmTop = 27781
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diff'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 197909
        mmTop = 28840
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diff'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 221986
        mmTop = 28840
        mmWidth = 3175
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15875
        mmLeft = 277019
        mmTop = 23019
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cfm '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 277548
        mmTop = 24606
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(NoT) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 189177
        mmTop = 32015
        mmWidth = 8594
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Work '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 153988
        mmTop = 29104
        mmWidth = 5546
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diff '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 153988
        mmTop = 35454
        mmWidth = 3768
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mc Diff '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 162454
        mmTop = 29104
        mmWidth = 7197
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Force '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 153988
        mmTop = 32279
        mmWidth = 6054
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
        mmHeight = 15875
        mmLeft = 179388
        mmTop = 23019
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'aDef '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 180182
        mmTop = 24606
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'O/P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 180182
        mmTop = 28310
        mmWidth = 3641
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(GA) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 180182
        mmTop = 31750
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'aDef '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 262203
        mmTop = 31485
        mmWidth = 5080
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
        mmHeight = 11113
        mmLeft = 52388
        mmTop = 27781
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'aDef '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 44450
        mmTop = 31485
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Gr) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 44186
        mmTop = 34660
        mmWidth = 6943
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        Brush.Color = clLime
        Pen.Mode = pmMask
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 203994
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 76200
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Color = 14074287
        Pen.Mode = pmMask
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 268553
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 14074287
        Pen.Mode = pmMask
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 212461
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = clLime
        Pen.Mode = pmMask
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 187590
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = clLime
        Pen.Mode = pmMask
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 144198
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Color = 14088905
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 61383
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clLime
        Pen.Mode = pmMask
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 53446
        mmTop = 0
        mmWidth = 7408
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
        DataField = 'DATE1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 1852
        mmTop = 529
        mmWidth = 6816
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
        DataField = 'XJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 28957
        mmTop = 529
        mmWidth = 3852
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
        DataField = 'PSECT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 35094
        mmTop = 529
        mmWidth = 7027
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
        DataField = 'SHJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 69681
        mmTop = 529
        mmWidth = 5376
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
        DataField = 'LFLAG1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 61913
        mmTop = 529
        mmWidth = 7916
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
        DataField = 'KSJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 80433
        mmTop = 529
        mmWidth = 5249
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
        DataField = 'ZKTD'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 96764
        mmTop = 529
        mmWidth = 5546
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
        DataField = 'SCLHJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 102690
        mmTop = 529
        mmWidth = 8086
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
        DataField = 'QYJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 113740
        mmTop = 529
        mmWidth = 5503
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
        DataField = 'LSTR'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 121359
        mmTop = 529
        mmWidth = 5419
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
        DataField = 'Trs'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 132155
        mmTop = 529
        mmWidth = 3090
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
        DataField = 'SJRS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 138209
        mmTop = 529
        mmWidth = 5376
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
        DataField = 'SJYC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 146940
        mmTop = 529
        mmWidth = 5376
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
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 173091
        mmTop = 529
        mmWidth = 5757
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
        DataField = 'AQTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 189506
        mmTop = 529
        mmWidth = 5757
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AQTY1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 204851
        mmTop = 529
        mmWidth = 6943
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
        DataField = 'DIFF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 215784
        mmTop = 529
        mmWidth = 4741
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
        DataField = 'EFF1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 254921
        mmTop = 529
        mmWidth = 5207
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
        DataField = 'EFF2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 270754
        mmTop = 529
        mmWidth = 5207
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
        DataField = 'DT1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 12700
        mmTop = 529
        mmWidth = 4022
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
        DataField = 'CSECT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 53446
        mmTop = 529
        mmWidth = 7154
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
        DataField = 'ZHJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 237596
        mmTop = 529
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 79111
        mmTop = 529
        mmWidth = 3895
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
        DataField = 'FLAGS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 76465
        mmTop = 529
        mmWidth = 6943
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
        DataField = 'Ceot'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 230463
        mmTop = 529
        mmWidth = 4487
        BandType = 4
      end
      object dbxl01: TppLabel
        UserName = 'dbxl01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 250888
        mmTop = 529
        mmWidth = 466
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
        DataField = 'LST1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 87577
        mmTop = 529
        mmWidth = 5080
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KSJS1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 88603
        mmTop = 529
        mmWidth = 6435
        BandType = 4
      end
      object diff001: TppLabel
        UserName = 'diff001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 203264
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object diff002: TppLabel
        UserName = 'diff002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 227605
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CFM'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 278342
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object wdiff01: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label82'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 153818
        mmTop = 529
        mmWidth = 7578
        BandType = 4
      end
      object mdiff01: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label91'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 162549
        mmTop = 529
        mmWidth = 7578
        BandType = 4
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 186595
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object proj002: TppLabel
        UserName = 'proj002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 267293
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object proj003: TppLabel
        UserName = 'proj003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  na     '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 44810
        mmTop = 529
        mmWidth = 6519
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppLabel91: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Acc O/P diff (Current - Default):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2836
        mmLeft = 6879
        mmTop = 794
        mmWidth = 30427
        BandType = 8
      end
      object chase001: TppLabel
        UserName = 'chase001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2836
        mmLeft = 38365
        mmTop = 794
        mmWidth = 20902
        BandType = 8
      end
      object ppLabel92: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Acc Chase Time:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2836
        mmLeft = 68527
        mmTop = 794
        mmWidth = 23813
        BandType = 8
      end
      object chase002: TppLabel
        UserName = 'chase002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2836
        mmLeft = 93663
        mmTop = 794
        mmWidth = 19050
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 109802
      mmPrintPosition = 0
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 10319
        mmLeft = 1058
        mmTop = 37571
        mmWidth = 281517
        BandType = 7
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 8996
        mmLeft = 1058
        mmTop = 15610
        mmWidth = 281517
        BandType = 7
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 12700
        mmLeft = 1058
        mmTop = 794
        mmWidth = 281517
        BandType = 7
      end
      object ppLabel82: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 6223
        BandType = 7
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 2117
        mmTop = 9790
        mmWidth = 3810
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
        DataField = 'PSECT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 39148
        mmTop = 9790
        mmWidth = 2963
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
        DataField = 'SHJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 64379
        mmTop = 9790
        mmWidth = 4149
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
        DataField = 'ZKTD'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 98129
        mmTop = 5821
        mmWidth = 4149
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
        DataField = 'SCLHJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 106754
        mmTop = 5821
        mmWidth = 4149
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
        DataField = 'QYJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 115284
        mmTop = 5821
        mmWidth = 4149
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
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 177769
        mmTop = 9790
        mmWidth = 1185
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
        DataField = 'AQTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 194078
        mmTop = 5821
        mmWidth = 1185
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
        DataField = 'AQTY1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 210440
        mmTop = 5821
        mmWidth = 1185
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
        DataField = 'DIFF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 219213
        mmTop = 5821
        mmWidth = 1185
        BandType = 7
      end
      object avg001: TppLabel
        UserName = 'avg001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 126269
        mmTop = 2117
        mmWidth = 466
        BandType = 7
      end
      object avg002: TppLabel
        UserName = 'avg002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 134736
        mmTop = 2117
        mmWidth = 466
        BandType = 7
      end
      object avg003: TppLabel
        UserName = 'avg003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2836
        mmLeft = 142674
        mmTop = 9790
        mmWidth = 466
        BandType = 7
      end
      object avg004: TppLabel
        UserName = 'avg004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2836
        mmLeft = 151934
        mmTop = 9790
        mmWidth = 466
        BandType = 7
      end
      object avg005: TppLabel
        UserName = 'avg005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 142938
        mmTop = 2117
        mmWidth = 466
        BandType = 7
      end
      object avg006: TppLabel
        UserName = 'avg006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 151934
        mmTop = 2117
        mmWidth = 466
        BandType = 7
      end
      object avg007: TppLabel
        UserName = 'avg007'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 259620
        mmTop = 2117
        mmWidth = 466
        BandType = 7
      end
      object avg008: TppLabel
        UserName = 'avg008'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 275495
        mmTop = 2117
        mmWidth = 466
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
        DataField = 'CSECT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 57627
        mmTop = 5821
        mmWidth = 2963
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
        DataField = 'ZHJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 238739
        mmTop = 5821
        mmWidth = 4149
        BandType = 7
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
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 19315
        mmLeft = 1058
        mmTop = 53181
        mmWidth = 132292
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo2: TppMemo
        UserName = 'Memo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo2'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 13229
        mmLeft = 1058
        mmTop = 77258
        mmWidth = 132292
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo3: TppMemo
        UserName = 'Memo3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo3'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 19315
        mmLeft = 140229
        mmTop = 53181
        mmWidth = 138113
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad for project : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 1058
        mmTop = 50006
        mmWidth = 21209
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad for RWO : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 1058
        mmTop = 74083
        mmWidth = 19981
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad for QN : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 140229
        mmTop = 50006
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad for GAI : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 140229
        mmTop = 74083
        mmWidth = 18457
        BandType = 7
      end
      object ppMemo4: TppMemo
        UserName = 'Memo4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo4'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 31221
        mmLeft = 140229
        mmTop = 77258
        mmWidth = 138113
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad for reason of FTY start date difference : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 1058
        mmTop = 92604
        mmWidth = 47752
        BandType = 7
      end
      object ppMemo5: TppMemo
        UserName = 'Memo5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo5'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 12700
        mmLeft = 1058
        mmTop = 95779
        mmWidth = 132292
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc102'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Ceot'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2836
        mmLeft = 230802
        mmTop = 5821
        mmWidth = 4149
        BandType = 7
      end
      object dbxl02: TppLabel
        UserName = 'dbxl02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 250888
        mmTop = 2117
        mmWidth = 466
        BandType = 7
      end
      object ppLine27: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 62971
        mmTop = 15610
        mmWidth = 1852
        BandType = 7
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 120386
        mmTop = 15610
        mmWidth = 1852
        BandType = 7
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Curr last sect end time/date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 175684
        mmTop = 16404
        mmWidth = 32544
        BandType = 7
      end
      object chase003: TppLabel
        UserName = 'chase003'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 210873
        mmTop = 16404
        mmWidth = 35983
        BandType = 7
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 174890
        mmTop = 15610
        mmWidth = 1852
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-Fty Date - Curr Diff:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 2646
        mmTop = 16404
        mmWidth = 26194
        BandType = 7
      end
      object chase004: TppLabel
        UserName = 'chase004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 29898
        mmTop = 16404
        mmWidth = 14288
        BandType = 7
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-Fty Date - Locked Diff:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 64294
        mmTop = 16404
        mmWidth = 26194
        BandType = 7
      end
      object chase005: TppLabel
        UserName = 'chase005'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 91017
        mmTop = 16404
        mmWidth = 12435
        BandType = 7
      end
      object ppLine31: TppLine
        UserName = 'Line27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 20108
        mmWidth = 281253
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label203'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Next day QN GAI: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 2646
        mmTop = 20638
        mmWidth = 20638
        BandType = 7
      end
      object next001: TppLabel
        UserName = 'next001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 45508
        mmTop = 20902
        mmWidth = 18785
        BandType = 7
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'aDef O/P (GC) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 66675
        mmTop = 20902
        mmWidth = 22490
        BandType = 7
      end
      object next002: TppLabel
        UserName = 'next002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 89694
        mmTop = 20902
        mmWidth = 19579
        BandType = 7
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'aDef Used Chase Time Sect Hr :     '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 112184
        mmTop = 20902
        mmWidth = 37042
        BandType = 7
      end
      object next004: TppLabel
        UserName = 'next004'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 149754
        mmTop = 20902
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def O/P (GA) : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 25929
        mmTop = 20638
        mmWidth = 18785
        BandType = 7
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Past Gross Sect Hr Diff:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 121973
        mmTop = 16404
        mmWidth = 26458
        BandType = 7
      end
      object chase006: TppLabel
        UserName = 'chase006'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 150019
        mmTop = 16404
        mmWidth = 19050
        BandType = 7
      end
      object tdiff001: TppLabel
        UserName = 'tdiff001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 203264
        mmTop = 5821
        mmWidth = 466
        BandType = 7
      end
      object tdiff002: TppLabel
        UserName = 'tdiff002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 227605
        mmTop = 5821
        mmWidth = 466
        BandType = 7
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 9790
        mmLeft = 1058
        mmTop = 26194
        mmWidth = 281517
        BandType = 7
      end
      object ppRichText1: TppRichText
        UserName = 'RichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RichText1'
        RichText = 
          '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
          '\f0\fnil @Arial Unicode MS;}{\f1\fnil\fcharset134 @Arial Unicode' +
          ' MS;}}'#13#10'{\colortbl ;\red0\green0\blue0;}'#13#10'\viewkind4\uc1\pard\sl' +
          '240\slmult1\cf1\lang1028\f0\fs16 TIP\par'#13#10'\pard\fi-20\li20\sl240' +
          '\slmult1\f1\'#39'92\'#39'59      Start/End Time     s:- actual start sec' +
          't time        z:- default last sect end time          x:- actual' +
          ' last sect end time         c:- current last sect end time      ' +
          '    \f0\par'#13#10'\pard\sl240\slmult1          QN transit Process fla' +
          'g code      E: Picked & T1 is completed. H: Sewn & T2 is complet' +
          'ed\par'#13#10'\pard\par'#13#10'}'#13#10#0
        mmHeight = 9260
        mmLeft = 1588
        mmTop = 38100
        mmWidth = 280459
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeftMargin = 794
      end
      object ppMemo6: TppRichText
        UserName = 'Memo6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo6'
        RichText = 
          '{\rtf1\ansi\ansicpg950\deff0\deflang1033\deflangfe1028{\fonttbl{' +
          '\f0\fnil @Arial Unicode MS;}{\f1\fnil\fcharset134 @Arial Unicode' +
          ' MS;}}'#13#10'{\colortbl ;\red0\green0\blue0;}'#13#10'\viewkind4\uc1\pard\sl' +
          '240\slmult1\cf1\lang1028\f0\fs16 TIP\par'#13#10'\pard\fi-20\li20\sl240' +
          '\slmult1\f1\'#39'a3\'#39'58      Start/End Time     s:- actual start sec' +
          't time        z:- default last sect end time          x:- actual' +
          ' last sect end time         c:- current last sect end time      ' +
          '    \f0\par'#13#10'\pard\sl240\slmult1          QN transit Process fla' +
          'g code      E: Picked & T1 is completed. H: Sewn & T2 is complet' +
          'ed, L: Packed & T3 is completed, P: Ex-fty & invoiced. [Non-bold' +
          'ed wording is for transit flow 1 & 3,  bolded wording is for tra' +
          'nsit flow 2 & 4] \par'#13#10'\pard\par'#13#10'}'#13#10#0
        mmHeight = 8731
        mmLeft = 1588
        mmTop = 26723
        mmWidth = 280459
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeftMargin = 794
      end
      object ppLabel20: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Org.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 189177
        mmTop = 20902
        mmWidth = 10319
        BandType = 7
      end
      object qnorg001: TppLabel
        UserName = 'qnorg001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/06/08 FRI  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 200555
        mmTop = 20902
        mmWidth = 14552
        BandType = 7
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 218017
        mmTop = 20902
        mmWidth = 7144
        BandType = 7
      end
      object rwo001: TppLabel
        UserName = 'rwo001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/06/08 FRI  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 226219
        mmTop = 20902
        mmWidth = 14552
        BandType = 7
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sewing CT (Working Days): '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 243682
        mmTop = 20902
        mmWidth = 26458
        BandType = 7
      end
      object ct001: TppLabel
        UserName = 'ct001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 270934
        mmTop = 20902
        mmWidth = 8996
        BandType = 7
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 175684
        mmTop = 20902
        mmWidth = 12171
        BandType = 7
      end
      object as001: TppLabel
        UserName = 'as001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 14023
        mmTop = 2117
        mmWidth = 6223
        BandType = 7
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sub-total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 2117
        mmTop = 5821
        mmWidth = 9102
        BandType = 7
      end
      object as002: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2836
        mmLeft = 14023
        mmTop = 5821
        mmWidth = 6223
        BandType = 7
      end
      object psect01: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 35846
        mmTop = 5821
        mmWidth = 6223
        BandType = 7
      end
      object shjs01: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 62304
        mmTop = 5821
        mmWidth = 6223
        BandType = 7
      end
      object pqty01: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 172636
        mmTop = 5821
        mmWidth = 6223
        BandType = 7
      end
      object wdiff02: TppLabel
        UserName = 'Label92'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label92'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 153818
        mmTop = 2117
        mmWidth = 7578
        BandType = 7
      end
      object mdiff02: TppLabel
        UserName = 'mdiff02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'mdiff02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 163206
        mmTop = 2117
        mmWidth = 6985
        BandType = 7
      end
      object aproj002: TppLabel
        UserName = 'aproj002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 267293
        mmTop = 2117
        mmWidth = 466
        BandType = 7
      end
      object tproj003: TppLabel
        UserName = 'tproj003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '@Arial Unicode MS'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2836
        mmLeft = 50863
        mmTop = 9790
        mmWidth = 466
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 200
    object Cancel1: TMenuItem
      Caption = #21462#28040
      ShortCut = 49234
      Visible = False
      OnClick = Cancel1Click
    end
    object CancelFLAG11: TMenuItem
      Caption = 'Cancel FLAG 1'
      ShortCut = 49220
      Visible = False
      OnClick = CancelFLAG11Click
    end
    object ExporttoExcel1: TMenuItem
      Caption = 'Export to Excel'
      ShortCut = 49240
      Visible = False
      OnClick = ExporttoExcel1Click
    end
    object N1: TMenuItem
      Caption = #21152#28187#31680#25976
      ShortCut = 49217
      Visible = False
      OnClick = N1Click
    end
    object FixQNGAIdd1: TMenuItem
      Caption = 'Fix QN GAI dd'
      ShortCut = 24659
      Visible = False
      OnClick = FixQNGAIdd1Click
    end
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 248
    Top = 232
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 280
    Top = 232
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 248
    Top = 144
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 616
    Top = 200
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English')
    Language = 'English'
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
    Left = 504
    Top = 184
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D007A006B0074006400010051004E002000
      67006F0061006C00200061006300680069006500760065006D0065006E007400
      200069006E00640069006300610074006F007200280053006500770069006E00
      6700200057006F0072006B00730068006F007000290020002D0020004C006500
      6400670065007200200053006800650065007400010051004E00200067006F00
      61006C00200061006300680069006500760065006D0065006E00740020006900
      6E00640069006300610074006F007200280053006500770069006E0067002000
      57006F0072006B00730068006F007000290020002D0020004C00650064006700
      65007200200053006800650065007400010001000D000A004C00610062006500
      6C00350001002A002000200045002D004F0054000100010001000D000A006C00
      62006C0038003500300001006C0062006C003800350030000100010001000D00
      0A00420069007400420074006E0031000100DD4F585B01005300610076006500
      010001000D000A00420069007400420074006E00320001001098BD8901005000
      720065007600690065007700010001000D000A00420069007400420074006E00
      330001000090FA5101004500780069007400010001000D000A004C0061006200
      65006C0031000100A25B3E6B5F863A0001004300750073007400200053007400
      79006C0065003A00010001000D000A004C006100620065006C0032000100C962
      3652AE555F863A00010051004E0023003A00010001000D000A004C0061006200
      65006C003300010020002D0020000100010001000D000A004C00610062006500
      6C0034000100C9622F00447D3A0001004C0069006E0065003A00010001000D00
      0A004C006100620065006C0036000100E55D0B7A5F863A000100500072006F00
      6A006500630074003A00010001000D000A004C006100620065006C0037000100
      C9623652AE5578653A00010051004E0020005100740079003A00010001000D00
      0A004C006100620065006C003800010020002D0020000100010001000D000A00
      700070004C006100620065006C00310001004C00570050004D00200020002D00
      2D002D002D002000200051004E00200047006F0061006C002000410063006800
      69006500760065006D0065006E007400200049006E0064006900630061007400
      6F007200280053006500770069006E006700200057006F0072006B0073006800
      6F007000290020002D0020004C00650064006700650072002000530068006500
      650074000100010001000D000A00700070004C006100620065006C0032000100
      46006100630074006F00720079000100010001000D000A00700070004C006100
      620065006C00340001005000720069006E0074006500640020004F006E000100
      010001000D000A00700070004C006100620065006C0035000100500061006700
      65000100010001000D000A00700070004C006100620065006C00360001004400
      6100740065000100010001000D000A00700070004C006100620065006C003800
      010051004E0023000100010001000D000A00700070004C006100620065006C00
      3900010045006100630068000100010001000D000A00700070004C0061006200
      65006C0031003000010053006500630074000100010001000D000A0070007000
      4C006100620065006C003100310001004F002F0050000100010001000D000A00
      700070004C006100620065006C0031003200010054006F00740061006C002000
      530065006300740020004800720020004F007000740020005000650072006600
      0100010001000D000A00700070004C006100620065006C003100360001004C00
      69006E006500200057006F0072006B00200028004F0070007400200050006500
      7200660029000100010001000D000A00700070004C006100620065006C003100
      3700010044006500660020000100010001000D000A00700070004C0061006200
      65006C0031003800010043004C0020000100010001000D000A00700070004C00
      6100620065006C00310039000100530065006300740020004800720001000100
      01000D000A00700070004C006100620065006C00320031000100310073007400
      200053006500630074000100010001000D000A00700070004C00610062006500
      6C00320032000100530074006100720074000100010001000D000A0070007000
      4C006100620065006C00320033000100540069006D0065000100010001000D00
      0A00700070004C006100620065006C00320035000100430043004C0001000100
      01000D000A00700070004C006100620065006C00320036000100530065006300
      74000100010001000D000A00700070004C006100620065006C00320037000100
      480072000100010001000D000A00700070004C006100620065006C0032003900
      0100430075007200720020000100010001000D000A00700070004C0061006200
      65006C0033003000010042006500680069006E0064000100010001000D000A00
      700070004C006100620065006C00330031000100530065006300740020004800
      72000100010001000D000A00700070004C006100620065006C00330033000100
      430075007200720020000100010001000D000A00700070004C00610062006500
      6C00330034000100410068006500610064000100010001000D000A0070007000
      4C006100620065006C0033003500010053006500630074002000480072000100
      010001000D000A00700070004C006100620065006C0033003600010044006500
      6600200028004F006E002D0053007400640029000100010001000D000A007000
      70004C006100620065006C0033003700010057006F0072006B00010001000100
      0D000A00700070004C006100620065006C0033003800010046006F0072006300
      65000100010001000D000A00700070004C006100620065006C00340030000100
      4D006300200051007400790020000100010001000D000A00700070004C006100
      620065006C003400350001004300750072007200200028006500780063006C00
      200042004E00290020000100010001000D000A00700070004C00610062006500
      6C0035003100010057006F0072006B000100010001000D000A00700070004C00
      6100620065006C0035003200010046006F007200630065000100010001000D00
      0A00700070004C006100620065006C003500340001004D006300200051007400
      790020000100010001000D000A00700070004C006100620065006C0035003600
      010044006500660020000100010001000D000A00700070004C00610062006500
      6C003500370001004F002F0050000100010001000D000A00700070004C006100
      620065006C00350038000100280047004100290020000100010001000D000A00
      700070004C006100620065006C00360030000100430075007200720020000100
      010001000D000A00700070004C006100620065006C003600310001004F002F00
      50000100010001000D000A00700070004C006100620065006C00360034000100
      430068006100730065002000540069006D006500200053006500630074002000
      48007200200020000100010001000D000A00700070004C006100620065006C00
      3600350001004F002F0050000100010001000D000A00700070004C0061006200
      65006C003600360001002800430073005400290020000100010001000D000A00
      700070004C006100620065006C003600380001004F002F005000010001000100
      0D000A00700070004C006100620065006C0036003900010054006F0074006100
      6C000100010001000D000A00700070004C006100620065006C00370030000100
      430068006100730065000100010001000D000A00700070004C00610062006500
      6C003700310001006200610063006B000100010001000D000A00700070004C00
      6100620065006C003700370001004C0069006E00650027007300200054006900
      6D0065002000450066006600200025000100010001000D000A00700070004C00
      6100620065006C0037003800010044006500660020000100010001000D000A00
      700070004C006100620065006C00370039000100430075007200720020000100
      010001000D000A00700070004C006100620065006C0038003100010057006F00
      72006B00730068006F0070000100010001000D000A00700070004C0061006200
      65006C00330001004C0069006E0065000100010001000D000A00700070004C00
      6100620065006C00380034000100430075007300740020005300740079006C00
      65000100010001000D000A00700070004C006100620065006C00310035000100
      20002D0020000100010001000D000A00700070004C006100620065006C003700
      010044006500660020000100010001000D000A00700070004C00610062006500
      6C00380035000100430075007200720020000100010001000D000A0070007000
      4C006100620065006C0038003600010044006500660020000100010001000D00
      0A00700070004C006100620065006C0038003700010043007500720072002000
      0100010001000D000A00700070004C006100620065006C003200340001005000
      72006F006A006500630074000100010001000D000A00700070004C0061006200
      65006C0034003900010020002D0020000100010001000D000A00700070004C00
      6100620065006C0031003400010055007300650064000100010001000D000A00
      700070004C006100620065006C0031003300010028004E006500740029000100
      010001000D000A00700070004C006100620065006C0036003200010045006600
      6600200025000100010001000D000A00700070004C006100620065006C003600
      33000100280047007200290020000100010001000D000A00700070004C006100
      620065006C003700330001004C00610073007400200053006500630074000100
      010001000D000A00700070004C006100620065006C0038003800010045006E00
      64000100010001000D000A00700070004C006100620065006C00380039000100
      540069006D0065000100010001000D000A00700070004C006100620065006C00
      37003600010044006900660066000100010001000D000A00700070004C006100
      620065006C0039003700010044006900660066000100010001000D000A007000
      70004C006100620065006C003100300031000100430066006D00200001000100
      01000D000A00700070004C006100620065006C0034003300010028004E006F00
      5400290020000100010001000D000A00700070004C006100620065006C003400
      3400010057006F0072006B0020000100010001000D000A00700070004C006100
      620065006C00340036000100440069006600660020000100010001000D000A00
      700070004C006100620065006C003400370001004D0063002000440069006600
      660020000100010001000D000A00700070004C006100620065006C0038003000
      010046006F0072006300650020000100010001000D000A00700070004C006100
      620065006C00340038000100610044006500660020000100010001000D000A00
      700070004C006100620065006C003500300001004F002F005000010001000100
      0D000A00700070004C006100620065006C003500350001002800470041002900
      20000100010001000D000A00700070004C006100620065006C00350039000100
      610044006500660020000100010001000D000A00700070004C00610062006500
      6C00340031000100610044006500660020000100010001000D000A0070007000
      4C006100620065006C0031003000320001002800470072002900200001000100
      01000D000A00770064006900660066003000310001004C006100620065006C00
      380032000100010001000D000A006D0064006900660066003000310001004C00
      6100620065006C00390031000100010001000D000A00700072006F006A003000
      300033000100200020006E006100200020002000200020000100010001000D00
      0A00700070004C006100620065006C0039003100010041006300630020004F00
      2F0050002000640069006600660020002800430075007200720065006E007400
      20002D002000440065006600610075006C00740029003A000100010001000D00
      0A00700070004C006100620065006C0039003200010041006300630020004300
      68006100730065002000540069006D0065003A000100010001000D000A007000
      70004C006100620065006C0038003200010057002F0041007600650001000100
      01000D000A00700070004C006100620065006C00380033000100540054004C00
      0100010001000D000A00700070004D0065006D006F00310001004D0065006D00
      6F0031000100010001000D000A00700070004D0065006D006F00320001004D00
      65006D006F0032000100010001000D000A00700070004D0065006D006F003300
      01004D0065006D006F0033000100010001000D000A00700070004C0061006200
      65006C003200380001004E006F0074006500700061006400200066006F007200
      2000700072006F006A0065006300740020003A0020002D002000010001000100
      0D000A00700070004C006100620065006C003300320001004E006F0074006500
      700061006400200066006F0072002000520057004F0020003A0020002D002000
      0100010001000D000A00700070004C006100620065006C003300390001004E00
      6F0074006500700061006400200066006F007200200051004E0020003A002000
      2D0020000100010001000D000A00700070004C006100620065006C0034003200
      01004E006F0074006500700061006400200066006F0072002000470041004900
      20003A0020002D0020000100010001000D000A00700070004D0065006D006F00
      340001004D0065006D006F0034000100010001000D000A00700070004C006100
      620065006C003500330001004E006F0074006500700061006400200066006F00
      7200200072006500610073006F006E0020006F00660020004600540059002000
      7300740061007200740020006400610074006500200064006900660066006500
      720065006E006300650020003A0020002D0020000100010001000D000A007000
      70004D0065006D006F00350001004D0065006D006F0035000100010001000D00
      0A00700070004C006100620065006C0039003300010043007500720072002000
      6C0061007300740020007300650063007400200065006E006400200074006900
      6D0065002F0064006100740065003A000100010001000D000A00700070004C00
      6100620065006C00390034000100450078002D00460074007900200044006100
      7400650020002D0020004300750072007200200044006900660066003A000100
      010001000D000A00700070004C006100620065006C0039003500010045007800
      2D004600740079002000440061007400650020002D0020004C006F0063006B00
      65006400200044006900660066003A000100010001000D000A00700070004C00
      6100620065006C003900360001004E0065007800740020006400610079002000
      51004E0020004700410049003A0020000100010001000D000A00700070004C00
      6100620065006C00360037000100610044006500660020004F002F0050002000
      280047004300290020003A000100010001000D000A00700070004C0061006200
      65006C0037003200010061004400650066002000550073006500640020004300
      68006100730065002000540069006D0065002000530065006300740020004800
      720020003A00200020002000200020000100010001000D000A00700070004C00
      6100620065006C0037003400010044006500660020004F002F00500020002800
      47004100290020003A0020000100010001000D000A00700070004C0061006200
      65006C0037003500010050006100730074002000470072006F00730073002000
      5300650063007400200048007200200044006900660066003A00010001000100
      0D000A0070007000520069006300680054006500780074003100010052006900
      63006800540065007800740031000100010001000D000A00700070004D006500
      6D006F00360001004D0065006D006F0036000100010001000D000A0070007000
      4C006100620065006C0032003000010051004E0020004F00720067002E003A00
      0100010001000D000A0071006E006F0072006700300030003100010030003700
      2F00300036002F00300038002000460052004900200020000100010001000D00
      0A00700070004C006100620065006C00390039000100520057004F003A000100
      010001000D000A00720077006F003000300031000100300037002F0030003600
      2F00300038002000460052004900200020000100010001000D000A0070007000
      4C006100620065006C0039003800010053006500770069006E00670020004300
      54002000280057006F0072006B0069006E006700200044006100790073002900
      3A0020000100010001000D000A00700070004C006100620065006C0031003000
      30000100450078002D00660074007900200044006100740065003A0020000100
      010001000D000A0061007300300030003100010057002F004100760065000100
      010001000D000A00700070004C006100620065006C0039003000010053007500
      62002D0074006F00740061006C0020000100010001000D000A00610073003000
      30003200010057002F004100760065000100010001000D000A00700073006500
      6300740030003100010057002F004100760065000100010001000D000A007300
      68006A00730030003100010057002F004100760065000100010001000D000A00
      700071007400790030003100010057002F004100760065000100010001000D00
      0A00770064006900660066003000320001004C006100620065006C0039003200
      0100010001000D000A006D0064006900660066003000320001006D0064006900
      66006600300032000100010001000D000A00430061006E00630065006C003100
      0100D653886D0100010001000D000A00430061006E00630065006C0046004C00
      41004700310031000100430061006E00630065006C00200046004C0041004700
      200031000100010001000D000A004500780070006F007200740074006F004500
      7800630065006C00310001004500780070006F0072007400200074006F002000
      45007800630065006C000100010001000D000A004E0031000100A0521B6EC07B
      78650100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      51007500650072007900310050004C0049004E004500010050004C0049004E00
      45000100010001000D000A005100750065007200790031005300450051000100
      5300450051000100010001000D000A0051007500650072007900310044005300
      45005100010044005300450051000100010001000D000A005100750065007200
      7900310044004100540045003100010044004100540045003100010001000100
      0D000A00510075006500720079003100530048004A0053000100530048004A00
      53000100010001000D000A005100750065007200790031005A004B0054004400
      01005A004B00540044000100010001000D000A00510075006500720079003100
      530043004C0048004A0053000100530043004C0048004A005300010001000100
      0D000A00510075006500720079003100510059004A0053000100510059004A00
      53000100010001000D000A0051007500650072007900310046004C0041004700
      010046004C00410047000100010001000D000A00510075006500720079003100
      53004A0052005300010053004A00520053000100010001000D000A0051007500
      650072007900310053004A0059004300010053004A0059004300010001000100
      0D000A0051007500650072007900310053004A00520053003100010053004A00
      5200530031000100010001000D000A0051007500650072007900310053004A00
      520053003200010053004A005200530032000100010001000D000A0051007500
      6500720079003100500051005400590001005000510054005900010001000100
      0D000A0051007500650072007900310041005100540059000100410051005400
      59000100010001000D000A005100750065007200790031004400490046004600
      010044004900460046000100010001000D000A00510075006500720079003100
      410051005400590031000100410051005400590031000100010001000D000A00
      51007500650072007900310045004F005400010045004F005400010001000100
      0D000A0051007500650072007900310045004600460031000100450046004600
      31000100010001000D000A005100750065007200790031004500460046003200
      010045004600460032000100010001000D000A00510075006500720079003100
      58004A005300010058004A0053000100010001000D000A005100750065007200
      7900310050005300450043005400010050005300450043005400010001000100
      0D000A0051007500650072007900310043005300540059004C00450001004300
      5300540059004C0045000100010001000D000A00510075006500720079003100
      4A0032005F004A004F00420001004A0032005F004A004F004200010001000100
      0D000A00510075006500720079003100520057004F000100520057004F000100
      010001000D000A005100750065007200790031004C0053005400520001004C00
      5300540052000100010001000D000A005100750065007200790031004B005300
      4A00530001004B0053004A0053000100010001000D000A005100750065007200
      790031005A0048004A00530001005A0048004A0053000100010001000D000A00
      5100750065007200790031004C0046004C004100470001004C0046004C004100
      47000100010001000D000A00510075006500720079003100540050004C004100
      4E0054000100540050004C0041004E0054000100010001000D000A0051007500
      65007200790031005400530048004F00500001005400530048004F0050000100
      010001000D000A00510075006500720079003100440054003100010044005400
      31000100010001000D000A005100750065007200790031004300530045004300
      54000100430053004500430054000100010001000D000A005100750065007200
      790031004400420058004C0001004400420058004C000100010001000D000A00
      5100750065007200790031004A005F004E004F0001004A005F004E004F000100
      010001000D000A00510075006500720079003100460043004300530001004600
      4300430053000100010001000D000A0051007500650072007900310041004300
      4F004C000100410043004F004C000100010001000D000A005100750065007200
      7900310053004300510054005900010053004300510054005900010001000100
      0D000A0051007500650072007900310046004C00410047003300010046004C00
      4100470033000100010001000D000A0051007500650072007900310046004C00
      410047003600010046004C004100470036000100010001000D000A0051007500
      650072007900310046004C00410047005300010046004C004100470053000100
      010001000D000A00510075006500720079003100430046004D00010043004600
      4D000100010001000D000A005100750065007200790031004C00530054000100
      4C00530054000100010001000D000A0051007500650072007900310044004600
      4C00410047000100440046004C00410047000100010001000D000A0051007500
      65007200790031004D00410052004B00530001004D00410052004B0053000100
      010001000D000A00510075006500720079003100440053004500430054000100
      440053004500430054000100010001000D000A00510075006500720079003100
      4C0046004C0041004700310001004C0046004C00410047003100010001000100
      0D000A0051007500650072007900310054005200530001005400520053000100
      010001000D000A00510075006500720079003100430045004F00540001004300
      45004F0054000100010001000D000A0051007500650072007900310050005100
      5400590031000100500051005400590031000100010001000D000A0051007500
      65007200790031004D005000530045004300540001004D005000530045004300
      54000100010001000D000A005100750065007200790031005000450046004600
      010050004500460046000100010001000D000A00510075006500720079003100
      4C0053005400310001004C005300540031000100010001000D000A0051007500
      65007200790031004B0053004A005300310001004B0053004A00530031000100
      010001000D000A005100750065007200790031004D00570046004C0042000100
      4D00570046004C0042000100010001000D000A00510075006500720079003100
      4D0057004600530001004D005700460053000100010001000D000A0051007500
      65007200790031004D0057004600410001004D00570046004100010001000100
      0D000A005100750065007200790031004D00570046004100430001004D005700
      4600410043000100010001000D000A005100750065007200790031004D005700
      460042004E0001004D005700460042004E000100010001000D000A0051007500
      65007200790031004700530044004D0042004E0001004700530044004D004200
      4E000100010001000D000A005100750065007200790031005200460049004400
      50000100520046004900440050000100010001000D000A005100750065007200
      790031004D00570046005300430001004D005700460053004300010001000100
      0D000A005100750065007200790031004D00570046004C004200430001004D00
      570046004C00420043000100010001000D000A00510075006500720079003100
      4D005700460042004E00430001004D005700460042004E004300010001000100
      0D000A00510075006500720079003100500052004A0031000100500052004A00
      31000100010001000D000A00510075006500720079003100500052004A003200
      0100500052004A0032000100010001000D000A00510075006500720079003100
      500052004A0033000100500052004A0033000100010001000D000A0051007500
      6500720079003100500052004A0034000100500052004A003400010001000100
      0D000A0051007500650072007900310041005100540059005F00530050000100
      41005100540059005F00530050000100010001000D000A005100750065007200
      79003100410051005400590031005F0053005000010041005100540059003100
      5F00530050000100010001000D000A0051007500650072007900310044004900
      460046005F0053005000010044004900460046005F0053005000010001000100
      0D000A005100750065007200790031004400420058004C005F00530050000100
      4400420058004C005F00530050000100010001000D000A005100750065007200
      7900310045004600460032005F0053005000010045004600460032005F005300
      50000100010001000D000A0051007500650072007900310053004A0052005300
      3300010053004A005200530033000100010001000D000A005100750065007200
      79003100430053004500430054005F0053005000010043005300450043005400
      5F00530050000100010001000D000A0051007500650072007900310043004500
      4F0054005F00530050000100430045004F0054005F0053005000010001000100
      0D000A005100750065007200790031004D0041004E00540042004C0001004D00
      41004E00540042004C000100010001000D000A00510075006500720079003100
      41005700460001004100570046000100010001000D000A005100750065007200
      7900310045005700460001004500570046000100010001000D000A0051007500
      6500720079003100410053004100480001004100530041004800010001000100
      0D000A0051007500650072007900310045005300410048000100450053004100
      48000100010001000D000A0051007500650072007900310047005A0057000100
      47005A0057000100010001000D000A0051007500650072007900310053004700
      540001005300470054000100010001000D000A00510075006500720079003100
      4100430054005F0050004F005300540042004F00580001004100430054005F00
      50004F005300540042004F0058000100010001000D000A005100750065007200
      790031005900480042004800010059004800420048000100010001000D000A00
      510075006500720079003100540054004C005F004A0053000100540054004C00
      5F004A0053000100010001000D000A0051007500650072007900310043005300
      4500430054005F0044004900460046000100430053004500430054005F004400
      4900460046000100010001000D000A0051007500650072007900310059004800
      310001005900480031000100010001000D000A00510075006500720079003100
      42004800310001004200480031000100010001000D000A005100750065007200
      7900310042004800320001004200480032000100010001000D000A0051007500
      650072007900310042004800330001004200480033000100010001000D000A00
      51007500650072007900310041004C0058004A005300010041004C0058004A00
      53000100010001000D000A00510075006500720079003100450058004A005300
      0100450058004A0053000100010001000D000A00510075006500720079003100
      430057004F000100430057004F000100010001000D000A005100750065007200
      7900310051004E004600010051004E0046000100010001000D000A0051007500
      650072007900310051004E0050004300010051004E0050004300010001000100
      0D000A0051007500650072007900310051004E004300010051004E0043000100
      010001000D000A0051007500650072007900310058004C004200580001005800
      4C00420058000100010001000D000A0051007500650072007900310058004C00
      420058005F004C004A00010058004C00420058005F004C004A00010001000100
      0D000A0051007500650072007900310059004300420058000100590043004200
      58000100010001000D000A005100750065007200790031005900430042005800
      5F004C004A00010059004300420058005F004C004A000100010001000D000A00
      510075006500720079003100440042004C000100440042004C00010001000100
      0D000A005100750065007200790031004900450043004C005300010049004500
      43004C0053000100010001000D000A0051007500650072007900310054004D00
      5500010054004D0055000100010001000D000A00510075006500720079003100
      500046005300410048000100500046005300410048000100010001000D000A00
      5100750065007200790031005000460058004A00530001005000460058004A00
      53000100010001000D000A005100750065007200790031005200530058004300
      010052005300580043000100010001000D000A00510075006500720079003100
      440053005A004A005F00520053000100440053005A004A005F00520053000100
      010001000D000A00510075006500720079003100440053005A004A005F005300
      4A000100440053005A004A005F0053004A000100010001000D000A0051007500
      650072007900310053004400540001005300440054000100010001000D000A00
      5100750065007200790031005A004400540001005A0044005400010001000100
      0D000A0051007500650072007900310058004C00420058005F004C004A003100
      010058004C00420058005F004C004A0031000100010001000D000A0051007500
      650072007900310059004300420058005F004C004A0031000100590043004200
      58005F004C004A0031000100010001000D000A00510075006500720079003100
      500050004300430046004D000100500050004300430046004D00010001000100
      0D000A0051007500650072007900310053004A00530048004C00010053004A00
      530048004C000100010001000D000A005100750065007200790031004D005000
      53004500430054005F005300500001004D00500053004500430054005F005300
      50000100010001000D000A005100750065007200790031005000510054005900
      30000100500051005400590030000100010001000D000A005100750065007200
      790031005A00590043004200580001005A005900430042005800010001000100
      0D000A005100750065007200790031005A0059004300420058005F004C004A00
      01005A0059004300420058005F004C004A000100010001000D000A0051007500
      65007200790031005A0059004300420058005F004C004A00310001005A005900
      4300420058005F004C004A0031000100010001000D000A005100750065007200
      7900310045004F0054005F0053005000010045004F0054005F00530050000100
      010001000D000A00510075006500720079003100500052004A0031005F005300
      50000100500052004A0031005F00530050000100010001000D000A0051007500
      6500720079003100440042004C005F00530050000100440042004C005F005300
      50000100010001000D000A005100750065007200790031004D00410052004B00
      53005F005300500001004D00410052004B0053005F0053005000010001000100
      0D000A00510075006500720079003100470053004C0031000100470053004C00
      31000100010001000D000A00510075006500720079003100470053004C003100
      5F00530050000100470053004C0031005F00530050000100010001000D000A00
      5100750065007200790031005400420055000100540042005500010001000100
      0D000A0051007500650072007900310045004600460033005F00530050000100
      45004600460033005F00530050000100010001000D000A005100750065007200
      790031004500460046003300010045004600460033000100010001000D000A00
      51007500650072007900310058004C00420058005F0053005000010058004C00
      420058005F00530050000100010001000D000A00510075006500720079003100
      58004C00420058005F004C004A005F0053005000010058004C00420058005F00
      4C004A005F00530050000100010001000D000A00510075006500720079003100
      58004C00420058005F004C004A0031005F0053005000010058004C0042005800
      5F004C004A0031005F00530050000100010001000D000A005100750065007200
      7900310059004300420058005F0053005000010059004300420058005F005300
      50000100010001000D000A005100750065007200790031005900430042005800
      5F004C004A005F0053005000010059004300420058005F004C004A005F005300
      50000100010001000D000A005100750065007200790031005900430042005800
      5F004C004A0031005F0053005000010059004300420058005F004C004A003100
      5F00530050000100010001000D000A005100750065007200790031005A005900
      4300420058005F005300500001005A0059004300420058005F00530050000100
      010001000D000A005100750065007200790031005A0059004300420058005F00
      4C004A005F005300500001005A0059004300420058005F004C004A005F005300
      50000100010001000D000A005100750065007200790031005A00590043004200
      58005F004C004A0031005F005300500001005A0059004300420058005F004C00
      4A0031005F00530050000100010001000D000A00510075006500720079003100
      430046004D0031000100430046004D0031000100010001000D000A0051007500
      650072007900310041004C0052005300010041004C0052005300010001000100
      0D000A005100750065007200790031006D00610072006B0073005F0073007000
      5F0077006900700001006D00610072006B0073005F00730070005F0077006900
      70000100010001000D000A005100750065007200790031006D00610072006B00
      73005F00730070005F0063006D00700001006D00610072006B0073005F007300
      70005F0063006D0070000100010001000D000A00510075006500720079003100
      6D00750073006500720001006D0075007300650072000100010001000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A005400660072006D007A006B0074006400010041007200690061006C000100
      41007200690061006C00010001000D000A004C006100620065006C0035000100
      400041007200690061006C00200055006E00690063006F006400650020004D00
      53000100010001000D000A004400420054006500780074003100010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00440042005400650078007400320001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A0044004200540065007800740033000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      4C006100620065006C003400010041007200690061006C000100010001000D00
      0A0044004200540065007800740034000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A004400
      4200540065007800740035000100400041007200690061006C00200055006E00
      690063006F006400650020004D0053000100010001000D000A00440042005400
      65007800740036000100400041007200690061006C00200055006E0069006300
      6F006400650020004D0053000100010001000D000A0044004200540065007800
      740037000100400041007200690061006C00200055006E00690063006F006400
      650020004D0053000100010001000D000A004400420054006500780074003800
      0100400041007200690061006C00200055006E00690063006F00640065002000
      4D0053000100010001000D000A00700070004C006100620065006C0031000100
      400041007200690061006C00200055006E00690063006F006400650020004D00
      53000100010001000D000A00700070004C006100620065006C00320001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A00700070004C006100620065006C003400010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A0070007000530079007300740065006D005600610072006900
      610062006C00650031000100400041007200690061006C00200055006E006900
      63006F006400650020004D0053000100010001000D000A00700070004C006100
      620065006C0035000100400041007200690061006C00200055006E0069006300
      6F006400650020004D0053000100010001000D000A0070007000530079007300
      740065006D005600610072006900610062006C00650032000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A00700070004C006100620065006C00360001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003800010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004C006100620065006C0039000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00310030000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00310031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00310032000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00310036000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00310037000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00310038000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00310039000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00320031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00320032000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00320033000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00320035000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00320036000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00320037000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00320039000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00330030000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00330031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00330033000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00330034000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00330035000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00330036000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00330037000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00330038000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00340030000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00340035000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350032000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350034000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350036000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350037000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350038000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00360030000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00360031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00360034000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00360035000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00360036000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00360038000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00360039000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00370030000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00370031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00370037000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00370038000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00370039000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00380031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      7000700044004200540065007800740032003700010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003200380001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003300010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003200390001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003800340001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A0070007000440042005400650078007400330030000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A007000700044004200540065007800740033000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A007000700044004200540065007800740036000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A00700070004C006100620065006C00310035000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A00700070004C006100620065006C00370001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003800350001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003800360001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003800370001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A007400690074006C006500300030003100010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003300320001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003200340001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A0070007000440042005400650078007400330033000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A00700070004C006100620065006C00340039000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A007000700044004200540065007800740033003600010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00700070004C006100620065006C0031003400010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00700070004C006100620065006C0031003300010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00700070004C006100620065006C0036003200010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00700070004C006100620065006C0036003300010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00740073007400300031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      7400690074006C0065003000300032000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      70004C006100620065006C00370033000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      70004C006100620065006C00380038000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      70004C006100620065006C00380039000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      70004C006100620065006C00370036000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      70004C006100620065006C00390037000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      70004C006100620065006C003100300031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00340033000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00340034000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00340036000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00340037000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00380030000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00340038000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350030000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350035000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00350039000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00340031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      700070004C006100620065006C00310030003200010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003100010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003400010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003500010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003700010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003800010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003900010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003100300001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A0070007000440042005400650078007400310031000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A007000700044004200540065007800740031003200010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00700070004400420054006500780074003100330001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A0070007000440042005400650078007400310034000100
      400041007200690061006C00200055006E00690063006F006400650020004D00
      53000100010001000D000A007000700044004200540065007800740031003700
      0100400041007200690061006C00200055006E00690063006F00640065002000
      4D0053000100010001000D000A00700070004400420054006500780074003100
      38000100400041007200690061006C00200055006E00690063006F0064006500
      20004D0053000100010001000D000A0070007000440042005400650078007400
      310039000100400041007200690061006C00200055006E00690063006F006400
      650020004D0053000100010001000D000A007000700044004200540065007800
      7400320030000100400041007200690061006C00200055006E00690063006F00
      6400650020004D0053000100010001000D000A00700070004400420054006500
      78007400320031000100400041007200690061006C00200055006E0069006300
      6F006400650020004D0053000100010001000D000A0070007000440042005400
      650078007400320032000100400041007200690061006C00200055006E006900
      63006F006400650020004D0053000100010001000D000A007000700044004200
      5400650078007400320035000100400041007200690061006C00200055006E00
      690063006F006400650020004D0053000100010001000D000A00700070004400
      42005400650078007400320036000100400041007200690061006C0020005500
      6E00690063006F006400650020004D0053000100010001000D000A0070007000
      44004200540065007800740032000100400041007200690061006C0020005500
      6E00690063006F006400650020004D0053000100010001000D000A0070007000
      440042005400650078007400330031000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      7000440042005400650078007400320033000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      7000700044004200540065007800740033003400010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003300350001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A0070007000440042005400650078007400330037000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A006400620078006C00300031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      7000700044004200540065007800740033003900010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004400420054006500780074003400300001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A0064006900660066003000300031000100400041007200690061006C00
      200055006E00690063006F006400650020004D0053000100010001000D000A00
      64006900660066003000300032000100400041007200690061006C0020005500
      6E00690063006F006400650020004D0053000100010001000D000A0077006400
      690066006600300031000100400041007200690061006C00200055006E006900
      63006F006400650020004D0053000100010001000D000A006D00640069006600
      6600300031000100400041007200690061006C00200055006E00690063006F00
      6400650020004D0053000100010001000D000A00700072006A00300030003100
      0100400041007200690061006C00200055006E00690063006F00640065002000
      4D0053000100010001000D000A00700072006F006A0030003000320001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A00700072006F006A003000300033000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A00700070004C006100620065006C00390031000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A006300680061007300650030003000310001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003900320001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A0063006800610073006500300030003200010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004C006100620065006C0038003200010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A00700070004C006100620065006C0038003300010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003100010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003200010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003300010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003400010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003500010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003600010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003700010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003800010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003900010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A006100760067003000300031000100400041007200690061006C0020005500
      6E00690063006F006400650020004D0053000100010001000D000A0061007600
      67003000300032000100400041007200690061006C00200055006E0069006300
      6F006400650020004D0053000100010001000D000A0061007600670030003000
      33000100400041007200690061006C00200055006E00690063006F0064006500
      20004D0053000100010001000D000A0061007600670030003000340001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A0061007600670030003000350001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A006100760067003000300036000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A006100
      760067003000300037000100400041007200690061006C00200055006E006900
      63006F006400650020004D0053000100010001000D000A006100760067003000
      300038000100400041007200690061006C00200055006E00690063006F006400
      650020004D0053000100010001000D000A007000700044004200430061006C00
      6300310032000100400041007200690061006C00200055006E00690063006F00
      6400650020004D0053000100010001000D000A00700070004400420043006100
      6C006300310030000100400041007200690061006C00200055006E0069006300
      6F006400650020004D0053000100010001000D000A00700070004D0065006D00
      6F0031000100400041007200690061006C00200055006E00690063006F006400
      650020004D0053000100010001000D000A00700070004D0065006D006F003200
      0100400041007200690061006C00200055006E00690063006F00640065002000
      4D0053000100010001000D000A00700070004D0065006D006F00330001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A00700070004C006100620065006C003200380001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A00700070004C006100620065006C003300320001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A00700070004C006100620065006C003300390001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A00700070004C006100620065006C003400320001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A00700070004D0065006D006F0034000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A00700070004C006100620065006C00350033000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A00700070004D0065006D006F003500010040004100720069006100
      6C00200055006E00690063006F006400650020004D0053000100010001000D00
      0A007000700044004200430061006C0063003100330001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A006400620078006C00300032000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      70004C006100620065006C00390033000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A006300
      68006100730065003000300033000100400041007200690061006C0020005500
      6E00690063006F006400650020004D0053000100010001000D000A0070007000
      4C006100620065006C00390034000100400041007200690061006C0020005500
      6E00690063006F006400650020004D0053000100010001000D000A0063006800
      6100730065003000300034000100400041007200690061006C00200055006E00
      690063006F006400650020004D0053000100010001000D000A00700070004C00
      6100620065006C00390035000100400041007200690061006C00200055006E00
      690063006F006400650020004D0053000100010001000D000A00630068006100
      730065003000300035000100400041007200690061006C00200055006E006900
      63006F006400650020004D0053000100010001000D000A00700070004C006100
      620065006C00390036000100400041007200690061006C00200055006E006900
      63006F006400650020004D0053000100010001000D000A006E00650078007400
      3000300031000100400041007200690061006C00200055006E00690063006F00
      6400650020004D0053000100010001000D000A00700070004C00610062006500
      6C00360037000100400041007200690061006C00200055006E00690063006F00
      6400650020004D0053000100010001000D000A006E0065007800740030003000
      32000100400041007200690061006C00200055006E00690063006F0064006500
      20004D0053000100010001000D000A00700070004C006100620065006C003700
      32000100400041007200690061006C00200055006E00690063006F0064006500
      20004D0053000100010001000D000A006E006500780074003000300034000100
      400041007200690061006C00200055006E00690063006F006400650020004D00
      53000100010001000D000A00700070004C006100620065006C00370034000100
      400041007200690061006C00200055006E00690063006F006400650020004D00
      53000100010001000D000A00700070004C006100620065006C00370035000100
      400041007200690061006C00200055006E00690063006F006400650020004D00
      53000100010001000D000A006300680061007300650030003000360001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A0074006400690066006600300030003100010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00740064006900660066003000300032000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A007000700052006900630068005400650078007400310001004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100010001000D000A00700070004D0065006D006F0036000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A00700070004C006100620065006C00320030000100400041007200
      690061006C00200055006E00690063006F006400650020004D00530001000100
      01000D000A0071006E006F007200670030003000310001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00700070004C006100620065006C003900390001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00720077006F003000300031000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      70004C006100620065006C00390038000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A006300
      74003000300031000100400041007200690061006C00200055006E0069006300
      6F006400650020004D0053000100010001000D000A00700070004C0061006200
      65006C003100300030000100400041007200690061006C00200055006E006900
      63006F006400650020004D0053000100010001000D000A006100730030003000
      31000100400041007200690061006C00200055006E00690063006F0064006500
      20004D0053000100010001000D000A00700070004C006100620065006C003900
      30000100400041007200690061006C00200055006E00690063006F0064006500
      20004D0053000100010001000D000A0061007300300030003200010040004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      010001000D000A00700073006500630074003000310001004000410072006900
      61006C00200055006E00690063006F006400650020004D005300010001000100
      0D000A00730068006A007300300031000100400041007200690061006C002000
      55006E00690063006F006400650020004D0053000100010001000D000A007000
      710074007900300031000100400041007200690061006C00200055006E006900
      63006F006400650020004D0053000100010001000D000A007700640069006600
      6600300032000100400041007200690061006C00200055006E00690063006F00
      6400650020004D0053000100010001000D000A006D0064006900660066003000
      32000100400041007200690061006C00200055006E00690063006F0064006500
      20004D0053000100010001000D000A006100700072006F006A00300030003200
      0100400041007200690061006C00200055006E00690063006F00640065002000
      4D0053000100010001000D000A007400700072006F006A003000300033000100
      400041007200690061006C00200055006E00690063006F006400650020004D00
      53000100010001000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A007300740044006C00
      67007300430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005700610072006E0069006E00670001005700610072006E00
      69006E0067000100010001000D000A004500720072006F007200010045007200
      72006F0072000100010001000D000A0049006E0066006F0072006D0061007400
      69006F006E00010049006E0066006F0072006D006100740069006F006E000100
      010001000D000A0043006F006E006600690072006D00010043006F006E006600
      690072006D000100010001000D000A0059006500730001002600590065007300
      0100010001000D000A004E006F00010026004E006F000100010001000D000A00
      4F004B0001004F004B000100010001000D000A00430061006E00630065006C00
      0100430061006E00630065006C000100010001000D000A00410062006F007200
      740001002600410062006F00720074000100010001000D000A00520065007400
      7200790001002600520065007400720079000100010001000D000A0049006700
      6E006F007200650001002600490067006E006F00720065000100010001000D00
      0A0041006C006C000100260041006C006C000100010001000D000A004E006F00
      200054006F00200041006C006C0001004E0026006F00200074006F0020004100
      6C006C000100010001000D000A00590065007300200054006F00200041006C00
      6C000100590065007300200074006F002000260041006C006C00010001000100
      0D000A00480065006C00700001002600480065006C0070000100010001000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A004400420054006500
      7800740031002E0044006100740061004600690065006C006400010046004C00
      4100470036000100010001000D000A0044004200540065007800740032002E00
      44006100740061004600690065006C00640001004A0032005F004A004F004200
      0100010001000D000A0044004200540065007800740033002E00440061007400
      61004600690065006C0064000100520057004F000100010001000D000A004400
      4200540065007800740034002E0044006100740061004600690065006C006400
      010050006C0069006E0065000100010001000D000A0044004200540065007800
      740035002E0044006100740061004600690065006C0064000100430053005400
      59004C0045000100010001000D000A0044004200540065007800740036002E00
      44006100740061004600690065006C00640001004A005F006E006F0001000100
      01000D000A0044004200540065007800740037002E0044006100740061004600
      690065006C0064000100530063007100740079000100010001000D000A004400
      4200540065007800740038002E0044006100740061004600690065006C006400
      010046004300430053000100010001000D000A00510075006500720079003100
      2E0043006F006D006D0061006E00640054006500780074000100730065006C00
      65006300740020002A002000660072006F006D0020006C0069006E0065005F00
      730068006A007300200077006800650072006500200070006C0069006E006500
      3D002700540030003000330055002700200061006E0064002000640074003100
      3D00270032003000310036002D00300036002D00300031002700010001000100
      0D000A005100750065007200790031002E00500072006F007600690064006500
      72004E0061006D00650001006400730070007300630068006500640075006C00
      65000100010001000D000A005100750065007200790032002E00500072006F00
      760069006400650072004E0061006D0065000100640073007000730063006800
      6500640075006C0065000100010001000D000A00510075006500720079003300
      2E00500072006F00760069006400650072004E0061006D006500010064007300
      70007300630068006500640075006C0065000100010001000D000A0070007000
      4400420050006900700065006C0069006E00650031002E005500730065007200
      4E0061006D00650001004400420050006900700065006C0069006E0065003100
      0100010001000D000A00700070004400420050006900700065006C0069006E00
      65003100700070004600690065006C00640031002E004600690065006C006400
      41006C00690061007300010050004C0049004E0045000100010001000D000A00
      700070004400420050006900700065006C0069006E0065003100700070004600
      690065006C00640032002E004600690065006C00640041006C00690061007300
      01005300450051000100010001000D000A007000700044004200500069007000
      65006C0069006E0065003100700070004600690065006C00640033002E004600
      690065006C00640041006C006900610073000100440053004500510001000100
      01000D000A00700070004400420050006900700065006C0069006E0065003100
      700070004600690065006C00640034002E004600690065006C00640041006C00
      6900610073000100440041005400450031000100010001000D000A0070007000
      4400420050006900700065006C0069006E006500310070007000460069006500
      6C00640035002E004600690065006C00640041006C0069006100730001005300
      48004A0053000100010001000D000A0070007000440042005000690070006500
      6C0069006E0065003100700070004600690065006C00640036002E0046006900
      65006C00640041006C0069006100730001005A004B0054004400010001000100
      0D000A00700070004400420050006900700065006C0069006E00650031007000
      70004600690065006C00640037002E004600690065006C00640041006C006900
      610073000100530043004C0048004A0053000100010001000D000A0070007000
      4400420050006900700065006C0069006E006500310070007000460069006500
      6C00640038002E004600690065006C00640041006C0069006100730001005100
      59004A0053000100010001000D000A0070007000440042005000690070006500
      6C0069006E0065003100700070004600690065006C00640039002E0046006900
      65006C00640041006C00690061007300010046004C0041004700010001000100
      0D000A00700070004400420050006900700065006C0069006E00650031007000
      70004600690065006C006400310030002E004600690065006C00640041006C00
      690061007300010053004A00520053000100010001000D000A00700070004400
      420050006900700065006C0069006E0065003100700070004600690065006C00
      6400310031002E004600690065006C00640041006C0069006100730001005300
      4A00590043000100010001000D000A0070007000440042005000690070006500
      6C0069006E0065003100700070004600690065006C006400310032002E004600
      690065006C00640041006C00690061007300010053004A005200530031000100
      010001000D000A00700070004400420050006900700065006C0069006E006500
      3100700070004600690065006C006400310033002E004600690065006C006400
      41006C00690061007300010053004A005200530032000100010001000D000A00
      700070004400420050006900700065006C0069006E0065003100700070004600
      690065006C006400310034002E004600690065006C00640041006C0069006100
      7300010050005100540059000100010001000D000A0070007000440042005000
      6900700065006C0069006E0065003100700070004600690065006C0064003100
      35002E004600690065006C00640041006C006900610073000100410051005400
      59000100010001000D000A00700070004400420050006900700065006C006900
      6E0065003100700070004600690065006C006400310036002E00460069006500
      6C00640041006C00690061007300010044004900460046000100010001000D00
      0A00700070004400420050006900700065006C0069006E006500310070007000
      4600690065006C006400310037002E004600690065006C00640041006C006900
      610073000100410051005400590031000100010001000D000A00700070004400
      420050006900700065006C0069006E0065003100700070004600690065006C00
      6400310038002E004600690065006C00640041006C0069006100730001004500
      4F0054000100010001000D000A00700070004400420050006900700065006C00
      69006E0065003100700070004600690065006C006400310039002E0046006900
      65006C00640041006C0069006100730001004500460046003100010001000100
      0D000A00700070004400420050006900700065006C0069006E00650031007000
      70004600690065006C006400320030002E004600690065006C00640041006C00
      690061007300010045004600460032000100010001000D000A00700070004400
      420050006900700065006C0069006E0065003100700070004600690065006C00
      6400320031002E004600690065006C00640041006C0069006100730001005800
      4A0053000100010001000D000A00700070004400420050006900700065006C00
      69006E0065003100700070004600690065006C006400320032002E0046006900
      65006C00640041006C0069006100730001005000530045004300540001000100
      01000D000A00700070004400420050006900700065006C0069006E0065003100
      700070004600690065006C006400320033002E004600690065006C0064004100
      6C00690061007300010043005300540059004C0045000100010001000D000A00
      700070004400420050006900700065006C0069006E0065003100700070004600
      690065006C006400320034002E004600690065006C00640041006C0069006100
      730001004A0032005F004A004F0042000100010001000D000A00700070004400
      420050006900700065006C0069006E0065003100700070004600690065006C00
      6400320035002E004600690065006C00640041006C0069006100730001005200
      57004F000100010001000D000A00700070004400420050006900700065006C00
      69006E0065003100700070004600690065006C006400320036002E0046006900
      65006C00640041006C0069006100730001004C00530054005200010001000100
      0D000A00700070004400420050006900700065006C0069006E00650031007000
      70004600690065006C006400320037002E004600690065006C00640041006C00
      69006100730001004B0053004A0053000100010001000D000A00700070004400
      420050006900700065006C0069006E0065003100700070004600690065006C00
      6400320038002E004600690065006C00640041006C0069006100730001005A00
      48004A0053000100010001000D000A0070007000440042005000690070006500
      6C0069006E0065003100700070004600690065006C006400320039002E004600
      690065006C00640041006C0069006100730001004C0046004C00410047000100
      010001000D000A00700070004400420050006900700065006C0069006E006500
      3100700070004600690065006C006400330030002E004600690065006C006400
      41006C006900610073000100540050004C0041004E0054000100010001000D00
      0A00700070004400420050006900700065006C0069006E006500310070007000
      4600690065006C006400330031002E004600690065006C00640041006C006900
      6100730001005400530048004F0050000100010001000D000A00700070004400
      420050006900700065006C0069006E0065003100700070004600690065006C00
      6400330032002E004600690065006C00640041006C0069006100730001004400
      540031000100010001000D000A00700070004400420050006900700065006C00
      69006E0065003100700070004600690065006C006400330033002E0046006900
      65006C00640041006C0069006100730001004300530045004300540001000100
      01000D000A00700070004400420050006900700065006C0069006E0065003100
      700070004600690065006C006400330034002E004600690065006C0064004100
      6C0069006100730001004400420058004C000100010001000D000A0070007000
      4400420050006900700065006C0069006E006500310070007000460069006500
      6C006400330035002E004600690065006C00640041006C006900610073000100
      4A005F004E004F000100010001000D000A007000700044004200500069007000
      65006C0069006E0065003100700070004600690065006C006400330036002E00
      4600690065006C00640041006C00690061007300010046004300430053000100
      010001000D000A00700070004400420050006900700065006C0069006E006500
      3100700070004600690065006C006400330037002E004600690065006C006400
      41006C006900610073000100410043004F004C000100010001000D000A007000
      70004400420050006900700065006C0069006E00650031007000700046006900
      65006C006400330038002E004600690065006C00640041006C00690061007300
      0100530043005100540059000100010001000D000A0070007000440042005000
      6900700065006C0069006E0065003100700070004600690065006C0064003300
      39002E004600690065006C00640041006C00690061007300010046004C004100
      470033000100010001000D000A00700070004400420050006900700065006C00
      69006E0065003100700070004600690065006C006400340030002E0046006900
      65006C00640041006C00690061007300010046004C0041004700360001000100
      01000D000A00700070004400420050006900700065006C0069006E0065003100
      700070004600690065006C006400340031002E004600690065006C0064004100
      6C00690061007300010046004C004100470053000100010001000D000A007000
      70004400420050006900700065006C0069006E00650031007000700046006900
      65006C006400340032002E004600690065006C00640041006C00690061007300
      0100430046004D000100010001000D000A007000700044004200500069007000
      65006C0069006E0065003100700070004600690065006C006400340033002E00
      4600690065006C00640041006C0069006100730001004C005300540001000100
      01000D000A00700070004400420050006900700065006C0069006E0065003100
      700070004600690065006C006400340034002E004600690065006C0064004100
      6C006900610073000100440046004C00410047000100010001000D000A007000
      70004400420050006900700065006C0069006E00650031007000700046006900
      65006C006400340035002E004600690065006C00640041006C00690061007300
      01004D00410052004B0053000100010001000D000A0070007000440042005000
      6900700065006C0069006E0065003100700070004600690065006C0064003400
      36002E004600690065006C00640041006C006900610073000100440053004500
      430054000100010001000D000A00700070004400420050006900700065006C00
      69006E0065003100700070004600690065006C006400340037002E0046006900
      65006C00640041006C0069006100730001004C0046004C004100470031000100
      010001000D000A00700070004400420050006900700065006C0069006E006500
      3100700070004600690065006C006400340038002E004600690065006C006400
      41006C0069006100730001005400520053000100010001000D000A0070007000
      4400420050006900700065006C0069006E006500310070007000460069006500
      6C006400340039002E004600690065006C00640041006C006900610073000100
      430045004F0054000100010001000D000A007000700044004200500069007000
      65006C0069006E0065003100700070004600690065006C006400350030002E00
      4600690065006C00640041006C00690061007300010050005100540059003100
      0100010001000D000A00700070004400420050006900700065006C0069006E00
      65003100700070004600690065006C006400350031002E004600690065006C00
      640041006C0069006100730001004D0050005300450043005400010001000100
      0D000A00700070004400420050006900700065006C0069006E00650031007000
      70004600690065006C006400350032002E004600690065006C00640041006C00
      690061007300010050004500460046000100010001000D000A00700070004400
      420050006900700065006C0069006E0065003100700070004600690065006C00
      6400350033002E004600690065006C00640041006C0069006100730001004C00
      5300540031000100010001000D000A0070007000440042005000690070006500
      6C0069006E0065003100700070004600690065006C006400350034002E004600
      690065006C00640041006C0069006100730001004B0053004A00530031000100
      010001000D000A00700070004400420050006900700065006C0069006E006500
      3100700070004600690065006C006400350035002E004600690065006C006400
      41006C0069006100730001004D00570046004C0042000100010001000D000A00
      700070004400420050006900700065006C0069006E0065003100700070004600
      690065006C006400350036002E004600690065006C00640041006C0069006100
      730001004D005700460053000100010001000D000A0070007000440042005000
      6900700065006C0069006E0065003100700070004600690065006C0064003500
      37002E004600690065006C00640041006C0069006100730001004D0057004600
      41000100010001000D000A00700070004400420050006900700065006C006900
      6E0065003100700070004600690065006C006400350038002E00460069006500
      6C00640041006C0069006100730001004D005700460041004300010001000100
      0D000A00700070004400420050006900700065006C0069006E00650031007000
      70004600690065006C006400350039002E004600690065006C00640041006C00
      69006100730001004D005700460042004E000100010001000D000A0070007000
      4400420050006900700065006C0069006E006500310070007000460069006500
      6C006400360030002E004600690065006C00640041006C006900610073000100
      4700530044004D0042004E000100010001000D000A0070007000440042005000
      6900700065006C0069006E0065003100700070004600690065006C0064003600
      31002E004600690065006C00640041006C006900610073000100520046004900
      440050000100010001000D000A00700070004400420050006900700065006C00
      69006E0065003100700070004600690065006C006400360032002E0046006900
      65006C00640041006C0069006100730001004D00570046005300430001000100
      01000D000A00700070004400420050006900700065006C0069006E0065003100
      700070004600690065006C006400360033002E004600690065006C0064004100
      6C0069006100730001004D00570046004C00420043000100010001000D000A00
      700070004400420050006900700065006C0069006E0065003100700070004600
      690065006C006400360034002E004600690065006C00640041006C0069006100
      730001004D005700460042004E0043000100010001000D000A00700070004400
      420050006900700065006C0069006E0065003100700070004600690065006C00
      6400360035002E004600690065006C00640041006C0069006100730001005000
      52004A0031000100010001000D000A0070007000440042005000690070006500
      6C0069006E0065003100700070004600690065006C006400360036002E004600
      690065006C00640041006C006900610073000100500052004A00320001000100
      01000D000A00700070004400420050006900700065006C0069006E0065003100
      700070004600690065006C006400360037002E004600690065006C0064004100
      6C006900610073000100500052004A0033000100010001000D000A0070007000
      4400420050006900700065006C0069006E006500310070007000460069006500
      6C006400360038002E004600690065006C00640041006C006900610073000100
      500052004A0034000100010001000D000A007000700044004200500069007000
      65006C0069006E0065003100700070004600690065006C006400360039002E00
      4600690065006C00640041006C00690061007300010041005100540059005F00
      530050000100010001000D000A00700070004400420050006900700065006C00
      69006E0065003100700070004600690065006C006400370030002E0046006900
      65006C00640041006C006900610073000100410051005400590031005F005300
      50000100010001000D000A00700070004400420050006900700065006C006900
      6E0065003100700070004600690065006C006400370031002E00460069006500
      6C00640041006C00690061007300010044004900460046005F00530050000100
      010001000D000A00700070004400420050006900700065006C0069006E006500
      3100700070004600690065006C006400370032002E004600690065006C006400
      41006C0069006100730001004400420058004C005F0053005000010001000100
      0D000A00700070004400420050006900700065006C0069006E00650031007000
      70004600690065006C006400370033002E004600690065006C00640041006C00
      690061007300010045004600460032005F00530050000100010001000D000A00
      700070004400420050006900700065006C0069006E0065003100700070004600
      690065006C006400370034002E004600690065006C00640041006C0069006100
      7300010053004A005200530033000100010001000D000A007000700044004200
      50006900700065006C0069006E0065003100700070004600690065006C006400
      370035002E004600690065006C00640041006C00690061007300010043005300
      4500430054005F00530050000100010001000D000A0070007000440042005000
      6900700065006C0069006E0065003100700070004600690065006C0064003700
      36002E004600690065006C00640041006C006900610073000100430045004F00
      54005F00530050000100010001000D000A00700070005200650070006F007200
      740031002E004400650076006900630065005400790070006500010053006300
      7200650065006E000100010001000D000A00700070004C006100620065006C00
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      31000100010001000D000A00700070005300680061007000650031002E005500
      7300650072004E0061006D006500010053006800610070006500310001000100
      01000D000A00700070004C006100620065006C0032002E005500730065007200
      4E0061006D00650001004C006100620065006C0032000100010001000D000A00
      700070004C006100620065006C0034002E0055007300650072004E0061006D00
      650001004C006100620065006C0034000100010001000D000A00700070005300
      79007300740065006D005600610072006900610062006C00650031002E005500
      7300650072004E0061006D0065000100530079007300740065006D0056006100
      72006900610062006C00650031000100010001000D000A00700070004C006100
      620065006C0035002E0055007300650072004E0061006D00650001004C006100
      620065006C0035000100010001000D000A007000700053007900730074006500
      6D005600610072006900610062006C00650032002E0055007300650072004E00
      61006D0065000100530079007300740065006D00560061007200690061006200
      6C00650032000100010001000D000A00700070004C006100620065006C003600
      2E0055007300650072004E0061006D00650001004C006100620065006C003600
      0100010001000D000A00700070004C006100620065006C0038002E0055007300
      650072004E0061006D00650001004C006100620065006C003800010001000100
      0D000A00700070004C006100620065006C0039002E0055007300650072004E00
      61006D00650001004C006100620065006C0039000100010001000D000A007000
      70004C006100620065006C00310030002E0055007300650072004E0061006D00
      650001004C006100620065006C00310030000100010001000D000A0070007000
      4C006100620065006C00310031002E0055007300650072004E0061006D006500
      01004C006100620065006C00310031000100010001000D000A00700070004C00
      6100620065006C00310032002E0055007300650072004E0061006D0065000100
      4C006100620065006C00310032000100010001000D000A00700070004C006100
      620065006C00310036002E0055007300650072004E0061006D00650001004C00
      6100620065006C00310036000100010001000D000A00700070004C0061006200
      65006C00310037002E0055007300650072004E0061006D00650001004C006100
      620065006C00310037000100010001000D000A00700070004C00610062006500
      6C00310038002E0055007300650072004E0061006D00650001004C0061006200
      65006C00310038000100010001000D000A00700070004C006100620065006C00
      310039002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310039000100010001000D000A00700070004C006100620065006C003200
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      320031000100010001000D000A00700070004C006100620065006C0032003200
      2E0055007300650072004E0061006D00650001004C006100620065006C003200
      32000100010001000D000A00700070004C006100620065006C00320033002E00
      55007300650072004E0061006D00650001004C006100620065006C0032003300
      0100010001000D000A00700070004C006100620065006C00320035002E005500
      7300650072004E0061006D00650001004C006100620065006C00320035000100
      010001000D000A00700070004C006100620065006C00320036002E0055007300
      650072004E0061006D00650001004C006100620065006C003200360001000100
      01000D000A00700070004C006100620065006C00320037002E00550073006500
      72004E0061006D00650001004C006100620065006C0032003700010001000100
      0D000A00700070004C006100620065006C00320039002E005500730065007200
      4E0061006D00650001004C006100620065006C00320039000100010001000D00
      0A00700070004C006100620065006C00330030002E0055007300650072004E00
      61006D00650001004C006100620065006C00330030000100010001000D000A00
      700070004C006100620065006C00330031002E0055007300650072004E006100
      6D00650001004C006100620065006C00330031000100010001000D000A007000
      70004C006100620065006C00330033002E0055007300650072004E0061006D00
      650001004C006100620065006C00330033000100010001000D000A0070007000
      4C006100620065006C00330034002E0055007300650072004E0061006D006500
      01004C006100620065006C003300300031000100010001000D000A0070007000
      4C006100620065006C00330035002E0055007300650072004E0061006D006500
      01004C006100620065006C00330035000100010001000D000A00700070004C00
      6100620065006C00330036002E0055007300650072004E0061006D0065000100
      4C006100620065006C00330036000100010001000D000A00700070004C006100
      620065006C00330037002E0055007300650072004E0061006D00650001004C00
      6100620065006C003100300032000100010001000D000A00700070004C006100
      620065006C00330038002E0055007300650072004E0061006D00650001004C00
      6100620065006C00330038000100010001000D000A00700070004C0061006200
      65006C00340030002E0055007300650072004E0061006D00650001004C006100
      620065006C00340030000100010001000D000A00700070004C00610062006500
      6C00340035002E0055007300650072004E0061006D00650001004C0061006200
      65006C00340035000100010001000D000A00700070004C006100620065006C00
      350031002E0055007300650072004E0061006D00650001004C00610062006500
      6C00350031000100010001000D000A00700070004C006100620065006C003500
      32002E0055007300650072004E0061006D00650001004C006100620065006C00
      350032000100010001000D000A00700070004C006100620065006C0035003400
      2E0055007300650072004E0061006D00650001004C006100620065006C003400
      300031000100010001000D000A00700070004C006100620065006C0035003600
      2E0055007300650072004E0061006D00650001004C006100620065006C003500
      36000100010001000D000A00700070004C006100620065006C00350037002E00
      55007300650072004E0061006D00650001004C006100620065006C0035003000
      31000100010001000D000A00700070004C006100620065006C00350038002E00
      55007300650072004E0061006D00650001004C006100620065006C0035003800
      0100010001000D000A00700070004C006100620065006C00360030002E005500
      7300650072004E0061006D00650001004C006100620065006C00360030000100
      010001000D000A00700070004C006100620065006C00360031002E0055007300
      650072004E0061006D00650001004C006100620065006C003600310001000100
      01000D000A00700070004C006100620065006C00360034002E00550073006500
      72004E0061006D00650001004C006100620065006C0036003000310001000100
      01000D000A00700070004C006100620065006C00360035002E00550073006500
      72004E0061006D00650001004C006100620065006C0036003500010001000100
      0D000A00700070004C006100620065006C00360036002E005500730065007200
      4E0061006D00650001004C006100620065006C00360036000100010001000D00
      0A00700070004C006100620065006C00360038002E0055007300650072004E00
      61006D00650001004C006100620065006C00360038000100010001000D000A00
      700070004C006100620065006C00360039002E0055007300650072004E006100
      6D00650001004C006100620065006C00360039000100010001000D000A007000
      70004C006100620065006C00370030002E0055007300650072004E0061006D00
      650001004C006100620065006C003600300032000100010001000D000A007000
      70004C006100620065006C00370031002E0055007300650072004E0061006D00
      650001004C006100620065006C00370031000100010001000D000A0070007000
      4C006100620065006C00370037002E0055007300650072004E0061006D006500
      01004C006100620065006C00370037000100010001000D000A00700070004C00
      6100620065006C00370038002E0055007300650072004E0061006D0065000100
      4C006100620065006C00370038000100010001000D000A00700070004C006100
      620065006C00370039002E0055007300650072004E0061006D00650001004C00
      6100620065006C00370039000100010001000D000A00700070004C0061006200
      65006C00380031002E0055007300650072004E0061006D00650001004C006100
      620065006C00380031000100010001000D000A00700070004C0069006E006500
      31002E0055007300650072004E0061006D00650001004C0069006E0065003100
      0100010001000D000A00700070004C0069006E00650032002E00550073006500
      72004E0061006D00650001004C0069006E00650032000100010001000D000A00
      700070004C0069006E00650034002E0055007300650072004E0061006D006500
      01004C0069006E00650034000100010001000D000A00700070004C0069006E00
      650035002E0055007300650072004E0061006D00650001004C0069006E006500
      35000100010001000D000A00700070004C0069006E00650036002E0055007300
      650072004E0061006D00650001004C0069006E00650036000100010001000D00
      0A00700070004C0069006E00650037002E0055007300650072004E0061006D00
      650001004C0069006E00650037000100010001000D000A00700070004C006900
      6E00650038002E0055007300650072004E0061006D00650001004C0069006E00
      650038000100010001000D000A00700070004C0069006E006500310030002E00
      55007300650072004E0061006D00650001004C0069006E006500310030000100
      010001000D000A00700070004C0069006E006500310031002E00550073006500
      72004E0061006D00650001004C0069006E006500310031000100010001000D00
      0A00700070004C0069006E006500310032002E0055007300650072004E006100
      6D00650001004C0069006E006500310032000100010001000D000A0070007000
      4C0069006E006500310033002E0055007300650072004E0061006D0065000100
      4C0069006E006500310033000100010001000D000A00700070004C0069006E00
      6500310034002E0055007300650072004E0061006D00650001004C0069006E00
      6500310034000100010001000D000A00700070004C0069006E00650031003500
      2E0055007300650072004E0061006D00650001004C0069006E00650031003500
      0100010001000D000A00700070004C0069006E006500310036002E0055007300
      650072004E0061006D00650001004C0069006E00650031003600010001000100
      0D000A00700070004C0069006E006500310037002E0055007300650072004E00
      61006D00650001004C0069006E006500310037000100010001000D000A007000
      70004C0069006E006500310038002E0055007300650072004E0061006D006500
      01004C0069006E006500310038000100010001000D000A00700070004C006900
      6E006500310039002E0055007300650072004E0061006D00650001004C006900
      6E006500310039000100010001000D000A00700070004C0069006E0065003200
      32002E0055007300650072004E0061006D00650001004C0069006E0065003200
      300032000100010001000D000A00700070004400420054006500780074003200
      37002E0044006100740061004600690065006C0064000100740070006C006100
      6E0074000100010001000D000A00700070004400420054006500780074003200
      37002E0055007300650072004E0061006D006500010044004200540065007800
      7400310031000100010001000D000A0070007000440042005400650078007400
      320038002E0044006100740061004600690065006C0064000100740073006800
      6F0070000100010001000D000A00700070004400420054006500780074003200
      38002E0055007300650072004E0061006D006500010044004200540065007800
      7400320038000100010001000D000A00700070004C006100620065006C003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003300
      0100010001000D000A0070007000440042005400650078007400320039002E00
      44006100740061004600690065006C006400010050004C0049004E0045000100
      010001000D000A0070007000440042005400650078007400320039002E005500
      7300650072004E0061006D006500010044004200540065007800740032003900
      0100010001000D000A00700070004C006100620065006C00380034002E005500
      7300650072004E0061006D00650001004C006100620065006C00380034000100
      010001000D000A0070007000440042005400650078007400330030002E004400
      6100740061004600690065006C006400010043005300540059004C0045000100
      010001000D000A0070007000440042005400650078007400330030002E005500
      7300650072004E0061006D006500010044004200540065007800740033003000
      0100010001000D000A007000700044004200540065007800740033002E004400
      6100740061004600690065006C00640001004A0032005F004A004F0042000100
      010001000D000A007000700044004200540065007800740033002E0055007300
      650072004E0061006D0065000100440042005400650078007400330001000100
      01000D000A007000700044004200540065007800740036002E00440061007400
      61004600690065006C0064000100520057004F000100010001000D000A007000
      700044004200540065007800740036002E0055007300650072004E0061006D00
      6500010044004200540065007800740036000100010001000D000A0070007000
      4C006100620065006C00310035002E0055007300650072004E0061006D006500
      01004C006100620065006C00310033000100010001000D000A00700070004C00
      69006E00650039002E0055007300650072004E0061006D00650001004C006900
      6E00650039000100010001000D000A00700070004C006100620065006C003700
      2E0055007300650072004E0061006D00650001004C006100620065006C003700
      0100010001000D000A00700070004C006100620065006C00380035002E005500
      7300650072004E0061006D00650001004C006100620065006C00380035000100
      010001000D000A00700070004C0069006E006500320034002E00550073006500
      72004E0061006D00650001004C0069006E006500320034000100010001000D00
      0A00700070004C0069006E006500320035002E0055007300650072004E006100
      6D00650001004C0069006E006500320035000100010001000D000A0070007000
      4C006100620065006C00380036002E0055007300650072004E0061006D006500
      01004C006100620065006C00380036000100010001000D000A00700070004C00
      6100620065006C00380037002E0055007300650072004E0061006D0065000100
      4C006100620065006C00380037000100010001000D000A007400690074006C00
      65003000300031002E0055007300650072004E0061006D00650001004C006100
      620065006C00310034000100010001000D000A00700070004C0069006E006500
      33002E0055007300650072004E0061006D00650001004C0069006E0065003300
      0100010001000D000A00700070004C0069006E006500320036002E0055007300
      650072004E0061006D00650001004C0069006E00650032003600010001000100
      0D000A0070007000440042005400650078007400330032002E00440061007400
      61004600690065006C006400010046004C004100470036000100010001000D00
      0A0070007000440042005400650078007400330032002E005500730065007200
      4E0061006D006500010044004200540065007800740033003000310001000100
      01000D000A00700070004C006100620065006C00320034002E00550073006500
      72004E0061006D00650001004C006100620065006C0033003200010001000100
      0D000A0070007000440042005400650078007400330033002E00440061007400
      61004600690065006C00640001004A005F004E004F000100010001000D000A00
      70007000440042005400650078007400330033002E0055007300650072004E00
      61006D0065000100440042005400650078007400330033000100010001000D00
      0A00700070004C006100620065006C00340039002E0055007300650072004E00
      61006D00650001004C006100620065006C00340039000100010001000D000A00
      70007000440042005400650078007400330036002E0044006100740061004600
      690065006C006400010046004300430053000100010001000D000A0070007000
      440042005400650078007400330036002E0055007300650072004E0061006D00
      65000100440042005400650078007400330036000100010001000D000A007000
      70004C006100620065006C00310034002E0055007300650072004E0061006D00
      650001004C006100620065006C00320038000100010001000D000A0070007000
      4C006100620065006C00310033002E0055007300650072004E0061006D006500
      01004C006100620065006C00320034000100010001000D000A00700070004C00
      6100620065006C00360032002E0055007300650072004E0061006D0065000100
      4C006100620065006C00360032000100010001000D000A00700070004C006100
      620065006C00360033002E0055007300650072004E0061006D00650001004C00
      6100620065006C00360033000100010001000D000A0074007300740030003100
      2E0055007300650072004E0061006D0065000100740073007400300031000100
      010001000D000A007400690074006C0065003000300032002E00550073006500
      72004E0061006D00650001007400690074006C00650030003000320001000100
      01000D000A00700070004C0069006E006500320031002E005500730065007200
      4E0061006D00650001004C0069006E006500320032000100010001000D000A00
      700070004C006100620065006C00370033002E0055007300650072004E006100
      6D00650001004C006100620065006C00370033000100010001000D000A007000
      70004C006100620065006C00380038002E0055007300650072004E0061006D00
      650001004C006100620065006C00380038000100010001000D000A0070007000
      4C006100620065006C00380039002E0055007300650072004E0061006D006500
      01004C006100620065006C00380039000100010001000D000A00700070004C00
      69006E006500320030002E0055007300650072004E0061006D00650001004C00
      69006E006500320030000100010001000D000A00700070004C0069006E006500
      320039002E0055007300650072004E0061006D00650001004C0069006E006500
      320039000100010001000D000A00700070004C006100620065006C0037003600
      2E0055007300650072004E0061006D00650001004C006100620065006C003700
      36000100010001000D000A00700070004C006100620065006C00390037002E00
      55007300650072004E0061006D00650001004C006100620065006C0039003700
      0100010001000D000A00700070004C0069006E006500320033002E0055007300
      650072004E0061006D00650001004C0069006E00650032003100010001000100
      0D000A00700070004C006100620065006C003100300031002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003000310001000100
      01000D000A00700070004C006100620065006C00340033002E00550073006500
      72004E0061006D00650001004C006100620065006C0034003300010001000100
      0D000A00700070004C006100620065006C00340034002E005500730065007200
      4E0061006D00650001004C006100620065006C00340034000100010001000D00
      0A00700070004C006100620065006C00340036002E0055007300650072004E00
      61006D00650001004C006100620065006C00340036000100010001000D000A00
      700070004C006100620065006C00340037002E0055007300650072004E006100
      6D00650001004C006100620065006C00340037000100010001000D000A007000
      70004C006100620065006C00380030002E0055007300650072004E0061006D00
      650001004C006100620065006C00380030000100010001000D000A0070007000
      4C0069006E006500330032002E0055007300650072004E0061006D0065000100
      4C0069006E006500330032000100010001000D000A00700070004C0061006200
      65006C00340038002E0055007300650072004E0061006D00650001004C006100
      620065006C00340038000100010001000D000A00700070004C00610062006500
      6C00350030002E0055007300650072004E0061006D00650001004C0061006200
      65006C00350030000100010001000D000A00700070004C006100620065006C00
      350035002E0055007300650072004E0061006D00650001004C00610062006500
      6C00350035000100010001000D000A00700070004C006100620065006C003500
      39002E0055007300650072004E0061006D00650001004C006100620065006C00
      350039000100010001000D000A00700070004C0069006E006500330033002E00
      55007300650072004E0061006D00650001004C0069006E006500330033000100
      010001000D000A00700070004C006100620065006C00340031002E0055007300
      650072004E0061006D00650001004C006100620065006C003400310001000100
      01000D000A00700070004C006100620065006C003100300032002E0055007300
      650072004E0061006D00650001004C006100620065006C003900360001000100
      01000D000A007000700053006800610070006500310032002E00550073006500
      72004E0061006D00650001005300680061007000650031003200010001000100
      0D000A00700070005300680061007000650037002E0055007300650072004E00
      61006D00650001005300680061007000650037000100010001000D000A007000
      700053006800610070006500310030002E0055007300650072004E0061006D00
      6500010053006800610070006500310030000100010001000D000A0070007000
      5300680061007000650038002E0055007300650072004E0061006D0065000100
      5300680061007000650038000100010001000D000A0070007000530068006100
      7000650036002E0055007300650072004E0061006D0065000100530068006100
      7000650036000100010001000D000A0070007000530068006100700065003500
      2E0055007300650072004E0061006D0065000100530068006100700065003500
      0100010001000D000A007000700053006800610070006500310031002E005500
      7300650072004E0061006D006500010053006800610070006500310031000100
      010001000D000A00700070005300680061007000650033002E00550073006500
      72004E0061006D00650001005300680061007000650033000100010001000D00
      0A007000700044004200540065007800740031002E0044006100740061004600
      690065006C0064000100440041005400450031000100010001000D000A007000
      700044004200540065007800740031002E0055007300650072004E0061006D00
      6500010044004200540065007800740031000100010001000D000A0070007000
      44004200540065007800740034002E0044006100740061004600690065006C00
      6400010058004A0053000100010001000D000A00700070004400420054006500
      7800740034002E0055007300650072004E0061006D0065000100440042005400
      65007800740034000100010001000D000A007000700044004200540065007800
      740035002E0044006100740061004600690065006C0064000100500053004500
      430054000100010001000D000A00700070004400420054006500780074003500
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      35000100010001000D000A007000700044004200540065007800740037002E00
      44006100740061004600690065006C0064000100530048004A00530001000100
      01000D000A007000700044004200540065007800740037002E00550073006500
      72004E0061006D00650001004400420054006500780074003700010001000100
      0D000A007000700044004200540065007800740038002E004400610074006100
      4600690065006C00640001004C0046004C004100470031000100010001000D00
      0A007000700044004200540065007800740038002E0055007300650072004E00
      61006D006500010044004200540065007800740038000100010001000D000A00
      7000700044004200540065007800740039002E00440061007400610046006900
      65006C00640001004B0053004A0053000100010001000D000A00700070004400
      4200540065007800740039002E0055007300650072004E0061006D0065000100
      44004200540065007800740039000100010001000D000A007000700044004200
      5400650078007400310030002E0044006100740061004600690065006C006400
      01005A004B00540044000100010001000D000A00700070004400420054006500
      78007400310030002E0055007300650072004E0061006D006500010044004200
      5400650078007400310030000100010001000D000A0070007000440042005400
      650078007400310031002E0044006100740061004600690065006C0064000100
      530043004C0048004A0053000100010001000D000A0070007000440042005400
      650078007400310031002E0055007300650072004E0061006D00650001004400
      420054006500780074003100300031000100010001000D000A00700070004400
      42005400650078007400310032002E0044006100740061004600690065006C00
      64000100510059004A0053000100010001000D000A0070007000440042005400
      650078007400310032002E0055007300650072004E0061006D00650001004400
      42005400650078007400310032000100010001000D000A007000700044004200
      5400650078007400310033002E0044006100740061004600690065006C006400
      01004C005300540052000100010001000D000A00700070004400420054006500
      78007400310033002E0055007300650072004E0061006D006500010044004200
      5400650078007400310033000100010001000D000A0070007000440042005400
      650078007400310034002E0044006100740061004600690065006C0064000100
      5400720073000100010001000D000A0070007000440042005400650078007400
      310034002E0055007300650072004E0061006D00650001004400420054006500
      78007400310034000100010001000D000A007000700044004200540065007800
      7400310037002E0044006100740061004600690065006C006400010053004A00
      520053000100010001000D000A00700070004400420054006500780074003100
      37002E0055007300650072004E0061006D006500010044004200540065007800
      7400310037000100010001000D000A0070007000440042005400650078007400
      310038002E0044006100740061004600690065006C006400010053004A005900
      43000100010001000D000A007000700044004200540065007800740031003800
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      310038000100010001000D000A00700070004400420054006500780074003100
      39002E0044006100740061004600690065006C00640001005000510054005900
      0100010001000D000A0070007000440042005400650078007400310039002E00
      55007300650072004E0061006D00650001004400420054006500780074003100
      39000100010001000D000A007000700044004200540065007800740032003000
      2E0044006100740061004600690065006C006400010041005100540059000100
      010001000D000A0070007000440042005400650078007400320030002E005500
      7300650072004E0061006D006500010044004200540065007800740032003000
      0100010001000D000A0070007000440042005400650078007400320031002E00
      44006100740061004600690065006C0064000100410051005400590031000100
      010001000D000A0070007000440042005400650078007400320031002E005500
      7300650072004E0061006D006500010044004200540065007800740032003000
      31000100010001000D000A007000700044004200540065007800740032003200
      2E0044006100740061004600690065006C006400010044004900460046000100
      010001000D000A0070007000440042005400650078007400320032002E005500
      7300650072004E0061006D006500010044004200540065007800740032003200
      0100010001000D000A0070007000440042005400650078007400320035002E00
      44006100740061004600690065006C0064000100450046004600310001000100
      01000D000A0070007000440042005400650078007400320035002E0055007300
      650072004E0061006D0065000100440042005400650078007400320035000100
      010001000D000A0070007000440042005400650078007400320036002E004400
      6100740061004600690065006C00640001004500460046003200010001000100
      0D000A0070007000440042005400650078007400320036002E00550073006500
      72004E0061006D00650001004400420054006500780074003200360001000100
      01000D000A007000700044004200540065007800740032002E00440061007400
      61004600690065006C00640001004400540031000100010001000D000A007000
      700044004200540065007800740032002E0055007300650072004E0061006D00
      6500010044004200540065007800740032000100010001000D000A0070007000
      440042005400650078007400330031002E004400610074006100460069006500
      6C0064000100430053004500430054000100010001000D000A00700070004400
      42005400650078007400330031002E0055007300650072004E0061006D006500
      0100440042005400650078007400330031000100010001000D000A0070007000
      440042005400650078007400320033002E004400610074006100460069006500
      6C00640001005A0048004A0053000100010001000D000A007000700044004200
      5400650078007400320033002E0055007300650072004E0061006D0065000100
      440042005400650078007400320033000100010001000D000A00700070004400
      42005400650078007400330034002E0044006100740061004600690065006C00
      640001004C00530054000100010001000D000A00700070004400420054006500
      78007400330034002E0055007300650072004E0061006D006500010044004200
      5400650078007400320031000100010001000D000A0070007000440042005400
      650078007400330035002E0044006100740061004600690065006C0064000100
      46004C004100470053000100010001000D000A00700070004400420054006500
      78007400330035002E0055007300650072004E0061006D006500010044004200
      5400650078007400330035000100010001000D000A0070007000440042005400
      650078007400330037002E0044006100740061004600690065006C0064000100
      430065006F0074000100010001000D000A007000700044004200540065007800
      7400330037002E0055007300650072004E0061006D0065000100440042005400
      650078007400330037000100010001000D000A006400620078006C0030003100
      2E0055007300650072004E0061006D00650001006400620078006C0030003100
      0100010001000D000A0070007000440042005400650078007400330039002E00
      44006100740061004600690065006C00640001004C0053005400310001000100
      01000D000A0070007000440042005400650078007400330039002E0055007300
      650072004E0061006D0065000100440042005400650078007400330039000100
      010001000D000A0070007000440042005400650078007400340030002E004400
      6100740061004600690065006C00640001004B0053004A005300310001000100
      01000D000A0070007000440042005400650078007400340030002E0055007300
      650072004E0061006D0065000100440042005400650078007400340030000100
      010001000D000A0064006900660066003000300031002E005500730065007200
      4E0061006D006500010064006900660066003000300031000100010001000D00
      0A0064006900660066003000300032002E0055007300650072004E0061006D00
      6500010064006900660066003000300032000100010001000D000A006D007900
      4400420043006800650063006B0042006F00780031002E0042006F006F006C00
      650061006E00460061006C00730065000100460061006C007300650001000100
      01000D000A006D0079004400420043006800650063006B0042006F0078003100
      2E0042006F006F006C00650061006E0054007200750065000100540072007500
      65000100010001000D000A006D0079004400420043006800650063006B004200
      6F00780031002E0044006100740061004600690065006C006400010043004600
      4D000100010001000D000A006D0079004400420043006800650063006B004200
      6F00780031002E0055007300650072004E0061006D0065000100440042004300
      6800650063006B0042006F00780031000100010001000D000A00770064006900
      66006600300031002E0055007300650072004E0061006D00650001004C006100
      620065006C00380032000100010001000D000A006D0064006900660066003000
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      390031000100010001000D000A00700072006A003000300031002E0055007300
      650072004E0061006D0065000100700072006A00300030003100010001000100
      0D000A00700072006F006A003000300032002E0055007300650072004E006100
      6D0065000100700072006F006A003000300032000100010001000D000A007000
      72006F006A003000300033002E0055007300650072004E0061006D0065000100
      700072006F006A003000300033000100010001000D000A00700070004C006100
      620065006C00390031002E0055007300650072004E0061006D00650001004C00
      6100620065006C00320030000100010001000D000A0063006800610073006500
      3000300031002E0055007300650072004E0061006D0065000100630068006100
      730065003000300031000100010001000D000A00700070004C00610062006500
      6C00390032002E0055007300650072004E0061006D00650001004C0061006200
      65006C003200300032000100010001000D000A00630068006100730065003000
      300032002E0055007300650072004E0061006D00650001006300680061007300
      65003000300032000100010001000D000A007000700053006800610070006500
      310034002E0055007300650072004E0061006D00650001005300680061007000
      6500310034000100010001000D000A0070007000530068006100700065003900
      2E0055007300650072004E0061006D0065000100530068006100700065003900
      0100010001000D000A00700070005300680061007000650032002E0055007300
      650072004E0061006D0065000100530068006100700065003200010001000100
      0D000A00700070004C006100620065006C00380032002E005500730065007200
      4E0061006D00650001004C006100620065006C00310035000100010001000D00
      0A00700070004C006100620065006C00380033002E0055007300650072004E00
      61006D00650001004C006100620065006C00380033000100010001000D000A00
      7000700044004200430061006C00630031002E00440061007400610046006900
      65006C0064000100500053004500430054000100010001000D000A0070007000
      44004200430061006C00630031002E0055007300650072004E0061006D006500
      010044004200430061006C00630031000100010001000D000A00700070004400
      4200430061006C00630032002E0044006100740061004600690065006C006400
      0100530048004A0053000100010001000D000A00700070004400420043006100
      6C00630032002E0055007300650072004E0061006D0065000100440042004300
      61006C00630032000100010001000D000A007000700044004200430061006C00
      630033002E0044006100740061004600690065006C00640001005A004B005400
      44000100010001000D000A007000700044004200430061006C00630033002E00
      55007300650072004E0061006D006500010044004200430061006C0063003300
      0100010001000D000A007000700044004200430061006C00630034002E004400
      6100740061004600690065006C0064000100530043004C0048004A0053000100
      010001000D000A007000700044004200430061006C00630034002E0055007300
      650072004E0061006D006500010044004200430061006C006300340001000100
      01000D000A007000700044004200430061006C00630035002E00440061007400
      61004600690065006C0064000100510059004A0053000100010001000D000A00
      7000700044004200430061006C00630035002E0055007300650072004E006100
      6D006500010044004200430061006C00630035000100010001000D000A007000
      700044004200430061006C00630036002E004400610074006100460069006500
      6C006400010050005100540059000100010001000D000A007000700044004200
      430061006C00630036002E0055007300650072004E0061006D00650001004400
      4200430061006C00630036000100010001000D000A0070007000440042004300
      61006C00630037002E0044006100740061004600690065006C00640001004100
      5100540059000100010001000D000A007000700044004200430061006C006300
      37002E0055007300650072004E0061006D006500010044004200430061006C00
      630037000100010001000D000A007000700044004200430061006C0063003800
      2E0044006100740061004600690065006C006400010041005100540059003100
      0100010001000D000A007000700044004200430061006C00630038002E005500
      7300650072004E0061006D006500010044004200430061006C00630038000100
      010001000D000A007000700044004200430061006C00630039002E0044006100
      740061004600690065006C006400010044004900460046000100010001000D00
      0A007000700044004200430061006C00630039002E0055007300650072004E00
      61006D006500010044004200430061006C00630039000100010001000D000A00
      6100760067003000300031002E0055007300650072004E0061006D0065000100
      6100760067003000300031000100010001000D000A0061007600670030003000
      32002E0055007300650072004E0061006D006500010061007600670030003000
      32000100010001000D000A006100760067003000300033002E00550073006500
      72004E0061006D00650001006100760067003000300033000100010001000D00
      0A006100760067003000300034002E0055007300650072004E0061006D006500
      01006100760067003000300034000100010001000D000A006100760067003000
      300035002E0055007300650072004E0061006D00650001006100760067003000
      300035000100010001000D000A006100760067003000300036002E0055007300
      650072004E0061006D0065000100610076006700300030003600010001000100
      0D000A006100760067003000300037002E0055007300650072004E0061006D00
      650001006100760067003000300037000100010001000D000A00610076006700
      3000300038002E0055007300650072004E0061006D0065000100610076006700
      3000300038000100010001000D000A007000700044004200430061006C006300
      310032002E0044006100740061004600690065006C0064000100430053004500
      430054000100010001000D000A007000700044004200430061006C0063003100
      32002E0055007300650072004E0061006D006500010044004200430061006C00
      6300310032000100010001000D000A007000700044004200430061006C006300
      310030002E0044006100740061004600690065006C00640001005A0048004A00
      53000100010001000D000A007000700044004200430061006C00630031003000
      2E0055007300650072004E0061006D006500010044004200430061006C006300
      310030000100010001000D000A00700070004D0065006D006F0031002E005500
      7300650072004E0061006D00650001004D0065006D006F003100010001000100
      0D000A00700070004D0065006D006F0032002E0055007300650072004E006100
      6D00650001004D0065006D006F0032000100010001000D000A00700070004D00
      65006D006F0033002E0055007300650072004E0061006D00650001004D006500
      6D006F0033000100010001000D000A00700070004C006100620065006C003200
      38002E0055007300650072004E0061006D00650001004C006100620065006C00
      330034000100010001000D000A00700070004C006100620065006C0033003200
      2E0055007300650072004E0061006D00650001004C006100620065006C003300
      37000100010001000D000A00700070004C006100620065006C00330039002E00
      55007300650072004E0061006D00650001004C006100620065006C0033003900
      0100010001000D000A00700070004C006100620065006C00340032002E005500
      7300650072004E0061006D00650001004C006100620065006C00340032000100
      010001000D000A00700070004D0065006D006F0034002E005500730065007200
      4E0061006D00650001004D0065006D006F0034000100010001000D000A007000
      70004C006100620065006C00350033002E0055007300650072004E0061006D00
      650001004C006100620065006C00350033000100010001000D000A0070007000
      4D0065006D006F0035002E0055007300650072004E0061006D00650001004D00
      65006D006F0035000100010001000D000A007000700044004200430061006C00
      6300310033002E0044006100740061004600690065006C006400010043006500
      6F0074000100010001000D000A007000700044004200430061006C0063003100
      33002E0055007300650072004E0061006D006500010044004200430061006C00
      63003100300032000100010001000D000A006400620078006C00300032002E00
      55007300650072004E0061006D00650001006400620078006C00300032000100
      010001000D000A00700070004C0069006E006500320037002E00550073006500
      72004E0061006D00650001004C0069006E006500320033000100010001000D00
      0A00700070004C0069006E006500320038002E0055007300650072004E006100
      6D00650001004C0069006E006500320038000100010001000D000A0070007000
      4C006100620065006C00390033002E0055007300650072004E0061006D006500
      01004C006100620065006C00390033000100010001000D000A00630068006100
      730065003000300033002E0055007300650072004E0061006D00650001006300
      68006100730065003000300033000100010001000D000A00700070004C006900
      6E006500330030002E0055007300650072004E0061006D00650001004C006900
      6E006500330030000100010001000D000A00700070004C006100620065006C00
      390034002E0055007300650072004E0061006D00650001004C00610062006500
      6C00390034000100010001000D000A0063006800610073006500300030003400
      2E0055007300650072004E0061006D0065000100630068006100730065003000
      300034000100010001000D000A00700070004C006100620065006C0039003500
      2E0055007300650072004E0061006D00650001004C006100620065006C003900
      35000100010001000D000A00630068006100730065003000300035002E005500
      7300650072004E0061006D006500010063006800610073006500300030003500
      0100010001000D000A00700070004C0069006E006500330031002E0055007300
      650072004E0061006D00650001004C0069006E00650032003700010001000100
      0D000A00700070004C006100620065006C00390036002E005500730065007200
      4E0061006D00650001004C006100620065006C00320030003300010001000100
      0D000A006E006500780074003000300031002E0055007300650072004E006100
      6D00650001006E006500780074003000300031000100010001000D000A007000
      70004C006100620065006C00360037002E0055007300650072004E0061006D00
      650001004C006100620065006C00360037000100010001000D000A006E006500
      780074003000300032002E0055007300650072004E0061006D00650001006E00
      6500780074003000300032000100010001000D000A00700070004C0061006200
      65006C00370032002E0055007300650072004E0061006D00650001004C006100
      620065006C00370032000100010001000D000A006E0065007800740030003000
      34002E0055007300650072004E0061006D00650001006E006500780074003000
      300034000100010001000D000A00700070004C006100620065006C0037003400
      2E0055007300650072004E0061006D00650001004C006100620065006C003700
      34000100010001000D000A00700070004C006100620065006C00370035002E00
      55007300650072004E0061006D00650001004C006100620065006C0037003500
      0100010001000D000A00630068006100730065003000300036002E0055007300
      650072004E0061006D0065000100630068006100730065003000300036000100
      010001000D000A00740064006900660066003000300031002E00550073006500
      72004E0061006D00650001007400640069006600660030003000310001000100
      01000D000A00740064006900660066003000300032002E005500730065007200
      4E0061006D006500010074006400690066006600300030003200010001000100
      0D000A007000700053006800610070006500310033002E005500730065007200
      4E0061006D006500010053006800610070006500310033000100010001000D00
      0A00700070005200690063006800540065007800740031002E00520069006300
      6800540065007800740001007B005C0072007400660031005C0061006E007300
      69005C0061006E00730069006300700067003900350030005C00640065006600
      660030005C006400650066006C0061006E00670031003000330033005C006400
      650066006C0061006E0067006600650031003000320038007B005C0066006F00
      6E007400740062006C007B005C00660030005C0066006E0069006C0020004000
      41007200690061006C00200055006E00690063006F006400650020004D005300
      3B007D007D0019001A007B005C0063006F006C006F007200740062006C002000
      3B005C0072006500640030005C0067007200650065006E0030005C0062006C00
      7500650030003B007D0019001A005C0076006900650077006B0069006E006400
      34005C007500630031005C0070006100720064005C0073006C00320034003000
      5C0073006C006D0075006C00740031005C006300660031005C006C0061006E00
      670031003000320038005C00660030005C006600730031003600200054004900
      50005C0070006100720019001A005C0070006100720064005C00660069002D00
      320030005C006C006900320030005C0073006C003200340030005C0073006C00
      6D0075006C00740031005C002700390032005900200020002000200020002000
      530074006100720074002F0045006E0064002000540069006D00650020002000
      20002000200073003A002D002000610063007400750061006C00200073007400
      610072007400200073006500630074002000740069006D006500200020002000
      200020002000200020007A003A002D002000640065006600610075006C007400
      20006C0061007300740020007300650063007400200065006E00640020007400
      69006D006500200020002000200020002000200020002000200078003A002D00
      2000610063007400750061006C0020006C006100730074002000730065006300
      7400200065006E0064002000740069006D006500200020002000200020002000
      20002000200063003A002D002000630075007200720065006E00740020006C00
      61007300740020007300650063007400200065006E0064002000740069006D00
      650020002000200020002000200020002000200020005C007000610072001900
      1A005C0070006100720064005C0073006C003200340030005C0073006C006D00
      75006C0074003100200020002000200020002000200020002000200051004E00
      20007400720061006E007300690074002000500072006F006300650073007300
      200066006C0061006700200063006F0064006500200020002000200020002000
      45003A0020005000690063006B00650064002000260020005400310020006900
      7300200063006F006D0070006C0065007400650064002E00200048003A002000
      5300650077006E0020002600200054003200200069007300200063006F006D00
      70006C0065007400650064005C0070006100720019001A005C00700061007200
      64005C0070006100720019001A007D0019001A000D000A00730074004C006F00
      630061006C00650073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00}
  end
end
