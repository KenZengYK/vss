object frmnewcap_wf: Tfrmnewcap_wf
  Left = 195
  Top = 116
  Caption = 'DHL of Assembly Line WF - Control and Maintain'
  ClientHeight = 386
  ClientWidth = 924
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 924
    Height = 264
    Align = alClient
    DataSource = DataSource1
    DrawMemoText = True
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGridEh1CellClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fty'
        Width = 28
      end
      item
        DisplayFormat = 'YY/MM/dd'
        EditButtons = <>
        FieldName = 'DT'
        Footers = <>
        Title.Caption = 'Date'
        Width = 67
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'W1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'On-line WF (Captured from LWPM)|LB3'
        Width = 40
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'ONLINEWF'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'On-line WF (Captured from LWPM)|LB6'
        Width = 40
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'WF3'
        Footers = <>
        Title.Caption = 'On-line WF (Input by WFPC)|LB3'
        Width = 43
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'WF6'
        Footers = <>
        Title.Caption = 'On-line WF (Input by WFPC)|LB6'
        Visible = False
        Width = 43
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'ONDUTYWF'
        Footers = <>
        Title.Caption = 'On-duty WF'
        Width = 46
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'BRW'
        Footers = <>
        Title.Caption = 'Borrowed for LB6 (ref only)'
        Width = 51
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'P1'
        Footers = <>
        ReadOnly = True
        Title.Caption = '% Diff|LB6 vs LB3'
        Width = 48
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'P2'
        Footers = <>
        ReadOnly = True
        Title.Caption = '% Diff|On-duty vs LB6'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'CFM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cfmd by WFPC'
        Width = 37
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'INHANDWF'
        Footers = <>
        Title.Caption = 'On-hand WF *'
        Width = 47
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'ABSENCE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Diff (On-hand vs On-duty)'
        Width = 50
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'ONHAND1'
        Footers = <>
        Title.Caption = 'Absence *'
        Width = 49
      end
      item
        DisplayFormat = '#,0;-#,0'
        EditButtons = <>
        FieldName = 'P3WF'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Diff (On-hand vs LB3)| '
        Width = 43
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'P3'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Diff (On-hand vs LB3)|%'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'CFM1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cfmd by HR *'
        Width = 31
      end
      item
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'BWF'
        Footers = <>
        Title.Caption = 'Budget based on CP'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'REMARKS'
        Footers = <>
        ShowImageAndText = True
        Title.Caption = 'Notepad'
        Width = 420
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 38
      Height = 13
      Caption = 'Factory '
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 32
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'SL'
      Items.Strings = (
        'SL'
        'CS'
        'GG'
        'RX')
    end
    object GroupBox1: TGroupBox
      Left = 176
      Top = 24
      Width = 361
      Height = 49
      Caption = 'Period'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 26
        Height = 13
        Caption = 'From '
      end
      object Label3: TLabel
        Left = 192
        Top = 16
        Width = 16
        Height = 13
        Caption = 'To '
      end
      object DateEdit1: TDateEdit
        Left = 48
        Top = 16
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 224
        Top = 16
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object BitBtn11: TBitBtn
      Left = 574
      Top = 35
      Width = 75
      Height = 25
      Caption = 'OK'
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
      TabOrder = 2
      OnClick = BitBtn11Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 345
    Width = 924
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label4: TLabel
      Left = 720
      Top = 20
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 49
      Height = 25
      Caption = 'New'
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
      Left = 65
      Top = 8
      Width = 56
      Height = 25
      Caption = 'Detail'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 121
      Top = 8
      Width = 64
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
      Left = 185
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Notepad'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 426
      Top = 8
      Width = 103
      Height = 25
      Caption = 'Recruit/Resign'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
        FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
        FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
        FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C880733777777777733700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 529
      Top = 8
      Width = 64
      Height = 25
      Caption = 'Confirm'
      DoubleBuffered = True
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 593
      Top = 8
      Width = 56
      Height = 25
      Caption = 'Rules'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
        FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
        FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
        FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
        00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
        55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
        5555777577775755555550FBFB0555555555575FFF7555555555570000755555
        5555557777555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 257
      Top = 8
      Width = 169
      Height = 25
      Caption = 'Monitor Plus On-duty WF'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 649
      Top = 8
      Width = 72
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
      TabOrder = 8
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 721
      Top = 8
      Width = 56
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 9
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_wf'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'ONDUTYWF'
        DataType = ftInteger
      end
      item
        Name = 'INHANDWF'
        DataType = ftInteger
      end
      item
        Name = 'ONLINEWF'
        DataType = ftFloat
      end
      item
        Name = 'D01'
        DataType = ftInteger
      end
      item
        Name = 'D02'
        DataType = ftInteger
      end
      item
        Name = 'D03'
        DataType = ftInteger
      end
      item
        Name = 'D11'
        DataType = ftInteger
      end
      item
        Name = 'D12'
        DataType = ftInteger
      end
      item
        Name = 'D13'
        DataType = ftInteger
      end
      item
        Name = 'D14'
        DataType = ftInteger
      end
      item
        Name = 'D15'
        DataType = ftInteger
      end
      item
        Name = 'D16'
        DataType = ftInteger
      end
      item
        Name = 'H01'
        DataType = ftInteger
      end
      item
        Name = 'H02'
        DataType = ftInteger
      end
      item
        Name = 'H03'
        DataType = ftInteger
      end
      item
        Name = 'H11'
        DataType = ftInteger
      end
      item
        Name = 'H12'
        DataType = ftInteger
      end
      item
        Name = 'H13'
        DataType = ftInteger
      end
      item
        Name = 'H14'
        DataType = ftInteger
      end
      item
        Name = 'H15'
        DataType = ftInteger
      end
      item
        Name = 'H16'
        DataType = ftInteger
      end
      item
        Name = 'W1'
        DataType = ftFloat
      end
      item
        Name = 'DT01'
        DataType = ftInteger
      end
      item
        Name = 'HT01'
        DataType = ftInteger
      end
      item
        Name = 'DC01'
        DataType = ftInteger
      end
      item
        Name = 'DC02'
        DataType = ftInteger
      end
      item
        Name = 'DC03'
        DataType = ftInteger
      end
      item
        Name = 'DC04'
        DataType = ftInteger
      end
      item
        Name = 'DC05'
        DataType = ftInteger
      end
      item
        Name = 'DC06'
        DataType = ftInteger
      end
      item
        Name = 'DC07'
        DataType = ftInteger
      end
      item
        Name = 'TD01'
        DataType = ftInteger
      end
      item
        Name = 'HC01'
        DataType = ftInteger
      end
      item
        Name = 'HC02'
        DataType = ftInteger
      end
      item
        Name = 'HC03'
        DataType = ftInteger
      end
      item
        Name = 'HC04'
        DataType = ftInteger
      end
      item
        Name = 'HC05'
        DataType = ftInteger
      end
      item
        Name = 'HC06'
        DataType = ftInteger
      end
      item
        Name = 'HC07'
        DataType = ftInteger
      end
      item
        Name = 'TH01'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'CFM1'
        DataType = ftBoolean
      end
      item
        Name = 'P1'
        DataType = ftFloat
      end
      item
        Name = 'P2'
        DataType = ftFloat
      end
      item
        Name = 'ONHAND1'
        DataType = ftInteger
      end
      item
        Name = 'REMARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'BRW'
        DataType = ftInteger
      end
      item
        Name = 'ABSENCE'
        DataType = ftInteger
      end
      item
        Name = 'P3WF'
        DataType = ftInteger
      end
      item
        Name = 'P3'
        DataType = ftFloat
      end
      item
        Name = 'TYP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BWF'
        DataType = ftFloat
      end
      item
        Name = 'WF3'
        DataType = ftFloat
      end
      item
        Name = 'WF6'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;dt'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 168
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 176
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 176
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 264
    Top = 176
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_wf where tplant='#39'SL'#39' and dt='#39'2012-04-06'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 200
    Top = 208
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline1'
    Left = 232
    Top = 208
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
    Left = 264
    Top = 208
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 11906
        mmWidth = 11113
        BandType = 0
      end
      object period001: TppLabel
        UserName = 'period001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Period: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 11906
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HDL Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 96044
        mmTop = 2910
        mmWidth = 70908
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 193940
        mmTop = 11906
        mmWidth = 15081
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 210609
        mmTop = 11906
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 240771
        mmTop = 11906
        mmWidth = 8202
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 253736
        mmTop = 11906
        mmWidth = 7144
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8731
        mmLeft = 1323
        mmTop = 16668
        mmWidth = 280988
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
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
        mmLeft = 4763
        mmTop = 20108
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On-line WF '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 27781
        mmTop = 17463
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LB3 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 23813
        mmTop = 21431
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LB6 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 40217
        mmTop = 21431
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On-hand '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 53446
        mmTop = 20108
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Absence  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 69321
        mmTop = 20108
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On-duty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 85461
        mmTop = 17463
        mmWidth = 10837
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'On-duty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 102394
        mmTop = 17463
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(HR) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 87842
        mmTop = 21431
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(WFPC) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 102394
        mmTop = 21431
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118798
        mmTop = 19315
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Confirmed '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 262996
        mmTop = 17463
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(HR) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 261144
        mmTop = 21431
        mmWidth = 6731
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(WFPC) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 270669
        mmTop = 21431
        mmWidth = 11134
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
        mmHeight = 8467
        mmLeft = 20902
        mmTop = 16668
        mmWidth = 2381
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
        mmHeight = 8467
        mmLeft = 50800
        mmTop = 16668
        mmWidth = 2381
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
        mmHeight = 8467
        mmLeft = 66940
        mmTop = 16668
        mmWidth = 2381
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
        mmHeight = 8467
        mmLeft = 83079
        mmTop = 16668
        mmWidth = 2381
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
        mmHeight = 8467
        mmLeft = 98954
        mmTop = 16668
        mmWidth = 2381
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
        mmHeight = 8467
        mmLeft = 115888
        mmTop = 16668
        mmWidth = 2381
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
        mmHeight = 8467
        mmLeft = 258498
        mmTop = 16668
        mmWidth = 2381
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 11642
        mmLeft = 1323
        mmTop = 0
        mmWidth = 280988
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
        DataField = 'DT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 1852
        mmTop = 794
        mmWidth = 14139
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
        DataField = 'W1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 24151
        mmTop = 794
        mmWidth = 7070
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
        DataField = 'ONLINEWF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 40026
        mmTop = 794
        mmWidth = 7070
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
        DataField = 'INHANDWF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 56960
        mmTop = 794
        mmWidth = 7070
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
        DataField = 'ABSENCE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 75184
        mmTop = 794
        mmWidth = 3133
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
        DataField = 'ONDUTYWF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 105643
        mmTop = 794
        mmWidth = 7070
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CFM1'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 261673
        mmTop = 1323
        mmWidth = 5292
        BandType = 4
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CFM'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 272786
        mmTop = 1323
        mmWidth = 5292
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'REMARKS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 9790
        mmLeft = 118798
        mmTop = 794
        mmWidth = 138907
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 20902
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 83079
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 98954
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 115888
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 258498
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 50800
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 66940
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object wf001: TppLabel
        UserName = 'wf001'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 88551
        mmTop = 794
        mmWidth = 7493
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 96
    Top = 176
  end
end
