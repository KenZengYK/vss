object frmbzgx: Tfrmbzgx
  Left = 125
  Top = 116
  Width = 808
  Height = 608
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = #32299#32009#35215#26684#24037#24207#27161#20934#36039#26009#24235'-'#25353#36554#31278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 800
    Height = 477
    Align = alClient
    DataSource = DataSource2
    Flat = False
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWhite
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghColumnResize, dghColumnMove]
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Color = clBtnFace
    RowHeight = 4
    RowLines = 1
    ShowHint = False
    TabOrder = 0
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Seq'
        Footers = <>
        Title.Caption = #24207#34399
        Width = 24
      end
      item
        EditButtons = <>
        FieldName = 'Dh'
        Footers = <>
        Title.Caption = #20195#34399
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'Czbh'
        Footers = <>
        Title.Caption = #36554#31278#32232#34399
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'Mc'
        Footers = <>
        Title.Caption = #24037#24207#21517#31281
        Title.SortIndex = 1
        Title.SortMarker = smUpEh
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'Emc'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281
        Width = 181
      end
      item
        EditButtons = <>
        FieldName = 'Flag'
        Footers = <>
        Title.Caption = #27161#35672
        Width = 18
      end
      item
        EditButtons = <>
        FieldName = 'Sj'
        Footers = <>
        Title.Caption = #23567#26178
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Bzdj'
        Footers = <>
        Title.Caption = #27161#28310#21934#20729
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Dj1'
        Footers = <>
        Title.Caption = #27161#28310'SAH'#24037#26178#20729
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Ndxs'
        Footers = <>
        Title.Caption = #38627#24230#31995#25976
        Width = 44
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'Sj1'
        Footers = <>
        ReadOnly = True
        Title.Caption = '(+'#38627#24230')  '#26178#38291
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Cdxs'
        Footers = <>
        Title.Caption = #25209#37327#31995#25976
        Width = 47
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'Sj2'
        Footers = <>
        ReadOnly = True
        Title.Caption = #32317#26178#38291
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'Czxh'
        Footers = <>
        Title.Caption = #36554#37341#22411#34399
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Yzjzb'
        Footers = <>
        Title.Caption = #36939#37341#38291#37341#27493'(3cm)'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Mx'
        Footers = <>
        Title.Caption = #32218'|'#38754#32218
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Dx'
        Footers = <>
        Title.Caption = #32218'|'#24213#32218
        Title.EndEllipsis = True
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Cfzkcc'
        Footers = <>
        Title.Caption = #23376#21475#23610#23544'|('#36554#32299')'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Zzkcc'
        Footers = <>
        Title.Caption = #23376#21475#23610#23544'|('#25240#32299')'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Dzkcc'
        Footers = <>
        Title.Caption = #23376#21475#23610#23544'|('#30090#32299')'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Zj'
        Footers = <>
        Title.Caption = #32218#27493#24133#24230'|'#37341#36317
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Zf'
        Footers = <>
        Title.Caption = #32218#27493#24133#24230'|'#25391#24133
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Fryd'
        Footers = <>
        Title.Caption = #32299#32009#35201#40670
        Width = 275
      end
      item
        EditButtons = <>
        FieldName = 'actv'
        Footers = <>
        Title.Caption = #20351#29992'/'#20572#29992
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 7
      Top = 16
      Width = 26
      Height = 13
      Caption = #36554#31278
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 191
      Top = 16
      Width = 26
      Height = 13
      Caption = #23450#20301
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 36
      Top = 14
      Width = 109
      Height = 21
      DataField = 'Cz'
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 220
      Top = 14
      Width = 89
      Height = 21
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 309
      Top = 14
      Width = 172
      Height = 21
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 2
      OnChange = ComboBox2Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 518
    Width = 800
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label3: TLabel
      Left = 535
      Top = 27
      Width = 3
      Height = 13
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 392
      Top = 27
      Width = 32
      Height = 13
      Caption = 'Label4'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 10
      Width = 180
      Height = 30
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost]
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object BitBtn1: TBitBtn
      Left = 218
      Top = 10
      Width = 30
      Height = 30
      Hint = #21034#38500#24037#24207
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
    end
    object BitBtn2: TBitBtn
      Left = 248
      Top = 10
      Width = 30
      Height = 30
      Hint = #25171#21360
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn2Click
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
    end
    object BitBtn3: TBitBtn
      Left = 278
      Top = 10
      Width = 30
      Height = 30
      Hint = #36864#20986
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn3Click
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
    object BitBtn4: TBitBtn
      Left = 188
      Top = 10
      Width = 30
      Height = 30
      Hint = #26032#22686#24037#24207
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn4Click
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
  end
  object DataSource1: TDataSource
    DataSet = cz
    Left = 498
  end
  object DataSource2: TDataSource
    DataSet = bzgx
    Left = 556
  end
  object PopupMenu1: TPopupMenu
    Left = 640
    object AddNew1: TMenuItem
      Caption = 'AddNew'
      ShortCut = 32833
      Visible = False
      OnClick = AddNew1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      ShortCut = 32836
      Visible = False
      OnClick = Delete1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      ShortCut = 32851
      Visible = False
      OnClick = Save1Click
    end
  end
  object DataSource3: TDataSource
    DataSet = bzgxdtl
    Left = 724
  end
  object cz: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_cz'
    FieldDefs = <
      item
        Name = 'Cz'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tpml'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    AfterPost = czAfterPost
    AfterScroll = czAfterScroll
    Left = 468
  end
  object bzgx: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_bzgx'
    FieldDefs = <
      item
        Name = 'Cz'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Mc'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Dh'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Flag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nd'
        DataType = ftInteger
      end
      item
        Name = 'Sj'
        DataType = ftFloat
      end
      item
        Name = 'Dj1'
        DataType = ftFloat
      end
      item
        Name = 'Dj2'
        DataType = ftFloat
      end
      item
        Name = 'Czxh'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Yzjzb'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Mx'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Dx'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Cfzkcc'
        DataType = ftFloat
      end
      item
        Name = 'Zzkcc'
        DataType = ftFloat
      end
      item
        Name = 'Dzkcc'
        DataType = ftFloat
      end
      item
        Name = 'Zj'
        DataType = ftFloat
      end
      item
        Name = 'Zf'
        DataType = ftFloat
      end
      item
        Name = 'Fryd'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Tplj'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Wjm'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Czbh'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Czms'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Ndxs'
        DataType = ftFloat
      end
      item
        Name = 'Cdxs'
        DataType = ftFloat
      end
      item
        Name = 'Sj1'
        DataType = ftFloat
      end
      item
        Name = 'Sj2'
        DataType = ftFloat
      end
      item
        Name = 'Bzdj'
        DataType = ftFloat
      end
      item
        Name = 'Emc'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'bjtmu'
        DataType = ftFloat
      end
      item
        Name = 'zdj'
        DataType = ftFloat
      end
      item
        Name = 'actv'
        DataType = ftBoolean
      end
      item
        Name = 'ycfj'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ycsd'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'gsdbh'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'parts_d'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    AfterOpen = bzgxAfterOpen
    AfterPost = bzgxAfterPost
    OnNewRecord = bzgxNewRecord
    Left = 528
    object bzgxId: TIntegerField
      FieldName = 'Id'
    end
    object bzgxDh: TStringField
      FieldName = 'Dh'
      Size = 10
    end
    object bzgxCz: TStringField
      FieldName = 'Cz'
      Size = 10
    end
    object bzgxMc: TStringField
      FieldName = 'Mc'
      Size = 40
    end
    object bzgxSeq: TIntegerField
      FieldName = 'Seq'
    end
    object bzgxFlag: TStringField
      FieldName = 'Flag'
      Size = 1
    end
    object bzgxNd: TIntegerField
      FieldName = 'Nd'
    end
    object bzgxSj: TFloatField
      FieldName = 'Sj'
    end
    object bzgxDj1: TFloatField
      FieldName = 'Dj1'
    end
    object bzgxDj2: TFloatField
      FieldName = 'Dj2'
    end
    object bzgxCzxh: TStringField
      FieldName = 'Czxh'
      Size = 10
    end
    object bzgxYzjzb: TStringField
      FieldName = 'Yzjzb'
      Size = 6
    end
    object bzgxMx: TStringField
      FieldName = 'Mx'
      Size = 16
    end
    object bzgxDx: TStringField
      FieldName = 'Dx'
      Size = 16
    end
    object bzgxCfzkcc: TFloatField
      FieldName = 'Cfzkcc'
    end
    object bzgxZzkcc: TFloatField
      FieldName = 'Zzkcc'
    end
    object bzgxDzkcc: TFloatField
      FieldName = 'Dzkcc'
    end
    object bzgxZj: TFloatField
      FieldName = 'Zj'
    end
    object bzgxZf: TFloatField
      FieldName = 'Zf'
    end
    object bzgxFryd: TStringField
      FieldName = 'Fryd'
      Size = 50
    end
    object bzgxTplj: TStringField
      FieldName = 'Tplj'
      Size = 100
    end
    object bzgxWjm: TStringField
      FieldName = 'Wjm'
    end
    object bzgxCzbh: TStringField
      FieldName = 'Czbh'
      Size = 5
    end
    object bzgxCzms: TStringField
      FieldName = 'Czms'
      Size = 50
    end
    object bzgxNdxs: TFloatField
      FieldName = 'Ndxs'
    end
    object bzgxCdxs: TFloatField
      FieldName = 'Cdxs'
    end
    object bzgxSj1: TFloatField
      FieldName = 'Sj1'
    end
    object bzgxSj2: TFloatField
      FieldName = 'Sj2'
    end
    object bzgxBzdj: TFloatField
      FieldName = 'Bzdj'
    end
    object bzgxEmc: TStringField
      FieldName = 'Emc'
      Size = 60
    end
    object bzgxbjtmu: TFloatField
      FieldName = 'bjtmu'
    end
    object bzgxzdj: TFloatField
      FieldName = 'zdj'
    end
    object bzgxactv: TBooleanField
      FieldName = 'actv'
    end
    object bzgxycfj: TStringField
      FieldName = 'ycfj'
      Size = 50
    end
    object bzgxycsd: TStringField
      FieldName = 'ycsd'
      Size = 50
    end
    object bzgxgsdbh: TStringField
      FieldName = 'gsdbh'
      Size = 50
    end
    object bzgxparts_d: TStringField
      FieldName = 'parts_d'
      Size = 30
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 580
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 612
  end
  object Query3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 668
  end
  object Query4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 756
  end
  object Query7: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 844
  end
  object Query6: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 816
  end
  object Query5: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    Left = 788
  end
  object bzgxdtl: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_bzgxdtl '
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Kh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gch'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Zb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zd'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gzxl'
        DataType = ftFloat
      end
      item
        Name = 'Mb'
        DataType = ftInteger
      end
      item
        Name = 'Mbxs'
        DataType = ftInteger
      end
      item
        Name = 'Zsl'
        DataType = ftInteger
      end
      item
        Name = 'Wcqj'
        DataType = ftFloat
      end
      item
        Name = 'Zrs'
        DataType = ftInteger
      end
      item
        Name = 'Zsj'
        DataType = ftFloat
      end
      item
        Name = 'Bzzsj'
        DataType = ftFloat
      end
      item
        Name = 'Sdz'
        DataType = ftInteger
      end
      item
        Name = 'Ssz'
        DataType = ftInteger
      end
      item
        Name = 'Ssb'
        DataType = ftInteger
      end
      item
        Name = 'Sjg'
        DataType = ftInteger
      end
      item
        Name = 'Sdc'
        DataType = ftInteger
      end
      item
        Name = 'Srs'
        DataType = ftInteger
      end
      item
        Name = 'Sqt'
        DataType = ftInteger
      end
      item
        Name = 'Bz'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Kyl'
        DataType = ftFloat
      end
      item
        Name = 'Cs'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    StoreDefs = True
    AfterPost = bzgxdtlAfterPost
    OnNewRecord = bzgxdtlNewRecord
    Left = 692
  end
end
