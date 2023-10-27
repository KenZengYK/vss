inherited frmMain: TfrmMain
  Left = 89
  Top = 103
  Width = 937
  Height = 661
  Caption = 'frmMain'
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl: TcxPageControl [0]
    Left = 0
    Top = 134
    Width = 929
    Height = 430
    ActivePage = cxTabSheet_EditData
    Align = alClient
    TabOrder = 3
    OnChange = cxPageControlChange
    ClientRectBottom = 430
    ClientRectRight = 929
    ClientRectTop = 24
    object cxTabSheet_Grid: TcxTabSheet
      Caption = 'Grid'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 406
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGridDBTableView_CustomDrawCell
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Styles.Background = cxStyle2
          Styles.Content = cxStyle2
          Styles.Selection = cxStyle3
          object cxGrid1DBTableView1RETURN_NO: TcxGridDBColumn
            DataBinding.FieldName = 'RETURN_NO'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 100
          end
          object cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn
            DataBinding.FieldName = 'ITEM_CODE'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 111
          end
          object cxGrid1DBTableView1WORK_ORDER: TcxGridDBColumn
            DataBinding.FieldName = 'WORK_ORDER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.ShowEditButtons = isebNever
            Width = 94
          end
          object cxGrid1DBTableView1LOT_ID: TcxGridDBColumn
            DataBinding.FieldName = 'LOT_ID'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 103
          end
          object cxGrid1DBTableView1RETURN_QTY: TcxGridDBColumn
            DataBinding.FieldName = 'RETURN_QTY'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ',0.000;-,0.000'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.ShowEditButtons = isebNever
            Width = 87
          end
          object cxGrid1DBTableView1UOM: TcxGridDBColumn
            DataBinding.FieldName = 'UOM'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.ShowEditButtons = isebNever
            Width = 55
          end
          object cxGrid1DBTableView1RETURN_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'RETURN_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            OnGetDisplayText = cxGrid1DBTableView1RETURN_DATEGetDisplayText
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.ShowEditButtons = isebNever
            Width = 120
          end
          object cxGrid1DBTableView1STOCKROOM: TcxGridDBColumn
            DataBinding.FieldName = 'STOCKROOM'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.ShowEditButtons = isebNever
            Width = 84
          end
          object cxGrid1DBTableView1COMPANY: TcxGridDBColumn
            DataBinding.FieldName = 'COMPANY'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.ShowEditButtons = isebNever
            Width = 68
          end
          object cxGrid1DBTableView1Location: TcxGridDBColumn
            Caption = 'From Location'
            DataBinding.FieldName = 'Location'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Width = 94
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'To Location'
            DataBinding.FieldName = 'ToLocation'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Width = 96
          end
          object cxGrid1DBTableView1STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            OnGetDisplayText = cxGrid1DBTableView1STATUSGetDisplayText
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 104
            OnGetFilterDisplayText = cxGrid1DBTableView1STATUSGetFilterDisplayText
          end
          object cxGrid1DBTableView1ERPSuccess: TcxGridDBColumn
            DataBinding.FieldName = 'ERPSuccess'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            OnGetDisplayText = cxGrid1DBTableView1ERPSuccessGetDisplayText
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Width = 78
          end
          object cxGrid1DBTableView1Reason: TcxGridDBColumn
            Caption = 'Reason'
            DataBinding.FieldName = 'Remark'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Width = 139
          end
          object cxGrid1DBTableView1RECORD_CREATED_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'RECORD_CREATED_DATE'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.ShowEditButtons = isebNever
            Width = 128
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet_EditData: TcxTabSheet
      Caption = 'EditData'
      ImageIndex = 1
      object cxGroupBox2: TcxGroupBox
        Left = 88
        Top = 28
        Caption = 'Please enter details :'
        TabOrder = 1
        Height = 343
        Width = 793
        object Label3: TLabel
          Left = 40
          Top = 61
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Batch No. :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 208
          Top = 109
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Work Order No. :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 208
          Top = 157
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Item Code :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 360
          Top = 157
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Quantity :'
          Transparent = True
        end
        object Label5: TLabel
          Left = 40
          Top = 109
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Lot No. :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 208
          Top = 200
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Stock Room :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 360
          Top = 109
          Width = 121
          Height = 13
          AutoSize = False
          Caption = 'Uom :'
          Transparent = True
        end
        object Label8: TLabel
          Left = 360
          Top = 201
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Date :'
          Transparent = True
        end
        object Label9: TLabel
          Left = 40
          Top = 157
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Company Code :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 512
          Top = 109
          Width = 150
          Height = 13
          AutoSize = False
          Caption = 'Reason:'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 40
          Top = 77
          DataBinding.DataField = 'RETURN_NO'
          DataBinding.DataSource = DataSource1
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 208
          Top = 125
          DataBinding.DataField = 'WORK_ORDER'
          DataBinding.DataSource = DataSource1
          Properties.CharCase = ecUpperCase
          Style.Color = clWindow
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 208
          Top = 173
          DataBinding.DataField = 'ITEM_CODE'
          DataBinding.DataSource = DataSource1
          Properties.CharCase = ecUpperCase
          Style.Color = clWindow
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 40
          Top = 173
          DataBinding.DataField = 'COMPANY'
          DataBinding.DataSource = DataSource1
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 40
          Top = 125
          DataBinding.DataField = 'LOT_ID'
          DataBinding.DataSource = DataSource1
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 208
          Top = 216
          DataBinding.DataField = 'STOCKROOM'
          DataBinding.DataSource = DataSource1
          Properties.CharCase = ecUpperCase
          Style.Color = clWindow
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 360
          Top = 125
          DataBinding.DataField = 'UOM'
          DataBinding.DataSource = DataSource1
          Properties.CharCase = ecUpperCase
          Style.Color = clWindow
          TabOrder = 6
          Width = 121
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 360
          Top = 217
          DataBinding.DataField = 'RETURN_DATE'
          DataBinding.DataSource = DataSource1
          TabOrder = 7
          Width = 121
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 360
          Top = 173
          DataBinding.DataField = 'RETURN_QTY'
          DataBinding.DataSource = DataSource1
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.000;-,0.000'
          TabOrder = 8
          Width = 121
        end
        object cxGroupBox3: TcxGroupBox
          Left = 42
          Top = 17
          Caption = ' Batch No. '
          TabOrder = 9
          Height = 81
          Width = 537
          object cxRadioButton1: TcxRadioButton
            Left = 58
            Top = 22
            Width = 191
            Height = 17
            Caption = 'New Batch No. :'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = cxRadioButton1Click
          end
          object cxRadioButton2: TcxRadioButton
            Tag = 1
            Left = 58
            Top = 48
            Width = 207
            Height = 17
            Caption = 'Exists Batch No.,Please select one :'
            TabOrder = 1
            OnClick = cxRadioButton1Click
          end
          object cxLabel_RETURN_NO: TcxLabel
            Left = 272
            Top = 18
            AutoSize = False
            Properties.Transparent = True
            Height = 17
            Width = 217
          end
          object cxLookupComboBox1: TcxLookupComboBox
            Left = 272
            Top = 48
            Enabled = False
            Properties.CharCase = ecUpperCase
            Properties.DropDownRows = 12
            Properties.KeyFieldNames = 'RETURN_NO'
            Properties.ListColumns = <
              item
                FieldName = 'RETURN_NO'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DataSource2
            Properties.OnChange = cxLookupComboBox1PropertiesChange
            TabOrder = 3
            Width = 145
          end
        end
        object btnAutoGetData: TcxButton
          Left = 40
          Top = 208
          Width = 105
          Height = 33
          Caption = 'Auto Get Data'
          TabOrder = 10
          OnClick = btnAutoGetDataClick
        end
        object cxGroupBox6: TcxGroupBox
          Left = 38
          Top = 248
          TabOrder = 11
          Height = 88
          Width = 544
          object Label10: TLabel
            Left = 40
            Top = 37
            Width = 89
            Height = 13
            AutoSize = False
            Caption = 'From Location :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 40
            Top = 61
            Width = 81
            Height = 13
            AutoSize = False
            Caption = 'To Location :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 128
            Top = 13
            Width = 73
            Height = 13
            AutoSize = False
            Caption = 'Floor (1):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 208
            Top = 13
            Width = 89
            Height = 13
            AutoSize = False
            Caption = 'Rack (2-5):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 304
            Top = 13
            Width = 65
            Height = 13
            AutoSize = False
            Caption = 'Status1 (6-7):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label15: TLabel
            Left = 384
            Top = 13
            Width = 65
            Height = 13
            AutoSize = False
            Caption = 'Status2 (8):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label16: TLabel
            Left = 464
            Top = 13
            Width = 65
            Height = 13
            AutoSize = False
            Caption = 'Status3 (9):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object editFloor_From: TcxTextEdit
            Left = 128
            Top = 32
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            Properties.ReadOnly = True
            Style.Color = clInfoBk
            TabOrder = 0
            Width = 33
          end
          object editFloor_To: TcxTextEdit
            Left = 128
            Top = 56
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 1
            Width = 33
          end
          object editRack_From: TcxTextEdit
            Left = 208
            Top = 32
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 4
            Properties.ReadOnly = True
            Style.Color = clInfoBk
            TabOrder = 2
            Width = 57
          end
          object editRack_To: TcxTextEdit
            Left = 208
            Top = 56
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 4
            TabOrder = 3
            Width = 57
          end
          object editStatus1_From: TcxTextEdit
            Left = 304
            Top = 32
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 2
            Properties.ReadOnly = True
            Style.Color = clInfoBk
            TabOrder = 4
            Width = 33
          end
          object editStatus2_From: TcxTextEdit
            Left = 384
            Top = 32
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            Properties.ReadOnly = True
            Style.Color = clInfoBk
            TabOrder = 5
            Width = 33
          end
          object editStatus3_From: TcxTextEdit
            Left = 464
            Top = 32
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            Properties.ReadOnly = True
            Style.Color = clInfoBk
            TabOrder = 6
            Width = 33
          end
          object editStatus1_To: TcxTextEdit
            Left = 304
            Top = 56
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 2
            Properties.ReadOnly = True
            Style.Color = clInfoBk
            TabOrder = 7
            Text = 'OZ'
            Width = 33
          end
          object editStatus2_To: TcxTextEdit
            Left = 384
            Top = 56
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            Properties.ReadOnly = True
            Style.Color = clInfoBk
            TabOrder = 8
            Width = 33
          end
          object editStatus3_To: TcxTextEdit
            Left = 464
            Top = 56
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            Properties.ReadOnly = True
            Style.Color = clInfoBk
            TabOrder = 9
            Width = 33
          end
        end
        object cxDBMemo1: TcxDBMemo
          Left = 512
          Top = 125
          DataBinding.DataField = 'Remark'
          DataBinding.DataSource = DataSource1
          Properties.ScrollBars = ssVertical
          TabOrder = 12
          Height = 113
          Width = 257
        end
      end
      object cxLabel_Tips: TcxLabel
        Left = 323
        Top = 5
        Caption = 'Return Meterial'
        ParentFont = False
        Properties.Transparent = True
        Style.BorderStyle = ebsUltraFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object cxLabel_Tips1: TcxLabel
        Left = 323
        Top = 5
        Caption = 'Return Meterial'
        ParentFont = False
        Properties.Transparent = True
        Style.BorderStyle = ebsUltraFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
    end
  end
  object cxGroupBox1: TcxGroupBox [1]
    Left = 0
    Top = 33
    Align = alTop
    Alignment = alCenterCenter
    TabOrder = 5
    Height = 49
    Width = 929
    object Panel1: TPanel
      Left = 139
      Top = 5
      Width = 646
      Height = 40
      BevelOuter = bvNone
      TabOrder = 1
      object btnModify: TcxButton
        Left = 114
        Top = 8
        Width = 63
        Height = 25
        Caption = 'Modify'
        TabOrder = 1
        OnClick = btnModifyClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000620B0000620B00000001000000010000000000003300
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
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E82B2B81E8E8E8
          E8E8E8E8E8E8E8E8E8E8565681E8E8E8E8E8E8E8E8E8E8E8E8E8AC562B2BE8E8
          E8E8E8E8E8E8E8E8E8E881DF5656E8E8E8E8E8E8E8E8E8E8E8E8E85656562B81
          E8E8E8E8E8E8E8E8E8E8E8DFDFDF5681E8E8E8E8E8E8E8E8E8E8E8AC5656562B
          7EE8E8E8E8E8E8E8E8E8E881DFDFDF5681E8E8E8E8E8E8E8E8E8E8E85656D5AB
          AB7EE8E8E8E8E8E8E8E8E8E8DFDFE3ACAC81E8E8E8E8E8E8E8E8E8E8ACDFD6D5
          ABAB7EABE8E8E8E8E8E8E8E881DFE3E3ACAC81ACE8E8E8E8E8E8E8E8E8AAD7D6
          D5D5ABAA7EE8E8E8E8E8E8E8E8ACD7E3E3E3ACAC81E8E8E8E8E8E8E8E8AAD7D6
          D6D5D5ABAB7EAAE8E8E8E8E8E8ACD7E3E3E3E3ACAC81ACE8E8E8E8E8E8E8ABD7
          D6D6D5D5ABAD0909E8E8E8E8E8E8ACD7E3E3E3E3ACAC5656E8E8E8E8E8E8AAD7
          D6D6AD101009090909E8E8E8E8E8ACD7E3E3ACDFDF56565656E8E8E8E8E8E8AB
          D7D61010101009090909E8E8E8E8E8ACD7E3DFDFDFDF56565656E8E8E8E8E8AA
          D7AD1010101010090909E8E8E8E8E8ACD7ACDFDFDFDFDF565656E8E8E8E8E8E8
          17171010101010100909E8E8E8E8E8E88181DFDFDFDFDFDF5656E8E8E8E8E8E8
          10171710101010101009E8E8E8E8E8E8568181DFDFDFDFDFDF56E8E8E8E8E8E8
          E8101717101010101010E8E8E8E8E8E8E8568181DFDFDFDFDFDF}
        NumGlyphs = 2
      end
      object btnDelete: TcxButton
        Left = 176
        Top = 8
        Width = 63
        Height = 25
        Caption = 'Delete'
        TabOrder = 2
        OnClick = btnDeleteClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000630E0000630E00000001000000010000000000003300
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
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E86CE8E8
          E8E8E8E8E8E8E8E8B4E8E8E8E881E8E8E8E8E8E8E8E8E8E8ACE8E8E897B46CE8
          E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E897C7B46C
          E8E8E8E8E8E8E8B4E8E8E8E881E3AC81E8E8E8E8E8E8E8ACE8E8E8E8E897C090
          E8E8E8E8E8E8B4E8E8E8E8E8E881E381E8E8E8E8E8E8ACE8E8E8E8E8E8E890B4
          6CE8E8E8E8B46CE8E8E8E8E8E8E881AC81E8E8E8E8AC81E8E8E8E8E8E8E8E890
          B46CE8E8B46CE8E8E8E8E8E8E8E8E881AC81E8E8AC81E8E8E8E8E8E8E8E8E8E8
          90B46CB46CE8E8E8E8E8E8E8E8E8E8E881AC81AC81E8E8E8E8E8E8E8E8E8E8E8
          E890B46CE8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8
          90B46C906CE8E8E8E8E8E8E8E8E8E8E881AC818181E8E8E8E8E8E8E8E8E8E890
          B46CE8E8906CE8E8E8E8E8E8E8E8E881AC81E8E88181E8E8E8E8E8E8E890B4B4
          6CE8E8E8E8906CE8E8E8E8E8E881ACAC81E8E8E8E88181E8E8E8E8E890C7B46C
          E8E8E8E8E8E8906CE8E8E8E881E3AC81E8E8E8E8E8E88181E8E8E8E87A907AE8
          E8E8E8E8E8E8E8E890E8E8E8AC81ACE8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
      object btnReport: TcxButton
        Left = 385
        Top = 8
        Width = 64
        Height = 25
        Caption = 'Report'
        TabOrder = 4
        OnClick = btnReportClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000430B0000430B00000001000000010000000000003300
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
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E80B0B0B0B0B
          0B0B0B0B0B0B0B0B0BE8E88181818181818181818181818181E8E80BD7D7D7D7
          D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD781D781
          81D78181D78181D70BE8E881E881E88181E88181E88181E881E8E80BD7D7D7D7
          D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD781D781
          81D78181D78181D70BE8E881E881E88181E88181E88181E881E8E80BD7D7D7D7
          D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD75E5E5E
          5E5E5E5E5E5E5ED70BE8E881E881818181818181818181E881E8E80BD7D7D7D7
          D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD7D7D781
          81D78181D78181D70BE8E881E8E8E88181E88181E88181E881E8E80BD7D7D7D7
          D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD7D7D7D7
          D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80B0B0B0B0B
          0B0B0B0B0B0B0B0B0BE8E88181818181818181818181818181E8E80B0B0B0B0B
          0B0B0B0B0B0B0B0B0BE8E88181818181818181818181818181E8E8890B0B0B0B
          0B0B0B0B0B0B0B0B89E8E8AC818181818181818181818181ACE8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
      object btnToSystem21: TcxButton
        Left = 448
        Top = 8
        Width = 76
        Height = 25
        Caption = 'System 21'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnToSystem21Click
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000520B0000520B00000001000000010000000000003300
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
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909E8E8
          E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E80910101009E8
          E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910101009
          E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809101010
          09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E8091010
          1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910
          101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E80910
          101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8091010
          1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E809101010
          09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009
          E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009E8
          E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E809090909E8E8
          E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
      object btnRefreshUploadtoERPStatus: TcxButton
        Left = 526
        Top = 3
        Width = 94
        Height = 34
        Caption = 'Refresh'#13#10'Upload Status'
        TabOrder = 6
        WordWrap = True
        OnClick = btnRefreshUploadtoERPStatusClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000630B0000630B00000001000000010000000000003300
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
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E09
          095EE8E8E8E8E8E8E8E8E8E8E8E8E28181E2E8E8E8E8E8E8E8E8E8E8E8090910
          1009E8E8E8E8E8E8E8E8E8E8E88181ACAC81E8E8E8E8E8E8E8E8E8E809101009
          095EE8E8E8E8E8E8E8E8E8E881ACAC8181E2E8E8E8E8E8E8E8E8E85E0910095E
          E8E809090909090909E8E8E281AC81E2E8E881818181818181E8E80910095EE8
          E8E809101010101009E8E881AC81E2E8E8E881ACACACACAC81E8E8091009E8E8
          E8E8E8091010101009E8E881AC81E8E8E8E8E881ACACACAC81E8E80910095EE8
          E8E8E85E0910101009E8E881AC81E2E8E8E8E8E281ACACAC81E8E85E0910095E
          E85E09091009101009E8E8E281AC81E2E8E28181AC81ACAC81E8E8E809101009
          09091010095E091009E8E8E881ACAC818181ACAC81E281AC81E8E8E8E8090910
          10100909E8E8E80909E8E8E8E88181ACACAC8181E8E8E88181E8E8E8E8E85E09
          09095EE8E8E8E8E8E8E8E8E8E8E8E2818181E2E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
      object btnAdd: TcxButton
        Left = 52
        Top = 8
        Width = 63
        Height = 25
        Caption = 'Add'
        TabOrder = 0
        OnClick = btnAddClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000830B0000830B00000001000000010000000000003300
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
          09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
          09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
          09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
          09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E809090909
          0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E809101010
          1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809101010
          1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809090909
          0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E8E8E8E8E8
          09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
          09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
          09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
          09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
      object btnFromHandHeld: TcxButton
        Left = 255
        Top = 8
        Width = 131
        Height = 25
        Caption = 'HandHeld'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnFromHandHeldClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000520B0000520B00000001000000010000000000003300
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
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909E8E8
          E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E80910101009E8
          E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910101009
          E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809101010
          09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E8091010
          1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910
          101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E80910
          101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8091010
          1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E809101010
          09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009
          E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009E8
          E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E809090909E8E8
          E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 12
      Top = 3
      TabOrder = 0
      Height = 41
      Width = 132
      object cxButtonEdit_ReturnNo: TcxButtonEdit
        Left = 6
        Top = 15
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF00000000
              00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
              FF00FFFFFF0000FFFF0000000000FF00FF000000FF000000FF00FFFF00000000
              000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF000000FF000000FF00000000000000
              00000000000000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.OnButtonClick = cxButtonEdit_HDOPropertiesButtonClick
        Style.ButtonStyle = btsUltraFlat
        TabOrder = 0
        OnKeyDown = cxButtonEdit_ReturnNoKeyDown
        Width = 119
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 564
    Width = 929
    Height = 63
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = Panel2Resize
    object btnClearAll: TcxButton
      Left = 21
      Top = 5
      Width = 103
      Height = 25
      Caption = 'Clear All'
      TabOrder = 0
      OnClick = btnClearAllClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630E0000630E00000001000000010000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E86CE8E8
        E8E8E8E8E8E8E8E8B4E8E8E8E881E8E8E8E8E8E8E8E8E8E8ACE8E8E897B46CE8
        E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E897C7B46C
        E8E8E8E8E8E8E8B4E8E8E8E881E3AC81E8E8E8E8E8E8E8ACE8E8E8E8E897C090
        E8E8E8E8E8E8B4E8E8E8E8E8E881E381E8E8E8E8E8E8ACE8E8E8E8E8E8E890B4
        6CE8E8E8E8B46CE8E8E8E8E8E8E881AC81E8E8E8E8AC81E8E8E8E8E8E8E8E890
        B46CE8E8B46CE8E8E8E8E8E8E8E8E881AC81E8E8AC81E8E8E8E8E8E8E8E8E8E8
        90B46CB46CE8E8E8E8E8E8E8E8E8E8E881AC81AC81E8E8E8E8E8E8E8E8E8E8E8
        E890B46CE8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8
        90B46C906CE8E8E8E8E8E8E8E8E8E8E881AC818181E8E8E8E8E8E8E8E8E8E890
        B46CE8E8906CE8E8E8E8E8E8E8E8E881AC81E8E88181E8E8E8E8E8E8E890B4B4
        6CE8E8E8E8906CE8E8E8E8E8E881ACAC81E8E8E8E88181E8E8E8E8E890C7B46C
        E8E8E8E8E8E8906CE8E8E8E881E3AC81E8E8E8E8E8E88181E8E8E8E87A907AE8
        E8E8E8E8E8E8E8E890E8E8E8AC81ACE8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object Panel_ColorTips: TPanel
      Left = 158
      Top = 0
      Width = 628
      Height = 44
      BevelOuter = bvNone
      TabOrder = 1
      object cxLabel1: TcxLabel
        Left = 123
        Top = 2
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Height = 15
        Width = 13
      end
      object cxLabel2: TcxLabel
        Left = 136
        Top = 2
        AutoSize = False
        Caption = 'New'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Height = 17
        Width = 83
      end
      object cxLabel3: TcxLabel
        Left = 123
        Top = 19
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Visible = False
        Height = 15
        Width = 13
      end
      object cxLabel4: TcxLabel
        Left = 136
        Top = 19
        AutoSize = False
        Caption = 'PrintLabel'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Visible = False
        Height = 17
        Width = 104
      end
      object cxLabel5: TcxLabel
        Left = 241
        Top = 19
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Visible = False
        Height = 15
        Width = 13
      end
      object cxLabel6: TcxLabel
        Left = 254
        Top = 19
        AutoSize = False
        Caption = 'ToHandHeld'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Visible = False
        Height = 17
        Width = 117
      end
      object cxLabel7: TcxLabel
        Left = 369
        Top = 19
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Visible = False
        Height = 15
        Width = 13
      end
      object cxLabel8: TcxLabel
        Left = 382
        Top = 19
        AutoSize = False
        Caption = 'FromHandHeld'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Visible = False
        Height = 17
        Width = 117
      end
      object cxLabel9: TcxLabel
        Left = 497
        Top = 21
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Visible = False
        Height = 15
        Width = 13
      end
      object cxLabel10: TcxLabel
        Left = 510
        Top = 21
        AutoSize = False
        Caption = 'IDOAffirm'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Visible = False
        Height = 17
        Width = 104
      end
      object cxLabel11: TcxLabel
        Left = 253
        Top = 2
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Height = 15
        Width = 13
      end
      object cxLabel12: TcxLabel
        Left = 266
        Top = 2
        AutoSize = False
        Caption = 'toERP'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Height = 17
        Width = 104
      end
      object cxLabel13: TcxLabel
        Left = 369
        Top = 2
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Height = 15
        Width = 13
      end
      object cxLabel14: TcxLabel
        Left = 382
        Top = 2
        AutoSize = False
        Caption = 'toERP_Fail'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Height = 17
        Width = 117
      end
      object cxLabel15: TcxLabel
        Left = 497
        Top = 2
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Height = 15
        Width = 13
      end
      object cxLabel16: TcxLabel
        Left = 510
        Top = 2
        AutoSize = False
        Caption = 'toERP_Success'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Height = 17
        Width = 117
      end
      object cxLabel17: TcxLabel
        Left = 19
        Top = 2
        AutoSize = False
        Caption = '   '
        Style.BorderStyle = ebsSingle
        Visible = False
        Height = 15
        Width = 13
      end
      object cxLabel18: TcxLabel
        Left = 32
        Top = 2
        AutoSize = False
        Caption = 'Row Selection'
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -8
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Visible = False
        Height = 17
        Width = 83
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 123
    Width = 929
    Height = 11
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
  end
  object cxGroupBox4: TcxGroupBox [4]
    Left = 0
    Top = 82
    Align = alTop
    Alignment = alCenterCenter
    TabOrder = 4
    Visible = False
    Height = 41
    Width = 929
    object btnSave: TcxButton
      Left = 237
      Top = 9
      Width = 91
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = btnSaveClick
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
        090909090909090909E8E8E881818181818181818181818181E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
        090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
        101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
        090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
        0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
        0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
        090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnCancel: TcxButton
      Left = 453
      Top = 9
      Width = 91
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
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
  inherited pnl_Title: TPanel
    Width = 929
  end
  object pnl_select: TPanel [6]
    Tag = 1
    Left = 675
    Top = 83
    Width = 222
    Height = 298
    BevelInner = bvLowered
    TabOrder = 6
    Visible = False
    object cxGrid3: TcxGrid
      Left = 13
      Top = 12
      Width = 197
      Height = 230
      TabOrder = 0
      object cxGrid3DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid3DBTableView1DblClick
        OnMouseDown = cxGrid3DBTableView1MouseDown
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Selection = cxStyle3
        Styles.Header = cxStyle1
        object cxGrid3DBTableView1RETURN_NO: TcxGridDBColumn
          DataBinding.FieldName = 'RETURN_NO'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 163
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 15
      Top = 257
      Width = 87
      Height = 25
      Caption = 'Select'
      TabOrder = 1
      OnClick = cxButton1Click
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000013000000120000000100
        1800000000003804000000000000000000000000000000000000CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
        D3D6CED3D6DEDFDEC6C7C6C6C3C6DEDBDECED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CED3D6DEDF
        DEADAAAD6B696B6361639CA2A5DEDBDECED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6DEDFDEADAAAD292829
        180800210C001014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6000000CED3D6CED3D6DEDFDEADAAAD292829180800D64908EF
        55102910001014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6000000CED3D6DEDFDEADAAAD292829180800D64908FF5D10FF5D18EF59
        182910001014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6CED3D6CED3D600
        0000E7E7E7B5B6B5292829180800D64908FF5D10FF5D18FF6118FF6521EF6121
        2910001014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6CED3D6000000D6D7
        D6393839180800D64908FF5910FF5D18FF6118FF6521FF6921FF6D29EF692929
        10081014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6000000949294180800
        D64908FF5910FF5D10FF6118FF6D29FF7539FF6D29FF7131FF7531EF6D312914
        081014109C9E9CDEDBDECED3D6CED3D6CED3D6000000CED3D6CE795AFF5910FF
        5D10FF6118FF6D29EFCFBDEFDFD6FF7D42FF7131FF7539FF7942EF7542291408
        1014109C9E9CDEDBDECED3D6CED3D6000000CED3D6CED3D6F79A73FF6118FF6D
        29EFCFBDCED3D6CED3D6EFDFD6FF824AFF7942FF7D42FF824AEF794A29140810
        14109C9E9CDEDBDECED3D6000000CED3D6CED3D6CED3D6F7A684EFCFC6CED3D6
        CED3D6CED3D6CED3D6EFDFD6FF8A52FF824AFF864AFF8A52EF82522918081014
        10A5A6A5E7E3E7000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6EFDFDEFF8E5AFF8A52FF8E5AFF8E5AEF865A291810181C18
        CECBCE000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6EFDFDEFF9663FF8E5AFF9263FF9663EF8E632918107B797B00
        0000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6EFE3DEFF9A6BFF9663FF966BFF9A6BD69A84CECBCE000000CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6EFE3DEFF9E73FF9A6BF7B694CED3D6CED3D6000000CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6EFE3DEF7BEA5CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6000000}
    end
    object cxButton3: TcxButton
      Left = 120
      Top = 257
      Width = 87
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = cxButton3Click
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        1800000000007404000000000000000000000000000000000000CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6E7E3E7C6CB
        CEBDBEBDD6D3D6E7E7E7CED3D6CED3D6CED3D6DEDFDEC6C7C6BDBEBDD6D7D6E7
        EBEFCED3D6CED3D6CED3D6000000CED3D6CED3D6E7E3E7BDBABD6B6D6B4A5152
        848684CED3D6E7E7E7CED3D6DEDFDEB5B2B563696B5251528C8E8CD6D7D6E7EB
        EFCED3D6CED3D6000000CED3D6E7E7E7C6C7C64A494A00000800044A0000007B
        7D7BCECFCEDEDBDEB5B2B5313431000010000042000000949294DEDFDECED3D6
        CED3D6000000CED3D6DEE3E76365630000081014BD1818FF08085A0000007B79
        7B9C9E9C3134310000100000CE0000F700004A000000BDBABDCED3D6CED3D600
        0000CED3D6BDBEBD000008181CBD2124FF2120FF181CFF08085A000000101410
        0000100808CE0808FF0004FF0004F70000424A4D4ACED3D6CED3D6000000CED3
        D6DEDFDE8486BD3130FF292CFF2928FF2124FF2120FF08085A0000101010CE10
        14FF1010FF080CFF0808FF3134E7C6CBCECED3D6CED3D6000000CED3D6CED3D6
        CED3D6A5AAEF3938FF3130FF292CFF2928FF2124FF181CDE181CFF1818FF1818
        FF1014FF4245FFE7E3EFCED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
        D3D6A5A2E7393CFF3134FF3130FF292CFF292CFF2928FF2124FF2120FF4A49F7
        DEE3EFCED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6DEDFDEB5BA
        BD6365AD4241FF393CFF3938FF3134FF3130FF292CFF3938D6949AA5CED3D6E7
        E7E7CED3D6CED3D6CED3D6000000CED3D6CED3D6DEDFDEB5B2B5181C18000410
        4241DE4245FF4241FF393CFF3938FF3134FF1014630000007B7D7BCED3D6E7E7
        E7CED3D6CED3D6000000CED3D6E7E7E7BDBEBD3938390004104245CE5251FF4A
        4DFF4A49FF4245FF4241FF393CFF3938FF10145A000000848A8CDEDBDECED3D6
        CED3D6000000CED3D6DEDFDE5251520808104A4DCE5A5DFF5A5DFF5A59FF5255
        FF5251FF4A4DFF4A49FF4245FF4241FF10145A000000ADAEADCED3D6CED3D600
        0000CED3D6B5B6B50808105255CE6B69FF6365FF6365FF6361FF7B7DF7ADAEF7
        5A59FF5251FF4A4DFF4A49FF4245FF18185A313431CED3D6CED3D6000000CED3
        D6CED3D6A5A6CE7375FF7371FF6B6DFF6B69FF8486F7E7E7EFCED3D6B5B6EF5A
        5DFF5255FF5251FF4A4DFF6365E7D6D3D6CED3D6CED3D6000000CED3D6CED3D6
        CED3D6C6C3EF7B79FF7375FF8C8EF7E7E7EFCED3D6CED3D6CED3D6B5B6EF6361
        FF5A5DFF7B79F7E7E7EFCED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
        D3D6C6C7F79C9AF7E7E7EFE7E7E7E7E7E7CED3D6CED3D6CED3D6BDBAF78C8AFF
        E7E7EFCED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6000000}
    end
  end
  inherited ClientDataSet1: TClientDataSet
    AfterOpen = ClientDataSet1AfterOpen
    AfterScroll = ClientDataSet1AfterScroll
  end
  inherited cxStyleRepository1: TcxStyleRepository
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
  object RMGridReportDesigner1: TRMGridReportDesigner [13]
    DesignerRestrictions = []
    Left = 600
    Top = 84
  end
  object RMXLSExport1: TRMXLSExport [14]
    ShowAfterExport = True
    ExportPrecision = 1
    PagesOfSheet = 10
    ExportImages = True
    ExportFrames = True
    ExportImageFormat = ifBMP
    JPEGQuality = 0
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    CompressFile = False
    Left = 632
    Top = 84
  end
  object RMllPDFExport1: TRMllPDFExport [15]
    ShowDialog = False
    ShowAfterExport = True
    ShowBackPicture = True
    Left = 664
    Top = 84
  end
  object RMDBDataSet1: TRMDBDataSet [16]
    Visible = True
    Left = 704
    Top = 84
  end
  object ADOQuery1: TADOQuery
    CacheSize = 100
    CommandTimeout = 0
    Parameters = <>
    Left = 40
    Top = 173
  end
  object RMGridReport1: TRMGridReport
    ThreadPrepareReport = True
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbPageSetup, pbExit, pbSaveToXLS]
    DefaultCollate = False
    SaveReportOptions.RegistryPath = 'ReportMachine\ReportSettings\'
    PreviewOptions.RulerUnit = rmutScreenPixels
    PreviewOptions.RulerVisible = False
    PreviewOptions.DrawBorder = False
    PreviewOptions.BorderPen.Color = clBlue
    PreviewOptions.BorderPen.Style = psDash
    CompressLevel = rmzcFastest
    CompressThread = False
    Left = 568
    Top = 82
    ReportData = {}
  end
  object ADOQuery2: TADOQuery
    CacheSize = 100
    CommandTimeout = 0
    Parameters = <>
    Left = 40
    Top = 213
  end
  object ADOQuery3: TADOQuery
    CacheSize = 100
    CommandTimeout = 0
    Parameters = <>
    Left = 40
    Top = 261
  end
  object ADOQuery4: TADOQuery
    CacheSize = 100
    CommandTimeout = 0
    Parameters = <>
    Left = 40
    Top = 301
  end
  object ClientDataSet_ServerDate: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG_temp'
    Left = 492
    Top = 9
  end
end
