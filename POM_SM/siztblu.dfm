object frmsiztbl: Tfrmsiztbl
  Left = 258
  Top = 158
  Caption = 'Size Measurement Table('#23610#23544#34920')'
  ClientHeight = 610
  ClientWidth = 1298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1298
    Height = 610
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #36039#26009#24235
      OnExit = TabSheet1Exit
      object DBGridEh1: TDBGridEh
        Left = 24
        Top = 296
        Width = 889
        Height = 153
        AllowedOperations = []
        DataSource = DataSource1
        DrawMemoText = True
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #26032#32048#26126#39636
        FooterFont.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        RowDetailPanel.Color = clBtnFace
        TabOrder = 2
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #26032#32048#26126#39636
        TitleFont.Style = []
        UseMultiTitle = True
        Visible = False
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Stylno'
            Footers = <>
            Title.Caption = #27454#34399
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'Cdate'
            Footers = <>
            Title.Caption = #23458#26041#25209#26680#26085#26399
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'Mdate'
            Footers = <>
            Title.Caption = #21046#34920#26085#26399
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Mem'
            Footers = <>
            Title.Caption = #20633#27880
            Width = 551
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 145
        Width = 1290
        Height = 390
        Align = alClient
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid2DBTableView1Stylno
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnFilteredItemsList = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          object cxGrid2DBTableView1cust: TcxGridDBColumn
            Caption = #23458#25142#34399
            DataBinding.FieldName = 'cust'
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxGrid2DBTableView1Stylno: TcxGridDBColumn
            Caption = #27454#34399
            DataBinding.FieldName = 'Stylno'
            HeaderAlignmentHorz = taCenter
            Width = 132
          end
          object cxGrid2DBTableView1Phstyle: TcxGridDBColumn
            Caption = #38468#21152#27454#34399
            DataBinding.FieldName = 'phstyle'
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
          object cxGrid2DBTableView1cstyle: TcxGridDBColumn
            Caption = #23458#27454#34399
            DataBinding.FieldName = 'cstyle'
            HeaderAlignmentHorz = taCenter
            Width = 160
          end
          object cxGrid2DBTableView1Cdate: TcxGridDBColumn
            Caption = #20839#37096#25209#26680#26085#26399
            DataBinding.FieldName = 'Cdate'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGrid2DBTableView1Mdate: TcxGridDBColumn
            Caption = #35069#23610#23544#34920#26085#26399
            DataBinding.FieldName = 'Mdate'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGrid2DBTableView1uom: TcxGridDBColumn
            Caption = #37327#24230#21934#20301
            DataBinding.FieldName = 'uom'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'Inch'
              'cm')
            HeaderAlignmentHorz = taCenter
            Width = 33
          end
          object cxGrid2DBTableView1status: TcxGridDBColumn
            Caption = #29376#24907
            DataBinding.FieldName = 'status'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'Run'
              'Keep'
              'Drop')
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object cxGrid2DBTableView1comp: TcxGridDBColumn
            Caption = #25104#21697'/'#21322#25104#21697
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              #25104#21697
              #21322#25104#21697)
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 46
          end
          object cxGrid2DBTableView1Mem: TcxGridDBColumn
            Caption = #20633#35387#21450#29983#29986#35201#27714
            DataBinding.FieldName = 'Mem'
            PropertiesClassName = 'TcxMemoProperties'
            HeaderAlignmentHorz = taCenter
            Width = 531
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1290
        Height = 145
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 206
          Top = 24
          Width = 29
          Height = 13
          Caption = #27454#34399' '
        end
        object Label2: TLabel
          Left = 22
          Top = 56
          Width = 78
          Height = 13
          Caption = #20839#37096#25209#26680#26085#26399
        end
        object Label6: TLabel
          Left = 238
          Top = 56
          Width = 78
          Height = 13
          Caption = #35069#23610#23544#34920#26085#26399
        end
        object Label7: TLabel
          Left = 24
          Top = 88
          Width = 91
          Height = 13
          Caption = #20633#35387#21450#29983#29986#35201#27714
        end
        object Label5: TLabel
          Left = 462
          Top = 56
          Width = 55
          Height = 13
          Caption = #37327#24230#21934#20301' '
        end
        object Label10: TLabel
          Left = 458
          Top = 24
          Width = 42
          Height = 13
          Caption = #23458#27454#34399' '
        end
        object Label11: TLabel
          Left = 56
          Top = 24
          Width = 42
          Height = 13
          Caption = #23458#25142#34399' '
        end
        object Label12: TLabel
          Left = 646
          Top = 56
          Width = 29
          Height = 13
          Caption = #29376#24907' '
        end
        object Label13: TLabel
          Left = 814
          Top = 56
          Width = 71
          Height = 13
          Caption = #25104#21697'/'#21322#25104#21697' '
          Visible = False
        end
        object SpeedButton18: TSpeedButton
          Left = 374
          Top = 19
          Width = 41
          Height = 22
          Caption = #27454#22294
          OnClick = SpeedButton18Click
        end
        object lblimg: TLabel
          Left = 421
          Top = 23
          Width = 31
          Height = 13
          Caption = 'lblimg'
          Visible = False
        end
        object Label14: TLabel
          Left = 676
          Top = 24
          Width = 55
          Height = 13
          Caption = #38468#21152#27454#34399' '
        end
        object DBEdit1: TDBEdit
          Left = 238
          Top = 20
          Width = 137
          Height = 21
          DataField = 'Stylno'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 1
          OnKeyDown = DBEdit1KeyDown
        end
        object DBMemo1: TDBMemo
          Left = 120
          Top = 88
          Width = 929
          Height = 49
          DataField = 'Mem'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 5
        end
        object DBComboBox1: TDBComboBox
          Left = 520
          Top = 52
          Width = 73
          Height = 21
          DataField = 'uom'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          Items.Strings = (
            'Inch'
            'cm')
          TabOrder = 7
        end
        object DBEdit109: TDBEdit
          Left = 506
          Top = 20
          Width = 145
          Height = 21
          DataField = 'cstyle'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 2
          OnKeyDown = DBEdit1KeyDown
        end
        object DBEdit110: TDBEdit
          Left = 104
          Top = 20
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cust'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 0
          OnKeyDown = DBEdit1KeyDown
        end
        object DBComboBox2: TDBComboBox
          Left = 680
          Top = 52
          Width = 89
          Height = 21
          DataField = 'status'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          Items.Strings = (
            'Run'
            'Keep'
            'Drop')
          TabOrder = 9
        end
        object DBComboBox3: TDBComboBox
          Left = 888
          Top = 52
          Width = 105
          Height = 21
          DataField = 'comp'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          Items.Strings = (
            #25104#21697
            #21322#25104#21697)
          TabOrder = 8
          Visible = False
        end
        object DBDateEdit1: TDBDateTimeEditEh
          Left = 104
          Top = 52
          Width = 113
          Height = 21
          DataField = 'Cdate'
          DataSource = DataSource1
          EditButtons = <>
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          Kind = dtkDateEh
          TabOrder = 4
          Visible = True
          OnKeyDown = DBDateEdit1KeyDown
        end
        object DBDateEdit2: TDBDateTimeEditEh
          Left = 320
          Top = 52
          Width = 113
          Height = 21
          DataField = 'Mdate'
          DataSource = DataSource1
          EditButtons = <>
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          Kind = dtkDateEh
          TabOrder = 6
          Visible = True
          OnKeyDown = DBDateEdit2KeyDown
        end
        object DBEdit111: TDBEdit
          Left = 738
          Top = 20
          Width = 483
          Height = 21
          DataField = 'phstyle'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 3
          OnKeyDown = DBEdit1KeyDown
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 535
        Width = 1290
        Height = 46
        Align = alBottom
        TabOrder = 3
        object SpeedButton1: TSpeedButton
          Left = 174
          Top = 8
          Width = 30
          Height = 30
          Hint = #26032#22686
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330F03333
            3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
            3300333330F033333300333330F0333333003333300033333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 204
          Top = 8
          Width = 30
          Height = 30
          Hint = #21034#38500
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333333333333300333333333333
            330033333333333333003300000000003300330FFFFFFFF03300330000000000
            3300333333333333330033333333333333003333333333333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 234
          Top = 8
          Width = 30
          Height = 30
          Hint = #23566#20986'Excel'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 294
          Top = 8
          Width = 30
          Height = 30
          Hint = #36864#20986
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton4Click
        end
        object Label4: TLabel
          Left = 442
          Top = 17
          Width = 29
          Height = 13
          Caption = #23450#20301':'
        end
        object SpeedButton16: TSpeedButton
          Left = 264
          Top = 8
          Width = 30
          Height = 30
          Hint = #24489#21046
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
            FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
            FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
            007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
            7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
            99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
            99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
            99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
            93337FFFF7737777733300000033333333337777773333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton16Click
        end
        object SpeedButton19: TSpeedButton
          Left = 342
          Top = 8
          Width = 75
          Height = 30
          Caption = #30906#35469
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
          OnClick = SpeedButton19Click
        end
        object SpeedButton20: TSpeedButton
          Left = 694
          Top = 8
          Width = 94
          Height = 30
          Hint = #30906#35469
          Caption = #21462#28040#30906#35469
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF3333993333339993333377FF3333377FF3399993333339
            993337777FF3333377F3393999333333993337F777FF333337FF993399933333
            399377F3777FF333377F993339993333399377F33777FF33377F993333999333
            399377F333777FF3377F993333399933399377F3333777FF377F993333339993
            399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
            99333773FF3333777733339993333339933333773FFFFFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton20Click
        end
        object SpeedButton21: TSpeedButton
          Left = 787
          Top = 8
          Width = 98
          Height = 30
          Hint = #30906#35469
          Caption = #35442#27454#20043#32068#20214
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
            000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
            FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
            00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
            00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
            FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
            0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
            05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
            55557F7777777555555500000005555555557777777555555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton21Click
        end
        object DBNavigator1: TDBNavigator
          Left = 29
          Top = 8
          Width = 145
          Height = 30
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 476
          Top = 13
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 1
          OnChange = Edit1Change
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #35442#27454#23610#30908#31684#22285
      ImageIndex = 1
      OnExit = TabSheet2Exit
      object Label8: TLabel
        Left = 32
        Top = 24
        Width = 26
        Height = 13
        Caption = #27454#34399
      end
      object SpeedButton7: TSpeedButton
        Left = 241
        Top = 20
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
        OnClick = SpeedButton7Click
      end
      object GroupBox1: TGroupBox
        Left = 24
        Top = 272
        Width = 857
        Height = 185
        Caption = #22283#38555#30908
        TabOrder = 0
        object DBEdit6: TDBEdit
          Left = 14
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size1'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 0
          OnDblClick = DBEdit6DblClick
          OnKeyPress = DBEdit6KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 78
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size2'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 1
          OnDblClick = DBEdit7DblClick
          OnKeyPress = DBEdit7KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 142
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size3'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 2
          OnDblClick = DBEdit8DblClick
          OnKeyPress = DBEdit8KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 206
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size4'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 3
          OnDblClick = DBEdit9DblClick
          OnKeyPress = DBEdit9KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 270
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size5'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 4
          OnDblClick = DBEdit10DblClick
          OnKeyPress = DBEdit10KeyPress
        end
        object DBEdit11: TDBEdit
          Left = 334
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size6'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 5
          OnDblClick = DBEdit11DblClick
          OnKeyPress = DBEdit11KeyPress
        end
        object DBEdit20: TDBEdit
          Left = 398
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size7'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 6
          OnDblClick = DBEdit20DblClick
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit21: TDBEdit
          Left = 462
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size8'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 7
          OnDblClick = DBEdit21DblClick
          OnKeyPress = DBEdit21KeyPress
        end
        object DBEdit22: TDBEdit
          Left = 526
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size9'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 8
          OnDblClick = DBEdit22DblClick
          OnKeyPress = DBEdit22KeyPress
        end
        object DBEdit23: TDBEdit
          Left = 590
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size10'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 9
          OnDblClick = DBEdit23DblClick
          OnKeyPress = DBEdit23KeyPress
        end
        object DBEdit24: TDBEdit
          Left = 654
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size11'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 10
          OnDblClick = DBEdit24DblClick
          OnKeyPress = DBEdit24KeyPress
        end
        object DBEdit25: TDBEdit
          Left = 718
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size12'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 11
          OnDblClick = DBEdit25DblClick
          OnKeyPress = DBEdit25KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 782
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Size13'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 12
          OnDblClick = DBEdit2DblClick
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 14
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size14'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 13
          OnDblClick = DBEdit3DblClick
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 78
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size15'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 14
          OnDblClick = DBEdit4DblClick
          OnKeyPress = DBEdit4KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 142
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size16'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 15
          OnDblClick = DBEdit5DblClick
          OnKeyPress = DBEdit5KeyPress
        end
        object DBEdit37: TDBEdit
          Left = 206
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size17'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 16
          OnDblClick = DBEdit37DblClick
          OnKeyPress = DBEdit37KeyPress
        end
        object DBEdit38: TDBEdit
          Left = 270
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size18'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 17
          OnDblClick = DBEdit38DblClick
          OnKeyPress = DBEdit38KeyPress
        end
        object DBEdit39: TDBEdit
          Left = 334
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size19'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 18
          OnDblClick = DBEdit39DblClick
          OnKeyPress = DBEdit39KeyPress
        end
        object DBEdit40: TDBEdit
          Left = 398
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size20'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 19
          OnDblClick = DBEdit40DblClick
          OnKeyPress = DBEdit40KeyPress
        end
        object DBEdit41: TDBEdit
          Left = 462
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size21'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 20
          OnDblClick = DBEdit41DblClick
          OnKeyPress = DBEdit41KeyPress
        end
        object DBEdit42: TDBEdit
          Left = 526
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size22'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 21
          OnDblClick = DBEdit42DblClick
          OnKeyPress = DBEdit42KeyPress
        end
        object DBEdit43: TDBEdit
          Left = 590
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size23'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 22
          OnDblClick = DBEdit43DblClick
          OnKeyPress = DBEdit43KeyPress
        end
        object DBEdit44: TDBEdit
          Left = 654
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size24'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 23
          OnDblClick = DBEdit44DblClick
          OnKeyPress = DBEdit44KeyPress
        end
        object DBEdit45: TDBEdit
          Left = 718
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size25'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 24
          OnDblClick = DBEdit45DblClick
          OnKeyPress = DBEdit45KeyPress
        end
        object DBEdit46: TDBEdit
          Left = 782
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Size26'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 25
          OnDblClick = DBEdit46DblClick
          OnKeyPress = DBEdit46KeyPress
        end
        object DBEdit47: TDBEdit
          Left = 14
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size27'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 26
          OnDblClick = DBEdit47DblClick
          OnKeyPress = DBEdit47KeyPress
        end
        object DBEdit48: TDBEdit
          Left = 78
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size28'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 27
          OnDblClick = DBEdit48DblClick
          OnKeyPress = DBEdit48KeyPress
        end
        object DBEdit49: TDBEdit
          Left = 142
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size29'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 28
          OnDblClick = DBEdit49DblClick
          OnKeyPress = DBEdit49KeyPress
        end
        object DBEdit50: TDBEdit
          Left = 206
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size30'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 29
          OnDblClick = DBEdit50DblClick
          OnKeyPress = DBEdit50KeyPress
        end
        object DBEdit51: TDBEdit
          Left = 270
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size31'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 30
          OnDblClick = DBEdit51DblClick
          OnKeyPress = DBEdit51KeyPress
        end
        object DBEdit52: TDBEdit
          Left = 334
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size32'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 31
          OnDblClick = DBEdit52DblClick
          OnKeyPress = DBEdit52KeyPress
        end
        object DBEdit69: TDBEdit
          Left = 398
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size33'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 32
          OnDblClick = DBEdit69DblClick
          OnKeyPress = DBEdit69KeyPress
        end
        object DBEdit70: TDBEdit
          Left = 462
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size34'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 33
          OnDblClick = DBEdit70DblClick
          OnKeyPress = DBEdit70KeyPress
        end
        object DBEdit71: TDBEdit
          Left = 526
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size35'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 34
          OnDblClick = DBEdit71DblClick
          OnKeyPress = DBEdit71KeyPress
        end
        object DBEdit72: TDBEdit
          Left = 590
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size36'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 35
          OnDblClick = DBEdit72DblClick
          OnKeyPress = DBEdit72KeyPress
        end
        object DBEdit73: TDBEdit
          Left = 654
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size37'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 36
          OnDblClick = DBEdit73DblClick
          OnKeyPress = DBEdit73KeyPress
        end
        object DBEdit74: TDBEdit
          Left = 718
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size38'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 37
          OnDblClick = DBEdit74DblClick
          OnKeyPress = DBEdit74KeyPress
        end
        object DBEdit75: TDBEdit
          Left = 782
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Size39'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 38
          OnDblClick = DBEdit75DblClick
          OnKeyPress = DBEdit75KeyPress
        end
        object DBEdit76: TDBEdit
          Left = 14
          Top = 148
          Width = 58
          Height = 21
          DataField = 'Size40'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 39
          OnDblClick = DBEdit76DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit97: TDBEdit
          Left = 78
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size41'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 40
          OnDblClick = DBEdit97DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit98: TDBEdit
          Left = 142
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size42'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 41
          OnDblClick = DBEdit98DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit99: TDBEdit
          Left = 206
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size43'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 42
          OnDblClick = DBEdit99DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit100: TDBEdit
          Left = 270
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size44'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 43
          OnDblClick = DBEdit100DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit101: TDBEdit
          Left = 334
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size45'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 44
          OnDblClick = DBEdit101DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit102: TDBEdit
          Left = 398
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size46'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 45
          OnDblClick = DBEdit102DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit103: TDBEdit
          Left = 462
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size47'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 46
          OnDblClick = DBEdit103DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit104: TDBEdit
          Left = 526
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size48'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 47
          OnDblClick = DBEdit104DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit105: TDBEdit
          Left = 590
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size49'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 48
          OnDblClick = DBEdit105DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit106: TDBEdit
          Left = 654
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size50'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 49
          OnDblClick = DBEdit106DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit107: TDBEdit
          Left = 718
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size51'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 50
          OnDblClick = DBEdit107DblClick
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit108: TDBEdit
          Left = 782
          Top = 148
          Width = 58
          Height = 21
          DataField = 'size52'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 51
          OnKeyPress = DBEdit76KeyPress
        end
      end
      object GroupBox2: TGroupBox
        Left = 24
        Top = 72
        Width = 857
        Height = 185
        Caption = #23458#26041#30908
        TabOrder = 1
        object DBEdit12: TDBEdit
          Left = 14
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz1'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 0
          OnKeyPress = DBEdit12KeyPress
        end
        object DBEdit13: TDBEdit
          Left = 78
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz2'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 1
          OnKeyPress = DBEdit13KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 142
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz3'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 2
          OnKeyPress = DBEdit14KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 206
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz4'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 3
          OnKeyPress = DBEdit15KeyPress
        end
        object DBEdit16: TDBEdit
          Left = 270
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz5'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 4
          OnKeyPress = DBEdit16KeyPress
        end
        object DBEdit17: TDBEdit
          Left = 334
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz6'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 5
          OnKeyPress = DBEdit17KeyPress
        end
        object DBEdit26: TDBEdit
          Left = 398
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz7'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 6
          OnKeyPress = DBEdit26KeyPress
        end
        object DBEdit27: TDBEdit
          Left = 462
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz8'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 7
          OnKeyPress = DBEdit27KeyPress
        end
        object DBEdit28: TDBEdit
          Left = 526
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz9'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 8
          OnKeyPress = DBEdit28KeyPress
        end
        object DBEdit29: TDBEdit
          Left = 590
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz10'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 9
          OnKeyPress = DBEdit29KeyPress
        end
        object DBEdit30: TDBEdit
          Left = 654
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz11'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 10
          OnKeyPress = DBEdit30KeyPress
        end
        object DBEdit31: TDBEdit
          Left = 718
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz12'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 11
          OnKeyPress = DBEdit31KeyPress
        end
        object DBEdit32: TDBEdit
          Left = 782
          Top = 28
          Width = 58
          Height = 21
          DataField = 'Csiz13'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 12
          OnKeyPress = DBEdit32KeyPress
        end
        object DBEdit33: TDBEdit
          Left = 14
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz14'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 13
          OnKeyPress = DBEdit33KeyPress
        end
        object DBEdit34: TDBEdit
          Left = 78
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz15'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 14
          OnKeyPress = DBEdit34KeyPress
        end
        object DBEdit35: TDBEdit
          Left = 142
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz16'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 15
          OnKeyPress = DBEdit35KeyPress
        end
        object DBEdit53: TDBEdit
          Left = 206
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz17'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 16
          OnKeyPress = DBEdit53KeyPress
        end
        object DBEdit54: TDBEdit
          Left = 270
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz18'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 17
          OnKeyPress = DBEdit54KeyPress
        end
        object DBEdit55: TDBEdit
          Left = 334
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz19'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 18
          OnKeyPress = DBEdit55KeyPress
        end
        object DBEdit56: TDBEdit
          Left = 398
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz20'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 19
          OnKeyPress = DBEdit56KeyPress
        end
        object DBEdit57: TDBEdit
          Left = 462
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz21'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 20
          OnKeyPress = DBEdit57KeyPress
        end
        object DBEdit58: TDBEdit
          Left = 526
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz22'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 21
          OnKeyPress = DBEdit58KeyPress
        end
        object DBEdit59: TDBEdit
          Left = 590
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz23'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 22
          OnKeyPress = DBEdit59KeyPress
        end
        object DBEdit60: TDBEdit
          Left = 654
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz24'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 23
          OnKeyPress = DBEdit60KeyPress
        end
        object DBEdit61: TDBEdit
          Left = 718
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz25'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 24
          OnKeyPress = DBEdit61KeyPress
        end
        object DBEdit62: TDBEdit
          Left = 782
          Top = 68
          Width = 58
          Height = 21
          DataField = 'Csiz26'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 25
          OnKeyPress = DBEdit62KeyPress
        end
        object DBEdit63: TDBEdit
          Left = 14
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz27'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 26
          OnKeyPress = DBEdit63KeyPress
        end
        object DBEdit64: TDBEdit
          Left = 78
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz28'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 27
          OnKeyPress = DBEdit64KeyPress
        end
        object DBEdit65: TDBEdit
          Left = 142
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz29'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 28
          OnKeyPress = DBEdit65KeyPress
        end
        object DBEdit66: TDBEdit
          Left = 206
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz30'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 29
          OnKeyPress = DBEdit66KeyPress
        end
        object DBEdit67: TDBEdit
          Left = 270
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz31'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 30
          OnKeyPress = DBEdit67KeyPress
        end
        object DBEdit68: TDBEdit
          Left = 334
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz32'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 31
          OnKeyPress = DBEdit68KeyPress
        end
        object DBEdit77: TDBEdit
          Left = 398
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz33'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 32
          OnKeyPress = DBEdit77KeyPress
        end
        object DBEdit78: TDBEdit
          Left = 462
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz34'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 33
          OnKeyPress = DBEdit78KeyPress
        end
        object DBEdit79: TDBEdit
          Left = 526
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz35'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 34
          OnKeyPress = DBEdit79KeyPress
        end
        object DBEdit80: TDBEdit
          Left = 590
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz36'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 35
          OnKeyPress = DBEdit80KeyPress
        end
        object DBEdit81: TDBEdit
          Left = 654
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz37'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 36
          OnKeyPress = DBEdit81KeyPress
        end
        object DBEdit82: TDBEdit
          Left = 718
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz38'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 37
          OnKeyPress = DBEdit82KeyPress
        end
        object DBEdit83: TDBEdit
          Left = 782
          Top = 108
          Width = 58
          Height = 21
          DataField = 'Csiz39'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 38
          OnKeyPress = DBEdit83KeyPress
        end
        object DBEdit84: TDBEdit
          Left = 14
          Top = 148
          Width = 58
          Height = 21
          DataField = 'Csiz40'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 39
        end
        object DBEdit85: TDBEdit
          Left = 78
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz41'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 40
        end
        object DBEdit86: TDBEdit
          Left = 142
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz42'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 41
        end
        object DBEdit87: TDBEdit
          Left = 206
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz43'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 42
        end
        object DBEdit88: TDBEdit
          Left = 270
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz44'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 43
        end
        object DBEdit89: TDBEdit
          Left = 334
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz45'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 44
        end
        object DBEdit90: TDBEdit
          Left = 398
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz46'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 45
        end
        object DBEdit91: TDBEdit
          Left = 462
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz47'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 46
        end
        object DBEdit92: TDBEdit
          Left = 526
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz48'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 47
        end
        object DBEdit93: TDBEdit
          Left = 590
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz49'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 48
        end
        object DBEdit94: TDBEdit
          Left = 654
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz50'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 49
        end
        object DBEdit95: TDBEdit
          Left = 718
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz51'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 50
        end
        object DBEdit96: TDBEdit
          Left = 782
          Top = 148
          Width = 58
          Height = 21
          DataField = 'csiz52'
          DataSource = DataSource2
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          TabOrder = 51
        end
      end
      object DBEdit18: TDBEdit
        Left = 70
        Top = 20
        Width = 171
        Height = 21
        Color = 11927551
        DataField = 'Stylno'
        DataSource = DataSource1
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        ReadOnly = True
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = #35442#27454#37327#24230#20301#32622#21450#23610#23544#34920
      ImageIndex = 2
      OnExit = TabSheet3Exit
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1290
        Height = 486
        Align = alClient
        AllowedOperations = [alopUpdateEh, alopAppendEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #26032#32048#26126#39636
        FooterFont.Style = []
        FooterRowCount = 2
        FrozenCols = 3
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #26032#32048#26126#39636
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyDown = DBGridEh2KeyDown
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Cde'
            Footers = <>
            Title.Caption = #22294#20301#32622#20195#30908
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'Flg1'
            Footers = <>
            Title.Caption = #32102#23458#25142
            Width = 17
          end
          item
            EditButtons = <>
            FieldName = 'Jobno'
            Footers = <>
            Title.Caption = #20998#32068
            Visible = False
            Width = 26
          end
          item
            ButtonStyle = cbsEllipsis
            Color = 16776415
            EditButtons = <>
            FieldName = 'Cmeas'
            Footer.Alignment = taRightJustify
            Footers = <
              item
                Alignment = taRightJustify
                ValueType = fvtStaticText
              end
              item
                Alignment = taRightJustify
                Value = #37327#24230#20301#32622#32317#25976': '
                ValueType = fvtStaticText
              end>
            ReadOnly = True
            Title.Caption = #37327#24230#20301#32622
            Width = 300
            OnEditButtonClick = DBGridEh2Columns3EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'Projno'
            Footers = <>
            Title.Caption = #37327#24230#20301#32622#33287#30456#38364#24037#24207#32232#34399
            Visible = False
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'opt'
            Footer.ValueType = fvtStaticText
            Footers = <
              item
              end
              item
                ValueType = fvtStaticText
              end>
            Title.Caption = #23610#23544#34920#20998#39006'|'#24037#24207#23436#25104
            Visible = False
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'parts_d'
            Footer.ValueType = fvtStaticText
            Footers = <
              item
                ValueType = fvtStaticText
              end
              item
                ValueType = fvtStaticText
              end>
            Title.Caption = #23610#23544#34920#20998#39006'|'#32068#20214#23436#25104'|'#30435#25511#24615
            Visible = False
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'parts'
            Footer.ValueType = fvtStaticText
            Footers = <
              item
                ValueType = fvtStaticText
              end
              item
                ValueType = fvtStaticText
              end>
            Title.Caption = #23610#23544#34920#20998#39006'|'#32068#20214#23436#25104'|'#38364#37749#24615
            Visible = False
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'operation'
            Footer.ValueType = fvtStaticText
            Footers = <
              item
              end
              item
                ValueType = fvtStaticText
              end>
            Title.Caption = #23610#23544#34920#20998#39006'|'#21322#25104#21697
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'garment'
            Footer.ValueType = fvtStaticText
            Footers = <
              item
              end
              item
                ValueType = fvtStaticText
              end>
            Title.Caption = #23610#23544#34920#20998#39006'|'#25104#21697
            Width = 25
          end
          item
            Color = 16776415
            EditButtons = <>
            FieldName = 'Uom'
            Footers = <>
            PickList.Strings = (
              'Inch'
              'cm')
            Title.Caption = #37327#24230#21934#20301
          end
          item
            Color = 16776415
            EditButtons = <>
            FieldName = 'Methd'
            Footers = <>
            PickList.Strings = (
              #30452#32218#24230
              #27839#37002#24230
              #25163#25289#24230
              #24359#32218#24230
              #27231#25289#24230
              #31204#25289#24230)
            Title.Caption = #37327#24230#26041#27861
            Width = 44
          end
          item
            Alignment = taCenter
            Color = 16776415
            EditButtons = <>
            FieldName = 'Tolerence'
            Footers = <>
            Title.Caption = #23610#23544#23481#24046
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'Rst1'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst2'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst3'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst4'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst5'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst6'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst7'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst8'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst9'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst10'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst11'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst12'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst13'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst14'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst15'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst16'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst17'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst18'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst19'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst20'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst21'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst22'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst23'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst24'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst25'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst26'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst27'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst28'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst29'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst30'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst31'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst32'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst33'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst34'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst35'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst36'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst37'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst38'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst39'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Rst40'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst41'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst42'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst43'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst44'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst45'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst46'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst47'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst48'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst49'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst50'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst51'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'rst52'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 45
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object cxGrid1: TcxGrid
        Left = 296
        Top = 168
        Width = 457
        Height = 200
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataSource6
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Prepared by:             Confirmed by: '
              Column = cxGrid1DBTableView1Stylno
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooters = gfAlwaysVisible
          OnCustomDrawGroupCell = cxGrid1DBTableView1CustomDrawGroupCell
          OnCustomDrawGroupSummaryCell = cxGrid1DBTableView1CustomDrawGroupSummaryCell
          object cxGrid1DBTableView1Stylno: TcxGridDBColumn
            Caption = #27454#34399
            DataBinding.FieldName = 'Stylno'
            Visible = False
            GroupIndex = 0
          end
          object cxGrid1DBTableView1Cde: TcxGridDBColumn
            Caption = #20195#34399
            DataBinding.FieldName = 'Cde'
            HeaderAlignmentHorz = taCenter
            Width = 22
          end
          object cxGrid1DBTableView1Cmeas: TcxGridDBColumn
            Caption = #37327#24230#20301#32622' ('#20013#25991')'
            DataBinding.FieldName = 'Cmeas'
            HeaderAlignmentHorz = taCenter
            Width = 180
          end
          object cxGrid1DBTableView1Emeas: TcxGridDBColumn
            Caption = #37327#24230#20301#32622' ('#33521#25991')'
            DataBinding.FieldName = 'Emeas'
            HeaderAlignmentHorz = taCenter
            Width = 180
          end
          object cxGrid1DBTableView1Tolerence: TcxGridDBColumn
            Caption = #23610#23544#23481#24046
            DataBinding.FieldName = 'Tolerence'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cRst1: TcxGridDBColumn
            DataBinding.FieldName = 'Rst1'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn1: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn2: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn3: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst2: TcxGridDBColumn
            DataBinding.FieldName = 'Rst2'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn4: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn5: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn6: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst3: TcxGridDBColumn
            DataBinding.FieldName = 'Rst3'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn7: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn8: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn9: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst4: TcxGridDBColumn
            DataBinding.FieldName = 'Rst4'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn10: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn11: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn12: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst5: TcxGridDBColumn
            DataBinding.FieldName = 'Rst5'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn13: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn14: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn15: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst6: TcxGridDBColumn
            DataBinding.FieldName = 'Rst6'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn16: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn17: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn18: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst7: TcxGridDBColumn
            DataBinding.FieldName = 'Rst7'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn19: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn20: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn21: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst8: TcxGridDBColumn
            DataBinding.FieldName = 'Rst8'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn22: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn23: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn24: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst9: TcxGridDBColumn
            DataBinding.FieldName = 'Rst9'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn25: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn26: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn27: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst10: TcxGridDBColumn
            DataBinding.FieldName = 'Rst10'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn28: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn29: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn30: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst11: TcxGridDBColumn
            DataBinding.FieldName = 'Rst11'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn31: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn32: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn33: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst12: TcxGridDBColumn
            DataBinding.FieldName = 'Rst12'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn34: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn35: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn36: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst13: TcxGridDBColumn
            DataBinding.FieldName = 'Rst13'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn37: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn38: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn39: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst14: TcxGridDBColumn
            DataBinding.FieldName = 'Rst14'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn40: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn41: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn42: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst15: TcxGridDBColumn
            DataBinding.FieldName = 'Rst15'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn43: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn44: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn45: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst16: TcxGridDBColumn
            DataBinding.FieldName = 'Rst16'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn46: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn47: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn48: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst17: TcxGridDBColumn
            DataBinding.FieldName = 'Rst17'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn49: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn50: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn51: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst18: TcxGridDBColumn
            DataBinding.FieldName = 'Rst18'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn52: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn53: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn54: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst19: TcxGridDBColumn
            DataBinding.FieldName = 'Rst19'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn55: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn56: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn57: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst20: TcxGridDBColumn
            DataBinding.FieldName = 'Rst20'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn58: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn59: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn60: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst21: TcxGridDBColumn
            DataBinding.FieldName = 'Rst21'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn61: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn62: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn63: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst22: TcxGridDBColumn
            DataBinding.FieldName = 'Rst22'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn64: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn65: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn66: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst23: TcxGridDBColumn
            DataBinding.FieldName = 'Rst23'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn67: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn68: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn69: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst24: TcxGridDBColumn
            DataBinding.FieldName = 'Rst24'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn70: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn71: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn72: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst25: TcxGridDBColumn
            DataBinding.FieldName = 'Rst25'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn73: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn74: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn75: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst26: TcxGridDBColumn
            DataBinding.FieldName = 'Rst26'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn76: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn77: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn78: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst27: TcxGridDBColumn
            DataBinding.FieldName = 'Rst27'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn79: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn80: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn81: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst28: TcxGridDBColumn
            DataBinding.FieldName = 'Rst28'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn82: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn83: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn84: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst29: TcxGridDBColumn
            DataBinding.FieldName = 'Rst29'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn85: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn86: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn87: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst30: TcxGridDBColumn
            DataBinding.FieldName = 'Rst30'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxColumn88: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn89: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxColumn90: TcxGridDBColumn
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cRst31: TcxGridDBColumn
            DataBinding.FieldName = 'Rst31'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst32: TcxGridDBColumn
            DataBinding.FieldName = 'Rst32'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst33: TcxGridDBColumn
            DataBinding.FieldName = 'Rst33'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst34: TcxGridDBColumn
            DataBinding.FieldName = 'Rst34'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst35: TcxGridDBColumn
            DataBinding.FieldName = 'Rst35'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst36: TcxGridDBColumn
            DataBinding.FieldName = 'Rst36'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst37: TcxGridDBColumn
            DataBinding.FieldName = 'Rst37'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst38: TcxGridDBColumn
            DataBinding.FieldName = 'Rst38'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst39: TcxGridDBColumn
            DataBinding.FieldName = 'Rst39'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst40: TcxGridDBColumn
            DataBinding.FieldName = 'Rst40'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst41: TcxGridDBColumn
            DataBinding.FieldName = 'rst41'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst42: TcxGridDBColumn
            DataBinding.FieldName = 'rst42'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst43: TcxGridDBColumn
            DataBinding.FieldName = 'rst43'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst44: TcxGridDBColumn
            DataBinding.FieldName = 'rst44'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst45: TcxGridDBColumn
            DataBinding.FieldName = 'rst45'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst46: TcxGridDBColumn
            DataBinding.FieldName = 'rst46'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst47: TcxGridDBColumn
            DataBinding.FieldName = 'rst47'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst48: TcxGridDBColumn
            DataBinding.FieldName = 'rst48'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst49: TcxGridDBColumn
            DataBinding.FieldName = 'rst49'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst50: TcxGridDBColumn
            DataBinding.FieldName = 'rst50'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst51: TcxGridDBColumn
            DataBinding.FieldName = 'rst51'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cRst52: TcxGridDBColumn
            DataBinding.FieldName = 'rst52'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1290
        Height = 49
        Align = alTop
        TabOrder = 2
        object Label9: TLabel
          Left = 32
          Top = 24
          Width = 26
          Height = 13
          Caption = #27454#34399
        end
        object SpeedButton8: TSpeedButton
          Left = 241
          Top = 20
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
          OnClick = SpeedButton7Click
        end
        object DBEdit19: TDBEdit
          Left = 70
          Top = 20
          Width = 171
          Height = 21
          Color = 11927551
          DataField = 'Stylno'
          DataSource = DataSource1
          ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 535
        Width = 1290
        Height = 46
        Align = alBottom
        TabOrder = 3
        object SpeedButton5: TSpeedButton
          Left = 248
          Top = 11
          Width = 30
          Height = 30
          Hint = #23566#20986#36039#26009
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 218
          Top = 11
          Width = 30
          Height = 30
          Hint = #20462#25913#23481#24046
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
            555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
            05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
            FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
            FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
            FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
            05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
            555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
            9055575757575757775505050505055505557575757575557555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton6Click
        end
        object SpeedButton13: TSpeedButton
          Left = 158
          Top = 11
          Width = 30
          Height = 30
          Hint = #26032#22686
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330F03333
            3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
            3300333330F033333300333330F0333333003333300033333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton13Click
        end
        object SpeedButton15: TSpeedButton
          Left = 188
          Top = 11
          Width = 30
          Height = 30
          Hint = #21034#38500
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333333333333300333333333333
            330033333333333333003300000000003300330FFFFFFFF03300330000000000
            3300333333333333330033333333333333003333333333333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton15Click
        end
        object SpeedButton17: TSpeedButton
          Left = 278
          Top = 11
          Width = 30
          Height = 30
          Hint = #36864#20986
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton17Click
        end
        object DBNavigator2: TDBNavigator
          Left = 8
          Top = 11
          Width = 150
          Height = 30
          DataSource = DataSource3
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #29983#29986#23610#23544#34920
      ImageIndex = 3
      TabVisible = False
      object Label3: TLabel
        Left = 32
        Top = 24
        Width = 26
        Height = 13
        Caption = #27454#34399
      end
      object SpeedButton9: TSpeedButton
        Left = 241
        Top = 20
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
        OnClick = SpeedButton9Click
      end
      object SpeedButton10: TSpeedButton
        Left = 8
        Top = 504
        Width = 30
        Height = 30
        Hint = #30906#23450
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton10Click
      end
      object SpeedButton14: TSpeedButton
        Left = 38
        Top = 504
        Width = 30
        Height = 30
        Hint = #25764#28040
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton14Click
      end
      object SpeedButton11: TSpeedButton
        Left = 68
        Top = 504
        Width = 30
        Height = 30
        Hint = #25171#21360
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton11Click
      end
      object SpeedButton12: TSpeedButton
        Left = 98
        Top = 504
        Width = 30
        Height = 30
        Hint = #36864#20986
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton4Click
      end
      object DBGridEh3: TDBGridEh
        Left = 8
        Top = 56
        Width = 777
        Height = 433
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #26032#32048#26126#39636
        FooterFont.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #26032#32048#26126#39636
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyDown = DBGridEh3KeyDown
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Cw'
            Footers = <>
            Title.Caption = #36554#20301
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'Cs'
            Footers = <>
            Title.Caption = #27425#25976
            Width = 21
          end
          item
            EditButtons = <>
            FieldName = 'Cde'
            Footers = <>
            Title.Caption = #20195#34399
            Width = 35
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'Cmeas'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #37327#24230#20301#32622
            Width = 235
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'Uom'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #37327#24230#21934#20301
            Width = 23
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'Methd'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            Footers = <>
            PickList.Strings = (
              #24179#24230
              #30452#24230
              #38918#24230
              #25240#24230
              #25289#24230)
            Title.Caption = #37327#24230#26041#27861
            Width = 31
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'Tolerence'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #23610#23544#23481#24046
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'Dif1'
            Footers = <>
            Title.Caption = #22238#32302
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Dif'
            Footers = <>
            Title.Caption = #20854#23427
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rs1'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rs2'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rs3'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Rs4'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs5'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs6'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs7'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Rs8'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs9'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs10'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs11'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rs12'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Rs13'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Rs14'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs15'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs16'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rs17'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rs18'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rs19'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rs20'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rs21'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Rs22'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Rs23'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rs24'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'Rs25'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rs26'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rs27'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'Rs28'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'Rs29'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rs30'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rs31'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'Rs32'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Rs33'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rs34'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rs35'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rs36'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Rs37'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Rs38'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Rs39'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Rst40'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 22
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBEdit36: TDBEdit
        Left = 70
        Top = 20
        Width = 171
        Height = 21
        Color = 11927551
        DataField = 'Stylno'
        DataSource = DataSource1
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 584
    Top = 496
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 640
    Top = 496
  end
  object DataSource3: TDataSource
    DataSet = Table3
    OnDataChange = DataSource3DataChange
    Left = 696
    Top = 496
  end
  object DataSource5: TDataSource
    DataSet = Query7
    Left = 472
    Top = 496
  end
  object ppBDEPipeline2: TppBDEPipeline
    DataSource = DataSource5
    UserName = 'BDEPipeline2'
    Left = 500
    Top = 496
  end
  object DataSource4: TDataSource
    DataSet = Table4
    Left = 700
    Top = 528
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline2
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
    Units = utMillimeters
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
    Left = 528
    Top = 496
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline2'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppRegion5: TppRegion
        UserName = 'Region2'
        mmHeight = 5556
        mmLeft = 6615
        mmTop = 0
        mmWidth = 271728
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape33: TppShape
          UserName = 'Shape12'
          mmHeight = 5556
          mmLeft = 17992
          mmTop = 0
          mmWidth = 87842
          BandType = 4
        end
        object ppDBText94: TppDBText
          UserName = 'DBText4'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Cde'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 8467
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ldwz: TppDBText
          UserName = 'DBText5'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Cmeas'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 19315
          mmTop = 1058
          mmWidth = 29369
          BandType = 4
        end
        object ppShape34: TppShape
          UserName = 'Shape13'
          mmHeight = 5556
          mmLeft = 112448
          mmTop = 0
          mmWidth = 8731
          BandType = 4
        end
        object ppShape35: TppShape
          UserName = 'Shape14'
          mmHeight = 5556
          mmLeft = 151871
          mmTop = 0
          mmWidth = 8467
          BandType = 4
        end
        object ppShape36: TppShape
          UserName = 'Shape15'
          mmHeight = 5556
          mmLeft = 168011
          mmTop = 0
          mmWidth = 8467
          BandType = 4
        end
        object ppShape37: TppShape
          UserName = 'Shape16'
          mmHeight = 5556
          mmLeft = 184150
          mmTop = 0
          mmWidth = 8202
          BandType = 4
        end
        object ppShape38: TppShape
          UserName = 'Shape17'
          mmHeight = 5556
          mmLeft = 200025
          mmTop = 0
          mmWidth = 8202
          BandType = 4
        end
        object ppShape39: TppShape
          UserName = 'Shape18'
          mmHeight = 5556
          mmLeft = 215900
          mmTop = 0
          mmWidth = 7938
          BandType = 4
        end
        object ppShape40: TppShape
          UserName = 'Shape19'
          mmHeight = 5556
          mmLeft = 231511
          mmTop = 0
          mmWidth = 7938
          BandType = 4
        end
        object ppShape41: TppShape
          UserName = 'Shape20'
          mmHeight = 5556
          mmLeft = 247121
          mmTop = 0
          mmWidth = 7673
          BandType = 4
        end
        object ppShape42: TppShape
          UserName = 'Shape201'
          mmHeight = 5556
          mmLeft = 262203
          mmTop = 0
          mmWidth = 7938
          BandType = 4
        end
        object ppDBText97: TppDBText
          UserName = 'DBText7'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Uom'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 106627
          mmTop = 1058
          mmWidth = 3704
          BandType = 4
        end
        object ppDBText98: TppDBText
          UserName = 'DBText8'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Methd'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 113506
          mmTop = 1058
          mmWidth = 7938
          BandType = 4
        end
        object ppDBText99: TppDBText
          UserName = 'DBText9'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Tolerence'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 121709
          mmTop = 1058
          mmWidth = 11642
          BandType = 4
        end
        object ppDBText100: TppDBText
          UserName = 'DBText13'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs1'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 152400
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText101: TppDBText
          UserName = 'DBText16'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs2'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 160867
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText102: TppDBText
          UserName = 'DBText19'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs3'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 169069
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText103: TppDBText
          UserName = 'DBText22'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs4'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 177007
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText104: TppDBText
          UserName = 'DBText47'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs5'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 184944
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText105: TppDBText
          UserName = 'DBText48'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs6'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 192882
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText106: TppDBText
          UserName = 'DBText49'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs7'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 200819
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText107: TppDBText
          UserName = 'DBText50'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs8'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 208757
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText108: TppDBText
          UserName = 'DBText51'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs9'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 216430
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText109: TppDBText
          UserName = 'DBText52'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs10'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 224103
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText110: TppDBText
          UserName = 'DBText53'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs11'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 232040
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText111: TppDBText
          UserName = 'DBText54'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs12'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 239713
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText112: TppDBText
          UserName = 'DBText55'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs13'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 247650
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText113: TppDBText
          UserName = 'DBText56'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs14'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 255059
          mmTop = 1058
          mmWidth = 3175
          BandType = 4
        end
        object ppDBText114: TppDBText
          UserName = 'DBText57'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs15'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 262732
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppDBText115: TppDBText
          UserName = 'DBText58'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Rs16'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 270405
          mmTop = 1058
          mmWidth = 5556
          BandType = 4
        end
        object ppLine2: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 137848
          mmTop = 0
          mmWidth = 265
          BandType = 4
        end
        object ppDBText2: TppDBText
          UserName = 'DBText59'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Dif1'
          DataPipeline = ppBDEPipeline2
          DisplayFormat = '#,0.0;-#,0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 139171
          mmTop = 1058
          mmWidth = 3969
          BandType = 4
        end
        object ppDBText3: TppDBText
          UserName = 'DBText60'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Dif'
          DataPipeline = ppBDEPipeline2
          DisplayFormat = '#,0.0;-#,0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3175
          mmLeft = 146315
          mmTop = 1058
          mmWidth = 3969
          BandType = 4
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 144727
          mmTop = 0
          mmWidth = 265
          BandType = 4
        end
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppRegion6: TppRegion
        UserName = 'Region3'
        mmHeight = 16404
        mmLeft = 6615
        mmTop = 0
        mmWidth = 271728
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel52: TppLabel
          UserName = 'Label26'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20633#27880':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 7938
          mmTop = 1588
          mmWidth = 7144
          BandType = 7
        end
        object ppDBText116: TppDBText
          UserName = 'DBText12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'mem'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 12435
          mmLeft = 16404
          mmTop = 1588
          mmWidth = 260615
          BandType = 7
        end
      end
      object ppLabel49: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#34920' : PDD/CAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 18785
        mmWidth = 20638
        BandType = 7
      end
      object ppLabel50: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27491#26412#23384':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 18785
        mmWidth = 10319
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21103#26412#25220#36865' : OA/PPC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 168011
        mmTop = 18785
        mmWidth = 25135
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Cw'
      DataPipeline = ppBDEPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 38365
        mmPrintPosition = 0
        object ppRegion4: TppRegion
          UserName = 'Region1'
          mmHeight = 17727
          mmLeft = 6615
          mmTop = 20902
          mmWidth = 271728
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppShape22: TppShape
            UserName = 'Shape11'
            mmHeight = 10319
            mmLeft = 270140
            mmTop = 20902
            mmWidth = 8202
            BandType = 3
            GroupNo = 0
          end
          object ppShape23: TppShape
            UserName = 'Shape10'
            mmHeight = 10319
            mmLeft = 254530
            mmTop = 20902
            mmWidth = 7673
            BandType = 3
            GroupNo = 0
          end
          object ppShape24: TppShape
            UserName = 'Shape9'
            mmHeight = 10319
            mmLeft = 239184
            mmTop = 20902
            mmWidth = 7938
            BandType = 3
            GroupNo = 0
          end
          object ppShape25: TppShape
            UserName = 'Shape8'
            mmHeight = 10319
            mmLeft = 223573
            mmTop = 20902
            mmWidth = 7938
            BandType = 3
            GroupNo = 0
          end
          object ppShape26: TppShape
            UserName = 'Shape7'
            mmHeight = 10319
            mmLeft = 208227
            mmTop = 20902
            mmWidth = 7938
            BandType = 3
            GroupNo = 0
          end
          object ppShape27: TppShape
            UserName = 'Shape5'
            mmHeight = 10319
            mmLeft = 176477
            mmTop = 20902
            mmWidth = 7938
            BandType = 3
            GroupNo = 0
          end
          object ppShape28: TppShape
            UserName = 'Shape6'
            mmHeight = 10319
            mmLeft = 192352
            mmTop = 20902
            mmWidth = 7938
            BandType = 3
            GroupNo = 0
          end
          object ppShape29: TppShape
            UserName = 'Shape4'
            mmHeight = 10319
            mmLeft = 160338
            mmTop = 20902
            mmWidth = 7938
            BandType = 3
            GroupNo = 0
          end
          object ppShape30: TppShape
            UserName = 'Shape3'
            mmHeight = 17727
            mmLeft = 120915
            mmTop = 20902
            mmWidth = 30956
            BandType = 3
            GroupNo = 0
          end
          object ppShape31: TppShape
            UserName = 'Shape1'
            mmHeight = 17727
            mmLeft = 17992
            mmTop = 20902
            mmWidth = 87842
            BandType = 3
            GroupNo = 0
          end
          object ppLabel31: TppLabel
            UserName = 'Label5'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #20195#34399
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 8996
            mmTop = 28310
            mmWidth = 6350
            BandType = 3
            GroupNo = 0
          end
          object ppLabel33: TppLabel
            UserName = 'Label7'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #37327#24230#20301#32622
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 54240
            mmTop = 28311
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
          end
          object ppShape32: TppShape
            UserName = 'Shape2'
            mmHeight = 17727
            mmLeft = 112448
            mmTop = 20902
            mmWidth = 8731
            BandType = 3
            GroupNo = 0
          end
          object ppLabel34: TppLabel
            UserName = 'Label8'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #37327
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 107421
            mmTop = 21961
            mmWidth = 3175
            BandType = 3
            GroupNo = 0
          end
          object ppLabel35: TppLabel
            UserName = 'Label9'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #24230
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 107421
            mmTop = 25929
            mmWidth = 3175
            BandType = 3
            GroupNo = 0
          end
          object ppLabel36: TppLabel
            UserName = 'Label10'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #21934
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 107421
            mmTop = 29898
            mmWidth = 3175
            BandType = 3
            GroupNo = 0
          end
          object ppLabel37: TppLabel
            UserName = 'Label11'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #20301
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 107421
            mmTop = 33867
            mmWidth = 3175
            BandType = 3
            GroupNo = 0
          end
          object ppLabel39: TppLabel
            UserName = 'Label13'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #37327
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 115359
            mmTop = 21696
            mmWidth = 3175
            BandType = 3
            GroupNo = 0
          end
          object ppLabel40: TppLabel
            UserName = 'Label14'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #24230
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 115359
            mmTop = 25665
            mmWidth = 3175
            BandType = 3
            GroupNo = 0
          end
          object ppLabel41: TppLabel
            UserName = 'Label101'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #26041
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 115359
            mmTop = 29634
            mmWidth = 3175
            BandType = 3
            GroupNo = 0
          end
          object ppLabel42: TppLabel
            UserName = 'Label16'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #27861
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3704
            mmLeft = 115359
            mmTop = 33867
            mmWidth = 3175
            BandType = 3
            GroupNo = 0
          end
          object ppLine3: TppLine
            UserName = 'Line1'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 121179
            mmTop = 26194
            mmWidth = 157163
            BandType = 3
            GroupNo = 0
          end
          object ppLine4: TppLine
            UserName = 'Line2'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 121179
            mmTop = 31221
            mmWidth = 157163
            BandType = 3
            GroupNo = 0
          end
          object ppLabel43: TppLabel
            UserName = 'Label15'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #22283#38555#30908
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 7
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 133879
            mmTop = 22225
            mmWidth = 7938
            BandType = 3
            GroupNo = 0
          end
          object ppLabel45: TppLabel
            UserName = 'Label19'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #23458#26041#30908
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 7
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 133879
            mmTop = 26988
            mmWidth = 7938
            BandType = 3
            GroupNo = 0
          end
          object ppLabel47: TppLabel
            UserName = 'Label21'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #23610#23544#23481#24046
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 7
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 123031
            mmTop = 33602
            mmWidth = 10583
            BandType = 3
            GroupNo = 0
          end
          object ppDBText62: TppDBText
            UserName = 'DBText10'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size1'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 152400
            mmTop = 21960
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText63: TppDBText
            UserName = 'DBText11'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size2'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 160867
            mmTop = 21960
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText64: TppDBText
            UserName = 'DBText14'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz1'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 152400
            mmTop = 26988
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText65: TppDBText
            UserName = 'DBText15'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz2'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 160867
            mmTop = 26988
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText66: TppDBText
            UserName = 'DBText17'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size3'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 169069
            mmTop = 21960
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText67: TppDBText
            UserName = 'DBText18'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz3'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 169069
            mmTop = 26988
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText68: TppDBText
            UserName = 'DBText20'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size4'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 177007
            mmTop = 21960
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText69: TppDBText
            UserName = 'DBText21'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz4'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 177007
            mmTop = 26988
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText70: TppDBText
            UserName = 'DBText23'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size5'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 184944
            mmTop = 21960
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText71: TppDBText
            UserName = 'DBText24'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz5'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 184944
            mmTop = 26988
            mmWidth = 5027
            BandType = 3
            GroupNo = 0
          end
          object ppDBText72: TppDBText
            UserName = 'DBText25'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size6'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 192882
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText73: TppDBText
            UserName = 'DBText26'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz6'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 192882
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText74: TppDBText
            UserName = 'DBText27'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size7'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 200819
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText75: TppDBText
            UserName = 'DBText28'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz7'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 200819
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText76: TppDBText
            UserName = 'DBText29'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size8'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 208757
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText77: TppDBText
            UserName = 'DBText30'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz8'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 208757
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText78: TppDBText
            UserName = 'DBText31'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size9'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 216430
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText79: TppDBText
            UserName = 'DBText32'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz9'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 216430
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText80: TppDBText
            UserName = 'DBText33'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size10'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 224103
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText81: TppDBText
            UserName = 'DBText34'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz10'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 224103
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText82: TppDBText
            UserName = 'DBText35'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size11'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 232040
            mmTop = 21960
            mmWidth = 6615
            BandType = 3
            GroupNo = 0
          end
          object ppDBText83: TppDBText
            UserName = 'DBText36'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz11'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 232040
            mmTop = 26988
            mmWidth = 6615
            BandType = 3
            GroupNo = 0
          end
          object ppDBText84: TppDBText
            UserName = 'DBText37'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size12'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 239713
            mmTop = 21960
            mmWidth = 6615
            BandType = 3
            GroupNo = 0
          end
          object ppDBText85: TppDBText
            UserName = 'DBText38'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz12'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 239713
            mmTop = 26988
            mmWidth = 6615
            BandType = 3
            GroupNo = 0
          end
          object ppDBText86: TppDBText
            UserName = 'DBText39'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size13'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 247650
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText87: TppDBText
            UserName = 'DBText40'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz13'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 247650
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText88: TppDBText
            UserName = 'DBText41'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size14'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 255059
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText89: TppDBText
            UserName = 'DBText42'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz14'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 255059
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText90: TppDBText
            UserName = 'DBText43'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size15'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 262732
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText91: TppDBText
            UserName = 'DBText44'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz15'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 262732
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText92: TppDBText
            UserName = 'DBText45'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Size16'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 270405
            mmTop = 21960
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppDBText93: TppDBText
            UserName = 'DBText46'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Csiz16'
            DataPipeline = ppBDEPipeline2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppBDEPipeline2'
            mmHeight = 3175
            mmLeft = 270405
            mmTop = 26988
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppLabel3: TppLabel
            UserName = 'Label1'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #22238#32302
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 7
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 138642
            mmTop = 33602
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppLine1: TppLine
            UserName = 'Line3'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 6879
            mmLeft = 137848
            mmTop = 31485
            mmWidth = 265
            BandType = 3
            GroupNo = 0
          end
          object ppLabel4: TppLabel
            UserName = 'Label17'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #20854#23427
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Arial'
            Font.Size = 7
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 145786
            mmTop = 33602
            mmWidth = 5292
            BandType = 3
            GroupNo = 0
          end
          object ppLine5: TppLine
            UserName = 'Line5'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 6879
            mmLeft = 144727
            mmTop = 31485
            mmWidth = 265
            BandType = 3
            GroupNo = 0
          end
        end
        object ppLabel28: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27454#34399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 6615
          mmTop = 14552
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
        end
        object ppDBText59: TppDBText
          UserName = 'DBText1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Stylno'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3704
          mmLeft = 15081
          mmTop = 14552
          mmWidth = 35190
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #23458#26041#25209#26680#26085#26399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 87313
          mmTop = 14552
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppDBText60: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'cdate'
          DataPipeline = ppBDEPipeline2
          DisplayFormat = 'yyyy-mm-dd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3704
          mmLeft = 110596
          mmTop = 14552
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #21046#34920#26085#26399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 160338
          mmTop = 14552
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppDBText61: TppDBText
          UserName = 'DBText3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'mdate'
          DataPipeline = ppBDEPipeline2
          DisplayFormat = 'yyyy-mm-dd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3704
          mmLeft = 177271
          mmTop = 14552
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #36554#20301':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 219605
          mmTop = 14552
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText6'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Cw'
          DataPipeline = ppBDEPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3704
          mmLeft = 229394
          mmTop = 14552
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #21046'    '#20316'    '#23610'    '#23544'    '#34920' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 116946
          mmTop = 6350
          mmWidth = 50271
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Table2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_lsize2'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Table2AfterPost
    BeforeDelete = Table2BeforeDelete
    OnNewRecord = table2NewRecord
    Left = 612
    Top = 496
    object Table2Stylno: TStringField
      FieldName = 'Stylno'
    end
    object Table2Projno: TStringField
      FieldName = 'Projno'
    end
    object Table2Jobno: TStringField
      FieldName = 'Jobno'
      Size = 10
    end
    object Table2Size1: TStringField
      FieldName = 'Size1'
      Size = 5
    end
    object Table2Size2: TStringField
      FieldName = 'Size2'
      Size = 5
    end
    object Table2Size3: TStringField
      FieldName = 'Size3'
      Size = 5
    end
    object Table2Size4: TStringField
      FieldName = 'Size4'
      Size = 5
    end
    object Table2Size5: TStringField
      FieldName = 'Size5'
      Size = 5
    end
    object Table2Size6: TStringField
      FieldName = 'Size6'
      Size = 5
    end
    object Table2Size7: TStringField
      FieldName = 'Size7'
      Size = 5
    end
    object Table2Size8: TStringField
      FieldName = 'Size8'
      Size = 5
    end
    object Table2Size9: TStringField
      FieldName = 'Size9'
      Size = 5
    end
    object Table2Size10: TStringField
      FieldName = 'Size10'
      Size = 5
    end
    object Table2Size11: TStringField
      FieldName = 'Size11'
      Size = 5
    end
    object Table2Size12: TStringField
      FieldName = 'Size12'
      Size = 5
    end
    object Table2Size13: TStringField
      FieldName = 'Size13'
      Size = 5
    end
    object Table2Size14: TStringField
      FieldName = 'Size14'
      Size = 5
    end
    object Table2Size15: TStringField
      FieldName = 'Size15'
      Size = 5
    end
    object Table2Size16: TStringField
      FieldName = 'Size16'
      Size = 5
    end
    object Table2Csiz1: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz1'
      Size = 8
    end
    object Table2Csiz2: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz2'
      Size = 8
    end
    object Table2Csiz3: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz3'
      Size = 8
    end
    object Table2Csiz4: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz4'
      Size = 8
    end
    object Table2Csiz5: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz5'
      Size = 8
    end
    object Table2Csiz6: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz6'
      Size = 8
    end
    object Table2Csiz7: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz7'
      Size = 8
    end
    object Table2Csiz8: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz8'
      Size = 8
    end
    object Table2Csiz9: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz9'
      Size = 8
    end
    object Table2Csiz10: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz10'
      Size = 8
    end
    object Table2Csiz11: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz11'
      Size = 8
    end
    object Table2Csiz12: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz12'
      Size = 8
    end
    object Table2Csiz13: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz13'
      Size = 8
    end
    object Table2Csiz14: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz14'
      Size = 8
    end
    object Table2Csiz15: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz15'
      Size = 8
    end
    object Table2Csiz16: TStringField
      DisplayWidth = 8
      FieldName = 'Csiz16'
      Size = 8
    end
    object Table2Size17: TStringField
      FieldName = 'Size17'
      Size = 5
    end
    object Table2Size18: TStringField
      FieldName = 'Size18'
      Size = 5
    end
    object Table2Size19: TStringField
      FieldName = 'Size19'
      Size = 5
    end
    object Table2Size20: TStringField
      FieldName = 'Size20'
      Size = 5
    end
    object Table2Size21: TStringField
      FieldName = 'Size21'
      Size = 5
    end
    object Table2Size22: TStringField
      FieldName = 'Size22'
      Size = 5
    end
    object Table2Size23: TStringField
      FieldName = 'Size23'
      Size = 5
    end
    object Table2Size24: TStringField
      FieldName = 'Size24'
      Size = 5
    end
    object Table2Size25: TStringField
      FieldName = 'Size25'
      Size = 5
    end
    object Table2Size26: TStringField
      FieldName = 'Size26'
      Size = 5
    end
    object Table2Size27: TStringField
      FieldName = 'Size27'
      Size = 5
    end
    object Table2Size28: TStringField
      FieldName = 'Size28'
      Size = 5
    end
    object Table2Size29: TStringField
      FieldName = 'Size29'
      Size = 5
    end
    object Table2Size30: TStringField
      FieldName = 'Size30'
      Size = 5
    end
    object Table2Size31: TStringField
      FieldName = 'Size31'
      Size = 5
    end
    object Table2Size32: TStringField
      FieldName = 'Size32'
      Size = 5
    end
    object Table2Csiz17: TStringField
      FieldName = 'Csiz17'
      Size = 8
    end
    object Table2Csiz18: TStringField
      FieldName = 'Csiz18'
      Size = 8
    end
    object Table2Csiz19: TStringField
      FieldName = 'Csiz19'
      Size = 8
    end
    object Table2Csiz20: TStringField
      FieldName = 'Csiz20'
      Size = 8
    end
    object Table2Csiz21: TStringField
      FieldName = 'Csiz21'
      Size = 8
    end
    object Table2Csiz22: TStringField
      FieldName = 'Csiz22'
      Size = 8
    end
    object Table2Csiz23: TStringField
      FieldName = 'Csiz23'
      Size = 8
    end
    object Table2Csiz24: TStringField
      FieldName = 'Csiz24'
      Size = 8
    end
    object Table2Csiz25: TStringField
      FieldName = 'Csiz25'
      Size = 8
    end
    object Table2Csiz26: TStringField
      FieldName = 'Csiz26'
      Size = 8
    end
    object Table2Csiz27: TStringField
      FieldName = 'Csiz27'
      Size = 8
    end
    object Table2Csiz28: TStringField
      FieldName = 'Csiz28'
      Size = 8
    end
    object Table2Csiz29: TStringField
      FieldName = 'Csiz29'
      Size = 8
    end
    object Table2Csiz30: TStringField
      FieldName = 'Csiz30'
      Size = 8
    end
    object Table2Csiz31: TStringField
      FieldName = 'Csiz31'
      Size = 8
    end
    object Table2Csiz32: TStringField
      FieldName = 'Csiz32'
      Size = 8
    end
    object Table2Size33: TStringField
      FieldName = 'Size33'
      Size = 5
    end
    object Table2Size34: TStringField
      FieldName = 'Size34'
      Size = 5
    end
    object Table2Size35: TStringField
      FieldName = 'Size35'
      Size = 5
    end
    object Table2Size36: TStringField
      FieldName = 'Size36'
      Size = 5
    end
    object Table2Size37: TStringField
      FieldName = 'Size37'
      Size = 5
    end
    object Table2Size38: TStringField
      FieldName = 'Size38'
      Size = 5
    end
    object Table2Size39: TStringField
      FieldName = 'Size39'
      Size = 5
    end
    object Table2Size40: TStringField
      FieldName = 'Size40'
      Size = 5
    end
    object Table2Csiz33: TStringField
      FieldName = 'Csiz33'
      Size = 8
    end
    object Table2Csiz34: TStringField
      FieldName = 'Csiz34'
      Size = 8
    end
    object Table2Csiz35: TStringField
      FieldName = 'Csiz35'
      Size = 8
    end
    object Table2Csiz36: TStringField
      FieldName = 'Csiz36'
      Size = 8
    end
    object Table2Csiz37: TStringField
      FieldName = 'Csiz37'
      Size = 8
    end
    object Table2Csiz38: TStringField
      FieldName = 'Csiz38'
      Size = 8
    end
    object Table2Csiz39: TStringField
      FieldName = 'Csiz39'
      Size = 8
    end
    object Table2Csiz40: TStringField
      FieldName = 'Csiz40'
      Size = 8
    end
    object Table2size41: TStringField
      FieldName = 'size41'
      Size = 5
    end
    object Table2size42: TStringField
      FieldName = 'size42'
      Size = 5
    end
    object Table2size43: TStringField
      FieldName = 'size43'
      Size = 5
    end
    object Table2size44: TStringField
      FieldName = 'size44'
      Size = 5
    end
    object Table2size45: TStringField
      FieldName = 'size45'
      Size = 5
    end
    object Table2size46: TStringField
      FieldName = 'size46'
      Size = 5
    end
    object Table2size47: TStringField
      FieldName = 'size47'
      Size = 5
    end
    object Table2size48: TStringField
      FieldName = 'size48'
      Size = 5
    end
    object Table2size49: TStringField
      FieldName = 'size49'
      Size = 5
    end
    object Table2size50: TStringField
      FieldName = 'size50'
      Size = 5
    end
    object Table2size51: TStringField
      FieldName = 'size51'
      Size = 5
    end
    object Table2size52: TStringField
      FieldName = 'size52'
      Size = 5
    end
    object Table2csiz41: TStringField
      FieldName = 'csiz41'
      Size = 8
    end
    object Table2csiz42: TStringField
      FieldName = 'csiz42'
      Size = 8
    end
    object Table2csiz43: TStringField
      FieldName = 'csiz43'
      Size = 8
    end
    object Table2csiz44: TStringField
      FieldName = 'csiz44'
      Size = 8
    end
    object Table2csiz45: TStringField
      FieldName = 'csiz45'
      Size = 8
    end
    object Table2csiz46: TStringField
      FieldName = 'csiz46'
      Size = 8
    end
    object Table2csiz47: TStringField
      FieldName = 'csiz47'
      Size = 8
    end
    object Table2csiz48: TStringField
      FieldName = 'csiz48'
      Size = 8
    end
    object Table2csiz49: TStringField
      FieldName = 'csiz49'
      Size = 8
    end
    object Table2csiz50: TStringField
      FieldName = 'csiz50'
      Size = 8
    end
    object Table2csiz51: TStringField
      FieldName = 'csiz51'
      Size = 8
    end
    object Table2csiz52: TStringField
      FieldName = 'csiz52'
      Size = 8
    end
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_lsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Table1AfterPost
    OnNewRecord = Table1NewRecord
    Left = 556
    Top = 496
    object Table1Stylno: TStringField
      FieldName = 'Stylno'
    end
    object Table1Cdate: TDateTimeField
      FieldName = 'Cdate'
    end
    object Table1Mdate: TDateTimeField
      FieldName = 'Mdate'
    end
    object Table1Mem: TMemoField
      FieldName = 'Mem'
      BlobType = ftMemo
      Size = 1
    end
    object Table1uom: TStringField
      FieldName = 'uom'
      Size = 4
    end
    object Table1cust: TStringField
      FieldName = 'cust'
      Size = 10
    end
    object Table1cstyle: TStringField
      FieldName = 'cstyle'
      Size = 35
    end
    object Table1status: TStringField
      FieldName = 'status'
      Size = 15
    end
    object Table1comp: TStringField
      FieldName = 'comp'
    end
    object Table1phstyle: TStringField
      FieldName = 'phstyle'
      Size = 250
    end
    object Table1styleno1: TStringField
      FieldName = 'styleno1'
      Size = 200
    end
  end
  object Table3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_lsize1'
    FieldDefs = <
      item
        Name = 'Stylno'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cde'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Projno'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Jobno'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Cmeas'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Emeas'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Uom'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Methd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tolerence'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Rst1'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst2'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst3'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst4'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst5'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst6'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst7'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst8'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst9'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst10'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst11'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst12'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst13'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst14'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst15'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst16'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Flg1'
        DataType = ftBoolean
      end
      item
        Name = 'Emethd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Rst17'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst18'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst19'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst20'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst21'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst22'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst23'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst24'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst25'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst26'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst27'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst28'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst29'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst30'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst31'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst32'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Tmeas'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tmethd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Rst33'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst34'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst35'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst36'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst37'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst38'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst39'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst40'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst41'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst42'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst43'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst44'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst45'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst46'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst47'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst48'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst49'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst50'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst51'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst52'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'mcd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'parts'
        DataType = ftBoolean
      end
      item
        Name = 'operation'
        DataType = ftBoolean
      end
      item
        Name = 'garment'
        DataType = ftBoolean
      end
      item
        Name = 'parts_d'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'parts_d1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'opt'
        DataType = ftBoolean
      end
      item
        Name = 'crdt'
        DataType = ftDateTime
      end
      item
        Name = 'dt_plus'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'cde;id'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Table3AfterPost
    BeforeDelete = Table3BeforeDelete
    OnNewRecord = table3NewRecord
    Left = 668
    Top = 496
    object Table3Id: TIntegerField
      FieldName = 'Id'
    end
    object Table3Stylno: TStringField
      FieldName = 'Stylno'
    end
    object Table3Cde: TStringField
      FieldName = 'Cde'
      OnChange = Table3CdeChange
      OnSetText = Table3CdeSetText
      Size = 6
    end
    object Table3Projno: TStringField
      FieldName = 'Projno'
    end
    object Table3Jobno: TStringField
      FieldName = 'Jobno'
      Size = 10
    end
    object Table3Cmeas: TStringField
      FieldName = 'Cmeas'
      Size = 50
    end
    object Table3Emeas: TStringField
      FieldName = 'Emeas'
      Size = 100
    end
    object Table3Uom: TStringField
      FieldName = 'Uom'
      Size = 4
    end
    object Table3Methd: TStringField
      FieldName = 'Methd'
      OnChange = Table3MethdChange
      Size = 6
    end
    object Table3Tolerence: TStringField
      DisplayWidth = 30
      FieldName = 'Tolerence'
      Size = 30
    end
    object Table3Rst1: TStringField
      FieldName = 'Rst1'
      Size = 8
    end
    object Table3Rst2: TStringField
      FieldName = 'Rst2'
      Size = 8
    end
    object Table3Rst3: TStringField
      FieldName = 'Rst3'
      Size = 8
    end
    object Table3Rst4: TStringField
      FieldName = 'Rst4'
      Size = 8
    end
    object Table3Rst5: TStringField
      FieldName = 'Rst5'
      Size = 8
    end
    object Table3Rst6: TStringField
      FieldName = 'Rst6'
      Size = 8
    end
    object Table3Rst7: TStringField
      FieldName = 'Rst7'
      Size = 8
    end
    object Table3Rst8: TStringField
      FieldName = 'Rst8'
      Size = 8
    end
    object Table3Rst9: TStringField
      FieldName = 'Rst9'
      Size = 8
    end
    object Table3Rst10: TStringField
      FieldName = 'Rst10'
      Size = 8
    end
    object Table3Rst11: TStringField
      FieldName = 'Rst11'
      Size = 8
    end
    object Table3Rst12: TStringField
      FieldName = 'Rst12'
      Size = 8
    end
    object Table3Rst13: TStringField
      FieldName = 'Rst13'
      Size = 8
    end
    object Table3Rst14: TStringField
      FieldName = 'Rst14'
      Size = 8
    end
    object Table3Rst15: TStringField
      FieldName = 'Rst15'
      Size = 8
    end
    object Table3Rst16: TStringField
      FieldName = 'Rst16'
      Size = 8
    end
    object Table3Flg1: TBooleanField
      FieldName = 'Flg1'
    end
    object Table3Emethd: TStringField
      FieldName = 'Emethd'
      Size = 10
    end
    object Table3Rst17: TStringField
      FieldName = 'Rst17'
      Size = 8
    end
    object Table3Rst18: TStringField
      FieldName = 'Rst18'
      Size = 8
    end
    object Table3Rst19: TStringField
      FieldName = 'Rst19'
      Size = 8
    end
    object Table3Rst20: TStringField
      FieldName = 'Rst20'
      Size = 8
    end
    object Table3Rst21: TStringField
      FieldName = 'Rst21'
      Size = 8
    end
    object Table3Rst22: TStringField
      FieldName = 'Rst22'
      Size = 8
    end
    object Table3Rst23: TStringField
      FieldName = 'Rst23'
      Size = 8
    end
    object Table3Rst24: TStringField
      FieldName = 'Rst24'
      Size = 8
    end
    object Table3Rst25: TStringField
      FieldName = 'Rst25'
      Size = 8
    end
    object Table3Rst26: TStringField
      FieldName = 'Rst26'
      Size = 8
    end
    object Table3Rst27: TStringField
      FieldName = 'Rst27'
      Size = 8
    end
    object Table3Rst28: TStringField
      FieldName = 'Rst28'
      Size = 8
    end
    object Table3Rst29: TStringField
      FieldName = 'Rst29'
      Size = 8
    end
    object Table3Rst30: TStringField
      FieldName = 'Rst30'
      Size = 8
    end
    object Table3Rst31: TStringField
      FieldName = 'Rst31'
      Size = 8
    end
    object Table3Rst32: TStringField
      FieldName = 'Rst32'
      Size = 8
    end
    object Table3Tmeas: TStringField
      FieldName = 'Tmeas'
      Size = 60
    end
    object Table3Tmethd: TStringField
      FieldName = 'Tmethd'
      Size = 10
    end
    object Table3Rst33: TStringField
      FieldName = 'Rst33'
      Size = 8
    end
    object Table3Rst34: TStringField
      FieldName = 'Rst34'
      Size = 8
    end
    object Table3Rst35: TStringField
      FieldName = 'Rst35'
      Size = 8
    end
    object Table3Rst36: TStringField
      FieldName = 'Rst36'
      Size = 8
    end
    object Table3Rst37: TStringField
      FieldName = 'Rst37'
      Size = 8
    end
    object Table3Rst38: TStringField
      FieldName = 'Rst38'
      Size = 8
    end
    object Table3Rst39: TStringField
      FieldName = 'Rst39'
      Size = 8
    end
    object Table3Rst40: TStringField
      FieldName = 'Rst40'
      Size = 8
    end
    object Table3rst41: TStringField
      FieldName = 'rst41'
      Size = 8
    end
    object Table3rst42: TStringField
      FieldName = 'rst42'
      Size = 8
    end
    object Table3rst43: TStringField
      FieldName = 'rst43'
      Size = 8
    end
    object Table3rst44: TStringField
      FieldName = 'rst44'
      Size = 8
    end
    object Table3rst45: TStringField
      FieldName = 'rst45'
      Size = 8
    end
    object Table3rst46: TStringField
      FieldName = 'rst46'
      Size = 8
    end
    object Table3rst47: TStringField
      FieldName = 'rst47'
      Size = 8
    end
    object Table3rst48: TStringField
      FieldName = 'rst48'
      Size = 8
    end
    object Table3rst49: TStringField
      FieldName = 'rst49'
      Size = 8
    end
    object Table3rst50: TStringField
      FieldName = 'rst50'
      Size = 8
    end
    object Table3rst51: TStringField
      FieldName = 'rst51'
      Size = 8
    end
    object Table3rst52: TStringField
      FieldName = 'rst52'
      Size = 8
    end
    object Table3mcd: TStringField
      FieldName = 'mcd'
      Size = 10
    end
    object Table3parts: TBooleanField
      FieldName = 'parts'
    end
    object Table3operation: TBooleanField
      FieldName = 'operation'
    end
    object Table3garment: TBooleanField
      FieldName = 'garment'
    end
    object Table3parts_d: TStringField
      FieldName = 'parts_d'
      Size = 50
    end
    object Table3parts_d1: TStringField
      FieldName = 'parts_d1'
      Size = 30
    end
    object Table3opt: TBooleanField
      FieldName = 'opt'
    end
    object Table3crdt: TDateTimeField
      FieldName = 'crdt'
    end
    object Table3dt_plus: TStringField
      FieldName = 'dt_plus'
      Size = 5
    end
  end
  object Table4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_prdsize'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'Table4Index1'
        Fields = 'cde;id;rid'
      end>
    IndexName = 'Table4Index1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Table4AfterPost
    BeforeDelete = Table4BeforeDelete
    OnNewRecord = table4NewRecord
    Left = 672
    Top = 528
    object Table4Rid: TIntegerField
      FieldName = 'Rid'
    end
    object Table4Stylno: TStringField
      FieldName = 'Stylno'
    end
    object Table4Jobno: TStringField
      FieldName = 'Jobno'
      Size = 10
    end
    object Table4Cde: TStringField
      FieldName = 'Cde'
      Size = 5
    end
    object Table4Id: TIntegerField
      FieldName = 'Id'
    end
    object Table4Projno: TStringField
      FieldName = 'Projno'
    end
    object Table4Cmeas: TStringField
      FieldName = 'Cmeas'
      Size = 50
    end
    object Table4Emeas: TStringField
      FieldName = 'Emeas'
      Size = 60
    end
    object Table4Uom: TStringField
      FieldName = 'Uom'
      Size = 4
    end
    object Table4Methd: TStringField
      FieldName = 'Methd'
      Size = 6
    end
    object Table4Tolerence: TStringField
      FieldName = 'Tolerence'
      Size = 10
    end
    object Table4Rst1: TStringField
      FieldName = 'Rst1'
      Size = 6
    end
    object Table4Rst2: TStringField
      FieldName = 'Rst2'
      Size = 6
    end
    object Table4Rst3: TStringField
      FieldName = 'Rst3'
      Size = 6
    end
    object Table4Rst4: TStringField
      FieldName = 'Rst4'
      Size = 6
    end
    object Table4Rst5: TStringField
      FieldName = 'Rst5'
      Size = 6
    end
    object Table4Rst6: TStringField
      FieldName = 'Rst6'
      Size = 6
    end
    object Table4Rst7: TStringField
      FieldName = 'Rst7'
      Size = 6
    end
    object Table4Rst8: TStringField
      FieldName = 'Rst8'
      Size = 6
    end
    object Table4Rst9: TStringField
      FieldName = 'Rst9'
      Size = 6
    end
    object Table4Rst10: TStringField
      FieldName = 'Rst10'
      Size = 6
    end
    object Table4Rst11: TStringField
      FieldName = 'Rst11'
      Size = 6
    end
    object Table4Rst12: TStringField
      FieldName = 'Rst12'
      Size = 6
    end
    object Table4Rst13: TStringField
      FieldName = 'Rst13'
      Size = 6
    end
    object Table4Rst14: TStringField
      FieldName = 'Rst14'
      Size = 6
    end
    object Table4Rst15: TStringField
      FieldName = 'Rst15'
      Size = 6
    end
    object Table4Rst16: TStringField
      FieldName = 'Rst16'
      Size = 6
    end
    object Table4Flg1: TBooleanField
      FieldName = 'Flg1'
    end
    object Table4Emethd: TStringField
      FieldName = 'Emethd'
      Size = 10
    end
    object Table4Cw: TStringField
      FieldName = 'Cw'
      Size = 15
    end
    object Table4Cs: TIntegerField
      FieldName = 'Cs'
    end
    object Table4Dif: TFloatField
      FieldName = 'Dif'
      OnChange = Table4DifChange
    end
    object Table4Rs1: TStringField
      FieldName = 'Rs1'
      Size = 6
    end
    object Table4Rs2: TStringField
      FieldName = 'Rs2'
      Size = 6
    end
    object Table4Rs3: TStringField
      FieldName = 'Rs3'
      Size = 6
    end
    object Table4Rs4: TStringField
      FieldName = 'Rs4'
      Size = 6
    end
    object Table4Rs5: TStringField
      FieldName = 'Rs5'
      Size = 6
    end
    object Table4Rs6: TStringField
      FieldName = 'Rs6'
      Size = 6
    end
    object Table4Rs7: TStringField
      FieldName = 'Rs7'
      Size = 6
    end
    object Table4Rs8: TStringField
      FieldName = 'Rs8'
      Size = 6
    end
    object Table4Rs9: TStringField
      FieldName = 'Rs9'
      Size = 6
    end
    object Table4Rs10: TStringField
      FieldName = 'Rs10'
      Size = 6
    end
    object Table4Rs11: TStringField
      FieldName = 'Rs11'
      Size = 6
    end
    object Table4Rs12: TStringField
      FieldName = 'Rs12'
      Size = 6
    end
    object Table4Rs13: TStringField
      FieldName = 'Rs13'
      Size = 6
    end
    object Table4Rs14: TStringField
      FieldName = 'Rs14'
      Size = 6
    end
    object Table4Rs15: TStringField
      FieldName = 'Rs15'
      Size = 6
    end
    object Table4Rs16: TStringField
      FieldName = 'Rs16'
      Size = 6
    end
    object Table4Dif1: TFloatField
      FieldName = 'Dif1'
    end
    object Table4Rst17: TStringField
      FieldName = 'Rst17'
      Size = 6
    end
    object Table4Rst18: TStringField
      FieldName = 'Rst18'
      Size = 6
    end
    object Table4Rst19: TStringField
      FieldName = 'Rst19'
      Size = 6
    end
    object Table4Rst20: TStringField
      FieldName = 'Rst20'
      Size = 6
    end
    object Table4Rst21: TStringField
      FieldName = 'Rst21'
      Size = 6
    end
    object Table4Rst22: TStringField
      FieldName = 'Rst22'
      Size = 6
    end
    object Table4Rst23: TStringField
      FieldName = 'Rst23'
      Size = 6
    end
    object Table4Rst24: TStringField
      FieldName = 'Rst24'
      Size = 6
    end
    object Table4Rst25: TStringField
      FieldName = 'Rst25'
      Size = 6
    end
    object Table4Rst26: TStringField
      FieldName = 'Rst26'
      Size = 6
    end
    object Table4Rst27: TStringField
      FieldName = 'Rst27'
      Size = 6
    end
    object Table4Rst28: TStringField
      FieldName = 'Rst28'
      Size = 6
    end
    object Table4Rst29: TStringField
      FieldName = 'Rst29'
      Size = 6
    end
    object Table4Rst30: TStringField
      FieldName = 'Rst30'
      Size = 6
    end
    object Table4Rst31: TStringField
      FieldName = 'Rst31'
      Size = 6
    end
    object Table4Rst32: TStringField
      FieldName = 'Rst32'
      Size = 6
    end
    object Table4Rs17: TStringField
      FieldName = 'Rs17'
      Size = 6
    end
    object Table4Rs18: TStringField
      FieldName = 'Rs18'
      Size = 6
    end
    object Table4Rs19: TStringField
      FieldName = 'Rs19'
      Size = 6
    end
    object Table4Rs20: TStringField
      FieldName = 'Rs20'
      Size = 6
    end
    object Table4Rs21: TStringField
      FieldName = 'Rs21'
      Size = 6
    end
    object Table4Rs22: TStringField
      FieldName = 'Rs22'
      Size = 6
    end
    object Table4Rs23: TStringField
      FieldName = 'Rs23'
      Size = 6
    end
    object Table4Rs24: TStringField
      FieldName = 'Rs24'
      Size = 6
    end
    object Table4Rs25: TStringField
      FieldName = 'Rs25'
      Size = 6
    end
    object Table4Rs26: TStringField
      FieldName = 'Rs26'
      Size = 6
    end
    object Table4Rs27: TStringField
      FieldName = 'Rs27'
      Size = 6
    end
    object Table4Rs28: TStringField
      FieldName = 'Rs28'
      Size = 6
    end
    object Table4Rs29: TStringField
      FieldName = 'Rs29'
      Size = 6
    end
    object Table4Rs30: TStringField
      FieldName = 'Rs30'
      Size = 6
    end
    object Table4Rs31: TStringField
      FieldName = 'Rs31'
      Size = 6
    end
    object Table4Rs32: TStringField
      FieldName = 'Rs32'
      Size = 6
    end
    object Table4Rst33: TStringField
      FieldName = 'Rst33'
      Size = 6
    end
    object Table4Rst34: TStringField
      FieldName = 'Rst34'
      Size = 6
    end
    object Table4Rst35: TStringField
      FieldName = 'Rst35'
      Size = 6
    end
    object Table4Rst36: TStringField
      FieldName = 'Rst36'
      Size = 6
    end
    object Table4Rst37: TStringField
      FieldName = 'Rst37'
      Size = 6
    end
    object Table4Rst38: TStringField
      FieldName = 'Rst38'
      Size = 6
    end
    object Table4Rst39: TStringField
      FieldName = 'Rst39'
      Size = 6
    end
    object Table4Rst40: TStringField
      FieldName = 'Rst40'
      Size = 6
    end
    object Table4Rs33: TStringField
      FieldName = 'Rs33'
      Size = 6
    end
    object Table4Rs34: TStringField
      FieldName = 'Rs34'
      Size = 6
    end
    object Table4Rs35: TStringField
      FieldName = 'Rs35'
      Size = 6
    end
    object Table4Rs36: TStringField
      FieldName = 'Rs36'
      Size = 6
    end
    object Table4Rs37: TStringField
      FieldName = 'Rs37'
      Size = 6
    end
    object Table4Rs38: TStringField
      FieldName = 'Rs38'
      Size = 6
    end
    object Table4Rs39: TStringField
      FieldName = 'Rs39'
      Size = 6
    end
    object Table4Rs40: TStringField
      FieldName = 'Rs40'
      Size = 6
    end
  end
  object Query7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 444
    Top = 496
  end
  object Query8: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 732
    Top = 528
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 444
    Top = 528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 612
    Top = 528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 540
    Top = 528
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 508
    Top = 528
  end
  object Query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 476
    Top = 528
  end
  object bastbl: TClientDataSet
    Aggregates = <>
    CommandText = 'select distinct cde from SZ_bastbl'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 643
    Top = 528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 580
    Top = 528
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel file (*.xls)|*.xls|Any file (*.*)|*.*'
    Left = 796
    Top = 496
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_lsize1'
    FieldDefs = <
      item
        Name = 'Stylno'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cde'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Projno'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Jobno'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Cmeas'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Emeas'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Uom'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Methd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tolerence'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Rst1'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst2'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst3'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst4'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst5'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst6'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst7'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst8'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst9'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst10'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst11'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst12'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst13'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst14'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst15'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst16'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Flg1'
        DataType = ftBoolean
      end
      item
        Name = 'Emethd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Rst17'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst18'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst19'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst20'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst21'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst22'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst23'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst24'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst25'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst26'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst27'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst28'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst29'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst30'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst31'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst32'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Tmeas'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tmethd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Rst33'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst34'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst35'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst36'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst37'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst38'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst39'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Rst40'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst41'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst42'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst43'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst44'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst45'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst46'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst47'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst48'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst49'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst50'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst51'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'rst52'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'mcd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'parts'
        DataType = ftBoolean
      end
      item
        Name = 'operation'
        DataType = ftBoolean
      end
      item
        Name = 'garment'
        DataType = ftBoolean
      end
      item
        Name = 'parts_d'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'parts_d1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'opt'
        DataType = ftBoolean
      end
      item
        Name = 'crdt'
        DataType = ftDateTime
      end
      item
        Name = 'dt_plus'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'jobno;cde;id'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 732
    Top = 496
  end
  object DataSource6: TDataSource
    DataSet = ClientDataSet1
    Left = 760
    Top = 496
  end
  object qry_appr: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_lappr'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = qry_apprAfterPost
    Left = 444
    Top = 408
    object qry_apprStylno: TStringField
      FieldName = 'Stylno'
    end
    object qry_apprUser1: TStringField
      FieldName = 'User1'
      Size = 15
    end
    object qry_apprdt1: TDateTimeField
      FieldName = 'dt1'
    end
    object qry_apprUser2: TStringField
      FieldName = 'User2'
      Size = 15
    end
    object qry_apprdt2: TDateTimeField
      FieldName = 'dt2'
    end
    object qry_apprUser3: TStringField
      FieldName = 'User3'
      Size = 15
    end
    object qry_apprdt3: TDateTimeField
      FieldName = 'dt3'
    end
    object qry_apprUser4: TStringField
      FieldName = 'User4'
      Size = 15
    end
    object qry_apprdt4: TDateTimeField
      FieldName = 'dt4'
    end
    object qry_apprUser5: TStringField
      FieldName = 'User5'
      Size = 15
    end
    object qry_apprdt5: TDateTimeField
      FieldName = 'dt5'
    end
    object qry_apprUser6: TStringField
      FieldName = 'User6'
      Size = 15
    end
    object qry_apprdt6: TDateTimeField
      FieldName = 'dt6'
    end
    object qry_apprUser7: TStringField
      FieldName = 'User7'
      Size = 15
    end
    object qry_apprdt7: TDateTimeField
      FieldName = 'dt7'
    end
    object qry_apprimg: TStringField
      FieldName = 'img'
      Size = 200
    end
  end
  object DataSource7: TDataSource
    DataSet = qry_appr
    Left = 488
    Top = 408
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 344
    object N1: TMenuItem
      Caption = #24453#30906#35469#21015#34920
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #21462#28040#22294#29255
      ShortCut = 49228
      Visible = False
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #20462#25913#27454#34399
      ShortCut = 24653
      Visible = False
      OnClick = N3Click
    end
  end
  object pm1: TPopupMenu
    Left = 200
    Top = 272
    object ExportEnglishDescription1: TMenuItem
      Caption = #23566#20986#33521#25991#37327#24230#20301#32622
      OnClick = ExportEnglishDescription1Click
    end
  end
end
