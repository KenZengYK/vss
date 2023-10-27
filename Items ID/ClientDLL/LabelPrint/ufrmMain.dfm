inherited frmMain: TfrmMain
  Left = 331
  Top = 96
  Width = 812
  Height = 571
  Caption = ''
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 33
    Width = 804
    Height = 386
    ActivePage = cxTabSheet1
    Align = alClient
    Style = 3
    TabOrder = 1
    ClientRectBottom = 386
    ClientRectRight = 804
    ClientRectTop = 23
    object cxTabSheet1: TcxTabSheet
      Caption = #20219#24847#26631#31614#25171#21360
      ImageIndex = 0
      object cxGroupBox1: TcxGroupBox
        Left = 52
        Top = 8
        TabOrder = 0
        Height = 273
        Width = 537
        object Label1: TLabel
          Left = 16
          Top = 28
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'ITEM_CODE'
          Transparent = True
        end
        object Label3: TLabel
          Left = 16
          Top = 89
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'HDO_NO'
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 121
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'COMPANY'
          Enabled = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 272
          Top = 121
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'STOCKROOM'
          Transparent = True
        end
        object Label7: TLabel
          Left = 16
          Top = 153
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'ORIG_QTY'
          Transparent = True
        end
        object Label8: TLabel
          Left = 272
          Top = 152
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'CURR_QTY'
          Transparent = True
        end
        object Label9: TLabel
          Left = 272
          Top = 28
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'LOT_ID'
          Transparent = True
        end
        object Label10: TLabel
          Left = 272
          Top = 90
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'UOM'
          Transparent = True
        end
        object Label11: TLabel
          Left = 16
          Top = 183
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'Location'
          Transparent = True
        end
        object Label12: TLabel
          Left = 272
          Top = 183
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'Material Type'
          Transparent = True
        end
        object Label19: TLabel
          Left = 15
          Top = 60
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'Supp Refer No.'
          Transparent = True
        end
        object Label20: TLabel
          Left = 272
          Top = 59
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'Color Shade'
          Transparent = True
        end
        object Label23: TLabel
          Left = 16
          Top = 215
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'Project'
          Transparent = True
        end
        object Label24: TLabel
          Left = 272
          Top = 215
          Width = 102
          Height = 13
          AutoSize = False
          Caption = 'PO'
          Transparent = True
          Visible = False
        end
        object Label25: TLabel
          Left = 16
          Top = 247
          Width = 81
          Height = 13
          AutoSize = False
          Caption = 'GRN Date'
          Transparent = True
        end
        object cxTextEdit_ITEM_CODE: TcxTextEdit
          Left = 106
          Top = 24
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 15
          TabOrder = 0
          Width = 144
        end
        object cxTextEdit_HDO_NO: TcxTextEdit
          Left = 106
          Top = 85
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 8
          TabOrder = 1
          Width = 144
        end
        object cxTextEdit_COMPANY: TcxTextEdit
          Left = 106
          Top = 117
          Enabled = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 2
          TabOrder = 2
          Text = 'P1'
          Width = 144
        end
        object cxTextEdit_StockRoom: TcxTextEdit
          Left = 365
          Top = 118
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 2
          TabOrder = 3
          Width = 144
        end
        object cxTextEdit_LOT_ID: TcxTextEdit
          Left = 365
          Top = 23
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 15
          TabOrder = 4
          Width = 144
        end
        object cxTextEdit_UOM: TcxTextEdit
          Left = 365
          Top = 86
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 2
          TabOrder = 5
          Width = 144
        end
        object cxCurrencyEdit_ORIG_QTY: TcxCurrencyEdit
          Left = 106
          Top = 149
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '#,##0.000'
          TabOrder = 6
          Width = 144
        end
        object cxCurrencyEdit_CURR_QTY: TcxCurrencyEdit
          Left = 365
          Top = 150
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '#,##0.000'
          TabOrder = 7
          Width = 144
        end
        object cxTextEdit_Location: TcxTextEdit
          Left = 106
          Top = 179
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 7
          TabOrder = 8
          Width = 144
        end
        object cxTextEdit_PGMN: TcxTextEdit
          Left = 365
          Top = 180
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 3
          TabOrder = 9
          Width = 144
        end
        object cxTextEdit_PHISM: TcxTextEdit
          Left = 106
          Top = 56
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          TabOrder = 10
          Width = 144
        end
        object cxTextEdit_ColorShade: TcxTextEdit
          Left = 365
          Top = 55
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 15
          TabOrder = 11
          Width = 144
        end
        object editProject: TcxTextEdit
          Left = 106
          Top = 211
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          TabOrder = 12
          Width = 144
        end
        object editPO: TcxTextEdit
          Left = 365
          Top = 212
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 7
          TabOrder = 13
          Visible = False
          Width = 144
        end
        object editGRNDate: TcxDateEdit
          Left = 106
          Top = 240
          TabOrder = 14
          Width = 144
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #26631#31614#25171#21360' ('#20174' ERP '#21462#25968#25454')'
      ImageIndex = 1
      object Panel_Grid: TPanel
        Left = 0
        Top = 115
        Width = 804
        Height = 248
        Align = alClient
        TabOrder = 1
        Visible = False
        object Panel4: TPanel
          Left = 1
          Top = 206
          Width = 802
          Height = 41
          Align = alBottom
          TabOrder = 1
          object btnSelectAll: TcxButton
            Left = 8
            Top = 10
            Width = 121
            Height = 25
            Caption = 'Select All'
            TabOrder = 0
            OnClick = btnSelectAllClick
            DropDownMenu = PopupMenu1
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
            Kind = cxbkDropDown
            NumGlyphs = 2
          end
          object btnSelectNone: TcxButton
            Left = 151
            Top = 10
            Width = 98
            Height = 25
            Caption = 'Select None'
            TabOrder = 1
            OnClick = btnSelectNoneClick
            Glyph.Data = {
              36060000424D3606000000000000360400002800000020000000100000000100
              08000000000000020000330B0000330B00000001000000010000000000003300
              00006600000099000000CC000000FF0000000033000033330000663300009933
              0000CC330000FF33000000660000336600006666000099660000CC660000FF66
              000000990000339900006699000099990000CC990000FF99000000CC000033CC
              000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
              0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
              330000333300333333006633330099333300CC333300FF333300006633003366
              33006666330099663300CC663300FF6633000099330033993300669933009999
              3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
              330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
              66006600660099006600CC006600FF0066000033660033336600663366009933
              6600CC336600FF33660000666600336666006666660099666600CC666600FF66
              660000996600339966006699660099996600CC996600FF99660000CC660033CC
              660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
              6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
              990000339900333399006633990099339900CC339900FF339900006699003366
              99006666990099669900CC669900FF6699000099990033999900669999009999
              9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
              990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
              CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
              CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
              CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
              CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
              CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
              FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
              FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
              FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
              FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
              000000808000800000008000800080800000C0C0C00080808000191919004C4C
              4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
              6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909E8
              E8E8E8E809090909E8E8E881818181E8E8E8E8E881818181E8E8E80910101009
              E8E8E80910101009E8E8E881ACACAC81E8E8E881ACACAC81E8E8E8E809101010
              09E80910101009E8E8E8E8E881ACACAC81E881ACACAC81E8E8E8E8E8E8091010
              100910101009E8E8E8E8E8E8E881ACACAC81ACACAC81E8E8E8E8E8E8E8E80910
              1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8E8E809
              10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E80910
              1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8091010
              100910101009E8E8E8E8E8E8E881ACACAC81ACACAC81E8E8E8E8E8E809101010
              09E80910101009E8E8E8E8E881ACACAC81E881ACACAC81E8E8E8E80910101009
              E8E8E80910101009E8E8E881ACACAC81E8E8E881ACACAC81E8E8E809090909E8
              E8E8E8E809090909E8E8E881818181E8E8E8E8E881818181E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 802
          Height = 205
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DataSource3
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            Styles.Background = cxStyle2
            Styles.Content = cxStyle2
            Styles.Selection = cxStyle3
            object cxGrid1DBTableView1IsCheck: TcxGridDBColumn
              Caption = 'Select'
              DataBinding.FieldName = 'IsCheck'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 41
            end
            object cxGrid1DBTableView1HDO_NO: TcxGridDBColumn
              Caption = 'HDO NO'
              DataBinding.FieldName = 'HDO_NO'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 91
            end
            object cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn
              Caption = 'ITEM CODE'
              DataBinding.FieldName = 'ITEM_CODE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 97
            end
            object cxGrid1DBTableView1PHISM: TcxGridDBColumn
              DataBinding.FieldName = 'PHISM'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 98
            end
            object cxGrid1DBTableView1LOT_ID: TcxGridDBColumn
              Caption = 'LOT NO'
              DataBinding.FieldName = 'LOT_ID'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 117
            end
            object cxGrid1DBTableView1ORG_QTY: TcxGridDBColumn
              Caption = 'Org QTY'
              DataBinding.FieldName = 'ORG_QTY'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 3
              Properties.DisplayFormat = ',0.000'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 80
            end
            object cxGrid1DBTableView1CUR_BAL: TcxGridDBColumn
              Caption = 'CUR BAL'
              DataBinding.FieldName = 'CUR_BAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 3
              Properties.DisplayFormat = ',0.000'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 72
            end
            object cxGrid1DBTableView1UOM: TcxGridDBColumn
              DataBinding.FieldName = 'UOM'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 35
            end
            object cxGrid1DBTableView1STOCKROOM: TcxGridDBColumn
              DataBinding.FieldName = 'STOCKROOM'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 46
            end
            object cxGrid1DBTableView1COMPANY: TcxGridDBColumn
              DataBinding.FieldName = 'COMPANY'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 66
            end
            object cxGrid1DBTableView1NO_OF_COPIES: TcxGridDBColumn
              DataBinding.FieldName = 'NO_OF_COPIES'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 120
            end
            object cxGrid1DBTableView1NO_OF_ROLLS: TcxGridDBColumn
              DataBinding.FieldName = 'NO_OF_ROLLS'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 55
            end
            object cxGrid1DBTableView1MARKER_WIDTH: TcxGridDBColumn
              Caption = 'MARKER WIDTH'
              DataBinding.FieldName = 'MARKER_WIDTH'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.0000'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 74
            end
            object cxGrid1DBTableView1PURCHASE_UOM: TcxGridDBColumn
              DataBinding.FieldName = 'PURCHASE_UOM'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 136
            end
            object cxGrid1DBTableView1Location: TcxGridDBColumn
              DataBinding.FieldName = 'Location'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 60
            end
            object cxGrid1DBTableView1pgmn: TcxGridDBColumn
              Caption = 'Material Type'
              DataBinding.FieldName = 'pgmn'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 73
            end
            object cxGrid1DBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Sorting = False
              Width = 98
            end
            object cxGrid1DBTableView1RECORD_CREATED_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'RECORD_CREATED_DATE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 144
            end
            object cxGrid1DBTableView1ColorShade: TcxGridDBColumn
              Caption = 'Color Shade'
              DataBinding.FieldName = 'ColorShade'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 76
            end
            object cxGrid1DBTableView1Project: TcxGridDBColumn
              Caption = 'Project#'
              DataBinding.FieldName = 'Project'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 85
            end
            object cxGrid1DBTableView1PO: TcxGridDBColumn
              Caption = 'PO#'
              DataBinding.FieldName = 'PO'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 84
            end
            object cxGrid1DBTableView1Dept: TcxGridDBColumn
              Caption = 'Dept.'
              DataBinding.FieldName = 'Dept'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 51
            end
            object cxGrid1DBTableView1WorkOrderNo: TcxGridDBColumn
              Caption = 'WO#'
              DataBinding.FieldName = 'WorkOrderNo'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 75
            end
            object cxGrid1DBTableView1GarmentColor: TcxGridDBColumn
              Caption = 'Garment Color'
              DataBinding.FieldName = 'GarmentColor'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 73
            end
            object cxGrid1DBTableView1CustStyleNo: TcxGridDBColumn
              Caption = 'Cust Style#'
              DataBinding.FieldName = 'CustStyleNo'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 102
            end
            object cxGrid1DBTableView1BuyerSizeCups: TcxGridDBColumn
              Caption = 'Buyer Size/Cups'
              DataBinding.FieldName = 'BuyerSizeCups'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 108
            end
            object cxGrid1DBTableView1BuyerSizeCup: TcxGridDBColumn
              Caption = 'Buyer Size/Cup'
              DataBinding.FieldName = 'BuyerSizeCup'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 60
            end
            object cxGrid1DBTableView1POLine: TcxGridDBColumn
              Caption = 'PO Line'
              DataBinding.FieldName = 'POLine'
              Visible = False
            end
            object cxGrid1DBTableView1GrnDate: TcxGridDBColumn
              Caption = 'GRN Date'
              DataBinding.FieldName = 'GrnDate'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 114
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cxMemo1: TcxMemo
          Left = 176
          Top = 56
          Lines.Strings = (
            'cxMemo1')
          TabOrder = 2
          Visible = False
          Height = 113
          Width = 489
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 804
        Height = 115
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxGroupBox5: TcxGroupBox
          Left = 15
          Top = 15
          Caption = ' Company '
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 0
          Height = 63
          Width = 76
          object editCompany: TcxTextEdit
            Left = 16
            Top = 27
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 2
            TabOrder = 0
            Text = 'P1'
            Width = 41
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 114
          Top = 3
          Alignment = alCenterCenter
          TabOrder = 1
          Height = 27
          Width = 457
          object Label13: TLabel
            Left = 143
            Top = 7
            Width = 23
            Height = 13
            Caption = 'From'
            OnDblClick = Label13DblClick
          end
          object Label14: TLabel
            Left = 301
            Top = 7
            Width = 13
            Height = 13
            Caption = 'To'
          end
          object editLotNo_From: TcxTextEdit
            Left = 175
            Top = 3
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 15
            TabOrder = 0
            Width = 121
          end
          object editLotNo_To: TcxTextEdit
            Left = 319
            Top = 3
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 15
            TabOrder = 1
            Width = 121
          end
          object cxLabel1: TcxLabel
            Left = 17
            Top = 3
            Caption = 'Lot NO.'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.Shadow = True
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 114
          Top = 30
          Alignment = alCenterCenter
          TabOrder = 2
          Height = 27
          Width = 457
          object Label15: TLabel
            Left = 143
            Top = 7
            Width = 23
            Height = 13
            Caption = 'From'
          end
          object Label16: TLabel
            Left = 301
            Top = 7
            Width = 13
            Height = 13
            Caption = 'To'
          end
          object editLoc_From: TcxTextEdit
            Left = 175
            Top = 3
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 15
            TabOrder = 0
            Width = 121
          end
          object editLoc_To: TcxTextEdit
            Left = 319
            Top = 3
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 15
            TabOrder = 1
            Width = 121
          end
          object cxLabel2: TcxLabel
            Left = 17
            Top = 3
            Caption = 'Location'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.Shadow = True
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 114
          Top = 57
          Alignment = alCenterCenter
          TabOrder = 3
          Height = 27
          Width = 457
          object Label17: TLabel
            Left = 143
            Top = 7
            Width = 23
            Height = 13
            Caption = 'From'
          end
          object Label18: TLabel
            Left = 301
            Top = 7
            Width = 13
            Height = 13
            Caption = 'To'
          end
          object editHDO_From: TcxTextEdit
            Left = 175
            Top = 3
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 15
            TabOrder = 0
            Width = 121
          end
          object editHDO_To: TcxTextEdit
            Left = 319
            Top = 3
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 15
            TabOrder = 1
            Width = 121
          end
          object cxLabel3: TcxLabel
            Left = 17
            Top = 3
            Caption = 'HDO NO.'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.Shadow = True
          end
        end
        object cxGroupBox7: TcxGroupBox
          Left = 605
          Top = 2
          Alignment = alCenterCenter
          TabOrder = 4
          Height = 81
          Width = 137
          object rbDirectPrint: TcxRadioButton
            Left = 13
            Top = 4
            Width = 113
            Height = 17
            Caption = 'Direct Print'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rbDirectPrintClick
          end
          object rbSelectedPrint: TcxRadioButton
            Left = 13
            Top = 27
            Width = 113
            Height = 17
            Caption = 'Selected Print'
            TabOrder = 1
            OnClick = rbDirectPrintClick
          end
          object btnPrevewData: TcxButton
            Left = 50
            Top = 50
            Width = 75
            Height = 25
            Caption = 'Preview'
            TabOrder = 2
            Visible = False
            OnClick = btnPrevewDataClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFF00CCCC
              CC00C0C0C000E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC006699
              99006666990099999900E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066CC
              FF003399CC006666990099999900E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC
              FF0066CCFF003399CC006666990099999900E5E5E500FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00CCCCFF0066CCFF003399CC006666990099999900E5E5E500FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00CCCCFF0066CCFF003399CC0066669900CCCCCC00FFCCCC00CC99
              9900CC999900CC999900CCCC9900E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00CCCCFF0066CCFF00B2B2B200CC999900CCCC9900F2EA
              BF00FFFFCC00F2EABF00F2EABF00CC999900ECC6D900FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CC999900FFCC9900FFFFCC00FFFF
              CC00FFFFCC00FFFFFF00FFFFFF00FFFFFF00CC999900E5E5E500FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00CCCC9900FFFFCC00F2EABF00FFFF
              CC00FFFFCC00FFFFFF00FFFFFF00FFFFFF00F2EABF00CCCC9900FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CCCC9900FFCC9900F2EABF00F2EABF00FFFF
              CC00FFFFCC00FFFFCC00FFFFFF00FFFFFF00F2EABF00CC999900FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC999900F2EABF00F2EABF00F2EABF00F2EA
              BF00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00CC999900FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CCCC9900F2EABF00FFFFCC00F2EABF00F2EA
              BF00F2EABF00FFFFCC00FFFFCC00FFFFCC00F2EABF00CC999900FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00CCCC9900FFFFFF00FFFFFF00F2EA
              BF00F2EABF00F2EABF00F2EABF00FFFFCC00CCCC9900CCCC9900FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CC999900ECC6D900FFFFFF00FFFF
              CC00F2EABF00F2EABF00F2EABF00FFCC9900CC999900E5E5E500FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00CC999900FFCCCC00F2EA
              BF00F2EABF00F2EABF00CCCC9900CC999900FFCCCC00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CCCC9900CC99
              9900CC999900CC999900CC999900E5E5E500FFFFFF00FFFFFF00}
          end
        end
        object cxGroupBox8: TcxGroupBox
          Left = 114
          Top = 84
          Alignment = alCenterCenter
          TabOrder = 5
          Height = 27
          Width = 457
          object Label21: TLabel
            Left = 143
            Top = 7
            Width = 23
            Height = 13
            Caption = 'From'
          end
          object Label22: TLabel
            Left = 301
            Top = 7
            Width = 13
            Height = 13
            Caption = 'To'
          end
          object editST_From: TcxTextEdit
            Left = 175
            Top = 3
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 2
            TabOrder = 0
            Text = 'RM'
            Width = 121
          end
          object editST_To: TcxTextEdit
            Left = 319
            Top = 3
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 2
            TabOrder = 1
            Width = 121
          end
          object cxLabel4: TcxLabel
            Left = 17
            Top = 3
            Caption = 'StockRoom'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.Shadow = True
          end
        end
      end
    end
  end
  inherited pnl_Title: TPanel
    Width = 804
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 484
    Width = 804
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 419
    Width = 804
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnPrintLabel: TcxButton
      Left = 630
      Top = 14
      Width = 113
      Height = 40
      Caption = 'Print Label'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = btnPrintLabelClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000010000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
        89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
        5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
        8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
        181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
        D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
        8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
        5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
        D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
        E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
        D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
        E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
        D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
        5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object cxGroupBox2: TcxGroupBox
      Left = 5
      Top = 7
      TabOrder = 1
      Height = 49
      Width = 588
      object Label2: TLabel
        Left = 7
        Top = 19
        Width = 240
        Height = 16
        AutoSize = False
        Caption = 'Please select Barcode Printer:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 337
        Top = 20
        Width = 81
        Height = 13
        AutoSize = False
        Caption = 'Copies:'
        Transparent = True
      end
      object cxComboBox1: TcxComboBox
        Left = 163
        Top = 17
        Properties.DropDownListStyle = lsFixedList
        TabOrder = 0
        Width = 161
      end
      object cxSpinEdit_Copies: TcxSpinEdit
        Left = 386
        Top = 18
        Properties.MaxValue = 1000.000000000000000000
        Properties.MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 1
        Width = 85
      end
      object cxCheckBox_CollateCopies: TcxCheckBox
        Left = 486
        Top = 17
        Caption = 'Collate Copies'
        State = cbsChecked
        TabOrder = 2
        Width = 96
      end
    end
  end
  object ADOQuery1: TADOQuery
    CacheSize = 1000
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    Left = 456
    Top = 16
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet_TempData
    Left = 488
    Top = 16
  end
  object ClientDataSet_Temp1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG'
    Left = 340
    Top = 353
  end
  object ADOQuery2: TADOQuery
    CacheSize = 1000
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    Left = 552
    Top = 16
  end
  object ClientDataSet_TempData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG'
    Left = 276
    Top = 353
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 401
    Top = 385
    object btnIncludeQty: TMenuItem
      Caption = 'Include Qty = 0'
      OnClick = btnIncludeQtyClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object btnNotIncludeQty: TMenuItem
      Caption = 'Don'#39't Include Qty = 0'
      OnClick = btnNotIncludeQtyClick
    end
  end
end
