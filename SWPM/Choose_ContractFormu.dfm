object frmchoose_contract: Tfrmchoose_contract
  Left = 0
  Top = 0
  Caption = #24478#21512#21516#36984#21462#36039#26009
  ClientHeight = 399
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 568
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 39
      Height = 13
      Caption = #21512#21516#34399' '
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 5
      Width = 177
      Height = 21
      TabOrder = 0
      OnChange = ComboBox1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 358
    Width = 906
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 342
    ExplicitWidth = 568
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = #30906#23450
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 400
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
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 35
    Width = 906
    Height = 323
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 568
    ExplicitHeight = 307
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource4
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1contractno: TcxGridDBColumn
        Caption = #21512#21516#34399
        DataBinding.FieldName = 'contractno'
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
      object cxGrid1DBTableView1con_seq: TcxGridDBColumn
        Caption = #24207#34399
        DataBinding.FieldName = 'con_seq'
        HeaderAlignmentHorz = taCenter
        Width = 29
      end
      object cxGrid1DBTableView1contractseqno: TcxGridDBColumn
        Caption = #26009#34399#13#10'('#27512#20341#34399')'
        DataBinding.FieldName = 'contractseqno'
        HeaderAlignmentHorz = taCenter
        Width = 49
      end
      object cxGrid1DBTableView1hsname: TcxGridDBColumn
        Caption = #21830#21697#21517#31281
        DataBinding.FieldName = 'hsname'
        HeaderAlignmentHorz = taCenter
        Width = 129
      end
      object cxGrid1DBTableView1remarks: TcxGridDBColumn
        Caption = #30003#22577#35201#32032
        DataBinding.FieldName = 'remarks'
        HeaderAlignmentHorz = taCenter
        Width = 445
      end
      object cxGrid1DBTableView1c_name: TcxGridDBColumn
        Caption = #30446#30340#22320#22283#23478
        DataBinding.FieldName = 'c_name'
        HeaderAlignmentHorz = taCenter
        Width = 42
      end
      object cxGrid1DBTableView1unit: TcxGridDBColumn
        Caption = #21407#21934#20301#13#10'='#27861#23450#13#10#35336#37327#21934#20301
        DataBinding.FieldName = 'unit'
        HeaderAlignmentHorz = taCenter
        Width = 53
      end
      object cxGrid1DBTableView1hsunit: TcxGridDBColumn
        Caption = #30003#22577#35336#13#10#37327#21934#20301
        DataBinding.FieldName = 'hsunit'
        HeaderAlignmentHorz = taCenter
        Width = 41
      end
      object cxGrid1DBTableView1curr: TcxGridDBColumn
        Caption = #24163#21046
        DataBinding.FieldName = 'curr'
        HeaderAlignmentHorz = taCenter
        Width = 30
      end
      object cxGrid1DBTableView1unitpx: TcxGridDBColumn
        Caption = #30003#22577#21934#20729#13#10'('#35336#37327#21934#20301')'
        DataBinding.FieldName = 'unitpx'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        GroupSummaryAlignment = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
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
  object qry1: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from phdb..tbl_smpl_contract'
    CommandTimeout = 300
    Parameters = <>
    Left = 304
    Top = 120
  end
end
