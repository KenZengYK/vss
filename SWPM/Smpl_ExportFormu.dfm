object frmsmpl_export: Tfrmsmpl_export
  Left = 0
  Top = 0
  Caption = #27171#26495#20986#21475#22577#38364#21934
  ClientHeight = 348
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 832
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 43
      Height = 13
      Caption = #21934#25818#34399': '
    end
    object btn1: TSpeedButton
      Left = 224
      Top = 8
      Width = 23
      Height = 22
      Hint = #26597#35426
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
      ParentShowHint = False
      ShowHint = True
      OnClick = btn1Click
    end
    object Edit1: TEdit
      Left = 64
      Top = 8
      Width = 161
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 344
      Top = 8
      Width = 113
      Height = 25
      Caption = #24478#21512#21516#36984#21462#36039#26009
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 832
    Height = 266
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'shpno'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#25818#34399
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'exfty'
        Footers = <>
        Title.Caption = #26085#26399
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'shr'
        Footers = <>
        Title.Caption = #22659#22806#25910#36008#20154#13#10#20195#34399
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'xh'
        Footers = <>
        Title.Caption = #38917#34399
      end
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'contractno'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21512#21516#34399
        Width = 132
      end
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'con_seq'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24207#34399
        Width = 46
      end
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'customseqno'
        Footers = <>
        Title.Caption = #26009#34399#13#10'('#27512#20341#34399')'
      end
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'hsname'
        Footers = <>
        Title.Caption = #21830#21697#21517#31281
        Width = 162
      end
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'remarks'
        Footers = <>
        Title.Caption = #30003#22577#35201#32032
        Width = 500
      end
      item
        EditButtons = <>
        FieldName = 'c_name'
        Footers = <>
        Title.Caption = #30446#30340#22320#22283#23478
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'sqty'
        Footers = <>
        Title.Caption = #25976#37327#13#10'('#21407#21934#20301')'
      end
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'unit'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21407#21934#20301#13#10'='#27861#23450#13#10#35336#37327#21934#20301
      end
      item
        Color = 13367541
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'wght'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21315#20811#13#10'('#35336#31639#37325#37327')'#13#10#27861#20108#21934#20301#25976#37327
        Width = 79
      end
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'hsunit'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#22577#35336#13#10#37327#21934#20301
        Width = 48
      end
      item
        Color = 13367541
        EditButtons = <>
        FieldName = 'curr'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24163#21046
        Width = 43
      end
      item
        Color = 13367541
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'sbqty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#22577#25976#37327#13#10'('#35336#37327#21934#20301')'
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'unitpx'
        Footers = <>
        Title.Caption = #30003#22577#21934#20729#13#10'('#35336#37327#21934#20301')'
      end
      item
        Color = 13367541
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'ttlpx'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#22577#32317#20729
      end
      item
        EditButtons = <>
        FieldName = 'box'
        Footers = <>
        Title.Caption = #31665#25976
        Width = 49
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'wght'
        Footers = <>
        Title.Caption = #28136#37325
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'mz'
        Footers = <>
        Title.Caption = #27611#37325
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 307
    Width = 832
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = #20445#23384
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
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 169
      Top = 8
      Width = 113
      Height = 25
      Caption = #23566#20986#22577#38364#21934
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 281
      Top = 8
      Width = 73
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = #21034#38500
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
      TabOrder = 3
      OnClick = BitBtn5Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 47
    Top = 47
    Width = 353
    Height = 208
    TabOrder = 3
    Visible = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource4
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1shpno: TcxGridDBColumn
        Caption = #21333#25454#21495
        DataBinding.FieldName = 'shpno'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 101
      end
      object cxGrid1DBTableView1exfty: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'exfty'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 67
      end
      object cxGrid1DBTableView1shr: TcxGridDBColumn
        Caption = #22659#22806#25910#36135#20154#13#10#20195#21495
        DataBinding.FieldName = 'shr'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1xh: TcxGridDBColumn
        Caption = #39033#21495
        DataBinding.FieldName = 'xh'
        HeaderAlignmentHorz = taCenter
        Width = 36
      end
      object cxGrid1DBTableView1contractno: TcxGridDBColumn
        Caption = #21512#21516#21495
        DataBinding.FieldName = 'contractno'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 81
      end
      object cxGrid1DBTableView1con_seq: TcxGridDBColumn
        Caption = #24207#21495
        DataBinding.FieldName = 'con_seq'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 38
      end
      object cxGrid1DBTableView1customseqno: TcxGridDBColumn
        Caption = #26009#21495' ('#24402#13#10#24182#21495')'
        DataBinding.FieldName = 'customseqno'
        HeaderAlignmentHorz = taCenter
        Width = 57
      end
      object cxGrid1DBTableView1hsname: TcxGridDBColumn
        Caption = #21830#21697#21517#31216
        DataBinding.FieldName = 'hsname'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 149
      end
      object cxGrid1DBTableView1remarks: TcxGridDBColumn
        Caption = #30003#25253#35201#32032
        DataBinding.FieldName = 'remarks'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 468
      end
      object cxGrid1DBTableView1c_name: TcxGridDBColumn
        Caption = #30446#30340#22320#22269#23478
        DataBinding.FieldName = 'c_name'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 61
      end
      object cxGrid1DBTableView1sqty: TcxGridDBColumn
        Caption = #25968#37327#13#10'('#21407#21333#20301')'
        DataBinding.FieldName = 'sqty'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
      end
      object cxGrid1DBTableView1unit: TcxGridDBColumn
        Caption = #21407#21333#20301#13#10'= '#27861#23450#13#10#35745#37327#21333#20301
        DataBinding.FieldName = 'unit'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 58
      end
      object cxGrid1DBTableView1wght: TcxGridDBColumn
        Caption = #21315#20811' = '#13#10'('#35745#31639#37325#37327')'#13#10#27861#20108#21333#20301#25968#37327
        DataBinding.FieldName = 'wght'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 78
      end
      object cxGrid1DBTableView1hsunit: TcxGridDBColumn
        Caption = #30003#25253#35745#13#10#37327#21333#20301
        DataBinding.FieldName = 'hsunit'
        HeaderAlignmentHorz = taCenter
        Width = 45
      end
      object cxGrid1DBTableView1curr: TcxGridDBColumn
        Caption = #24065#21046
        DataBinding.FieldName = 'curr'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 36
      end
      object cxGrid1DBTableView1sbqty: TcxGridDBColumn
        Caption = #30003#25253#25968#37327#13#10'('#35745#37327#21333#20301')'
        DataBinding.FieldName = 'sbqty'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1unitpx: TcxGridDBColumn
        Caption = #30003#25253#21333#20215#13#10'('#35745#37327#21333#20301')'
        DataBinding.FieldName = 'unitpx'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 69
      end
      object cxGrid1DBTableView1ttlpx: TcxGridDBColumn
        Caption = #30003#25253#24635#20215
        DataBinding.FieldName = 'ttlpx'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 82
      end
      object cxGrid1DBTableView1box: TcxGridDBColumn
        Caption = #31665#25968
        DataBinding.FieldName = 'box'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 41
      end
      object cxGrid1DBTableView1wght1: TcxGridDBColumn
        Caption = #20928#37325
        DataBinding.FieldName = 'wght'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
      end
      object cxGrid1DBTableView1mz: TcxGridDBColumn
        Caption = #27611#37325
        DataBinding.FieldName = 'mz'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object AdoDataSet1: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    AfterOpen = AdoDataSet1AfterOpen
    CommandText = 'select * from phdb..tbl_smpl_declare'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = AdoDataSet1
    Left = 184
    Top = 96
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel File (*.xls)|*.xls|Any file (*.*)|*.*'
    FilterIndex = 0
    Left = 272
    Top = 123
  end
  object qry1: TADOQuery
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      'exec phdb..sp_preshpadvice_export '#39'SHP-5978A'#39','#39'SHP-5978A 40HQ'#39)
    Left = 312
    Top = 123
  end
  object DataSource4: TDataSource
    DataSet = qry1
    Left = 352
    Top = 123
  end
  object qry2: TADOQuery
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      'exec phdb..sp_preshpadvice_export '#39'SHP-5978A'#39','#39'SHP-5978A 40HQ'#39)
    Left = 312
    Top = 179
  end
end
