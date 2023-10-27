object frmsampletbl: Tfrmsampletbl
  Left = -1
  Top = -11
  BorderIcons = [biSystemMenu]
  Caption = 'Sample Size Measurement Table('#36774#23610#23544#34920')'
  ClientHeight = 570
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 570
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
      Caption = #36774#23610#23544#34920
      OnExit = TabSheet1Exit
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 52
        Height = 13
        Caption = #23458#25142#21517#31281
      end
      object Label2: TLabel
        Left = 280
        Top = 32
        Width = 52
        Height = 13
        Caption = #23458#26041#27454#34399
      end
      object Label3: TLabel
        Left = 24
        Top = 64
        Width = 39
        Height = 13
        Caption = #24037#31243#34399
      end
      object Label4: TLabel
        Left = 280
        Top = 64
        Width = 39
        Height = 13
        Caption = #21046#21934#34399
      end
      object Label6: TLabel
        Left = 536
        Top = 32
        Width = 52
        Height = 13
        Caption = #21046#34920#26085#26399
      end
      object Label7: TLabel
        Left = 24
        Top = 120
        Width = 26
        Height = 13
        Caption = #20633#27880
      end
      object SpeedButton1: TSpeedButton
        Left = 174
        Top = 504
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
        Top = 504
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
        Left = 264
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
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 294
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
      object SpeedButton6: TSpeedButton
        Left = 234
        Top = 504
        Width = 30
        Height = 30
        Hint = #35079#21046
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
        OnClick = SpeedButton6Click
      end
      object Label10: TLabel
        Left = 382
        Top = 512
        Width = 29
        Height = 13
        Caption = #23450#20301':'
      end
      object Label5: TLabel
        Left = 536
        Top = 60
        Width = 26
        Height = 13
        Caption = #27454#34399
      end
      object DBEdit1: TDBEdit
        Left = 78
        Top = 28
        Width = 171
        Height = 21
        DataField = 'Custn'
        DataSource = DataSource1
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 334
        Top = 28
        Width = 163
        Height = 21
        DataField = 'Cstyl'
        DataSource = DataSource1
        TabOrder = 1
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 78
        Top = 60
        Width = 139
        Height = 21
        DataField = 'Projno'
        DataSource = DataSource1
        TabOrder = 3
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 334
        Top = 60
        Width = 107
        Height = 21
        DataField = 'Jobno'
        DataSource = DataSource1
        TabOrder = 4
        OnKeyPress = DBEdit4KeyPress
      end
      object DBCheckBox1: TDBCheckBox
        Left = 80
        Top = 93
        Width = 97
        Height = 17
        Caption = #23458#25142#25552#20379
        DataField = 'Cprov'
        DataSource = DataSource1
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 392
        Top = 93
        Width = 97
        Height = 17
        Caption = 'P.H.'#25552#20379
        DataField = 'Pprov'
        DataSource = DataSource1
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBGridEh1: TDBGridEh
        Left = 24
        Top = 192
        Width = 737
        Height = 297
        Color = 11927551
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #26032#32048#26126#39636
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        RowDetailPanel.Color = clBtnFace
        TabOrder = 7
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #26032#32048#26126#39636
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Custn'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #23458#25142#21517#31281
            Width = 193
          end
          item
            EditButtons = <>
            FieldName = 'Cstyl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #23458#26041#27454#34399
          end
          item
            EditButtons = <>
            FieldName = 'Projno'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24037#31243#34399
          end
          item
            EditButtons = <>
            FieldName = 'Jobno'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21046#21934#34399
          end
          item
            EditButtons = <>
            FieldName = 'Stylno'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #27454#34399
          end
          item
            EditButtons = <>
            FieldName = 'Mdate'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21046#34920#26085#26399
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBMemo1: TDBMemo
        Left = 64
        Top = 120
        Width = 697
        Height = 65
        DataField = 'Mem'
        DataSource = DataSource1
        TabOrder = 8
      end
      object Edit1: TEdit
        Left = 416
        Top = 509
        Width = 161
        Height = 21
        TabOrder = 9
        OnChange = Edit1Change
      end
      object DBEdit5: TDBEdit
        Left = 590
        Top = 56
        Width = 171
        Height = 21
        DataField = 'Stylno'
        DataSource = DataSource1
        TabOrder = 11
        OnKeyPress = DBEdit5KeyPress
      end
      object DBNavigator1: TDBNavigator
        Left = 29
        Top = 504
        Width = 145
        Height = 30
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object wwDBDateTimePicker1: TcxDBDateEdit
        Left = 590
        Top = 28
        DataBinding.DataField = 'Mdate'
        DataBinding.DataSource = DataSource1
        TabOrder = 2
        OnKeyPress = wwDBDateTimePicker1KeyPress
        Width = 121
      end
    end
    object TabSheet2: TTabSheet
      Caption = #37327#24230#23610#30908
      ImageIndex = 1
      OnExit = TabSheet2Exit
      object Label8: TLabel
        Left = 32
        Top = 24
        Width = 26
        Height = 13
        Caption = #27454#34399
      end
      object SpeedButton13: TSpeedButton
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
        OnClick = SpeedButton12Click
      end
      object GroupBox1: TGroupBox
        Left = 24
        Top = 56
        Width = 745
        Height = 193
        Caption = #22283#38555#30908
        TabOrder = 0
        object DBEdit6: TDBEdit
          Left = 30
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size1'
          DataSource = DataSource2
          TabOrder = 0
          OnDblClick = DBEdit6DblClick
          OnKeyPress = DBEdit6KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 110
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size2'
          DataSource = DataSource2
          TabOrder = 1
          OnDblClick = DBEdit7DblClick
          OnKeyPress = DBEdit7KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 190
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size3'
          DataSource = DataSource2
          TabOrder = 2
          OnDblClick = DBEdit8DblClick
          OnKeyPress = DBEdit8KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 270
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size4'
          DataSource = DataSource2
          TabOrder = 3
          OnDblClick = DBEdit9DblClick
          OnKeyPress = DBEdit9KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 350
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size5'
          DataSource = DataSource2
          TabOrder = 4
          OnDblClick = DBEdit10DblClick
          OnKeyPress = DBEdit10KeyPress
        end
        object DBEdit11: TDBEdit
          Left = 430
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size6'
          DataSource = DataSource2
          TabOrder = 5
          OnDblClick = DBEdit11DblClick
          OnKeyPress = DBEdit11KeyPress
        end
        object DBEdit20: TDBEdit
          Left = 510
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size7'
          DataSource = DataSource2
          TabOrder = 6
          OnDblClick = DBEdit20DblClick
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit21: TDBEdit
          Left = 590
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size8'
          DataSource = DataSource2
          TabOrder = 7
          OnDblClick = DBEdit21DblClick
          OnKeyPress = DBEdit21KeyPress
        end
        object DBEdit22: TDBEdit
          Left = 670
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Size9'
          DataSource = DataSource2
          TabOrder = 8
          OnDblClick = DBEdit22DblClick
          OnKeyPress = DBEdit22KeyPress
        end
        object DBEdit23: TDBEdit
          Left = 30
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size10'
          DataSource = DataSource2
          TabOrder = 9
          OnDblClick = DBEdit23DblClick
          OnKeyPress = DBEdit23KeyPress
        end
        object DBEdit24: TDBEdit
          Left = 110
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size11'
          DataSource = DataSource2
          TabOrder = 10
          OnDblClick = DBEdit24DblClick
          OnKeyPress = DBEdit24KeyPress
        end
        object DBEdit25: TDBEdit
          Left = 190
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size12'
          DataSource = DataSource2
          TabOrder = 11
          OnDblClick = DBEdit25DblClick
          OnKeyPress = DBEdit25KeyPress
        end
        object DBEdit32: TDBEdit
          Left = 270
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size13'
          DataSource = DataSource2
          TabOrder = 12
          OnDblClick = DBEdit32DblClick
          OnKeyPress = DBEdit32KeyPress
        end
        object DBEdit33: TDBEdit
          Left = 350
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size14'
          DataSource = DataSource2
          TabOrder = 13
          OnDblClick = DBEdit33DblClick
          OnKeyPress = DBEdit33KeyPress
        end
        object DBEdit34: TDBEdit
          Left = 430
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size15'
          DataSource = DataSource2
          TabOrder = 14
          OnDblClick = DBEdit34DblClick
          OnKeyPress = DBEdit34KeyPress
        end
        object DBEdit35: TDBEdit
          Left = 510
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size16'
          DataSource = DataSource2
          TabOrder = 15
          OnDblClick = DBEdit35DblClick
          OnKeyPress = DBEdit35KeyPress
        end
        object DBEdit36: TDBEdit
          Left = 590
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size17'
          DataSource = DataSource2
          TabOrder = 16
          OnDblClick = DBEdit36DblClick
          OnKeyPress = DBEdit36KeyPress
        end
        object DBEdit37: TDBEdit
          Left = 670
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Size18'
          DataSource = DataSource2
          TabOrder = 17
          OnDblClick = DBEdit37DblClick
          OnKeyPress = DBEdit37KeyPress
        end
        object DBEdit38: TDBEdit
          Left = 30
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size19'
          DataSource = DataSource2
          TabOrder = 18
          OnDblClick = DBEdit38DblClick
          OnKeyPress = DBEdit38KeyPress
        end
        object DBEdit39: TDBEdit
          Left = 110
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size20'
          DataSource = DataSource2
          TabOrder = 19
          OnDblClick = DBEdit39DblClick
          OnKeyPress = DBEdit39KeyPress
        end
        object DBEdit40: TDBEdit
          Left = 190
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size21'
          DataSource = DataSource2
          TabOrder = 20
          OnDblClick = DBEdit40DblClick
          OnKeyPress = DBEdit40KeyPress
        end
        object DBEdit41: TDBEdit
          Left = 270
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size22'
          DataSource = DataSource2
          TabOrder = 21
          OnDblClick = DBEdit41DblClick
          OnKeyPress = DBEdit41KeyPress
        end
        object DBEdit42: TDBEdit
          Left = 350
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size23'
          DataSource = DataSource2
          TabOrder = 22
          OnDblClick = DBEdit42DblClick
          OnKeyPress = DBEdit42KeyPress
        end
        object DBEdit43: TDBEdit
          Left = 430
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size24'
          DataSource = DataSource2
          TabOrder = 23
          OnDblClick = DBEdit43DblClick
          OnKeyPress = DBEdit43KeyPress
        end
        object DBEdit56: TDBEdit
          Left = 510
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size25'
          DataSource = DataSource2
          TabOrder = 24
          OnDblClick = DBEdit56DblClick
          OnKeyPress = DBEdit56KeyPress
        end
        object DBEdit57: TDBEdit
          Left = 590
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size26'
          DataSource = DataSource2
          TabOrder = 25
          OnDblClick = DBEdit57DblClick
          OnKeyPress = DBEdit57KeyPress
        end
        object DBEdit58: TDBEdit
          Left = 670
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Size27'
          DataSource = DataSource2
          TabOrder = 26
          OnDblClick = DBEdit58DblClick
          OnKeyPress = DBEdit58KeyPress
        end
        object DBEdit59: TDBEdit
          Left = 30
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size28'
          DataSource = DataSource2
          TabOrder = 27
          OnDblClick = DBEdit59DblClick
          OnKeyPress = DBEdit59KeyPress
        end
        object DBEdit60: TDBEdit
          Left = 110
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size29'
          DataSource = DataSource2
          TabOrder = 28
          OnDblClick = DBEdit60DblClick
          OnKeyPress = DBEdit60KeyPress
        end
        object DBEdit61: TDBEdit
          Left = 190
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size30'
          DataSource = DataSource2
          TabOrder = 29
          OnDblClick = DBEdit61DblClick
          OnKeyPress = DBEdit61KeyPress
        end
        object DBEdit62: TDBEdit
          Left = 270
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size31'
          DataSource = DataSource2
          TabOrder = 30
          OnDblClick = DBEdit62DblClick
          OnKeyPress = DBEdit62KeyPress
        end
        object DBEdit63: TDBEdit
          Left = 350
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size32'
          DataSource = DataSource2
          TabOrder = 31
          OnDblClick = DBEdit63DblClick
          OnKeyPress = DBEdit63KeyPress
        end
        object DBEdit64: TDBEdit
          Left = 430
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size33'
          DataSource = DataSource2
          TabOrder = 32
          OnDblClick = DBEdit64DblClick
          OnKeyPress = DBEdit64KeyPress
        end
        object DBEdit65: TDBEdit
          Left = 510
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size34'
          DataSource = DataSource2
          TabOrder = 33
          OnDblClick = DBEdit65DblClick
          OnKeyPress = DBEdit65KeyPress
        end
        object DBEdit66: TDBEdit
          Left = 590
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size35'
          DataSource = DataSource2
          TabOrder = 34
          OnDblClick = DBEdit66DblClick
          OnKeyPress = DBEdit66KeyPress
        end
        object DBEdit67: TDBEdit
          Left = 670
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Size36'
          DataSource = DataSource2
          TabOrder = 35
        end
      end
      object GroupBox2: TGroupBox
        Left = 24
        Top = 272
        Width = 745
        Height = 193
        Caption = #23458#26041#30908
        TabOrder = 1
        object DBEdit12: TDBEdit
          Left = 30
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz1'
          DataSource = DataSource2
          TabOrder = 0
          OnKeyPress = DBEdit12KeyPress
        end
        object DBEdit13: TDBEdit
          Left = 110
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz2'
          DataSource = DataSource2
          TabOrder = 1
          OnKeyPress = DBEdit13KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 190
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz3'
          DataSource = DataSource2
          TabOrder = 2
          OnKeyPress = DBEdit14KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 270
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz4'
          DataSource = DataSource2
          TabOrder = 3
          OnKeyPress = DBEdit15KeyPress
        end
        object DBEdit16: TDBEdit
          Left = 350
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz5'
          DataSource = DataSource2
          TabOrder = 4
          OnKeyPress = DBEdit16KeyPress
        end
        object DBEdit17: TDBEdit
          Left = 430
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz6'
          DataSource = DataSource2
          TabOrder = 5
          OnKeyPress = DBEdit17KeyPress
        end
        object DBEdit26: TDBEdit
          Left = 510
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz7'
          DataSource = DataSource2
          TabOrder = 6
          OnKeyPress = DBEdit26KeyPress
        end
        object DBEdit27: TDBEdit
          Left = 590
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz8'
          DataSource = DataSource2
          TabOrder = 7
          OnKeyPress = DBEdit27KeyPress
        end
        object DBEdit28: TDBEdit
          Left = 670
          Top = 28
          Width = 43
          Height = 21
          DataField = 'Csiz9'
          DataSource = DataSource2
          TabOrder = 8
          OnKeyPress = DBEdit28KeyPress
        end
        object DBEdit29: TDBEdit
          Left = 30
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz10'
          DataSource = DataSource2
          TabOrder = 9
          OnKeyPress = DBEdit29KeyPress
        end
        object DBEdit30: TDBEdit
          Left = 110
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz11'
          DataSource = DataSource2
          TabOrder = 10
          OnKeyPress = DBEdit30KeyPress
        end
        object DBEdit31: TDBEdit
          Left = 190
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz12'
          DataSource = DataSource2
          TabOrder = 11
          OnKeyPress = DBEdit31KeyPress
        end
        object DBEdit44: TDBEdit
          Left = 270
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz13'
          DataSource = DataSource2
          TabOrder = 12
          OnKeyPress = DBEdit44KeyPress
        end
        object DBEdit45: TDBEdit
          Left = 350
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz14'
          DataSource = DataSource2
          TabOrder = 13
          OnKeyPress = DBEdit45KeyPress
        end
        object DBEdit46: TDBEdit
          Left = 430
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz15'
          DataSource = DataSource2
          TabOrder = 14
          OnKeyPress = DBEdit46KeyPress
        end
        object DBEdit47: TDBEdit
          Left = 510
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz16'
          DataSource = DataSource2
          TabOrder = 15
          OnKeyPress = DBEdit47KeyPress
        end
        object DBEdit48: TDBEdit
          Left = 590
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz17'
          DataSource = DataSource2
          TabOrder = 16
          OnKeyPress = DBEdit48KeyPress
        end
        object DBEdit49: TDBEdit
          Left = 670
          Top = 68
          Width = 43
          Height = 21
          DataField = 'Csiz18'
          DataSource = DataSource2
          TabOrder = 17
          OnKeyPress = DBEdit49KeyPress
        end
        object DBEdit50: TDBEdit
          Left = 30
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz19'
          DataSource = DataSource2
          TabOrder = 18
          OnKeyPress = DBEdit50KeyPress
        end
        object DBEdit51: TDBEdit
          Left = 110
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz20'
          DataSource = DataSource2
          TabOrder = 19
          OnKeyPress = DBEdit51KeyPress
        end
        object DBEdit52: TDBEdit
          Left = 190
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz21'
          DataSource = DataSource2
          TabOrder = 20
          OnKeyPress = DBEdit52KeyPress
        end
        object DBEdit53: TDBEdit
          Left = 270
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz22'
          DataSource = DataSource2
          TabOrder = 21
          OnKeyPress = DBEdit53KeyPress
        end
        object DBEdit54: TDBEdit
          Left = 350
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz23'
          DataSource = DataSource2
          TabOrder = 22
          OnKeyPress = DBEdit54KeyPress
        end
        object DBEdit55: TDBEdit
          Left = 430
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz24'
          DataSource = DataSource2
          TabOrder = 23
          OnKeyPress = DBEdit55KeyPress
        end
        object DBEdit68: TDBEdit
          Left = 510
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz25'
          DataSource = DataSource2
          TabOrder = 24
          OnKeyPress = DBEdit68KeyPress
        end
        object DBEdit69: TDBEdit
          Left = 590
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz26'
          DataSource = DataSource2
          TabOrder = 25
          OnKeyPress = DBEdit69KeyPress
        end
        object DBEdit70: TDBEdit
          Left = 670
          Top = 108
          Width = 43
          Height = 21
          DataField = 'Csiz27'
          DataSource = DataSource2
          TabOrder = 26
          OnKeyPress = DBEdit70KeyPress
        end
        object DBEdit71: TDBEdit
          Left = 30
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz28'
          DataSource = DataSource2
          TabOrder = 27
          OnKeyPress = DBEdit71KeyPress
        end
        object DBEdit72: TDBEdit
          Left = 110
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz29'
          DataSource = DataSource2
          TabOrder = 28
          OnKeyPress = DBEdit72KeyPress
        end
        object DBEdit73: TDBEdit
          Left = 190
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz30'
          DataSource = DataSource2
          TabOrder = 29
          OnKeyPress = DBEdit73KeyPress
        end
        object DBEdit74: TDBEdit
          Left = 270
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz31'
          DataSource = DataSource2
          TabOrder = 30
          OnKeyPress = DBEdit74KeyPress
        end
        object DBEdit75: TDBEdit
          Left = 350
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz32'
          DataSource = DataSource2
          TabOrder = 31
          OnKeyPress = DBEdit75KeyPress
        end
        object DBEdit76: TDBEdit
          Left = 430
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz33'
          DataSource = DataSource2
          TabOrder = 32
          OnKeyPress = DBEdit76KeyPress
        end
        object DBEdit77: TDBEdit
          Left = 510
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz34'
          DataSource = DataSource2
          TabOrder = 33
          OnKeyPress = DBEdit77KeyPress
        end
        object DBEdit78: TDBEdit
          Left = 590
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz35'
          DataSource = DataSource2
          TabOrder = 34
          OnKeyPress = DBEdit78KeyPress
        end
        object DBEdit79: TDBEdit
          Left = 670
          Top = 148
          Width = 43
          Height = 21
          DataField = 'Csiz36'
          DataSource = DataSource2
          TabOrder = 35
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
        ReadOnly = True
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = #37327#24230#20301#32622#21450#37327#24230#23610#23544
      ImageIndex = 2
      OnExit = TabSheet3Exit
      object SpeedButton5: TSpeedButton
        Left = 248
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
      object Label9: TLabel
        Left = 32
        Top = 24
        Width = 26
        Height = 13
        Caption = #27454#34399
      end
      object SpeedButton7: TSpeedButton
        Left = 218
        Top = 504
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
        OnClick = SpeedButton7Click
      end
      object SpeedButton12: TSpeedButton
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
        OnClick = SpeedButton12Click
      end
      object SpeedButton8: TSpeedButton
        Left = 158
        Top = 504
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
        OnClick = SpeedButton8Click
      end
      object SpeedButton9: TSpeedButton
        Left = 188
        Top = 504
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
        OnClick = SpeedButton9Click
      end
      object DBGridEh2: TDBGridEh
        Left = 8
        Top = 56
        Width = 777
        Height = 433
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #26032#32048#26126#39636
        FooterFont.Style = []
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
            Title.Caption = #20195#34399
          end
          item
            EditButtons = <>
            FieldName = 'Kh'
            Footers = <>
            Title.Caption = #32102#23458#25142
            Width = 23
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
            Width = 233
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
            Width = 46
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
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Rst1'
            Footers = <>
            Title.Caption = #23610#30908'|1'
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rst2'
            Footers = <>
            Title.Caption = #23610#30908'|2'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rst3'
            Footers = <>
            Title.Caption = #23610#30908'|3'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rst4'
            Footers = <>
            Title.Caption = #23610#30908'|4'
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rst5'
            Footers = <>
            Title.Caption = #23610#30908'|5'
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'Rst6'
            Footers = <>
            Title.Caption = #23610#30908'|6'
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Diff1'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'Diff2'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'Diff3'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'Diff4'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'Diff5'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'Diff6'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 21
          end
          item
            EditButtons = <>
            FieldName = 'Flg1'
            Footers = <>
            Title.Caption = #27161#35672
            Width = 19
          end
          item
            EditButtons = <>
            FieldName = 'Rst7'
            Footers = <>
            Title.Caption = #23610#30908'|7'
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rst8'
            Footers = <>
            Title.Caption = #23610#30908'|8'
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Rst9'
            Footers = <>
            Title.Caption = #23610#30908'|9'
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Rst10'
            Footers = <>
            Title.Caption = #23610#30908'|10'
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rst11'
            Footers = <>
            Title.Caption = #23610#30908'|11'
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rst12'
            Footers = <>
            Title.Caption = #23610#30908'|12'
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Diff7'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 21
          end
          item
            EditButtons = <>
            FieldName = 'Diff8'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'Diff9'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'Diff10'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 21
          end
          item
            EditButtons = <>
            FieldName = 'Diff11'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 21
          end
          item
            EditButtons = <>
            FieldName = 'Diff12'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'Flg2'
            Footers = <>
            Title.Caption = #27161#35672
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'Rst13'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Rst14'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'Rst15'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'Rst16'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rst17'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Rst18'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Diff13'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 17
          end
          item
            EditButtons = <>
            FieldName = 'Diff14'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 17
          end
          item
            EditButtons = <>
            FieldName = 'Diff15'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'Diff16'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'Diff17'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'Diff18'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 15
          end
          item
            EditButtons = <>
            FieldName = 'Rst19'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'Rst20'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Rst21'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'Rst22'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'Rst23'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Rst24'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'Diff19'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'Diff20'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 17
          end
          item
            EditButtons = <>
            FieldName = 'Diff21'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'Diff22'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'Diff23'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 15
          end
          item
            EditButtons = <>
            FieldName = 'Diff24'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 15
          end
          item
            EditButtons = <>
            FieldName = 'Rst25'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'Rst26'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'Rst27'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Rst28'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Rst29'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Rst30'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Diff25'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'Diff26'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'Diff27'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 19
          end
          item
            EditButtons = <>
            FieldName = 'Diff28'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'Diff29'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'Diff30'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'Rst31'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Rst32'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rst33'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'Rst34'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Rst35'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Rst36'
            Footers = <>
            Title.Caption = #23610#30908'| '
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Diff31'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 19
          end
          item
            EditButtons = <>
            FieldName = 'Diff32'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 19
          end
          item
            EditButtons = <>
            FieldName = 'Diff33'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'Diff34'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'Diff35'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'Diff36'
            Footers = <>
            Title.Caption = #30456#24046'| '
            Width = 17
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBNavigator2: TDBNavigator
        Left = 8
        Top = 504
        Width = 150
        Height = 30
        DataSource = DataSource3
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object DBEdit19: TDBEdit
        Left = 70
        Top = 20
        Width = 171
        Height = 21
        Color = 11927551
        DataField = 'Stylno'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = #27454#22294
      ImageIndex = 3
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 784
        Height = 541
        Align = alClient
        AutoSize = True
        Center = True
        ExplicitWidth = 792
        ExplicitHeight = 553
      end
      object SpeedButton10: TSpeedButton
        Left = 16
        Top = 8
        Width = 89
        Height = 22
        Caption = #36984#25799#27454#22294
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
          77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0BBBBB
          BBB07F333F7F3FF33FF70FFF700B00BB00B07F3F777F77F377370F707F0BB0B0
          0BB07F77337F37F77337007EEE0BB0B0BBB077FFFF7F37F7F3370777770EE000
          EEE07777777F3777F3F7307EEE0E0E00E0E03773FF7F7377F73733707F0EE000
          0EE03337737F377773373333700EEE00EEE03333377F3377FF373333330EEEE0
          0EE03333337F33377F373333330EEEE00EE03333337F333773373333330EEEEE
          EEE03333337FFFFFFFF733333300000000003333337777777777}
        NumGlyphs = 2
        OnClick = SpeedButton10Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = #32025#27171
      ImageIndex = 4
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 784
        Height = 541
        Align = alClient
        AutoSize = True
        Center = True
        ExplicitWidth = 792
        ExplicitHeight = 553
      end
      object SpeedButton11: TSpeedButton
        Left = 16
        Top = 8
        Width = 97
        Height = 22
        Caption = #36984#25799#32025#27171#22294
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
          77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0BBBBB
          BBB07F333F7F3FF33FF70FFF700B00BB00B07F3F777F77F377370F707F0BB0B0
          0BB07F77337F37F77337007EEE0BB0B0BBB077FFFF7F37F7F3370777770EE000
          EEE07777777F3777F3F7307EEE0E0E00E0E03773FF7F7377F73733707F0EE000
          0EE03337737F377773373333700EEE00EEE03333377F3377FF373333330EEEE0
          0EE03333337F33377F373333330EEEE00EE03333337F333773373333330EEEEE
          EEE03333337FFFFFFFF733333300000000003333337777777777}
        NumGlyphs = 2
        OnClick = SpeedButton11Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    OnDataChange = DataSource1DataChange
    Left = 384
    Top = 496
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 440
    Top = 496
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 496
    Top = 496
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    AfterPost = Table1AfterPost
    BeforeDelete = Table1BeforeDelete
    AfterScroll = Table1AfterScroll
    OnNewRecord = Table1NewRecord
    Left = 356
    Top = 496
  end
  object Table2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_sampsize2'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    AfterPost = Table2AfterPost
    BeforeDelete = Table2BeforeDelete
    OnNewRecord = table2NewRecord
    Left = 412
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
      OnChange = Table2Size1Change
      Size = 5
    end
    object Table2Size2: TStringField
      FieldName = 'Size2'
      OnChange = Table2Size2Change
      Size = 5
    end
    object Table2Size3: TStringField
      FieldName = 'Size3'
      OnChange = Table2Size3Change
      Size = 5
    end
    object Table2Size4: TStringField
      FieldName = 'Size4'
      OnChange = Table2Size4Change
      Size = 5
    end
    object Table2Size5: TStringField
      FieldName = 'Size5'
      OnChange = Table2Size5Change
      Size = 5
    end
    object Table2Size6: TStringField
      FieldName = 'Size6'
      OnChange = Table2Size6Change
      Size = 5
    end
    object Table2Size7: TStringField
      FieldName = 'Size7'
      OnChange = Table2Size7Change
      Size = 5
    end
    object Table2Size8: TStringField
      FieldName = 'Size8'
      OnChange = Table2Size8Change
      Size = 5
    end
    object Table2Size9: TStringField
      FieldName = 'Size9'
      OnChange = Table2Size9Change
      Size = 5
    end
    object Table2Size10: TStringField
      FieldName = 'Size10'
      OnChange = Table2Size10Change
      Size = 5
    end
    object Table2Size11: TStringField
      FieldName = 'Size11'
      OnChange = Table2Size11Change
      Size = 5
    end
    object Table2Size12: TStringField
      FieldName = 'Size12'
      OnChange = Table2Size12Change
      Size = 5
    end
    object Table2Csiz1: TStringField
      FieldName = 'Csiz1'
      Size = 5
    end
    object Table2Csiz2: TStringField
      FieldName = 'Csiz2'
      Size = 5
    end
    object Table2Csiz3: TStringField
      FieldName = 'Csiz3'
      Size = 5
    end
    object Table2Csiz4: TStringField
      FieldName = 'Csiz4'
      Size = 5
    end
    object Table2Csiz5: TStringField
      FieldName = 'Csiz5'
      Size = 5
    end
    object Table2Csiz6: TStringField
      FieldName = 'Csiz6'
      Size = 5
    end
    object Table2Csiz7: TStringField
      FieldName = 'Csiz7'
      Size = 5
    end
    object Table2Csiz8: TStringField
      FieldName = 'Csiz8'
      Size = 5
    end
    object Table2Csiz9: TStringField
      FieldName = 'Csiz9'
      Size = 5
    end
    object Table2Csiz10: TStringField
      FieldName = 'Csiz10'
      Size = 5
    end
    object Table2Csiz11: TStringField
      FieldName = 'Csiz11'
      Size = 5
    end
    object Table2Csiz12: TStringField
      FieldName = 'Csiz12'
      Size = 5
    end
    object Table2Size13: TStringField
      FieldName = 'Size13'
      OnChange = Table2Size13Change
      Size = 5
    end
    object Table2Size14: TStringField
      FieldName = 'Size14'
      OnChange = Table2Size14Change
      Size = 5
    end
    object Table2Size15: TStringField
      FieldName = 'Size15'
      OnChange = Table2Size15Change
      Size = 5
    end
    object Table2Size16: TStringField
      FieldName = 'Size16'
      OnChange = Table2Size16Change
      Size = 5
    end
    object Table2Size17: TStringField
      FieldName = 'Size17'
      OnChange = Table2Size17Change
      Size = 5
    end
    object Table2Size18: TStringField
      FieldName = 'Size18'
      OnChange = Table2Size18Change
      Size = 5
    end
    object Table2Size19: TStringField
      FieldName = 'Size19'
      OnChange = Table2Size19Change
      Size = 5
    end
    object Table2Size20: TStringField
      FieldName = 'Size20'
      OnChange = Table2Size20Change
      Size = 5
    end
    object Table2Size21: TStringField
      FieldName = 'Size21'
      OnChange = Table2Size21Change
      Size = 5
    end
    object Table2Size22: TStringField
      FieldName = 'Size22'
      OnChange = Table2Size22Change
      Size = 5
    end
    object Table2Size24: TStringField
      FieldName = 'Size24'
      OnChange = Table2Size24Change
      Size = 5
    end
    object Table2Csiz13: TStringField
      FieldName = 'Csiz13'
      Size = 5
    end
    object Table2Csiz14: TStringField
      FieldName = 'Csiz14'
      Size = 5
    end
    object Table2Csiz15: TStringField
      FieldName = 'Csiz15'
      Size = 5
    end
    object Table2Csiz16: TStringField
      FieldName = 'Csiz16'
      Size = 5
    end
    object Table2Csiz17: TStringField
      FieldName = 'Csiz17'
      Size = 5
    end
    object Table2Csiz18: TStringField
      FieldName = 'Csiz18'
      Size = 5
    end
    object Table2Csiz19: TStringField
      FieldName = 'Csiz19'
      Size = 5
    end
    object Table2Csiz20: TStringField
      FieldName = 'Csiz20'
      Size = 5
    end
    object Table2Csiz21: TStringField
      FieldName = 'Csiz21'
      Size = 5
    end
    object Table2Csiz22: TStringField
      FieldName = 'Csiz22'
      Size = 5
    end
    object Table2Csiz23: TStringField
      FieldName = 'Csiz23'
      Size = 5
    end
    object Table2Csiz24: TStringField
      FieldName = 'Csiz24'
      Size = 5
    end
    object Table2Size23: TStringField
      FieldName = 'Size23'
      OnChange = Table2Size23Change
      Size = 5
    end
    object Table2Size25: TStringField
      FieldName = 'Size25'
      OnChange = Table2Size25Change
      Size = 5
    end
    object Table2Size26: TStringField
      FieldName = 'Size26'
      OnChange = Table2Size26Change
      Size = 5
    end
    object Table2Size27: TStringField
      FieldName = 'Size27'
      OnChange = Table2Size27Change
      Size = 5
    end
    object Table2Size28: TStringField
      FieldName = 'Size28'
      OnChange = Table2Size28Change
      Size = 5
    end
    object Table2Size29: TStringField
      FieldName = 'Size29'
      OnChange = Table2Size29Change
      Size = 5
    end
    object Table2Size30: TStringField
      FieldName = 'Size30'
      OnChange = Table2Size30Change
      Size = 5
    end
    object Table2Size31: TStringField
      FieldName = 'Size31'
      OnChange = Table2Size31Change
      Size = 5
    end
    object Table2Size32: TStringField
      FieldName = 'Size32'
      OnChange = Table2Size32Change
      Size = 5
    end
    object Table2Size33: TStringField
      FieldName = 'Size33'
      OnChange = Table2Size33Change
      Size = 5
    end
    object Table2Size34: TStringField
      FieldName = 'Size34'
      OnChange = Table2Size34Change
      Size = 5
    end
    object Table2Size35: TStringField
      FieldName = 'Size35'
      OnChange = Table2Size35Change
      Size = 5
    end
    object Table2Size36: TStringField
      FieldName = 'Size36'
      OnChange = Table2Size36Change
      Size = 5
    end
    object Table2Csiz25: TStringField
      FieldName = 'Csiz25'
      Size = 5
    end
    object Table2Csiz26: TStringField
      FieldName = 'Csiz26'
      Size = 5
    end
    object Table2Csiz27: TStringField
      FieldName = 'Csiz27'
      Size = 5
    end
    object Table2Csiz28: TStringField
      FieldName = 'Csiz28'
      Size = 5
    end
    object Table2Csiz29: TStringField
      FieldName = 'Csiz29'
      Size = 5
    end
    object Table2Csiz30: TStringField
      FieldName = 'Csiz30'
      Size = 5
    end
    object Table2Csiz31: TStringField
      FieldName = 'Csiz31'
      Size = 5
    end
    object Table2Csiz32: TStringField
      FieldName = 'Csiz32'
      Size = 5
    end
    object Table2Csiz33: TStringField
      FieldName = 'Csiz33'
      Size = 5
    end
    object Table2Csiz34: TStringField
      FieldName = 'Csiz34'
      Size = 5
    end
    object Table2Csiz35: TStringField
      FieldName = 'Csiz35'
      Size = 5
    end
    object Table2Csiz36: TStringField
      FieldName = 'Csiz36'
      Size = 5
    end
  end
  object Table3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_sampsize1'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'Table3Index1'
        Fields = 'cde;id'
      end>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    StoreDefs = True
    AfterPost = Table3AfterPost
    BeforeDelete = Table3BeforeDelete
    OnNewRecord = table3NewRecord
    Left = 468
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
      Size = 5
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
      Size = 60
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
      FieldName = 'Tolerence'
      Size = 10
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
    object Table3Diff1: TFloatField
      FieldName = 'Diff1'
    end
    object Table3Diff2: TFloatField
      FieldName = 'Diff2'
    end
    object Table3Diff3: TFloatField
      FieldName = 'Diff3'
    end
    object Table3Diff4: TFloatField
      FieldName = 'Diff4'
    end
    object Table3Diff5: TFloatField
      FieldName = 'Diff5'
    end
    object Table3Diff6: TFloatField
      FieldName = 'Diff6'
    end
    object Table3Diff7: TFloatField
      FieldName = 'Diff7'
    end
    object Table3Diff8: TFloatField
      FieldName = 'Diff8'
    end
    object Table3Diff9: TFloatField
      FieldName = 'Diff9'
    end
    object Table3Diff10: TFloatField
      FieldName = 'Diff10'
    end
    object Table3Diff11: TFloatField
      FieldName = 'Diff11'
    end
    object Table3Diff12: TFloatField
      FieldName = 'Diff12'
    end
    object Table3Flg1: TStringField
      FieldName = 'Flg1'
      Size = 1
    end
    object Table3Flg2: TStringField
      FieldName = 'Flg2'
      Size = 1
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
    object Table3Diff13: TFloatField
      FieldName = 'Diff13'
    end
    object Table3Diff14: TFloatField
      FieldName = 'Diff14'
    end
    object Table3Diff15: TFloatField
      FieldName = 'Diff15'
    end
    object Table3Diff16: TFloatField
      FieldName = 'Diff16'
    end
    object Table3Diff17: TFloatField
      FieldName = 'Diff17'
    end
    object Table3Diff18: TFloatField
      FieldName = 'Diff18'
    end
    object Table3Diff19: TFloatField
      FieldName = 'Diff19'
    end
    object Table3Diff20: TFloatField
      FieldName = 'Diff20'
    end
    object Table3Diff21: TFloatField
      FieldName = 'Diff21'
    end
    object Table3Diff22: TFloatField
      FieldName = 'Diff22'
    end
    object Table3Diff23: TFloatField
      FieldName = 'Diff23'
    end
    object Table3Diff24: TFloatField
      FieldName = 'Diff24'
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
    object Table3Diff25: TFloatField
      FieldName = 'Diff25'
    end
    object Table3Diff26: TFloatField
      FieldName = 'Diff26'
    end
    object Table3Diff27: TFloatField
      FieldName = 'Diff27'
    end
    object Table3Diff28: TFloatField
      FieldName = 'Diff28'
    end
    object Table3Diff29: TFloatField
      FieldName = 'Diff29'
    end
    object Table3Diff30: TFloatField
      FieldName = 'Diff30'
    end
    object Table3Diff31: TFloatField
      FieldName = 'Diff31'
    end
    object Table3Diff32: TFloatField
      FieldName = 'Diff32'
    end
    object Table3Diff33: TFloatField
      FieldName = 'Diff33'
    end
    object Table3Diff34: TFloatField
      FieldName = 'Diff34'
    end
    object Table3Diff35: TFloatField
      FieldName = 'Diff35'
    end
    object Table3Diff36: TFloatField
      FieldName = 'Diff36'
    end
    object Table3Kh: TBooleanField
      FieldName = 'Kh'
    end
    object Table3Emethd: TStringField
      FieldName = 'Emethd'
      Size = 10
    end
    object Table3Tmeas: TStringField
      FieldName = 'Tmeas'
      Size = 60
    end
    object Table3Tmethd: TStringField
      FieldName = 'Tmethd'
      Size = 10
    end
  end
  object bastbl: TClientDataSet
    Aggregates = <>
    CommandText = 'select distinct cde from SZ_bastbl'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 638
    Top = 496
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 524
    Top = 496
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 364
    Top = 112
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 609
    Top = 496
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 581
    Top = 496
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 553
    Top = 496
  end
  object OpenDialog1: TOpenDialog
    Left = 24
    Top = 64
  end
end
