object frmshpadvice1: Tfrmshpadvice1
  Left = 192
  Top = 112
  Caption = 'Shipping Advice'
  ClientHeight = 410
  ClientWidth = 1220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1220
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 90
      Height = 13
      Caption = 'Shipping Advice # '
    end
    object SpeedButton1: TSpeedButton
      Left = 240
      Top = 8
      Width = 23
      Height = 22
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
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 336
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 53
      Height = 13
      Caption = 'Notepad: - '
    end
    object Label4: TLabel
      Left = 752
      Top = 8
      Width = 133
      Height = 13
      Caption = 'Ex. Rate (manually update)  '
    end
    object Label5: TLabel
      Left = 288
      Top = 8
      Width = 110
      Height = 13
      Caption = 'Customs Declaration # '
    end
    object Label6: TLabel
      Left = 752
      Top = 32
      Width = 81
      Height = 13
      Caption = 'Vehicle Number  '
    end
    object Edit1: TEdit
      Left = 112
      Top = 8
      Width = 129
      Height = 21
      Color = 13499643
      ReadOnly = True
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Memo1: TMemo
      Left = 72
      Top = 32
      Width = 641
      Height = 57
      ScrollBars = ssBoth
      TabOrder = 2
    end
    object cEdit1: TCurrencyEdit
      Left = 888
      Top = 8
      Width = 89
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      DecimalPlaces = 5
      DisplayFormat = '0.000'
      TabOrder = 3
    end
    object BitBtn9: TBitBtn
      Left = 984
      Top = 6
      Width = 65
      Height = 25
      Caption = 'Confirm'
      TabOrder = 4
      OnClick = BitBtn9Click
    end
    object Edit2: TEdit
      Left = 400
      Top = 8
      Width = 313
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 832
      Top = 32
      Width = 146
      Height = 21
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1220
    Height = 271
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    PopupMenu = pm1
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
        Color = 13499643
        EditButtons = <>
        FieldName = 'SHPNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Shipping Advice #'
        Width = 93
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'SSEQ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Item #'
        Width = 39
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'INV'
        Footers = <>
        Title.Caption = 'PH-Invoice'
        Width = 91
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'PDN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PDN #'
        Width = 94
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'VOYN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Manifest #'
        Width = 81
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'SOPNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SO #'
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Code'
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Project #'
        Width = 89
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO #'
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust Style'
        Width = 123
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Clr Code'
        Width = 36
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CAT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Category'
        Visible = False
        Width = 47
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'SQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PDN Qty'
        Width = 50
      end
      item
        Color = 13499643
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'SQTY_WT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'N.N.W. (KG)'
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'T4QTY'
        Footers = <>
        Title.Caption = 'Actual Shipped Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'BG_QTY'
        Footers = <>
        Title.Caption = 'Export_Custom|Qty'
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'BG_WT'
        Footers = <>
        Title.Caption = 'Export_Custom|N.N.W. (KG)'
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'BG_GW'
        Footers = <>
        Title.Caption = 'Export_Custom|G.W. (KG)'
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'BG_C'
        Footer.DisplayFormat = '#0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Actual Carton'
        Width = 44
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'EXFTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Ex-fty Date'
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'ONDT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Transit Date'
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CURN40'
        Footers = <>
        Title.Caption = 'Currency'
        Width = 47
      end
      item
        Color = 13499643
        DisplayFormat = '0.000'
        EditButtons = <>
        FieldName = 'UPRC55'
        Footers = <>
        Title.Caption = 'Unit Price'
      end
      item
        Color = 13499643
        DisplayFormat = '#0.000'
        EditButtons = <>
        FieldName = 'EXRATE'
        Footers = <>
        Title.Caption = 'Ex. Rate'
      end
      item
        Color = 13499643
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'TPRC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Total Value (HKD)'
      end
      item
        Color = 13499643
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'BOX'
        Footer.DisplayFormat = '#0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '# of Carton'
        Width = 38
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'SHPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Ship Mode'
        Width = 67
      end
      item
        Color = 13499643
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'C1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Measurement|Length'
        Visible = False
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'C2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Measurement|Width'
        Visible = False
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'C3'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Measurement|Height'
        Visible = False
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'CBM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Volume (CBM)'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 360
    Width = 1220
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 66
      Height = 25
      Caption = 'Save'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 81
      Top = 8
      Width = 73
      Height = 25
      Caption = 'AddNew'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 153
      Top = 8
      Width = 64
      Height = 25
      Caption = 'Delete'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 216
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
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 416
      Top = 8
      Width = 65
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
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 480
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Notification'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        000557777777777777750BBBBBBBBBBBBBB07F5555FFFFFFF5570BBBB0000000
        BBB07F5557777777FF570BBB077BBB770BB07F557755555775570BBBBBBBBBBB
        BBB07F5555FFFFFFF5570BBBB0000000BBB07F5557777777F5570BBBB0FFFFF0
        BBB07F5557FFFFF7F5570BBBB0000000BBB07F555777777755570BBBBBBBBBBB
        BBB07FFFFFFFFFFFFFF700000000000000007777777777777777500FFFFFFFFF
        F005577FF555FFFFF7755500FFF00000005555775FF7777777F5550F777FFFFF
        F055557F777FFF5557F5550000000FFF00555577777775FF77F5550777777000
        7055557FFFFFF777F7F555000000000000555577777777777755}
      NumGlyphs = 2
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object CheckBox1: TCheckBox
      Left = 850
      Top = 6
      Width = 97
      Height = 17
      Caption = 'Show Clr Code'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object BitBtn7: TBitBtn
      Left = 568
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Signature'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 7
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 776
      Top = 8
      Width = 57
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 8
    end
    object CheckBox2: TCheckBox
      Left = 948
      Top = 6
      Width = 81
      Height = 17
      Caption = 'This Month'
      TabOrder = 9
    end
    object CheckBox3: TCheckBox
      Left = 850
      Top = 25
      Width = 115
      Height = 17
      Caption = 'Hide Price && Value'
      TabOrder = 10
    end
    object BitBtn10: TBitBtn
      Left = 288
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Pre-shipping Advice'
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
      TabOrder = 11
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 648
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Export declare elements'
      TabOrder = 12
      OnClick = BitBtn11Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 328
    Top = 131
    Width = 353
    Height = 241
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
        Width = 118
      end
      object cxGrid1DBTableView1exfty: TcxGridDBColumn
        Caption = #20986#21378#26085#26399
        DataBinding.FieldName = 'exfty'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 64
      end
      object cxGrid1DBTableView1shr: TcxGridDBColumn
        Caption = #22659#22806#25910#36135#20154
        DataBinding.FieldName = 'shr'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 137
      end
      object cxGrid1DBTableView1con_seq: TcxGridDBColumn
        Caption = #24207#21495#13#10'('#24402#24182#21495')'
        DataBinding.FieldName = 'con_seq'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 71
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
        Width = 459
      end
      object cxGrid1DBTableView1c_name: TcxGridDBColumn
        Caption = #30446#30340#22269
        DataBinding.FieldName = 'c_name'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 78
      end
      object cxGrid1DBTableView1sqty: TcxGridDBColumn
        Caption = #25968#37327#13#10'('#24211#23384#21333#20301')'
        DataBinding.FieldName = 'sqty'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 68
      end
      object cxGrid1DBTableView1unit: TcxGridDBColumn
        Caption = #24211#23384#13#10#21333#20301
        DataBinding.FieldName = 'unit'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 29
      end
      object cxGrid1DBTableView1wght: TcxGridDBColumn
        Caption = #25968#37327'('#35745#37327#21333#20301')'#13#10'- '#21315#20811
        DataBinding.FieldName = 'wght'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 99
      end
      object cxGrid1DBTableView1curr: TcxGridDBColumn
        Caption = #24065#21046
        DataBinding.FieldName = 'curr'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 46
      end
      object cxGrid1DBTableView1unitpx: TcxGridDBColumn
        Caption = #21333#20215'('#25163#20876')'
        DataBinding.FieldName = 'unitpx'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 99
      end
      object cxGrid1DBTableView1ttlpx: TcxGridDBColumn
        Caption = #24635#20215
        DataBinding.FieldName = 'ttlpx'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 99
      end
      object cxGrid1DBTableView1box: TcxGridDBColumn
        Caption = #31665#25968
        DataBinding.FieldName = 'box'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 46
      end
      object cxGrid1DBTableView1wght1: TcxGridDBColumn
        Caption = #20928#37325
        DataBinding.FieldName = 'wght'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 99
      end
      object cxGrid1DBTableView1mz: TcxGridDBColumn
        Caption = #27611#37325
        DataBinding.FieldName = 'mz'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1contractno: TcxGridDBColumn
        Caption = #25163#20876#21495
        DataBinding.FieldName = 'contractno'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 78
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_shpadvice2 where shpno like '#39'PSHP-6103%'#39
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SHPNO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SSEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'VOYN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SOPNO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CAT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'UPRC55'
        DataType = ftFloat
      end
      item
        Name = 'UPRC'
        DataType = ftFloat
      end
      item
        Name = 'TPRC'
        DataType = ftFloat
      end
      item
        Name = 'BOX'
        DataType = ftFloat
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'C1'
        DataType = ftFloat
      end
      item
        Name = 'C2'
        DataType = ftFloat
      end
      item
        Name = 'C3'
        DataType = ftFloat
      end
      item
        Name = 'INV'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURN40'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'HSNAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ONDT'
        DataType = ftDate
      end
      item
        Name = 'CURT40'
        DataType = ftFloat
      end
      item
        Name = 'EXRATE'
        DataType = ftFloat
      end
      item
        Name = 'WGHT'
        DataType = ftFloat
      end
      item
        Name = 'CONTRACTNO'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'CON_SEQ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'UNITPX'
        DataType = ftFloat
      end
      item
        Name = 'TTLPX'
        DataType = ftFloat
      end
      item
        Name = 'WUNIT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'BG_QTY'
        DataType = ftInteger
      end
      item
        Name = 'BG_WT'
        DataType = ftFloat
      end
      item
        Name = 'BG_GW'
        DataType = ftFloat
      end
      item
        Name = 'BG_C'
        DataType = ftFloat
      end
      item
        Name = 'SQTY_WT'
        DataType = ftFloat
      end
      item
        Name = 'BG_PCERT'
        DataType = ftFloat
      end
      item
        Name = 'BG_UPX'
        DataType = ftFloat
      end
      item
        Name = 'BG_TTLPX'
        DataType = ftFloat
      end
      item
        Name = 'BG_YS'
        DataType = ftWideString
        Size = 500
      end
      item
        Name = 'BG_QTY1'
        DataType = ftFloat
      end
      item
        Name = 'BG_WT1'
        DataType = ftFloat
      end
      item
        Name = 'BG_GW1'
        DataType = ftFloat
      end
      item
        Name = 'CSTYLE_1'
        DataType = ftWideString
        Size = 35
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Expression = 'tplant;shpno;sseq'
        Options = [ixCaseInsensitive, ixExpression]
      end
      item
        Name = 'idx2'
        CaseInsFields = 'shpno;sseq'
        Expression = 'tplant;shpno;sseq'
        Options = [ixCaseInsensitive, ixExpression]
      end>
    IndexFieldNames = 'tplant;shpno;sseq'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 136
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 104
  end
  object Query4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 264
    Top = 104
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 296
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 200
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 104
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 360
    Top = 104
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
    Left = 392
    Top = 104
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipping Advice  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 114300
        mmTop = 4233
        mmWidth = 46831
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 12435
        mmLeft = 2117
        mmTop = 17992
        mmWidth = 279665
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Item #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 2910
        mmTop = 22490
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PH-Invoice Nr. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 11642
        mmTop = 22490
        mmWidth = 16552
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN Ref # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 31750
        mmTop = 22490
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Manifest # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 46567
        mmTop = 22490
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SO # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 61119
        mmTop = 22490
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
        Caption = 'Cust '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 75142
        mmTop = 19579
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 74613
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 85725
        mmTop = 22490
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 102129
        mmTop = 22490
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 115094
        mmTop = 22754
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
        Caption = 'PDN Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 154517
        mmTop = 22754
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 166952
        mmTop = 19579
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipped '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 166952
        mmTop = 22754
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 166952
        mmTop = 25929
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transit date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 178330
        mmTop = 22754
        mmWidth = 11811
        BandType = 0
      end
      object uh01: TppLabel
        UserName = 'uh01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Unit Price '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 203465
        mmTop = 22754
        mmWidth = 11377
        BandType = 0
      end
      object uh03: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Value '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 230982
        mmTop = 19579
        mmWidth = 12965
        BandType = 0
      end
      object uh04: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(HKD) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 230982
        mmTop = 22754
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '# of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 246328
        mmTop = 19579
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Carton '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 246328
        mmTop = 22754
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship Mode '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 256382
        mmTop = 22754
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Volume '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 270934
        mmTop = 19579
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 230982
        mmTop = 14552
        mmWidth = 12361
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 245005
        mmTop = 14552
        mmWidth = 10837
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 262996
        mmTop = 14552
        mmWidth = 6392
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
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 271728
        mmTop = 14552
        mmWidth = 6096
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' (CBM) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 270934
        mmTop = 22754
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipping Advice Ref # :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 5556
        mmTop = 14552
        mmWidth = 27474
        BandType = 0
      end
      object shpno001: TppLabel
        UserName = 'shpno001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 34660
        mmTop = 14552
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Acutal Ex-fty Date :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 70908
        mmTop = 14552
        mmWidth = 22754
        BandType = 0
      end
      object exfty001: TppLabel
        UserName = 'exfty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 95515
        mmTop = 14552
        mmWidth = 8996
        BandType = 0
      end
      object x1: TppLabel
        UserName = 'x1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clr  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 138377
        mmTop = 19579
        mmWidth = 4498
        BandType = 0
      end
      object x2: TppLabel
        UserName = 'x2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 138377
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name of '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 191559
        mmTop = 19579
        mmWidth = 8551
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Product '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 191559
        mmTop = 22754
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 147902
        mmTop = 14552
        mmWidth = 11377
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
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
        Transparent = True
        mmHeight = 2910
        mmLeft = 159809
        mmTop = 14552
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prod '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 146315
        mmTop = 19579
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 146315
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To:  HK Head Office    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 115623
        mmTop = 14552
        mmWidth = 24342
        BandType = 0
      end
      object uh02: TppLabel
        UserName = 'Label203'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex. rate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 217753
        mmTop = 22754
        mmWidth = 8382
        BandType = 0
      end
      object plt001: TppLabel
        UserName = 'plt001'
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
        Transparent = True
        mmHeight = 2910
        mmLeft = 195527
        mmTop = 14552
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vehicle Number :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 174625
        mmTop = 14552
        mmWidth = 20373
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SSEQ'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 2910
        mmTop = 529
        mmWidth = 550
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
        DataField = 'INV'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 11642
        mmTop = 529
        mmWidth = 508
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
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 32279
        mmTop = 529
        mmWidth = 550
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
        DataField = 'VOYN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 47096
        mmTop = 529
        mmWidth = 550
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
        DataField = 'SOPNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 61648
        mmTop = 529
        mmWidth = 550
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
        DataField = 'CUST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 75142
        mmTop = 529
        mmWidth = 550
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 84667
        mmTop = 529
        mmWidth = 17198
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 102659
        mmTop = 529
        mmWidth = 550
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 115623
        mmTop = 529
        mmWidth = 550
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
        DataField = 'SQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 162529
        mmTop = 529
        mmWidth = 550
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 174700
        mmTop = 529
        mmWidth = 550
        BandType = 4
      end
      object ud01: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURN40'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 201613
        mmTop = 529
        mmWidth = 550
        BandType = 4
      end
      object ud02: TppDBText
        UserName = 'ud02'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UPRC55'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 216981
        mmTop = 529
        mmWidth = 550
        BandType = 4
      end
      object ud03: TppDBText
        UserName = 'ud03'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPRC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 242327
        mmTop = 529
        mmWidth = 550
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
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 251366
        mmTop = 529
        mmWidth = 550
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
        DataField = 'CBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 280417
        mmTop = 529
        mmWidth = 550
        BandType = 4
      end
      object x3: TppDBText
        UserName = 'x3'
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
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 138377
        mmTop = 529
        mmWidth = 550
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'HSNAME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2381
        mmLeft = 179652
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText103'
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
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 147638
        mmTop = 529
        mmWidth = 550
        BandType = 4
      end
      object exrate001: TppLabel
        UserName = 'exrate001'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 217753
        mmTop = 529
        mmWidth = 8467
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 42069
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 6350
        mmLeft = 2117
        mmTop = 0
        mmWidth = 279665
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Grand total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 2910
        mmTop = 1852
        mmWidth = 13420
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
        DataField = 'SQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 149490
        mmTop = 1852
        mmWidth = 13377
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
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 160602
        mmTop = 1852
        mmWidth = 14605
        BandType = 7
      end
      object ut02: TppDBCalc
        UserName = 'ut02'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPRC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 229394
        mmTop = 1852
        mmWidth = 13420
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
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 239978
        mmTop = 1852
        mmWidth = 11811
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
        DataField = 'CBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 268817
        mmTop = 1852
        mmWidth = 12107
        BandType = 7
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 12065
        BandType = 7
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 12965
        mmLeft = 5821
        mmTop = 12435
        mmWidth = 275961
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Signed by:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 226219
        mmTop = 28046
        mmWidth = 12700
        BandType = 7
      end
      object signature001: TppLabel
        UserName = 'signature001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2921
        mmLeft = 241565
        mmTop = 28046
        mmWidth = 12700
        BandType = 7
      end
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
        mmHeight = 7938
        mmLeft = 226219
        mmTop = 32015
        mmWidth = 28046
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline1
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
    object ppGroup2: TppGroup
      BreakName = 'SEQ1'
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
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel28: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-total: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 2910
          mmTop = 1058
          mmWidth = 11113
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 149490
          mmTop = 1058
          mmWidth = 13377
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'T4QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 160602
          mmTop = 1058
          mmWidth = 14605
          BandType = 5
          GroupNo = 1
        end
        object ut01: TppDBCalc
          UserName = 'ut01'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TPRC'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 229394
          mmTop = 1058
          mmWidth = 13420
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BOX'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 239978
          mmTop = 1058
          mmWidth = 11811
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CBM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 268817
          mmTop = 1058
          mmWidth = 12107
          BandType = 5
          GroupNo = 1
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SHPM'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 257440
          mmTop = 1058
          mmWidth = 550
          BandType = 5
          GroupNo = 1
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 2117
          mmTop = 0
          mmWidth = 279665
          BandType = 5
          GroupNo = 1
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 2117
          mmTop = 4498
          mmWidth = 279665
          BandType = 5
          GroupNo = 1
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ONDT'
          DataPipeline = ppDBPipeline1
          DisplayFormat = 'yyyy/MM/dd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 178330
          mmTop = 1058
          mmWidth = 550
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel File (*.xls)|*.xls|Any file (*.*)|*.*'
    FilterIndex = 0
    Left = 456
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = Query5
    Left = 328
    Top = 104
  end
  object Query6: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbluser '
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 296
    Top = 136
  end
  object xls1: TQExport4XLS
    DataSet = Query5
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
    Left = 424
    Top = 104
  end
  object ADOQuery3: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 696
    Top = 72
  end
  object ppReport2: TppReport
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
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 424
    Top = 200
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pre-Shipping Advice  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 19844
        mmTop = 4233
        mmWidth = 247915
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape1'
        mmHeight = 12435
        mmLeft = 2117
        mmTop = 17992
        mmWidth = 280459
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Item '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 2910
        mmTop = 19579
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN Ref # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 9790
        mmTop = 22490
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Manifest # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 25929
        mmTop = 22490
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 42333
        mmTop = 22490
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 57944
        mmTop = 22490
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 69850
        mmTop = 22754
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 172509
        mmTop = 22754
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '# of  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 219869
        mmTop = 19579
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'pkgs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 219869
        mmTop = 22754
        mmWidth = 5884
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Volume '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 229394
        mmTop = 19579
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 222515
        mmTop = 14552
        mmWidth = 12361
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 236538
        mmTop = 14552
        mmWidth = 10837
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 254530
        mmTop = 14552
        mmWidth = 6392
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
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
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 263261
        mmTop = 14552
        mmWidth = 6096
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' (CBM) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 229394
        mmTop = 22754
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipping Advice Ref # :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 5556
        mmTop = 14552
        mmWidth = 27474
        BandType = 0
      end
      object shpno002: TppLabel
        UserName = 'shpno002'
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
        Transparent = True
        mmHeight = 2910
        mmLeft = 34660
        mmTop = 14552
        mmWidth = 43127
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name of Product '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 106098
        mmTop = 22754
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 139700
        mmTop = 14552
        mmWidth = 11377
        BandType = 0
      end
      object fty002: TppLabel
        UserName = 'fty002'
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
        Transparent = True
        mmHeight = 2910
        mmLeft = 150548
        mmTop = 14552
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contract No. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 138642
        mmTop = 22754
        mmWidth = 14393
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NN Wt. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 189971
        mmTop = 22754
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label204'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contract '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 160073
        mmTop = 19579
        mmWidth = 9906
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label303'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 204259
        mmTop = 19579
        mmWidth = 5588
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mode '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 204259
        mmTop = 22754
        mmWidth = 6731
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty Date :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 85990
        mmTop = 14552
        mmWidth = 15367
        BandType = 0
      end
      object exfty002: TppLabel
        UserName = 'exfty002'
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
        Transparent = True
        mmHeight = 2910
        mmLeft = 102129
        mmTop = 14552
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Color '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 92869
        mmTop = 22490
        mmWidth = 6519
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 2910
        mmTop = 22754
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'item# '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 160073
        mmTop = 22754
        mmWidth = 6689
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label304'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Export Custom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 240507
        mmTop = 19579
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 240507
        mmTop = 22754
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N.N.W.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 251090
        mmTop = 22754
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(KG)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 251090
        mmTop = 25929
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'G.W.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 261673
        mmTop = 22754
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label1101'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(KG)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 261673
        mmTop = 25929
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 272521
        mmTop = 19579
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Carton'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 272521
        mmTop = 22754
        mmWidth = 8996
        BandType = 0
      end
      object plt002: TppLabel
        UserName = 'plt002'
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
        Transparent = True
        mmHeight = 2910
        mmLeft = 187855
        mmTop = 14552
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vehicle Number :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 166688
        mmTop = 14552
        mmWidth = 20701
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SSEQ'
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
        mmWidth = 508
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 9790
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VOYN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 25929
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText7'
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 42333
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText8'
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 57944
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText9'
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 69850
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 177842
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 224938
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 238961
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'HSNAME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 99748
        mmTop = 529
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'contractno'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 135996
        mmTop = 529
        mmWidth = 24077
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'pcs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 179388
        mmTop = 529
        mmWidth = 3895
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
        DataField = 'wght'
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
        mmLeft = 194776
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'kgs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 196321
        mmTop = 529
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'con_seq'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 160073
        mmTop = 529
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 92869
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BG_QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 250053
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BG_WT'
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
        mmLeft = 260636
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BG_GW'
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
        mmLeft = 271219
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BG_C'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 281010
        mmTop = 529
        mmWidth = 508
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1058
        mmWidth = 284427
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline3
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
          Version = '11.08'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline3'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16404
            mmPrintPosition = 0
            object ppLabel88: TppLabel
              UserName = 'Label88'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Supplement:- '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 2117
              mmTop = 3175
              mmWidth = 19844
              BandType = 1
            end
            object ppShape7: TppShape
              UserName = 'Shape7'
              mmHeight = 8467
              mmLeft = 2381
              mmTop = 7938
              mmWidth = 280459
              BandType = 1
            end
            object ppLabel89: TppLabel
              UserName = 'Label89'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Project# '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 3175
              mmTop = 8996
              mmWidth = 9525
              BandType = 1
            end
            object ppLabel90: TppLabel
              UserName = 'Label90'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'WO #'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 18256
              mmTop = 8996
              mmWidth = 6350
              BandType = 1
            end
            object ppLabel91: TppLabel
              UserName = 'Label901'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Cust Style '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 45773
              mmTop = 8996
              mmWidth = 11769
              BandType = 1
            end
            object ppLabel92: TppLabel
              UserName = 'Label902'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'HS Code '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 65617
              mmTop = 8996
              mmWidth = 10626
              BandType = 1
            end
            object ppLabel94: TppLabel
              UserName = 'Label94'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Contract No. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 116417
              mmTop = 8996
              mmWidth = 14393
              BandType = 1
            end
            object ppLabel95: TppLabel
              UserName = 'Label95'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Contract '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 133086
              mmTop = 8996
              mmWidth = 9906
              BandType = 1
            end
            object ppLabel96: TppLabel
              UserName = 'Label96'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Item# '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 133086
              mmTop = 12435
              mmWidth = 6773
              BandType = 1
            end
            object ppLabel97: TppLabel
              UserName = 'Label97'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'PDN Qty '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 144727
              mmTop = 8996
              mmWidth = 10287
              BandType = 1
            end
            object ppLabel98: TppLabel
              UserName = 'Label98'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'NN Wt. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 158486
              mmTop = 8996
              mmWidth = 8721
              BandType = 1
            end
            object ppLabel99: TppLabel
              UserName = 'Label99'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #30003#22577#35201#32032' (No. of elements)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 171980
              mmTop = 8996
              mmWidth = 29252
              BandType = 1
            end
            object ppLabel101: TppLabel
              UserName = 'Label903'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Style No. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2879
              mmLeft = 31221
              mmTop = 8996
              mmWidth = 10541
              BandType = 1
            end
            object ppLabel93: TppLabel
              UserName = 'Label93'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Name of Product '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 81227
              mmTop = 8996
              mmWidth = 19050
              BandType = 1
            end
          end
          object ppHeaderBand4: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand4: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText45: TppDBText
              UserName = 'DBText45'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'j_no'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 3175
              mmTop = 1058
              mmWidth = 11007
              BandType = 4
            end
            object ppDBText46: TppDBText
              UserName = 'DBText46'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'j2_job'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 18256
              mmTop = 1058
              mmWidth = 9229
              BandType = 4
            end
            object ppDBText47: TppDBText
              UserName = 'DBText47'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'cstyle'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 45773
              mmTop = 1058
              mmWidth = 8721
              BandType = 4
            end
            object ppDBText48: TppDBText
              UserName = 'DBText48'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'hscode'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 65617
              mmTop = 1058
              mmWidth = 508
              BandType = 4
            end
            object ppDBText50: TppDBText
              UserName = 'DBText50'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'contractno'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 117211
              mmTop = 1058
              mmWidth = 14224
              BandType = 4
            end
            object ppDBText51: TppDBText
              UserName = 'DBText51'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'con_seq'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 136261
              mmTop = 1058
              mmWidth = 2371
              BandType = 4
            end
            object ppDBText52: TppDBText
              UserName = 'DBText52'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'sqty'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 149998
              mmTop = 1058
              mmWidth = 3556
              BandType = 4
            end
            object ppDBText53: TppDBText
              UserName = 'DBText53'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'wght'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '#0.0;-#0.0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 159342
              mmTop = 1058
              mmWidth = 4149
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText54'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'remarks'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 171980
              mmTop = 1058
              mmWidth = 508
              BandType = 4
            end
            object ppLabel100: TppLabel
              UserName = 'Label100'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'kgs '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2498
              mmLeft = 164307
              mmTop = 1058
              mmWidth = 3895
              BandType = 4
            end
            object ppDBText55: TppDBText
              UserName = 'DBText55'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'styleno'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 31221
              mmTop = 1058
              mmWidth = 508
              BandType = 4
            end
            object ppDBMemo1: TppDBMemo
              UserName = 'DBMemo1'
              ForceJustifyLastLine = True
              SaveOrder = 0
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              CharWrap = False
              DataField = 'remarks'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2910
              mmLeft = 171980
              mmTop = 1058
              mmWidth = 110331
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppDBText49: TppDBText
              UserName = 'DBText49'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'hsname'
              DataPipeline = ppDBPipeline3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 2498
              mmLeft = 81227
              mmTop = 1058
              mmWidth = 8467
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 24342
            mmPrintPosition = 0
            object ppLabel102: TppLabel
              UserName = 'Label102'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #33337#21209#21516#20107#26597#26680':      '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 184944
              mmTop = 6615
              mmWidth = 22648
              BandType = 7
            end
            object ppLabel103: TppLabel
              UserName = 'Label103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #33337#21209#20027#31649#24489#26680':      '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 184944
              mmTop = 12700
              mmWidth = 22648
              BandType = 7
            end
            object ppLabel104: TppLabel
              UserName = 'Label104'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = #22577#38364#20154#21729#24489#26680':      '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 184944
              mmTop = 19050
              mmWidth = 22648
              BandType = 7
            end
          end
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'SHPNO'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 14817
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape2'
          mmHeight = 6350
          mmLeft = 2117
          mmTop = 0
          mmWidth = 280459
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BOX'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 213519
          mmTop = 1852
          mmWidth = 11811
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CBM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 227278
          mmTop = 1852
          mmWidth = 12107
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 164836
          mmTop = 1852
          mmWidth = 13377
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'wght'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 183515
          mmTop = 1852
          mmWidth = 11811
          BandType = 5
          GroupNo = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'pcs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 179388
          mmTop = 1852
          mmWidth = 4498
          BandType = 5
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'kgs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 196321
          mmTop = 1852
          mmWidth = 4498
          BandType = 5
          GroupNo = 0
        end
        object ppLabel77: TppLabel
          UserName = 'Label29'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Grand total: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 2910
          mmTop = 1852
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
        end
        object ppSubReport1: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          KeepTogether = True
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 8996
          mmWidth = 284427
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppDBPipeline2
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
            Version = '11.08'
            mmColumnWidth = 0
            DataPipelineName = 'ppDBPipeline2'
            object ppTitleBand1: TppTitleBand
              mmBottomOffset = 0
              mmHeight = 19050
              mmPrintPosition = 0
              object ppShape5: TppShape
                UserName = 'Shape5'
                mmHeight = 9260
                mmLeft = 2117
                mmTop = 9790
                mmWidth = 280459
                BandType = 1
              end
              object ppLabel65: TppLabel
                UserName = 'Label65'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Summary:- '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3175
                mmLeft = 2646
                mmTop = 4233
                mmWidth = 14817
                BandType = 1
              end
              object ppLabel72: TppLabel
                UserName = 'Label302'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Volume '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 271992
                mmTop = 11113
                mmWidth = 8996
                BandType = 1
              end
              object ppLabel52: TppLabel
                UserName = 'Label205'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Contract No. '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 6615
                mmTop = 14288
                mmWidth = 14288
                BandType = 1
              end
              object ppLabel51: TppLabel
                UserName = 'Label51'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Name of Product '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 33867
                mmTop = 14288
                mmWidth = 19050
                BandType = 1
              end
              object ppLabel67: TppLabel
                UserName = 'Label67'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Contract item# '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 59531
                mmTop = 14023
                mmWidth = 16669
                BandType = 1
              end
              object ppLabel66: TppLabel
                UserName = 'Label66'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Actual Qty '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 129117
                mmTop = 14288
                mmWidth = 11896
                BandType = 1
              end
              object ppLabel57: TppLabel
                UserName = 'Label57'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Actual NNW '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 146579
                mmTop = 14288
                mmWidth = 14182
                BandType = 1
              end
              object ppLabel68: TppLabel
                UserName = 'Label68'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '# of  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 260880
                mmTop = 11113
                mmWidth = 5292
                BandType = 1
              end
              object ppLabel71: TppLabel
                UserName = 'Label71'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'pkgs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 260880
                mmTop = 14288
                mmWidth = 5821
                BandType = 1
              end
              object ppLabel73: TppLabel
                UserName = 'Label73'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = ' (CBM) '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 271992
                mmTop = 14288
                mmWidth = 8467
                BandType = 1
              end
              object ppLabel80: TppLabel
                UserName = 'Label80'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PDN Ref # '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                Visible = False
                mmHeight = 2910
                mmLeft = 30163
                mmTop = 2117
                mmWidth = 12435
                BandType = 1
              end
              object ppLabel81: TppLabel
                UserName = 'Label801'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Manifest # '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                Visible = False
                mmHeight = 2910
                mmLeft = 49213
                mmTop = 2117
                mmWidth = 11906
                BandType = 1
              end
              object ppLabel84: TppLabel
                UserName = 'Label84'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = #35336#37327' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 211932
                mmTop = 11113
                mmWidth = 5588
                BandType = 1
              end
              object ppLabel85: TppLabel
                UserName = 'Label85'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = #21934#20301' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 211932
                mmTop = 14288
                mmWidth = 5588
                BandType = 1
              end
              object ppLabel86: TppLabel
                UserName = 'Label86'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = #22577#20729#21934#20729' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 224632
                mmTop = 14023
                mmWidth = 10499
                BandType = 1
              end
              object ppLabel87: TppLabel
                UserName = 'Label87'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = #36008#20729' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 245005
                mmTop = 14288
                mmWidth = 5588
                BandType = 1
              end
              object ppLabel115: TppLabel
                UserName = 'Label115'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = #30003#22577#35201#32032' (No. of elements)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 84402
                mmTop = 14023
                mmWidth = 29252
                BandType = 1
              end
              object ppDBText39: TppDBText
                UserName = 'DBText39'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'PDN'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                Visible = False
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 30163
                mmTop = 6085
                mmWidth = 4498
                BandType = 1
              end
              object ppDBText40: TppDBText
                UserName = 'DBText40'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'VOYN'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                Visible = False
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2381
                mmLeft = 49213
                mmTop = 6085
                mmWidth = 6085
                BandType = 1
              end
              object ppLabel116: TppLabel
                UserName = 'Label116'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = #21512#21516#20936#37325' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 168540
                mmTop = 11113
                mmWidth = 10499
                BandType = 1
              end
              object ppLabel119: TppLabel
                UserName = 'Label119'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '('#27599#20214')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 169334
                mmTop = 14023
                mmWidth = 6519
                BandType = 1
              end
              object ppLabel120: TppLabel
                UserName = 'Label120'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = #21512#21516' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 184415
                mmTop = 11113
                mmWidth = 5556
                BandType = 1
              end
              object ppLabel121: TppLabel
                UserName = 'Label121'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = #32317#20936#37325' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 184415
                mmTop = 14023
                mmWidth = 8043
                BandType = 1
              end
              object ppLabel123: TppLabel
                UserName = 'Label123'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '% '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2879
                mmLeft = 201084
                mmTop = 14288
                mmWidth = 2879
                BandType = 1
              end
            end
            object ppHeaderBand3: TppHeaderBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppDetailBand3: TppDetailBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppDBText28: TppDBText
                UserName = 'DBText28'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'contractno'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 3175
                mmTop = 529
                mmWidth = 24077
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
                DataField = 'wght'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 150813
                mmTop = 529
                mmWidth = 4149
                BandType = 4
              end
              object ppDBText30: TppDBText
                UserName = 'DBText30'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'con_seq'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 61913
                mmTop = 529
                mmWidth = 11113
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
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 130969
                mmTop = 529
                mmWidth = 3556
                BandType = 4
              end
              object ppDBText34: TppDBText
                UserName = 'DBText34'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'BOX'
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
                mmLeft = 264097
                mmTop = 529
                mmWidth = 2371
                BandType = 4
              end
              object ppDBText36: TppDBText
                UserName = 'DBText36'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'CBM'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 277368
                mmTop = 529
                mmWidth = 4657
                BandType = 4
              end
              object ppDBText37: TppDBText
                UserName = 'DBText37'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'HSNAME'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 25135
                mmTop = 529
                mmWidth = 35719
                BandType = 4
              end
              object ppLabel53: TppLabel
                UserName = 'Label53'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'pcs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 135467
                mmTop = 529
                mmWidth = 3895
                BandType = 4
              end
              object ppLabel54: TppLabel
                UserName = 'Label54'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'kgs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2498
                mmLeft = 156104
                mmTop = 529
                mmWidth = 3895
                BandType = 4
              end
              object ppDBText42: TppDBText
                UserName = 'DBText301'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'WUNIT'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 211932
                mmTop = 529
                mmWidth = 7673
                BandType = 4
              end
              object ppDBText43: TppDBText
                UserName = 'DBText43'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'UNITPX'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#0.00;-#0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 227807
                mmTop = 529
                mmWidth = 5334
                BandType = 4
              end
              object ppDBText44: TppDBText
                UserName = 'DBText44'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'TTLPX'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#0.00;-#0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 251355
                mmTop = 529
                mmWidth = 508
                BandType = 4
              end
              object ppDBMemo2: TppDBMemo
                UserName = 'DBMemo2'
                ForceJustifyLastLine = True
                SaveOrder = 0
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                CharWrap = False
                DataField = 'bg_ys'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Stretch = True
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2910
                mmLeft = 75142
                mmTop = 529
                mmWidth = 47625
                BandType = 4
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmLeading = 0
              end
              object ppDBText60: TppDBText
                UserName = 'DBText60'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ht_wt'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '0.0000'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 169069
                mmTop = 529
                mmWidth = 5038
                BandType = 4
              end
              object ppLabel124: TppLabel
                UserName = 'Label124'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'kgs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 175155
                mmTop = 529
                mmWidth = 3969
                BandType = 4
              end
              object ppDBText61: TppDBText
                UserName = 'DBText601'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ht_twt'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 183283
                mmTop = 529
                mmWidth = 5630
                BandType = 4
              end
              object ppLabel125: TppLabel
                UserName = 'Label125'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'kgs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2381
                mmLeft = 189971
                mmTop = 529
                mmWidth = 3969
                BandType = 4
              end
              object ppDBText62: TppDBText
                UserName = 'DBText62'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ht_diff'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2498
                mmLeft = 199232
                mmTop = 529
                mmWidth = 5800
                BandType = 4
              end
            end
            object ppFooterBand3: TppFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppSummaryBand3: TppSummaryBand
              AlignToBottom = False
              mmBottomOffset = 0
              mmHeight = 6615
              mmPrintPosition = 0
              object ppShape6: TppShape
                UserName = 'Shape6'
                mmHeight = 6350
                mmLeft = 2117
                mmTop = 0
                mmWidth = 280459
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
                DataField = 'BOX'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 254530
                mmTop = 1852
                mmWidth = 11811
                BandType = 7
              end
              object ppDBCalc14: TppDBCalc
                UserName = 'DBCalc101'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'CBM'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 269876
                mmTop = 1852
                mmWidth = 12107
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
                DataField = 'SQTY'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 120915
                mmTop = 1852
                mmWidth = 13377
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
                DataField = 'wght'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 143404
                mmTop = 1852
                mmWidth = 11811
                BandType = 7
              end
              object ppLabel63: TppLabel
                UserName = 'Label63'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'pcs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 135467
                mmTop = 1852
                mmWidth = 4498
                BandType = 7
              end
              object ppLabel64: TppLabel
                UserName = 'Label64'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'kgs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 156104
                mmTop = 1852
                mmWidth = 4498
                BandType = 7
              end
              object ppDBCalc21: TppDBCalc
                UserName = 'DBCalc21'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'TTLPX'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '#0.00;-#0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 237596
                mmTop = 1852
                mmWidth = 14309
                BandType = 7
              end
              object ppDBCalc30: TppDBCalc
                UserName = 'DBCalc30'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ht_twt'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 2879
                mmLeft = 175747
                mmTop = 1852
                mmWidth = 13166
                BandType = 7
              end
              object ppLabel127: TppLabel
                UserName = 'Label127'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'kgs '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 189707
                mmTop = 1852
                mmWidth = 4498
                BandType = 7
              end
            end
            object ppGroup6: TppGroup
              BreakName = 'ppDBText28'
              BreakType = btCustomField
              OutlineSettings.CreateNode = True
              NewFile = False
              ReprintOnSubsequentPage = False
              StartOnOddPage = False
              UserName = 'Group6'
              mmNewColumnThreshold = 0
              mmNewPageThreshold = 0
              DataPipelineName = ''
              object ppGroupHeaderBand6: TppGroupHeaderBand
                mmBottomOffset = 0
                mmHeight = 0
                mmPrintPosition = 0
              end
              object ppGroupFooterBand6: TppGroupFooterBand
                PrintHeight = phDynamic
                HideWhenOneDetail = False
                mmBottomOffset = 0
                mmHeight = 5292
                mmPrintPosition = 0
                object ppSubReport4: TppSubReport
                  UserName = 'SubReport4'
                  ExpandAll = False
                  NewPrintJob = False
                  OutlineSettings.CreateNode = True
                  TraverseAllData = False
                  DataPipelineName = 'ppDBPipeline4'
                  mmHeight = 5027
                  mmLeft = 0
                  mmTop = 0
                  mmWidth = 284427
                  BandType = 5
                  GroupNo = 0
                  mmBottomOffset = 0
                  mmOverFlowOffset = 0
                  mmStopPosition = 0
                  object ppChildReport4: TppChildReport
                    AutoStop = False
                    DataPipeline = ppDBPipeline4
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
                    Version = '11.08'
                    mmColumnWidth = 0
                    DataPipelineName = 'ppDBPipeline4'
                    object ppTitleBand4: TppTitleBand
                      mmBottomOffset = 0
                      mmHeight = 0
                      mmPrintPosition = 0
                    end
                    object ppHeaderBand6: TppHeaderBand
                      mmBottomOffset = 0
                      mmHeight = 0
                      mmPrintPosition = 0
                    end
                    object ppDetailBand6: TppDetailBand
                      mmBottomOffset = 0
                      mmHeight = 4234
                      mmPrintPosition = 0
                      object ppDBText72: TppDBText
                        UserName = 'DBText72'
                        HyperlinkColor = clBlue
                        AutoSize = True
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'wght'
                        DataPipeline = ppDBPipeline4
                        DisplayFormat = '0.0'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        TextAlignment = taRightJustified
                        Transparent = True
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 150813
                        mmTop = 529
                        mmWidth = 4149
                        BandType = 4
                      end
                      object ppDBText73: TppDBText
                        UserName = 'DBText73'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'con_seq'
                        DataPipeline = ppDBPipeline4
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        TextAlignment = taCentered
                        Transparent = True
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 61913
                        mmTop = 529
                        mmWidth = 11113
                        BandType = 4
                      end
                      object ppDBText74: TppDBText
                        UserName = 'DBText74'
                        HyperlinkColor = clBlue
                        AutoSize = True
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'SQTY'
                        DataPipeline = ppDBPipeline4
                        DisplayFormat = '#0'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        TextAlignment = taRightJustified
                        Transparent = True
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 130969
                        mmTop = 529
                        mmWidth = 3556
                        BandType = 4
                      end
                      object ppDBText75: TppDBText
                        UserName = 'DBText75'
                        HyperlinkColor = clBlue
                        AutoSize = True
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'BOX'
                        DataPipeline = ppDBPipeline4
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        TextAlignment = taRightJustified
                        Transparent = True
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 264055
                        mmTop = 529
                        mmWidth = 2371
                        BandType = 4
                      end
                      object ppDBText76: TppDBText
                        UserName = 'DBText76'
                        HyperlinkColor = clBlue
                        AutoSize = True
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'CBM'
                        DataPipeline = ppDBPipeline4
                        DisplayFormat = '#,0.00;-#,0.00'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        TextAlignment = taRightJustified
                        Transparent = True
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 277284
                        mmTop = 529
                        mmWidth = 4657
                        BandType = 4
                      end
                      object ppDBText77: TppDBText
                        UserName = 'DBText77'
                        HyperlinkColor = clBlue
                        AutoSize = True
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'TTLPX'
                        DataPipeline = ppDBPipeline4
                        DisplayFormat = '#0.00;-#0.00'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        TextAlignment = taRightJustified
                        Transparent = True
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 251355
                        mmTop = 529
                        mmWidth = 508
                        BandType = 4
                      end
                      object ppDBText78: TppDBText
                        UserName = 'DBText78'
                        HyperlinkColor = clBlue
                        AutoSize = True
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'ht_twt'
                        DataPipeline = ppDBPipeline4
                        DisplayFormat = '0.0'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        TextAlignment = taRightJustified
                        Transparent = True
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 183357
                        mmTop = 529
                        mmWidth = 5630
                        BandType = 4
                      end
                      object ppDBText79: TppDBText
                        UserName = 'DBText701'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'contractno'
                        DataPipeline = ppDBPipeline4
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        Transparent = True
                        Visible = False
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 3175
                        mmTop = 529
                        mmWidth = 24077
                        BandType = 4
                      end
                      object ppDBText80: TppDBText
                        UserName = 'DBText80'
                        HyperlinkColor = clBlue
                        AutoSize = True
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        DataField = 'ht_diff'
                        DataPipeline = ppDBPipeline4
                        DisplayFormat = '0.00'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        TextAlignment = taRightJustified
                        Transparent = True
                        DataPipelineName = 'ppDBPipeline4'
                        mmHeight = 2498
                        mmLeft = 199232
                        mmTop = 529
                        mmWidth = 5800
                        BandType = 4
                      end
                      object ppLabel129: TppLabel
                        UserName = 'Label129'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Caption = 'kgs '
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        Transparent = True
                        mmHeight = 2381
                        mmLeft = 189971
                        mmTop = 529
                        mmWidth = 3969
                        BandType = 4
                      end
                      object ppLabel130: TppLabel
                        UserName = 'Label130'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Caption = 'pcs '
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        Transparent = True
                        mmHeight = 2498
                        mmLeft = 135467
                        mmTop = 529
                        mmWidth = 3895
                        BandType = 4
                      end
                      object ppLabel131: TppLabel
                        UserName = 'Label131'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Caption = 'kgs '
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Arial'
                        Font.Size = 6
                        Font.Style = []
                        Transparent = True
                        mmHeight = 2498
                        mmLeft = 156104
                        mmTop = 529
                        mmWidth = 3895
                        BandType = 4
                      end
                    end
                    object ppFooterBand4: TppFooterBand
                      mmBottomOffset = 0
                      mmHeight = 0
                      mmPrintPosition = 0
                    end
                    object ppSummaryBand6: TppSummaryBand
                      AlignToBottom = False
                      mmBottomOffset = 0
                      mmHeight = 0
                      mmPrintPosition = 0
                    end
                    object ppGroup8: TppGroup
                      BreakName = 'ppDBText79'
                      BreakType = btCustomField
                      OutlineSettings.CreateNode = True
                      NewFile = False
                      ReprintOnSubsequentPage = False
                      StartOnOddPage = False
                      UserName = 'Group8'
                      mmNewColumnThreshold = 0
                      mmNewPageThreshold = 0
                      DataPipelineName = ''
                      object ppGroupHeaderBand8: TppGroupHeaderBand
                        mmBottomOffset = 0
                        mmHeight = 1058
                        mmPrintPosition = 0
                        object ppLine7: TppLine
                          UserName = 'Line7'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Weight = 0.750000000000000000
                          mmHeight = 1058
                          mmLeft = 2117
                          mmTop = 0
                          mmWidth = 280459
                          BandType = 3
                          GroupNo = 0
                        end
                      end
                      object ppGroupFooterBand8: TppGroupFooterBand
                        HideWhenOneDetail = False
                        mmBottomOffset = 0
                        mmHeight = 1058
                        mmPrintPosition = 0
                        object ppLine8: TppLine
                          UserName = 'Line8'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Weight = 0.750000000000000000
                          mmHeight = 1058
                          mmLeft = 2117
                          mmTop = 0
                          mmWidth = 280459
                          BandType = 5
                          GroupNo = 0
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BG_C'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 268140
          mmTop = 1852
          mmWidth = 13377
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BG_QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 233924
          mmTop = 1852
          mmWidth = 16637
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BG_WT'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 245566
          mmTop = 1852
          mmWidth = 15579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc28: TppDBCalc
          UserName = 'DBCalc28'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BG_GW'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 255767
          mmTop = 1852
          mmWidth = 15960
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'SEQ1'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 2117
          mmTop = 0
          mmWidth = 280459
          BandType = 5
          GroupNo = 2
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 2117
          mmTop = 5291
          mmWidth = 280459
          BandType = 5
          GroupNo = 2
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-total: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 2910
          mmTop = 1323
          mmWidth = 11134
          BandType = 5
          GroupNo = 2
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SHPM'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2910
          mmLeft = 201613
          mmTop = 1323
          mmWidth = 11377
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BOX'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 213519
          mmTop = 1323
          mmWidth = 11811
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CBM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 227278
          mmTop = 1323
          mmWidth = 12107
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 164836
          mmTop = 1323
          mmWidth = 13377
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'wght'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 183515
          mmTop = 1323
          mmWidth = 11811
          BandType = 5
          GroupNo = 2
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'pcs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 179388
          mmTop = 1323
          mmWidth = 4498
          BandType = 5
          GroupNo = 2
        end
        object ppLabel79: TppLabel
          UserName = 'Label79'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'kgs '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 196321
          mmTop = 1323
          mmWidth = 4498
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc25'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BG_C'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 268140
          mmTop = 1323
          mmWidth = 13377
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc26'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BG_QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 233924
          mmTop = 1323
          mmWidth = 16637
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc201'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BG_WT'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 245566
          mmTop = 1323
          mmWidth = 15579
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc29: TppDBCalc
          UserName = 'DBCalc29'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'BG_GW'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 255767
          mmTop = 1323
          mmWidth = 15960
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object query7: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_shpadvice2 where seq=84201'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 200
  end
  object DataSource3: TDataSource
    DataSet = qry7
    Left = 216
    Top = 200
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline2'
    Left = 360
    Top = 200
  end
  object ADOQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      'exec phdb..sp_preshpadvice '#39'SL'#39','#39'SHP-5978A 40HQ'#39)
    Left = 216
    Top = 48
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery1
    Left = 256
    Top = 48
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource4
    UserName = 'DBPipeline3'
    Left = 664
    Top = 176
  end
  object pm1: TPopupMenu
    Left = 736
    Top = 192
    object SplitQtyWeight1: TMenuItem
      Caption = 'Split Qty/Weight'
    end
  end
  object qry7: TADOQuery
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      'exec phdb..sp_preshpadvice '#39'SL'#39','#39'SHP-5978A 40HQ'#39)
    Left = 168
    Top = 200
  end
  object qry8: TADOQuery
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      'exec phdb..sp_preshpadvice '#39'SL'#39','#39'SHP-5978A 40HQ'#39)
    Left = 168
    Top = 248
  end
  object DataSource5: TDataSource
    DataSet = qry8
    Left = 216
    Top = 248
  end
  object ppDBPipeline4: TppDBPipeline
    DataSource = DataSource5
    UserName = 'DBPipeline4'
    Left = 360
    Top = 248
  end
end
