object frmotherqn: Tfrmotherqn
  Left = 0
  Top = 0
  Caption = 'frmotherqn'
  ClientHeight = 388
  ClientWidth = 1245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1245
    Height = 73
    Align = alTop
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 440
      Top = 7
      Width = 49
      Height = 13
      AutoSize = False
      Caption = 'Project No.'
    end
    object SpeedButton1: TSpeedButton
      Left = 656
      Top = 32
      Width = 73
      Height = 22
      Caption = 'OK'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 504
      Top = 16
      Width = 3
      Height = 11
      Visible = False
    end
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      AutoSize = False
      Caption = 'Factory'
    end
    object Label11: TLabel
      Left = 320
      Top = 7
      Width = 73
      Height = 13
      AutoSize = False
      Caption = 'Project Code'
    end
    object Label2: TLabel
      Left = 109
      Top = 8
      Width = 34
      Height = 13
      AutoSize = False
      Caption = 'Team '
    end
    object Edit1: TEdit
      Left = 488
      Top = 7
      Width = 73
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 48
      Top = 8
      Width = 49
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'SL'
    end
    object Edit7: TEdit
      Left = 376
      Top = 7
      Width = 49
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 136
      Top = 7
      Width = 161
      Height = 19
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 27
      Width = 289
      Height = 38
      Caption = 'SW Start Date Range'
      TabOrder = 4
      object Label4: TLabel
        Left = 8
        Top = 16
        Width = 25
        Height = 11
        Caption = 'From '
      end
      object Label5: TLabel
        Left = 152
        Top = 16
        Width = 14
        Height = 11
        Caption = 'To '
      end
      object DateEdit1: TDateEdit
        Left = 40
        Top = 16
        Width = 106
        Height = 19
        NumGlyphs = 2
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 172
        Top = 16
        Width = 109
        Height = 19
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 321
      Top = 26
      Width = 289
      Height = 38
      Caption = 'QN Start Date Range'
      TabOrder = 5
      object Label6: TLabel
        Left = 8
        Top = 16
        Width = 25
        Height = 11
        Caption = 'From '
      end
      object Label8: TLabel
        Left = 152
        Top = 16
        Width = 14
        Height = 11
        Caption = 'To '
      end
      object DateEdit3: TDateEdit
        Left = 40
        Top = 16
        Width = 106
        Height = 19
        NumGlyphs = 2
        TabOrder = 0
      end
      object DateEdit4: TDateEdit
        Left = 172
        Top = 16
        Width = 109
        Height = 19
        NumGlyphs = 2
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 339
    Width = 1245
    Height = 49
    Align = alBottom
    TabOrder = 1
    object lbl850: TLabel
      Left = 728
      Top = 16
      Width = 28
      Height = 13
      Caption = 'lbl850'
      Visible = False
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 6
      Width = 81
      Height = 33
      Caption = 'Save'
      DoubleBuffered = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ModalResult = 8
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 96
      Top = 6
      Width = 72
      Height = 33
      Caption = 'Lock'
      DoubleBuffered = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn6: TBitBtn
      Left = 961
      Top = 8
      Width = 88
      Height = 33
      Caption = 'QN Transfer'
      DoubleBuffered = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
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
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object BitBtn9: TBitBtn
      Left = 1049
      Top = 8
      Width = 104
      Height = 33
      Caption = 'SQN Conduct'
      DoubleBuffered = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
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
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object BitBtn11: TBitBtn
      Left = 1153
      Top = 8
      Width = 136
      Height = 33
      Caption = 'SKU exchange dashboard'
      DoubleBuffered = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
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
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object BitBtn12: TBitBtn
      Left = 167
      Top = 6
      Width = 75
      Height = 33
      Caption = 'Preview'
      DoubleBuffered = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
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
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn12Click
    end
    object BitBtn1: TBitBtn
      Left = 248
      Top = 5
      Width = 95
      Height = 33
      Caption = 'Output Report'
      DoubleBuffered = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
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
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 335
      Top = 6
      Width = 83
      Height = 33
      Caption = 'Exit'
      DoubleBuffered = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      Kind = bkClose
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 73
    Width = 1245
    Height = 266
    Align = alClient
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1243
      Height = 264
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxView1: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.ImmediateEditor = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.HeaderAutoHeight = True
        Styles.Content = cxStyle4
        Styles.Inactive = cxStyle6
        Styles.Selection = cxStyle6
        Bands = <
          item
            Caption = 'A'
            FixedKind = fkLeft
            Width = 151
          end
          item
            Caption = 'B'
            FixedKind = fkLeft
            Width = 204
          end
          item
            Caption = 'C'
            FixedKind = fkLeft
            Width = 142
          end
          item
            Caption = 'D'
            FixedKind = fkLeft
            Width = 52
          end
          item
            Caption = 'E'
            FixedKind = fkLeft
            Width = 79
          end
          item
            Caption = 'F'
            FixedKind = fkLeft
            Width = 65
          end
          item
            Caption = 'G'
            FixedKind = fkLeft
            Width = 122
          end
          item
            Caption = 'H'
            FixedKind = fkLeft
            Width = 132
          end
          item
            Caption = 'I'
            FixedKind = fkLeft
            Width = 33
          end
          item
            Caption = 'J'
            FixedKind = fkLeft
            Width = 32
          end
          item
            Caption = 'K'
            FixedKind = fkLeft
            Width = 40
          end
          item
            Caption = 'LL'
            Visible = False
            Width = 43
          end
          item
            Caption = 'MM'
            Visible = False
            Width = 43
          end
          item
            Caption = 'L'
            FixedKind = fkLeft
            Width = 42
          end
          item
            Caption = 'OO'
            Visible = False
            Width = 39
          end
          item
            Caption = 'M'
            Width = 113
          end
          item
            Caption = 'RWO FW Start Date'
            Position.BandIndex = 15
            Position.ColIndex = 0
            Width = 183
          end
          item
            Caption = 'QQ'
            Visible = False
            Width = 45
          end
          item
            Caption = 'RR'
            Visible = False
            Width = 40
          end
          item
            Caption = 'N'
            Width = 79
          end
          item
            Caption = 'TT'
            Visible = False
            Width = 41
          end
          item
            Caption = 'O'
            Width = 52
          end
          item
            Caption = 'VV'
            Visible = False
            Width = 38
          end>
        object cxView1WS: TcxGridDBBandedColumn
          Caption = 'Team'
          DataBinding.FieldName = 'Ws'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle4
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1KHZL: TcxGridDBBandedColumn
          Caption = 'Start Instruction'
          DataBinding.FieldName = 'KHZL1'
          Options.Editing = False
          Width = 50
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ws_ksrq: TcxGridDBBandedColumn
          Caption = 'Default SW Start Date'
          DataBinding.FieldName = 'WS_KSRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle5
          Width = 55
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1ws_aksrq: TcxGridDBBandedColumn
          Caption = 'Actual SW Start Date'
          DataBinding.FieldName = 'WS_AKSRQ'
          HeaderAlignmentHorz = taCenter
          Width = 56
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1KSDIFF: TcxGridDBBandedColumn
          Caption = 'Locked Diff'
          DataBinding.FieldName = 'KSDIFF'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxView1WS_WCRQ: TcxGridDBBandedColumn
          Caption = 'Default T2 Date'
          DataBinding.FieldName = 'WS_WCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle5
          Width = 57
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1WS_AWCRQ: TcxGridDBBandedColumn
          Caption = 'Actual T2 Date'
          DataBinding.FieldName = 'WS_AWCRQ'
          HeaderAlignmentHorz = taCenter
          Width = 55
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxView1RWO_LWSD: TcxGridDBBandedColumn
          Caption = 'RWO LW Start Date'
          DataBinding.FieldName = 'RWO_LWSD'
          Visible = False
          Options.Editing = False
          Styles.Content = cxStyle4
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1RWO_T3D: TcxGridDBBandedColumn
          Caption = 'RWO T3 Date'
          DataBinding.FieldName = 'RWO_T3D'
          Visible = False
          Options.Editing = False
          Styles.Content = cxStyle4
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1WCDIFF: TcxGridDBBandedColumn
          Caption = 'Locked Diff'
          DataBinding.FieldName = 'WCDIFF'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 40
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxView1PLINE: TcxGridDBBandedColumn
          Caption = 'Line'
          DataBinding.FieldName = 'PLINE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle4
          Width = 39
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FLAG1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FLAG1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.Data = {
            CE000000424DCE0000000000000076000000280000000D0000000B0000000100
            04000000000058000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
            F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
            F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
            F000FF73333FFFFFF000FFFFFFFFFFFFF000}
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 20
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxView1J_NO: TcxGridDBBandedColumn
          Caption = 'Project'
          DataBinding.FieldName = 'J_NO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle4
          Width = 64
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1J2_JOB: TcxGridDBBandedColumn
          Caption = 'WO #'
          DataBinding.FieldName = 'J2_JOB'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle4
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1CWO: TcxGridDBBandedColumn
          Caption = 'WOc # Suffix'
          DataBinding.FieldName = 'CWO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle5
          Width = 31
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1RWO: TcxGridDBBandedColumn
          Caption = 'RWO # Suffix'
          DataBinding.FieldName = 'RWO'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle5
          Width = 32
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1FCCS: TcxGridDBBandedColumn
          Caption = 'QN # Suffix'
          DataBinding.FieldName = 'FCCS'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxView1FCCSPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle5
          Width = 33
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1FLAG6: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FLAG6'
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.Data = {
            CE000000424DCE0000000000000076000000280000000D0000000B0000000100
            04000000000058000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
            F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
            F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
            F000FF73333FFFFFF000FFFFFFFFFFFFF000}
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 35
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxView1CSTYLE: TcxGridDBBandedColumn
          Caption = 'Cust Style'
          DataBinding.FieldName = 'CSTYLE'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle4
          Width = 98
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1JHRS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JHRS'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.Data = {
            CE000000424DCE0000000000000076000000280000000D0000000B0000000100
            04000000000058000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
            F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
            F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
            F000FF73333FFFFFF000FFFFFFFFFFFFF000}
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 29
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxView1QTY: TcxGridDBBandedColumn
          Caption = 'RWO QTY'
          DataBinding.FieldName = 'QTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle4
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ACOL: TcxGridDBBandedColumn
          Caption = 'Clr Code'
          DataBinding.FieldName = 'ACOL'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle4
          Width = 27
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FLAG4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FLAG4'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.Data = {
            CE000000424DCE0000000000000076000000280000000D0000000B0000000100
            04000000000058000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
            F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
            F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
            F000FF73333FFFFFF000FFFFFFFFFFFFF000}
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 35
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxView1SCQTY: TcxGridDBBandedColumn
          Caption = 'QN QTY'
          DataBinding.FieldName = 'SCQTY'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1SCQTYPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle5
          Width = 38
          Position.BandIndex = 10
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1LSTRS: TcxGridDBBandedColumn
          Caption = 'Def Work force'
          DataBinding.FieldName = 'LSTRS'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1TRS: TcxGridDBBandedColumn
          Caption = 'Def Machine Qty'
          DataBinding.FieldName = 'TRS'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 12
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1TMU: TcxGridDBBandedColumn
          Caption = 'Def SAH'
          DataBinding.FieldName = 'TMU'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.0000'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 42
          Position.BandIndex = 13
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1TMU_O: TcxGridDBBandedColumn
          Caption = 'Def SAH'
          DataBinding.FieldName = 'TMU_O'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.0000'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 13
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1JXJS: TcxGridDBBandedColumn
          Caption = 'Def Each Section O/P'
          DataBinding.FieldName = 'JXJS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 14
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1PLAN_DATE: TcxGridDBBandedColumn
          Caption = 'Default'
          DataBinding.FieldName = 'PLAN_DATE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle4
          Width = 57
          Position.BandIndex = 16
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1CPLAN: TcxGridDBBandedColumn
          Caption = 'Curr'
          DataBinding.FieldName = 'CPLAN'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle5
          Width = 56
          Position.BandIndex = 16
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1XC4: TcxGridDBBandedColumn
          Caption = 'Diff'
          DataBinding.FieldName = 'XC4'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle5
          Width = 23
          Position.BandIndex = 16
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1FYFS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FYFS'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.Data = {
            CE000000424DCE0000000000000076000000280000000D0000000B0000000100
            04000000000058000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
            F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
            F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
            F000FF73333FFFFFF000FFFFFFFFFFFFF000}
          HeaderGlyphAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 20
          Position.BandIndex = 16
          Position.ColIndex = 3
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxView1UNBAL: TcxGridDBBandedColumn
          Caption = 'Locked Diff (day)'
          DataBinding.FieldName = 'UNBAL'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 27
          Position.BandIndex = 16
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxView1XC1: TcxGridDBBandedColumn
          Caption = 'QN Start Date Cycle Time (day)'
          DataBinding.FieldName = 'XC1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle3
          Styles.Header = cxStyle3
          Position.BandIndex = 17
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1WEEK: TcxGridDBBandedColumn
          Caption = 'QN Start Week #'
          DataBinding.FieldName = 'WEEK'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle5
          Width = 35
          Position.BandIndex = 18
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FLAG3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FLAG3'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.Data = {
            CE000000424DCE0000000000000076000000280000000D0000000B0000000100
            04000000000058000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
            F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
            F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
            F000FF73333FFFFFF000FFFFFFFFFFFFF000}
          HeaderGlyphAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 29
          Position.BandIndex = 19
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxView1CFKSRQ: TcxGridDBBandedColumn
          Caption = 'QN Start Date'
          DataBinding.FieldName = 'CFKSRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle5
          Width = 57
          Position.BandIndex = 19
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1CFKSJS: TcxGridDBBandedColumn
          Caption = 'QN 1st Sect S-Time'
          DataBinding.FieldName = 'CFKSJS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 20
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1CFWCRQ: TcxGridDBBandedColumn
          Caption = 'QN T2 Date'
          DataBinding.FieldName = 'CFWCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle5
          Width = 57
          Position.BandIndex = 21
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1CKJS: TcxGridDBBandedColumn
          Caption = 'QN T2 End Time (Sect)'
          DataBinding.FieldName = 'CKJS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 22
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxView1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = tblshedule
    Left = 112
    Top = 232
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_plc'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 144
    Top = 232
  end
  object tblshedule: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_ws'
    FieldDefs = <
      item
        Name = 'PLINE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CFKSRQ'
        DataType = ftDate
      end
      item
        Name = 'CFKSJS'
        DataType = ftFloat
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
        Name = 'ARTNO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ACOL'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'WEEK'
        DataType = ftInteger
      end
      item
        Name = 'PLAN_DATE'
        DataType = ftDate
      end
      item
        Name = 'KHZL'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'OKHRQ'
        DataType = ftDate
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'TMU'
        DataType = ftFloat
      end
      item
        Name = 'TRS'
        DataType = ftInteger
      end
      item
        Name = 'FYL'
        DataType = ftFloat
      end
      item
        Name = 'XJS'
        DataType = ftInteger
      end
      item
        Name = 'JXJS'
        DataType = ftFloat
      end
      item
        Name = 'ZJS'
        DataType = ftFloat
      end
      item
        Name = 'JHL'
        DataType = ftFloat
      end
      item
        Name = 'CFWCRQ'
        DataType = ftDate
      end
      item
        Name = 'YQLCRQ'
        DataType = ftDateTime
      end
      item
        Name = 'SCTD'
        DataType = ftInteger
      end
      item
        Name = 'PHISZJS'
        DataType = ftFloat
      end
      item
        Name = 'ZHJS'
        DataType = ftFloat
      end
      item
        Name = 'BCJS'
        DataType = ftInteger
      end
      item
        Name = 'PD4'
        DataType = ftDate
      end
      item
        Name = 'SCLHJS'
        DataType = ftFloat
      end
      item
        Name = 'ZKTD'
        DataType = ftFloat
      end
      item
        Name = 'JHRS'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'YSJHL'
        DataType = ftFloat
      end
      item
        Name = 'DBXL'
        DataType = ftFloat
      end
      item
        Name = 'PD8'
        DataType = ftDate
      end
      item
        Name = 'BZJS'
        DataType = ftInteger
      end
      item
        Name = 'TZLCRQ'
        DataType = ftDate
      end
      item
        Name = 'FLAG1'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'FLAG2'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'FLAG3'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG4'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RQXC'
        DataType = ftInteger
      end
      item
        Name = 'QRLCRQ'
        DataType = ftDate
      end
      item
        Name = 'KDJS'
        DataType = ftInteger
      end
      item
        Name = 'WEEK1'
        DataType = ftInteger
      end
      item
        Name = 'ORDLINE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FYFS'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CFWCJS'
        DataType = ftFloat
      end
      item
        Name = 'SOPNO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FLAG5'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'CKTS'
        DataType = ftInteger
      end
      item
        Name = 'QRXC'
        DataType = ftInteger
      end
      item
        Name = 'YZH'
        DataType = ftBoolean
      end
      item
        Name = 'XS'
        DataType = ftInteger
      end
      item
        Name = 'TSHOP'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PFLAG1'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'DBZS'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FCCS'
        DataType = ftWideString
        Size = 8
      end
      item
        Name = 'LSTRS'
        DataType = ftFloat
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SHJS'
        DataType = ftFloat
      end
      item
        Name = 'QYJS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_W'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'YQ_W'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'TZ_W'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RID'
        DataType = ftInteger
      end
      item
        Name = 'HC'
        DataType = ftInteger
      end
      item
        Name = 'LEARN'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'NSHJS'
        DataType = ftInteger
      end
      item
        Name = 'UNBAL'
        DataType = ftFloat
      end
      item
        Name = 'XC1'
        DataType = ftInteger
      end
      item
        Name = 'XC2'
        DataType = ftInteger
      end
      item
        Name = 'XC3'
        DataType = ftInteger
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
        Name = 'CKJS'
        DataType = ftFloat
      end
      item
        Name = 'GRP'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'RQXC1'
        DataType = ftInteger
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'TBU'
        DataType = ftFloat
      end
      item
        Name = 'CPLAN'
        DataType = ftDate
      end
      item
        Name = 'XC4'
        DataType = ftInteger
      end
      item
        Name = 'LTC_D'
        DataType = ftFloat
      end
      item
        Name = 'LTC_R'
        DataType = ftFloat
      end
      item
        Name = 'LTC_A'
        DataType = ftFloat
      end
      item
        Name = 'LTC_RM'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'LTC_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'LTC_KSJS'
        DataType = ftFloat
      end
      item
        Name = 'DSQN'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG7'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DTA'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'CWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'IECLS'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'IECLS1'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'WL_JHDT'
        DataType = ftDate
      end
      item
        Name = 'WL_JHP'
        DataType = ftFloat
      end
      item
        Name = 'WL_WC'
        DataType = ftBoolean
      end
      item
        Name = 'WL_WCP'
        DataType = ftFloat
      end
      item
        Name = 'PB_JHDT'
        DataType = ftDate
      end
      item
        Name = 'PB_WC'
        DataType = ftBoolean
      end
      item
        Name = 'KHZL1'
        DataType = ftBoolean
      end
      item
        Name = 'WS'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'WS_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'WS_KSJS'
        DataType = ftFloat
      end
      item
        Name = 'WS_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'WS_WCJS'
        DataType = ftFloat
      end
      item
        Name = 'WS_AKSRQ'
        DataType = ftDate
      end
      item
        Name = 'WS_AKSJS'
        DataType = ftFloat
      end
      item
        Name = 'RWO_LWSD'
        DataType = ftDate
      end
      item
        Name = 'RWO_T3D'
        DataType = ftDate
      end
      item
        Name = 'TMU_O'
        DataType = ftFloat
      end
      item
        Name = 'TSAH'
        DataType = ftFloat
      end
      item
        Name = 'WS_AWCRQ'
        DataType = ftDate
      end
      item
        Name = 'LCK'
        DataType = ftBoolean
      end
      item
        Name = 'LCKKSRQ'
        DataType = ftDate
      end
      item
        Name = 'LCKWCRQ'
        DataType = ftDate
      end
      item
        Name = 'KSDIFF'
        DataType = ftInteger
      end
      item
        Name = 'WCDIFF'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'ws_ksrq;pline;seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = tblsheduleAfterOpen
    AfterPost = tblsheduleAfterPost
    Left = 80
    Top = 232
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_ws where ws_ksrq='#39'2014-04-08'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 176
    Top = 232
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 208
    Top = 232
  end
  object ClientDataSet5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 232
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet1
    Left = 304
    Top = 232
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 336
    Top = 232
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 368
    Top = 232
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 400
    Top = 232
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 152
    Top = 80
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 14088905
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 14074287
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 88
    Top = 64
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13499643
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 296
    Top = 72
    PixelsPerInch = 96
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clAqua
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 240
    Top = 72
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 13092603
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 544
    Top = 200
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 40
    Top = 232
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
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 496
    Top = 232
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34131
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Summary List '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 83344
        mmTop = 2381
        mmWidth = 117740
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
        Caption = '[Front Phase Bonding Team]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 83344
        mmTop = 7144
        mmWidth = 117740
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3768
        mmLeft = 3347
        mmTop = 13229
        mmWidth = 10118
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SL '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3768
        mmLeft = 15081
        mmTop = 13229
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SW Start Date Period from: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3768
        mmLeft = 40481
        mmTop = 13229
        mmWidth = 32089
        BandType = 0
      end
      object dt001: TppLabel
        UserName = 'dt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2014/02/10 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 74083
        mmTop = 13229
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'to: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3768
        mmLeft = 96838
        mmTop = 13229
        mmWidth = 3598
        BandType = 0
      end
      object dt002: TppLabel
        UserName = 'dt002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2014/02/10 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3768
        mmLeft = 102659
        mmTop = 13229
        mmWidth = 13674
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 13758
        mmLeft = 3175
        mmTop = 20373
        mmWidth = 277813
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 21696
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SW Start '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 25665
        mmWidth = 10054
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
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 21696
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SW Start '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 25665
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 29633
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T2 Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34396
        mmTop = 25665
        mmWidth = 8996
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
        mmHeight = 13758
        mmLeft = 63500
        mmTop = 20373
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 64558
        mmTop = 25665
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 25665
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 97631
        mmTop = 25665
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
        Caption = 'WOc # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 111654
        mmTop = 21696
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suffix '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 111654
        mmTop = 25665
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 21696
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suffix '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 25665
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 131498
        mmTop = 21696
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suffix '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 131498
        mmTop = 25665
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 143934
        mmTop = 25665
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 169863
        mmTop = 25665
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 182827
        mmTop = 21696
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 182827
        mmTop = 25665
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 191559
        mmTop = 25665
        mmWidth = 8382
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 21696
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 25665
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO FW Start Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 216694
        mmTop = 21696
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 215371
        mmTop = 26458
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 230453
        mmTop = 26458
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Start Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 244740
        mmTop = 25665
        mmWidth = 15282
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN T2 Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 265642
        mmTop = 25665
        mmWidth = 13229
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
        mmHeight = 13758
        mmLeft = 17727
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 33338
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 75936
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 96573
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 110596
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 120386
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 130440
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 140494
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 168540
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 181769
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 190236
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 201613
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 214048
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 243417
        mmTop = 20373
        mmWidth = 2646
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
        mmHeight = 13758
        mmLeft = 264584
        mmTop = 20373
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3768
        mmLeft = 218811
        mmTop = 13229
        mmWidth = 13250
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'yyyy/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3768
        mmLeft = 234421
        mmTop = 13229
        mmWidth = 12954
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 258763
        mmTop = 13229
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
        DisplayFormat = 'yyyy/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 268553
        mmTop = 13229
        mmWidth = 6350
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
        mmHeight = 13758
        mmLeft = 48683
        mmTop = 20373
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34396
        mmTop = 21696
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T2 Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 50006
        mmTop = 25665
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 50006
        mmTop = 21696
        mmWidth = 7144
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 214048
        mmTop = 25665
        mmWidth = 29369
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 228600
        mmTop = 25665
        mmWidth = 1588
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WS_KSRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'YYYY/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 3969
        mmTop = 794
        mmWidth = 11769
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
        DataField = 'WS_AKSRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'YYYY/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 18785
        mmTop = 794
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
        DataField = 'WS_WCRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'YYYY/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 34396
        mmTop = 794
        mmWidth = 11769
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
        DataField = 'PLINE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 64558
        mmTop = 794
        mmWidth = 6900
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
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 77258
        mmTop = 794
        mmWidth = 10964
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 97631
        mmTop = 794
        mmWidth = 10075
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
        DataField = 'CWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 111654
        mmTop = 794
        mmWidth = 3260
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
        DataField = 'RWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 121444
        mmTop = 794
        mmWidth = 3260
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
        DataField = 'FCCS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 131498
        mmTop = 794
        mmWidth = 4572
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
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 141552
        mmTop = 794
        mmWidth = 2879
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 148432
        mmTop = 794
        mmWidth = 13208
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
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 182827
        mmTop = 794
        mmWidth = 4318
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
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 175937
        mmTop = 794
        mmWidth = 3937
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
        DataField = 'SCQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 196046
        mmTop = 794
        mmWidth = 3937
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
        DataField = 'TMU_O'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 205846
        mmTop = 794
        mmWidth = 7197
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
        DataField = 'PLAN_DATE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'YYYY/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 215371
        mmTop = 794
        mmWidth = 11769
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
        DataField = 'CPLAN'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'YYYY/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 230453
        mmTop = 794
        mmWidth = 11769
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLAG3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 244740
        mmTop = 794
        mmWidth = 1143
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
        DataField = 'CFKSRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'YYYY/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 250825
        mmTop = 794
        mmWidth = 11769
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
        DataField = 'CFWCRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'YYYY/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 265642
        mmTop = 794
        mmWidth = 11769
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
        DataField = 'WS_AWCRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'YYYY/MM/DD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 50006
        mmTop = 794
        mmWidth = 508
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total SAH: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 179652
        mmTop = 1323
        mmWidth = 13229
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
        DataField = 'TSAH'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 200375
        mmTop = 1323
        mmWidth = 12615
        BandType = 7
      end
      object ppLine17: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 3175
        mmTop = 0
        mmWidth = 277813
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 440
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 232
    object Deletedata1: TMenuItem
      Caption = 'Delete data'
      ShortCut = 49220
      Visible = False
      OnClick = Deletedata1Click
    end
    object Exportdata1: TMenuItem
      Caption = 'Export data'
      ShortCut = 49222
      Visible = False
      OnClick = Exportdata1Click
    end
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet2
    Left = 176
    Top = 280
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline2'
    Left = 216
    Top = 280
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
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 264
    Top = 280
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 12171
        mmLeft = 4498
        mmTop = 21696
        mmWidth = 275167
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PP - Team '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 6085
        mmTop = 27517
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 43921
        mmTop = 22754
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SW Start '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 43921
        mmTop = 26194
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 43921
        mmTop = 30163
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label402'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 55827
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SW Start '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 55827
        mmTop = 26194
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 55827
        mmTop = 30163
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label403'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 69056
        mmTop = 22754
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T2 Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 69056
        mmTop = 26194
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 80698
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T2 Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 80698
        mmTop = 26194
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 94192
        mmTop = 27517
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 106627
        mmTop = 27517
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label502'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 125148
        mmTop = 27517
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WOc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 137584
        mmTop = 22754
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suffix '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 137584
        mmTop = 26194
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 146579
        mmTop = 27517
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 157427
        mmTop = 27517
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 167746
        mmTop = 27517
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Color '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 187590
        mmTop = 27517
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 195792
        mmTop = 27517
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 207698
        mmTop = 27517
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Output '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 220928
        mmTop = 27517
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'O/S Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 233892
        mmTop = 27517
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LW Start Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 247121
        mmTop = 27517
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN T2 Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 264055
        mmTop = 27517
        mmWidth = 11906
        BandType = 0
      end
      object title002: TppLabel
        UserName = 'title002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Output Report '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 63236
        mmTop = 7144
        mmWidth = 155575
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 223044
        mmTop = 17463
        mmWidth = 11388
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 237332
        mmTop = 17463
        mmWidth = 9483
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 254265
        mmTop = 17463
        mmWidth = 6138
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 262732
        mmTop = 17463
        mmWidth = 5334
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 6085
        mmTop = 1323
        mmWidth = 26194
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
        DataField = 'WS_KSRQ'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 43921
        mmTop = 1323
        mmWidth = 8202
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
        DataField = 'WS_AKSRQ'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 55827
        mmTop = 1323
        mmWidth = 529
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
        DataField = 'WS_WCRQ'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 69056
        mmTop = 1323
        mmWidth = 8202
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
        DataField = 'WS_AWCRQ'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 80698
        mmTop = 1323
        mmWidth = 529
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PLINE'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 94192
        mmTop = 1323
        mmWidth = 6085
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
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 106627
        mmTop = 1323
        mmWidth = 10054
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 125148
        mmTop = 1323
        mmWidth = 9260
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
        DataField = 'CWO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 137584
        mmTop = 1323
        mmWidth = 529
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
        DataField = 'RWO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 146579
        mmTop = 1323
        mmWidth = 2910
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
        DataField = 'FCCS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 157427
        mmTop = 1323
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
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
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 167746
        mmTop = 1323
        mmWidth = 11906
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
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 187590
        mmTop = 1323
        mmWidth = 3704
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
        DataField = 'QTY'
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
        mmLeft = 198967
        mmTop = 1323
        mmWidth = 4763
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
        DataField = 'SCQTY'
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
        mmLeft = 209815
        mmTop = 1323
        mmWidth = 4763
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
        DataField = 'OUTPUT'
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
        mmLeft = 219075
        mmTop = 1323
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UNFINISHED'
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
        mmLeft = 227807
        mmTop = 1323
        mmWidth = 12965
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
        DataField = 'CFKSRQ'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2381
        mmLeft = 247121
        mmTop = 1323
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CFWCRQ'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2498
        mmLeft = 264055
        mmTop = 1323
        mmWidth = 8297
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 504
    Top = 200
  end
end
