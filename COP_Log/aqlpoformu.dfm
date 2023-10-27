object frmaqlpo: Tfrmaqlpo
  Left = 251
  Top = 113
  Caption = 'PO ('#21512#21516#34399#65289
  ClientHeight = 678
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 880
    Height = 637
    ActivePage = TabSheet3
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Inspected ('#24050#27298#26597')'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 73
        Width = 872
        Height = 533
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = BitBtn1Click
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CUST'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Customer ('#23458#25142')'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'PONO'
            Footers = <>
            Title.Caption = 'PO ('#21512#21516#34399')'
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'CSTYLE'
            Footers = <>
            Title.Caption = 'Style ('#27454#34399')'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'J_NO'
            Footers = <>
            Title.Caption = 'Project ('#24037#31243#34399')'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'J2_JOB'
            Footers = <>
            Title.Caption = 'WO ('#21046#21934#34399')'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'FLAG60'
            Footers = <>
            Title.Caption = 'QN #'
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'ACOL1'
            Footers = <>
            Title.Caption = 'Color'
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'DT'
            Footers = <>
            Title.Caption = 'Date ('#26085#26399')'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'AUD'
            Footers = <>
            Title.Caption = 'Inspector'#13#10'('#23529#26597#32773')'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'FTY'
            Footers = <>
            Title.Caption = 'Factory'#13#10'('#24037#24288')'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'PLINE'
            Footers = <>
            Title.Caption = 'Line ('#25289')'
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'ENDLINE'
            Footers = <>
            Title.Caption = 'In-line Full Inspection'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'AUDITR'
            Footers = <>
            Title.Caption = 'Inspected Times'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DELLOT'
            Footers = <>
            Title.Caption = 'Delivery Lot'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <>
            Title.Caption = 'Inspected Qty'
            Width = 48
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 872
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label4: TLabel
          Left = 208
          Top = 8
          Width = 103
          Height = 13
          Caption = 'Date from ('#26085#26399'  '#24478'): '
        end
        object Label5: TLabel
          Left = 8
          Top = 8
          Width = 80
          Height = 13
          Caption = 'Customer ('#23458#25142'):'
        end
        object Label11: TLabel
          Left = 432
          Top = 8
          Width = 36
          Height = 13
          Caption = 'to ('#21040'): '
        end
        object Label12: TLabel
          Left = 8
          Top = 40
          Width = 101
          Height = 13
          Caption = 'Project No. ('#24037#31243#34399'):'
        end
        object Label13: TLabel
          Left = 232
          Top = 40
          Width = 87
          Height = 13
          Caption = 'WO No. ('#21046#21934#34399'):'
        end
        object Label15: TLabel
          Left = 432
          Top = 40
          Width = 44
          Height = 13
          Caption = 'Line ('#25289'):'
        end
        object Label16: TLabel
          Left = 600
          Top = 8
          Width = 77
          Height = 13
          Caption = 'Factory ('#24037#24288') : '
        end
        object DateEdit1: TDateEdit
          Left = 317
          Top = 8
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
          OnChange = DateEdit1Change
        end
        object ComboBox2: TComboBox
          Left = 96
          Top = 8
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnChange = DateEdit1Change
          Items.Strings = (
            'AGPO'
            'CANA'
            'CANN'
            'DBHS'
            'DETA'
            'ESSE'
            'ETAA'
            'ETAC'
            'ETAF'
            'HEST'
            'HUKE'
            'INOV'
            'JECA'
            'MEYB'
            'MYLA'
            'NEIW'
            'PVHA'
            'PVHC'
            'PVHO'
            'PVHM'
            'SAXF'
            'TBDA'
            'TLOV'
            'TOMH')
        end
        object DateEdit2: TDateEdit
          Left = 472
          Top = 8
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
          OnChange = DateEdit1Change
        end
        object Edit7: TEdit
          Left = 112
          Top = 40
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnChange = DateEdit1Change
        end
        object Edit8: TEdit
          Left = 328
          Top = 40
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          OnChange = DateEdit1Change
        end
        object Edit9: TEdit
          Left = 480
          Top = 40
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          OnChange = DateEdit1Change
        end
        object ComboBox5: TComboBox
          Left = 680
          Top = 8
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 6
          OnChange = DateEdit1Change
          Items.Strings = (
            'SL'
            'RX'
            'GG'
            'CL')
        end
        object xh1: TCheckBox
          Left = 608
          Top = 40
          Width = 81
          Height = 17
          Caption = 'Zero defect'
          TabOrder = 7
          OnClick = DateEdit1Change
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 73
        Width = 872
        Height = 533
        Align = alClient
        TabOrder = 2
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid1DBTableView1CUST
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          object cxGrid1DBTableView1CUST: TcxGridDBColumn
            Caption = 'Customer'#13#10'('#23458#25142')'
            DataBinding.FieldName = 'CUST'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 54
          end
          object cxGrid1DBTableView1PONO: TcxGridDBColumn
            Caption = 'PO ('#21512#21516#34399')'
            DataBinding.FieldName = 'PONO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 108
          end
          object cxGrid1DBTableView1CSTYLE: TcxGridDBColumn
            Caption = 'Cust Style'#13#10'('#23458#27454#34399')'
            DataBinding.FieldName = 'CSTYLE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 63
          end
          object cxGrid1DBTableView1J_NO: TcxGridDBColumn
            Caption = 'Project#'#13#10'('#24037#31243#34399')'
            DataBinding.FieldName = 'J_NO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
          end
          object cxGrid1DBTableView1J2_JOB: TcxGridDBColumn
            Caption = 'WO#'#13#10'('#21046#21934#34399')'
            DataBinding.FieldName = 'J2_JOB'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 62
          end
          object cxGrid1DBTableView1CWO: TcxGridDBColumn
            Caption = 'WOc#'
            DataBinding.FieldName = 'CWO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 41
          end
          object cxGrid1DBTableView1RWO: TcxGridDBColumn
            Caption = 'RWO#'
            DataBinding.FieldName = 'RWO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 41
          end
          object cxGrid1DBTableView1FLAG60: TcxGridDBColumn
            Caption = 'QN#'
            DataBinding.FieldName = 'FLAG60'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 41
          end
          object cxGrid1DBTableView1ACOL1: TcxGridDBColumn
            Caption = 'Clr'#13#10'Code'
            DataBinding.FieldName = 'ACOL1'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 35
          end
          object cxGrid1DBTableView1DT: TcxGridDBColumn
            Caption = 'Date'#13#10'('#23529#26597#26085#26399')'
            DataBinding.FieldName = 'DT'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGrid1DBTableView1AUD: TcxGridDBColumn
            Caption = 'Inspector'#13#10'('#23529#26597#32773')'
            DataBinding.FieldName = 'AUD'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 63
          end
          object cxGrid1DBTableView1FTY: TcxGridDBColumn
            Caption = 'Fty'#13#10'('#24037#24288')'
            DataBinding.FieldName = 'FTY'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 39
          end
          object cxGrid1DBTableView1PLINE: TcxGridDBColumn
            Caption = 'Line'#13#10'('#25289')'
            DataBinding.FieldName = 'PLINE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
          end
          object cxGrid1DBTableView1ENDLINE: TcxGridDBColumn
            Caption = 'End line Full'#13#10'Inspection'
            DataBinding.FieldName = 'ENDLINE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 64
          end
          object cxGrid1DBTableView1QTY: TcxGridDBColumn
            Caption = 'Inspected'#13#10'Qty'
            DataBinding.FieldName = 'QTY'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 60
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'To be audit ('#26410#27298#23450')'
      ImageIndex = 1
      TabVisible = False
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 41
        Width = 872
        Height = 565
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnTitleClick = DBGridEh2TitleClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SOPNO'
            Footers = <>
            Title.Caption = 'SO ('#37559#21806#21934')'
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'J_NO'
            Footers = <>
            Title.Caption = 'Project ('#24037#31243#34399')'
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'ORDLINE'
            Footers = <>
            Title.Caption = 'SO Line ('#34892#27425')'
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'J2_JOB'
            Footers = <>
            Title.Caption = 'WO ('#21046#21934#34399')'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'PONO'
            Footers = <>
            Title.Caption = 'PO ('#21512#21516#34399')'
            Width = 161
          end
          item
            EditButtons = <>
            FieldName = 'cstyle'
            Footers = <>
            Title.Caption = 'Cust Style ('#27454#34399')'
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Color Code ('#38991#33394')'
            Width = 57
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 872
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 208
          Top = 8
          Width = 63
          Height = 13
          Caption = 'PO ('#21512#21516#34399'):'
        end
        object Label2: TLabel
          Left = 408
          Top = 8
          Width = 81
          Height = 13
          Caption = 'Project ('#24037#31243#34399'):'
        end
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 80
          Height = 13
          Caption = 'Customer ('#23458#25142'):'
        end
        object Label6: TLabel
          Left = 592
          Top = 8
          Width = 67
          Height = 13
          Caption = 'WO ('#21046#21934#34399'):'
        end
        object Edit1: TEdit
          Left = 280
          Top = 8
          Width = 105
          Height = 21
          TabOrder = 1
          OnChange = Edit1Change
        end
        object Edit2: TEdit
          Left = 496
          Top = 8
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          OnChange = Edit2Change
        end
        object ComboBox1: TComboBox
          Left = 96
          Top = 8
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = ComboBox1Change
          Items.Strings = (
            'ADDI'
            'AGPO'
            'APWS'
            'ASCR'
            'BEMI'
            'BEND'
            'CANN'
            'CRTE'
            'DAIS'
            'DBHS'
            'ESSE'
            'ETAA'
            'ETAC'
            'ETAM'
            'EXQU'
            'INOV'
            'JAZC'
            'MNSU'
            'PPTT'
            'TGTA'
            'PVHA'
            'PVHM'
            'PVHO'
            'PVHC'
            'WARN')
        end
        object Edit3: TEdit
          Left = 664
          Top = 8
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnChange = Edit3Change
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'To be Inspected ('#26410#27298#26597')'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 872
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label7: TLabel
          Left = 208
          Top = 8
          Width = 88
          Height = 13
          Caption = 'Line No. ('#29983#29986#32218'):'
        end
        object Label8: TLabel
          Left = 408
          Top = 8
          Width = 81
          Height = 13
          Caption = 'Project ('#24037#31243#34399'):'
        end
        object Label9: TLabel
          Left = 8
          Top = 8
          Width = 80
          Height = 13
          Caption = 'Customer ('#23458#25142'):'
        end
        object Label10: TLabel
          Left = 592
          Top = 8
          Width = 67
          Height = 13
          Caption = 'WO ('#21046#21934#34399'):'
        end
        object Edit4: TEdit
          Left = 304
          Top = 8
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = ComboBox3KeyPress
        end
        object Edit5: TEdit
          Left = 496
          Top = 8
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          OnKeyPress = ComboBox3KeyPress
        end
        object ComboBox3: TComboBox
          Left = 96
          Top = 8
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = ComboBox3Change
          OnKeyPress = ComboBox3KeyPress
          Items.Strings = (
            'AGPO'
            'CANA'
            'CANN'
            'DBHS'
            'DETA'
            'ESSE'
            'ETAA'
            'ETAC'
            'ETAF'
            'HEST'
            'HUKE'
            'INOV'
            'JECA'
            'MEYB'
            'MYLA'
            'NEIW'
            'PVHA'
            'PVHC'
            'PVHO'
            'PVHM'
            'SAXF'
            'TBDA'
            'TLOV'
            'TOMH')
        end
        object Edit6: TEdit
          Left = 664
          Top = 8
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnKeyPress = ComboBox3KeyPress
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 41
        Width = 872
        Height = 565
        Align = alClient
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnTitleClick = DBGridEh2TitleClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'TPLANT'
            Footers = <>
            Title.Caption = #24037#24288
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'PLINE'
            Footers = <>
            Title.Caption = #29983#29986#32218
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'J_NO'
            Footers = <>
            Title.Caption = #24037#31243#34399
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'SOPNO'
            Footers = <>
            Title.Caption = 'SO #'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'J2_JOB'
            Footers = <>
            Title.Caption = #21046#21934#34399
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'RWO'
            Footers = <>
            Title.Caption = #36650#21046#21934#34399
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'FCCS'
            Footers = <>
            Title.Caption = 'QN'#34399
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'FLAG6'
            Footers = <>
            Title.Caption = #29986#21697#39006#21029
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'CSTYLE'
            Footers = <>
            Title.Caption = #27454#34399
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = #38991#33394
          end
          item
            EditButtons = <>
            FieldName = 'SCQTY'
            Footers = <>
            Title.Caption = 'QN'#25976#37327
          end
          item
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'YQLCRQx'
            Footers = <>
            Title.Caption = #38626#21424#26399
            Width = 65
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 637
    Width = 880
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label14: TLabel
      Left = 304
      Top = 8
      Width = 29
      Height = 13
      Caption = 'PDN: '
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
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
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 576
      Top = 6
      Width = 81
      Height = 25
      Caption = 'Next Day'
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
      TabOrder = 2
      Visible = False
      OnClick = BitBtn3Click
    end
    object CheckBox1: TCheckBox
      Left = 336
      Top = 8
      Width = 105
      Height = 17
      Caption = 'Daily In-line AQL'
      TabOrder = 3
      Visible = False
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 464
      Top = 8
      Width = 121
      Height = 17
      Caption = 'Daily Off-line AQL'
      Checked = True
      State = cbChecked
      TabOrder = 4
      Visible = False
      OnClick = CheckBox2Click
    end
    object ComboBox4: TComboBox
      Left = 336
      Top = 8
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnEnter = ComboBox4Enter
    end
    object BitBtn4: TBitBtn
      Left = 192
      Top = 6
      Width = 97
      Height = 25
      Caption = 'Export to Excel'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn4Click
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_aql_s0 where seq=325'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PONO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'AUD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FTY'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACOL1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL3'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL4'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL5'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL7'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY1'
        DataType = ftInteger
      end
      item
        Name = 'COL1'
        DataType = ftInteger
      end
      item
        Name = 'CASE1'
        DataType = ftInteger
      end
      item
        Name = 'SIZE1'
        DataType = ftInteger
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'BRAND'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'REMARKS'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'SQTY1'
        DataType = ftInteger
      end
      item
        Name = 'RQTY1'
        DataType = ftInteger
      end
      item
        Name = 'REMARKS1'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'AUDIT1'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT2'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT3'
        DataType = ftBoolean
      end
      item
        Name = 'MEMO1'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'ACL1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'RPT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL8'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL9'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL10'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL11'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL12'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACL8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL10'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL11'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL12'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CASE2'
        DataType = ftInteger
      end
      item
        Name = 'CQTY'
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'HUN_CHECK'
        DataType = ftBoolean
      end
      item
        Name = 'RANGE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FLAG60'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ENDLINE'
        DataType = ftBoolean
      end
      item
        Name = 'QR'
        DataType = ftInteger
      end
      item
        Name = 'QR1'
        DataType = ftInteger
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'WS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DAILYAQL'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT4'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT5'
        DataType = ftBoolean
      end
      item
        Name = 'AUDITR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DAILYAQL1'
        DataType = ftBoolean
      end
      item
        Name = 'ACC'
        DataType = ftBoolean
      end
      item
        Name = 'CUR'
        DataType = ftBoolean
      end
      item
        Name = 'PST'
        DataType = ftBoolean
      end
      item
        Name = 'DELLOT'
        DataType = ftInteger
      end
      item
        Name = 'MAJR'
        DataType = ftInteger
      end
      item
        Name = 'MINR'
        DataType = ftInteger
      end
      item
        Name = 'AQL_LEVEL'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'LOC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MACC'
        DataType = ftBoolean
      end
      item
        Name = 'ZTP'
        DataType = ftBoolean
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'MN'
        DataType = ftInteger
      end
      item
        Name = 'CWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BUNDLES'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'cust;j_no;j2_job;dt'
      end
      item
        Name = 'idx2'
        Fields = 'pono;cust;j_no;j2_job;dt'
      end
      item
        Name = 'idx3'
        Fields = 'cstyle;cust;j_no;j2_job;dt'
      end
      item
        Name = 'idx4'
        Fields = 'dt;cust;fty;ws;pline'
      end
      item
        Name = 'idx5'
        Fields = 'cust;dt;fty;ws;pline'
      end>
    IndexFieldNames = 'cust;j_no;j2_job;dt'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 56
    Top = 64
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tbl_erpsopo where substr(j_no,1,4) in ('#39'SALL'#39','#39'ANF' +
      'F'#39')'
    FieldDefs = <
      item
        Name = 'SOPNO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PONO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'pono'
      end
      item
        Name = 'idx2'
        Fields = 'j_no;ordline'
      end
      item
        Name = 'idx3'
        Fields = 'j2_job'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 48
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 80
    Top = 144
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 48
    Top = 184
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    Left = 80
    Top = 184
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tblshedule where yzh=0 and tplant='#39'SL'#39' and flag3 l' +
      'ike '#39'%s%'#39
    FieldDefs = <
      item
        Name = 'PLINE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
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
        DataType = ftSingle
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ARTNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACOL'
        Attributes = [faRequired]
        DataType = ftString
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
        DataType = ftString
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
        DataType = ftSingle
      end
      item
        Name = 'TRS'
        DataType = ftInteger
      end
      item
        Name = 'FYL'
        DataType = ftSingle
      end
      item
        Name = 'XJS'
        DataType = ftInteger
      end
      item
        Name = 'JXJS'
        DataType = ftSingle
      end
      item
        Name = 'ZJS'
        DataType = ftSingle
      end
      item
        Name = 'JHL'
        DataType = ftSingle
      end
      item
        Name = 'CFWCRQ'
        DataType = ftDate
      end
      item
        Name = 'YQLCRQ'
        DataType = ftTimeStamp
      end
      item
        Name = 'SCTD'
        DataType = ftInteger
      end
      item
        Name = 'PHISZJS'
        DataType = ftSingle
      end
      item
        Name = 'ZHJS'
        DataType = ftSingle
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
        DataType = ftSingle
      end
      item
        Name = 'ZKTD'
        DataType = ftSingle
      end
      item
        Name = 'JHRS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'YSJHL'
        DataType = ftSingle
      end
      item
        Name = 'DBXL'
        DataType = ftSingle
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
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FLAG2'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FLAG3'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG4'
        DataType = ftString
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
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CFWCJS'
        DataType = ftSingle
      end
      item
        Name = 'SOPNO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLAG5'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CKTS'
        DataType = ftInteger
      end
      item
        Name = 'QRXC'
        DataType = ftSingle
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
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PFLAG1'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DBZS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FCCS'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'LSTRS'
        DataType = ftSingle
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SHJS'
        DataType = ftSingle
      end
      item
        Name = 'QYJS'
        DataType = ftSingle
      end
      item
        Name = 'PLAN_W'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'YQ_W'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TZ_W'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'RWO'
        DataType = ftString
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
        DataType = ftSingle
      end
      item
        Name = 'LFLAG'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NSHJS'
        DataType = ftInteger
      end
      item
        Name = 'UNBAL'
        Attributes = [faRequired]
        DataType = ftSingle
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
        DataType = ftSingle
      end
      item
        Name = 'SJYC'
        DataType = ftSingle
      end
      item
        Name = 'CKJS'
        DataType = ftSingle
      end
      item
        Name = 'GRP'
        DataType = ftString
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
        DataType = ftSingle
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
        DataType = ftSingle
      end
      item
        Name = 'LTC_R'
        DataType = ftSingle
      end
      item
        Name = 'LTC_A'
        DataType = ftSingle
      end
      item
        Name = 'LTC_RM'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'LTC_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'LTC_KSJS'
        DataType = ftSingle
      end
      item
        Name = 'DSQN'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG7'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'IECLS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'IECLS1'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'WL_JHDT'
        DataType = ftDate
      end
      item
        Name = 'WL_JHP'
        DataType = ftSingle
      end
      item
        Name = 'WL_WC'
        DataType = ftBoolean
      end
      item
        Name = 'WL_WCP'
        DataType = ftSingle
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
        Name = 'AFLAG'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AWF'
        DataType = ftSingle
      end
      item
        Name = 'EWF'
        DataType = ftSingle
      end
      item
        Name = 'ASAH'
        DataType = ftSingle
      end
      item
        Name = 'ESAH'
        DataType = ftSingle
      end
      item
        Name = 'MANTBL'
        DataType = ftInteger
      end
      item
        Name = 'GZW'
        DataType = ftInteger
      end
      item
        Name = 'LBLING'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'YSZJS'
        DataType = ftSingle
      end
      item
        Name = 'SCLH_BS'
        DataType = ftSingle
      end
      item
        Name = 'SCLH_LH'
        DataType = ftSingle
      end
      item
        Name = 'SJRS_A'
        DataType = ftSingle
      end
      item
        Name = 'SJYC_A'
        DataType = ftSingle
      end
      item
        Name = 'LOCKCFKS'
        DataType = ftBoolean
      end
      item
        Name = 'CT1'
        DataType = ftSingle
      end
      item
        Name = 'CT3'
        DataType = ftSingle
      end
      item
        Name = 'CT2_1'
        DataType = ftSingle
      end
      item
        Name = 'CT2_2'
        DataType = ftSingle
      end
      item
        Name = 'AT3_A'
        DataType = ftDate
      end
      item
        Name = 'PDN_A'
        DataType = ftDate
      end
      item
        Name = 'PFSAH'
        DataType = ftSingle
      end
      item
        Name = 'PFXJS'
        DataType = ftSingle
      end
      item
        Name = 'ALXJS'
        DataType = ftSingle
      end
      item
        Name = 'EXJS'
        DataType = ftSingle
      end
      item
        Name = 'PFEFF1'
        DataType = ftSingle
      end
      item
        Name = 'PFEFF2'
        DataType = ftSingle
      end
      item
        Name = 'EEFF1'
        DataType = ftSingle
      end
      item
        Name = 'EEFF2'
        DataType = ftSingle
      end
      item
        Name = 'PFOPTQTY'
        DataType = ftInteger
      end
      item
        Name = 'ALOPTQTY'
        DataType = ftInteger
      end
      item
        Name = 'EOPTQTY'
        DataType = ftInteger
      end
      item
        Name = 'TOPTQTY'
        DataType = ftInteger
      end
      item
        Name = 'PWS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FWS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'EWS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PZB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FZB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'EZB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PFRS_A'
        DataType = ftSingle
      end
      item
        Name = 'PFRS_A1'
        DataType = ftSingle
      end
      item
        Name = 'PFRS'
        DataType = ftSingle
      end
      item
        Name = 'ERS_A1'
        DataType = ftSingle
      end
      item
        Name = 'ERS'
        DataType = ftSingle
      end
      item
        Name = 'TTLRS_A'
        DataType = ftSingle
      end
      item
        Name = 'TTLRS_A1'
        DataType = ftSingle
      end
      item
        Name = 'TTLRS'
        DataType = ftSingle
      end
      item
        Name = 'PFYC_A'
        DataType = ftSingle
      end
      item
        Name = 'PFYC_A1'
        DataType = ftSingle
      end
      item
        Name = 'PFYC'
        DataType = ftSingle
      end
      item
        Name = 'EYC_A'
        DataType = ftSingle
      end
      item
        Name = 'EYC_A1'
        DataType = ftSingle
      end
      item
        Name = 'EYC'
        DataType = ftSingle
      end
      item
        Name = 'TTLYC_A'
        DataType = ftSingle
      end
      item
        Name = 'TTLYC_A1'
        DataType = ftSingle
      end
      item
        Name = 'TTLYC'
        DataType = ftSingle
      end
      item
        Name = 'YSDX'
        DataType = ftSingle
      end
      item
        Name = 'YSXL'
        DataType = ftSingle
      end
      item
        Name = 'RJXL_A'
        DataType = ftSingle
      end
      item
        Name = 'RJXL'
        DataType = ftSingle
      end
      item
        Name = 'PF_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'PF_KSJS'
        DataType = ftSingle
      end
      item
        Name = 'E_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'E_KSJS'
        DataType = ftSingle
      end
      item
        Name = 'PF_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'PF_WCJS'
        DataType = ftSingle
      end
      item
        Name = 'E_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'E_WCJS'
        DataType = ftSingle
      end
      item
        Name = 'SCLH_YB'
        DataType = ftSingle
      end
      item
        Name = 'SCLH_WB'
        DataType = ftSingle
      end
      item
        Name = 'SCLH_BB'
        DataType = ftSingle
      end
      item
        Name = 'SCLH_XL'
        DataType = ftSingle
      end
      item
        Name = 'LOCKCFWC'
        DataType = ftBoolean
      end
      item
        Name = 'BZL'
        DataType = ftSingle
      end
      item
        Name = 'JJL'
        DataType = ftSingle
      end
      item
        Name = 'FLAG31P'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG31A'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG31E'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG32P'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG32A'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG32E'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PIQTY'
        DataType = ftInteger
      end
      item
        Name = 'PFQTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY1'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'BQTY'
        DataType = ftInteger
      end
      item
        Name = 'BQTY1'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'AL_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'AL_WCJS'
        DataType = ftSingle
      end
      item
        Name = 'QNF'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG401'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'YQLCRQ1'
        DataType = ftDate
      end
      item
        Name = 'DTA1'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'RSXC1'
        DataType = ftSingle
      end
      item
        Name = 'RSXC2'
        DataType = ftSingle
      end
      item
        Name = 'YCXC1'
        DataType = ftSingle
      end
      item
        Name = 'YCXC2'
        DataType = ftSingle
      end
      item
        Name = 'PRTWO'
        DataType = ftBoolean
      end
      item
        Name = 'PF_SB'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PF_BQTY'
        DataType = ftInteger
      end
      item
        Name = 'PF_FQTY'
        DataType = ftInteger
      end
      item
        Name = 'T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'LBL_PT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LBL_PDT'
        DataType = ftDate
      end
      item
        Name = 'LBL_SDT'
        DataType = ftDate
      end
      item
        Name = 'LBL_DIFF'
        DataType = ftInteger
      end
      item
        Name = 'LBL_ADT'
        DataType = ftDate
      end
      item
        Name = 'DT3'
        DataType = ftDate
      end
      item
        Name = 'AT_A'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'AT3_W'
        DataType = ftInteger
      end
      item
        Name = 'AT3'
        DataType = ftDate
      end
      item
        Name = 'T3_A'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'BAT3'
        DataType = ftInteger
      end
      item
        Name = 'BT3'
        DataType = ftInteger
      end
      item
        Name = 'FCL_A1'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FCL_A2'
        DataType = ftInteger
      end
      item
        Name = 'PDN_X'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'B_KSRQ1'
        DataType = ftDate
      end
      item
        Name = 'B_FLAG31'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'B_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'B_KSJS'
        DataType = ftSingle
      end
      item
        Name = 'B_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'F_KSRQ1'
        DataType = ftDate
      end
      item
        Name = 'F_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'F_KSJS'
        DataType = ftSingle
      end
      item
        Name = 'F_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'A_KSWK'
        DataType = ftInteger
      end
      item
        Name = 'A_KSRQ1'
        DataType = ftDate
      end
      item
        Name = 'A_KSJS1'
        DataType = ftSingle
      end
      item
        Name = 'A_WCRQ1'
        DataType = ftDate
      end
      item
        Name = 'A_AKSRQ'
        DataType = ftDate
      end
      item
        Name = 'A_AKSJS'
        DataType = ftSingle
      end
      item
        Name = 'A_AWCRQ'
        DataType = ftDate
      end
      item
        Name = 'A_AWCJS'
        DataType = ftSingle
      end
      item
        Name = 'E_WCRQ1'
        DataType = ftDate
      end
      item
        Name = 'E_WCJS1'
        DataType = ftSingle
      end
      item
        Name = 'E_AKSRQ'
        DataType = ftDate
      end
      item
        Name = 'E_AWCRQ'
        DataType = ftDate
      end
      item
        Name = 'E_AWCJS'
        DataType = ftSingle
      end
      item
        Name = 'I_NO'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ITEM_LDT'
        DataType = ftDate
      end
      item
        Name = 'ITEM_RDT'
        DataType = ftDate
      end
      item
        Name = 'ITEM_ADT'
        DataType = ftDate
      end
      item
        Name = 'ITEM_LDIFF'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_VDIFF'
        DataType = ftInteger
      end
      item
        Name = 'A_LDT'
        DataType = ftDate
      end
      item
        Name = 'E_FLAG31'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ITEM_EDIFF'
        DataType = ftInteger
      end
      item
        Name = 'LAST_TTL'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_FM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ITEM_DT'
        DataType = ftDate
      end
      item
        Name = 'SAH_TTL'
        DataType = ftSingle
      end
      item
        Name = 'SAH_TTLW'
        DataType = ftInteger
      end
      item
        Name = 'SAH_TTLQ'
        DataType = ftSingle
      end
      item
        Name = 'SAH_B'
        DataType = ftSingle
      end
      item
        Name = 'SAH_BW'
        DataType = ftInteger
      end
      item
        Name = 'SAH_BQ'
        DataType = ftSingle
      end
      item
        Name = 'DIFF_LBL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DEST_QTY'
        DataType = ftInteger
      end
      item
        Name = 'LOCK_DT'
        DataType = ftDate
      end
      item
        Name = 'LOCK_GAP'
        DataType = ftInteger
      end
      item
        Name = 'DIFF_M'
        DataType = ftInteger
      end
      item
        Name = 'DIFF_S'
        DataType = ftInteger
      end
      item
        Name = 'EX_AP'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'pline;j_no;j2_job;acol'
      end
      item
        Name = 'idx2'
        Fields = 'j_no;j2_job;acol;pline'
      end
      item
        Name = 'idx3'
        Fields = 'j2_job;acol;pline'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 120
    Top = 144
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 152
    Top = 144
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls|*.xlsx'
    Filter = 'Excel files|*.xls|*.xlsx'
    Left = 328
    Top = 224
  end
end
