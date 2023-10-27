object frmlbjh: Tfrmlbjh
  Left = 171
  Top = 90
  Caption = #25289#24067#35336#21123'----'#24037#31243#37636#20837
  ClientHeight = 619
  ClientWidth = 1257
  Color = clBtnFace
  Font.Charset = CHINESEBIG5_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 11
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1257
    Height = 619
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #25289#24067#35336#21123
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1249
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 768
          Top = 90
          Width = 129
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #35009#21106#24037#31243#34399
          Visible = False
        end
        object Label2: TLabel
          Left = 533
          Top = 50
          Width = 59
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #24202#34399
        end
        object Label3: TLabel
          Left = 735
          Top = 26
          Width = 95
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #25289#24067#24373#25976
        end
        object Label17: TLabel
          Left = 16
          Top = 18
          Width = 105
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #35009#21106#24037#31243#34399
        end
        object Label18: TLabel
          Left = 320
          Top = 50
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #29289#26009
        end
        object SpeedButton9: TSpeedButton
          Left = 285
          Top = 16
          Width = 22
          Height = 22
          Hint = #26597#35426#24037#31243#32232#34399
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
          OnClick = SpeedButton9Click
        end
        object SpeedButton15: TSpeedButton
          Left = 885
          Top = 23
          Width = 22
          Height = 22
          Hint = #20462#25913#25289#24067#24373#25976
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            04000000000020010000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00877777777777
            777777777777F88888888888888888888887F89988888888888888888887F898
            98888888888888888887F89889883883888888888887F8898898888883888888
            8887F88899988888888388888887F88883998888888888888887F88888899988
            888838888887F88838898899888899999887F88888889888999988888987F888
            88889888889899999887F88838889888898888888887F8888888898898883888
            8887F88888888989888888888887F88888388898888388888887F88888883898
            838888888887F88888888989888888888887F88888888989888888888887F888
            88888989888888888887F88888888989888888888887F8888888889888888888
            8887F88888888888888888888887FFFFFFFFFFFFFFFFFFFFFFF8}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton15Click
        end
        object Label10: TLabel
          Left = 333
          Top = -4
          Width = 58
          Height = 11
          Caption = #27169#26479#25613#32791'(m)'
        end
        object Label22: TLabel
          Left = 764
          Top = 4
          Width = 9
          Height = 11
          Caption = ' / '
          Visible = False
        end
        object Label28: TLabel
          Left = 926
          Top = 50
          Width = 87
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pile Height (M)'
        end
        object Label29: TLabel
          Left = 184
          Top = 49
          Width = 95
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ttl Mat'#39'l'
        end
        object Label30: TLabel
          Left = 16
          Top = 46
          Width = 103
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Marker Type '
        end
        object Label31: TLabel
          Left = 707
          Top = 15
          Width = 9
          Height = 11
          Caption = ' / '
          Visible = False
        end
        object Label32: TLabel
          Left = 662
          Top = 50
          Width = 169
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cutg Device'#39's S. height limit (mm) '
        end
        object Label33: TLabel
          Left = 920
          Top = 26
          Width = 95
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat'#39'l Thickness (mm) '
        end
        object DBEdit1: TDBEdit
          Left = 898
          Top = 87
          Width = 159
          Height = 19
          Color = 11927551
          DataField = 'Prjno'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 0
          Visible = False
        end
        object DBEdit2: TDBEdit
          Left = 736
          Top = 1
          Width = 25
          Height = 19
          Color = 13434875
          DataField = 'Xh'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 1
          Visible = False
        end
        object DBEdit3: TDBEdit
          Left = 832
          Top = 23
          Width = 49
          Height = 19
          Color = clWhite
          DataField = 'Lbzs'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object ComboBox1: TComboBox
          Left = 122
          Top = 16
          Width = 159
          Height = 19
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = ComboBox1Change
        end
        object DBEdit17: TDBEdit
          Left = 395
          Top = 47
          Width = 105
          Height = 19
          Color = 13434875
          DataField = 'Wl'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 4
        end
        object BitBtn1: TBitBtn
          Left = 360
          Top = 16
          Width = 129
          Height = 25
          Caption = #25913#36890#30908
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333FFF333333333333000333333333
            3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
            3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
            0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
            BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
            33337777773FF733333333333300033333333333337773333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphRight
          NumGlyphs = 2
          TabOrder = 5
          Visible = False
          OnClick = BitBtn1Click
        end
        object BitBtn3: TBitBtn
          Left = 521
          Top = 16
          Width = 120
          Height = 25
          Caption = #20462#25913#23610#30908
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333FF3FFFFFFF3FFFF003000000030
            0000773777777737777703330030033300037FFF77F77FFF7773700007330000
            003377777733777777F3303003330030003337F77F3377F77733303073333030
            033337F77F3337F77F3337007333300003333777733337777333330033333000
            33333377F3333777F33333073333330033333377333333773333333333333333
            33333333FF333333FF33333973333337933333377FF333377F33333999333399
            93333337773333777F333339933333399333333773FF33377F33333939733793
            93333337377FF773733333333399993333333333337777333333}
          Layout = blGlyphRight
          NumGlyphs = 2
          TabOrder = 6
          OnClick = BitBtn3Click
        end
        object DBEdit10: TDBEdit
          Left = 408
          Top = -4
          Width = 105
          Height = 19
          Color = clWhite
          DataField = 'Mjyl'
          DataSource = dslbjh1
          TabOrder = 7
        end
        object BitBtn5: TBitBtn
          Left = 360
          Top = 16
          Width = 161
          Height = 25
          Caption = 'Unique Sz Pattern on Style'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333FFF333333333333000333333333
            3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
            3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
            0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
            BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
            33337777773FF733333333333300033333333333337773333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphRight
          NumGlyphs = 2
          TabOrder = 8
          OnClick = BitBtn5Click
        end
        object DBEdit21: TDBEdit
          Left = 776
          Top = 1
          Width = 25
          Height = 19
          Color = 13434875
          DataField = 'ttl_ch'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 9
          Visible = False
        end
        object DBEdit27: TDBEdit
          Left = 1016
          Top = 47
          Width = 49
          Height = 19
          Color = 13434875
          DataField = 'Lbhd'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit28: TDBEdit
          Left = 285
          Top = 47
          Width = 29
          Height = 19
          Color = 13434875
          DataField = 'ttl_wl'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 11
        end
        object GroupBox1: TGroupBox
          Left = 48
          Top = 72
          Width = 673
          Height = 41
          Caption = #35009#21106#26041#27861
          TabOrder = 12
          Visible = False
          object DBCheckBox2: TDBCheckBox
            Left = 32
            Top = 16
            Width = 129
            Height = 17
            Caption = #38651#33126#35009#24202
            DataField = 'cut_m1'
            DataSource = dslbjh1
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 200
            Top = 16
            Width = 129
            Height = 17
            Caption = #36939#21098
            DataField = 'cut_m2'
            DataSource = dslbjh1
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 360
            Top = 16
            Width = 129
            Height = 17
            Caption = #21860#35009
            DataField = 'cut_m3'
            DataSource = dslbjh1
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 520
            Top = 16
            Width = 129
            Height = 17
            Caption = #25163#21098
            DataField = 'cut_m4'
            DataSource = dslbjh1
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
        object DBComboBox1: TDBComboBox
          Left = 122
          Top = 46
          Width = 55
          Height = 19
          Color = 13434875
          DataField = 'mak_type'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'PU'
            'CU'
            'PP'
            'TP')
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit29: TDBEdit
          Left = 685
          Top = 12
          Width = 21
          Height = 19
          Color = 13434875
          DataField = 'wl_seq'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 14
          Visible = False
        end
        object DBEdit30: TDBEdit
          Left = 1016
          Top = 23
          Width = 49
          Height = 19
          DataField = 'hd_dz'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit31: TDBEdit
          Left = 832
          Top = 47
          Width = 49
          Height = 19
          Color = 13434875
          DataField = 'hd_limit'
          DataSource = dslbjh1
          TabOrder = 16
        end
        object Edit1: TEdit
          Left = 596
          Top = 47
          Width = 45
          Height = 19
          Color = 13434875
          ReadOnly = True
          TabOrder = 17
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 547
        Width = 1249
        Height = 45
        Align = alBottom
        TabOrder = 1
        object tc: TSpeedButton
          Left = 376
          Top = 11
          Width = 25
          Height = 25
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
          OnClick = tcClick
        end
        object SpeedButton1: TSpeedButton
          Left = 298
          Top = 11
          Width = 25
          Height = 25
          Hint = #20998#24202#25289#24067#21015#21360
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
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 116
          Top = 11
          Width = 25
          Height = 25
          Hint = #25289#24067#35519#25972
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
            000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
            99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
            0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
            FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
            0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
            000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
            00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
            00FF33337FFF7FF77733333300000000033F3333777777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton6: TSpeedButton
          Left = 142
          Top = 11
          Width = 25
          Height = 25
          Hint = #22044#26550#24314#35696'1'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton6Click
        end
        object SpeedButton8: TSpeedButton
          Left = 324
          Top = 11
          Width = 25
          Height = 25
          Hint = #21015#21360#20998#26512#22577#21578
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
          OnClick = SpeedButton8Click
        end
        object SpeedButton10: TSpeedButton
          Left = 168
          Top = 11
          Width = 25
          Height = 25
          Hint = #20445#23384
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000CE0E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
            2222200000000002222203300007030222220330000703000222033000000303
            0222033333333303000203300000330303020307777703030302030777770303
            0302030777770003030203077777070303020000000000000302220307777707
            0302220000000000000222220307777707022222000000000002}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton10Click
        end
        object SpeedButton11: TSpeedButton
          Left = 706
          Top = 11
          Width = 30
          Height = 30
          Hint = #29983#29986#21147#20998#26512
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
            0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
            0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
            CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
            CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
            CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
            CCC77777777777777377330333333333CCC3337F33333333737F370333333333
            0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
            7777777777777777777733333333333333333333333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton11Click
        end
        object SpeedButton12: TSpeedButton
          Left = 676
          Top = 11
          Width = 30
          Height = 30
          Hint = #33853#36008#35352#37636
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555550
            00555555555FFF57775F55555500050BBB0555FFF57775777775500050EEE000
            777057775777777775F709990777777770F0777775FFFFFFF7F7099990000000
            F0F07F5557777777F7F70FFFFFFFFFF0F0F07F5555555557F7F70FFFFFFFFFF0
            F0F07F5555555557F7F70FFFFFFFFFF0F0F07F5FF5FF5F57F7F70F77F77F7FF0
            F0F07F7757757557F7F70FFFFFFFFFF0F0F07F5FF5FFF557F7F70F77F777FFF0
            F0F07F7757775557F7F70FFFFFFFFFF0F0F07FF5F5F5F5F7F7F700F0F0F0F0F0
            F00577F7F7F7F7F7F77F0070707070700005777777777777777F707070707070
            55055757575757575F7555050505050500555575757575757755}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton12Click
        end
        object SpeedButton13: TSpeedButton
          Left = 194
          Top = 11
          Width = 25
          Height = 25
          Hint = #24489#35069#19968#24202
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
          OnClick = SpeedButton13Click
        end
        object SpeedButton14: TSpeedButton
          Left = 220
          Top = 11
          Width = 25
          Height = 25
          Hint = #20462#25913#27454#34399
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton14Click
        end
        object SpeedButton16: TSpeedButton
          Left = 350
          Top = 11
          Width = 25
          Height = 25
          Hint = #35336#21123#22044#26550#20998#26512
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
            0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
            0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
            CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
            CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
            CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
            CCC77777777777777377330333333333CCC3337F33333333737F370333333333
            0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
            7777777777777777777733333333333333333333333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton16Click
        end
        object SpeedButton17: TSpeedButton
          Left = 871
          Top = 11
          Width = 30
          Height = 30
          Hint = #27169#26479#25613#32791
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000333FFF3777777777F3000330FFFFFFF033777FF7F3FF3FF7F07B7030F00F0
            0F0377777F7F7737737F0BBB030FFFFFFF0377777F7F3FFFF37F07B7030F0000
            FF037777737F7777337F3000330FFFFFFF033777337F3FF3FF7F3333330F00F0
            00033333337F7737777F3333330FFFF0FF033FFFFF7F3FF7F3730000030F08F0
            F03377777F7F7737F7330999030FFFF0033377777F7FFFF77333099903000000
            333377777F7777773333099903333333333377777F33FFFFFFF3000003300000
            00337777733777777733333333330CCC033333333333777773333333333330C0
            3333333333333777333333333333330333333333333333733333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton17Click
        end
        object SpeedButton18: TSpeedButton
          Left = 772
          Top = 11
          Width = 30
          Height = 30
          Hint = #22044#26550#24314#35696'2'
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
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton18Click
        end
        object SpeedButton19: TSpeedButton
          Left = 802
          Top = 11
          Width = 30
          Height = 30
          Hint = #22044#26550#24314#35696'3'
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
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton19Click
        end
        object SpeedButton20: TSpeedButton
          Left = 835
          Top = 11
          Width = 30
          Height = 30
          Hint = #21015#21360#37002#35282#26009#20998#26512#22577#21578
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
          Visible = False
          OnClick = SpeedButton20Click
        end
        object DBNavigator1: TDBNavigator
          Left = 16
          Top = 11
          Width = 100
          Height = 25
          DataSource = dslbjh1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 246
          Top = 11
          Width = 25
          Height = 25
          Hint = #20462#25913#29289#26009
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888844444444444444444444888877
            373737373737373737888889173BBB43B3B3B3337888888117B3B4F433374037
            8888888917334FFF43474078888888811734FFFFF474408888888889174FF6FF
            FF47408888888891117FFF0778844048888888991118FF8F7077407488888891
            11186F88B3077407488888991118F6F3BB307740748888911118FF8F3BB30400
            4888879911186FFFF3BB300078888879917FF6FFFF3BB3008888888717F6FF6F
            FF73BB308888888991FF6FF8F7443B871888888995FFF6FF877447F891888887
            97CFFFFF8777477D95888888872CFFFF87744087788888888222C8F877744088
            8888888888278777778747888888888888888888888888888888}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn4Click
        end
        object BitBtn2: TBitBtn
          Left = 272
          Top = 11
          Width = 25
          Height = 25
          Hint = #20462#25913#24037#31243#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
            305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
            005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
            B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
            B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
            B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
            B0557777FF577777F7F500000E055550805577777F7555575755500000555555
            05555777775555557F5555000555555505555577755555557555}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn2Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 81
        Width = 1249
        Height = 466
        Align = alClient
        TabOrder = 2
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 1247
          Height = 464
          Align = alClient
          AllowedOperations = [alopInsertEh, alopUpdateEh, alopDeleteEh]
          Color = 13434875
          DataSource = dslbjh2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = CHINESEBIG5_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu1
          RowDetailPanel.Color = clBtnFace
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = CHINESEBIG5_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Gch'
              Footer.ValueType = fvtStaticText
              Footers = <>
              ReadOnly = True
              Title.Caption = #24037#31243#34399
              Width = 154
            end
            item
              EditButtons = <>
              FieldName = 'Zdh'
              Footer.ValueType = fvtStaticText
              Footers = <>
              ReadOnly = True
              Title.Caption = #21046#21934#34399
              Width = 145
            end
            item
              EditButtons = <>
              FieldName = 'Kh'
              Footer.ValueType = fvtStaticText
              Footers = <>
              ReadOnly = True
              Title.Caption = #27454#34399
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'Sh'
              Footer.ValueType = fvtStaticText
              Footers = <>
              ReadOnly = True
              Title.Caption = #33394#34399
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'Cm'
              Footer.ValueType = fvtStaticText
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Corresp. Size List / '#23565#25033#23610#30908#28165#21934'|WO Sz'
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'cm_cor'
              Footers = <>
              ReadOnly = True
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'cm_pt'
              Footers = <>
              Width = 75
            end
            item
              Color = clWhite
              EditButtons = <>
              FieldName = 'Mjs'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #22044#26550#25976
              Title.Font.Charset = CHINESEBIG5_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'Mjjs'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = #22044#26550#20214#25976
              Width = 66
            end>
          object RowDetailData: TRowDetailPanelControlEh
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 0
              Height = 0
              Align = alClient
              TabOrder = 0
              object DBGridEh3: TDBGridEh
                Left = 1
                Top = 1
                Width = 815
                Height = 319
                Align = alClient
                AllowedOperations = [alopInsertEh, alopUpdateEh]
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = CHINESEBIG5_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                RowDetailPanel.Color = clBtnFace
                SumList.Active = True
                TabOrder = 0
                TitleFont.Charset = CHINESEBIG5_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                Columns = <
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'zdh'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtStaticText
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #21046#21934#34399
                    Width = 135
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'kh'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtStaticText
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #27454#34399
                    Width = 102
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'cm'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtStaticText
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #23610#30908
                    Width = 32
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'zds'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtSum
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29983#29986#21046#21934#25976
                    Width = 60
                  end
                  item
                    Color = 11927551
                    DisplayFormat = '0.00'
                    EditButtons = <>
                    FieldName = 'jy'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #27492#29256' - '#21934#24373#25490#29256#25976'|'#38928#35373#27604#20363
                    Width = 55
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sj'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Title.Caption = #23526#38555
                    Title.Font.Charset = CHINESEBIG5_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 63
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'sj_qty'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    ReadOnly = True
                    Width = 50
                  end
                  item
                    Color = clAqua
                    EditButtons = <>
                    FieldName = 'jc'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = [fsBold]
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Title.Caption = #21152#35009
                    Title.Font.Charset = CHINESEBIG5_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 55
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'ys'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtSum
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #20313#25976
                    Width = 55
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Footers = <>
                    Title.Caption = #20633#27880
                    Width = 272
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 0
              Height = 0
              Align = alClient
              TabOrder = 1
              object DBGridEh4: TDBGridEh
                Left = 1
                Top = 1
                Width = 815
                Height = 319
                Align = alClient
                AllowedOperations = [alopInsertEh, alopUpdateEh]
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = CHINESEBIG5_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                RowDetailPanel.Color = clBtnFace
                SumList.Active = True
                TabOrder = 0
                TitleFont.Charset = CHINESEBIG5_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                Columns = <
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'zdh'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtStaticText
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #21046#21934#34399
                    Width = 135
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'kh'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtStaticText
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #27454#34399
                    Width = 102
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'cm'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtStaticText
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #23610#30908
                    Width = 32
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'zds'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtSum
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29983#29986#21046#21934#25976
                    Width = 60
                  end
                  item
                    Color = 11927551
                    DisplayFormat = '0.00'
                    EditButtons = <>
                    FieldName = 'jy'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #27492#29256' - '#21934#24373#25490#29256#25976'|'#38928#35373#27604#20363
                    Width = 55
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sj'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Title.Caption = #23526#38555
                    Title.Font.Charset = CHINESEBIG5_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 63
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'sj_qty'
                    Footer.ValueType = fvtSum
                    Footers = <>
                    ReadOnly = True
                    Width = 50
                  end
                  item
                    Color = clAqua
                    EditButtons = <>
                    FieldName = 'jc'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = [fsBold]
                    Footer.ValueType = fvtSum
                    Footers = <>
                    Title.Caption = #21152#35009
                    Title.Font.Charset = CHINESEBIG5_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 55
                  end
                  item
                    Color = 11927551
                    EditButtons = <>
                    FieldName = 'ys'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = #26032#32048#26126#39636
                    Font.Style = []
                    Footer.ValueType = fvtSum
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #20313#25976
                    Width = 55
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Footers = <>
                    Title.Caption = #20633#27880
                    Width = 272
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #22044#26550#36039#26009
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1249
        Height = 161
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 502
          Top = 58
          Width = 161
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ttl Perimeter of Marker Patterns(cm)'
        end
        object Label5: TLabel
          Left = 8
          Top = 58
          Width = 177
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #24179#22343#22044#26550#23553#24230'(mm)'
        end
        object Label6: TLabel
          Left = 264
          Top = 58
          Width = 159
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #22044#26550#32317#38263#24230'(m)'
        end
        object Label12: TLabel
          Left = 502
          Top = 82
          Width = 161
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #35336#21123#35009#21106#26178#38291'(min)'
        end
        object Label9: TLabel
          Left = 264
          Top = 82
          Width = 159
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ttl length of planned mat'#39'l (m)'
        end
        object Label16: TLabel
          Left = 264
          Top = 106
          Width = 159
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #29992#24067#29575'%'
        end
        object Label8: TLabel
          Left = 8
          Top = 82
          Width = 177
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ttl length of planned single laying (m)'
        end
        object Label14: TLabel
          Left = 8
          Top = 106
          Width = 177
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #35336#21123#29983#29986#25613#32791'%'
        end
        object Label19: TLabel
          Left = 8
          Top = 130
          Width = 177
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #37197#24067#29575'%'
          Visible = False
        end
        object Label21: TLabel
          Left = 264
          Top = 130
          Width = 159
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #26368#22823#27171#29255#38263#24230'(cm)'
        end
        object Label4: TLabel
          Left = 502
          Top = 130
          Width = 161
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #38928#31639#22044#26550#23553#24230'(mm)'
        end
        object Label20: TLabel
          Left = 502
          Top = 106
          Width = 161
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #21934#24373#22044#26550#29255#25976
        end
        object Label11: TLabel
          Left = 816
          Top = 33
          Width = 89
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Recut Length (m)'
          Visible = False
        end
        object Label13: TLabel
          Left = 968
          Top = 33
          Width = 121
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #37197#24067#23553#24230'(mm)'
          Visible = False
        end
        object Label15: TLabel
          Left = 792
          Top = 55
          Width = 137
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = #37197#24067#24067#37325'(g/sqm)'
          Visible = False
        end
        object Label23: TLabel
          Left = 8
          Top = 10
          Width = 124
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #35009#21106#24037#31243#34399
        end
        object Label24: TLabel
          Left = 496
          Top = 10
          Width = 86
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #24202#34399
        end
        object Label25: TLabel
          Left = 645
          Top = 10
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #25289#24067#24373#25976
        end
        object Label26: TLabel
          Left = 328
          Top = 10
          Width = 54
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #29289#26009
        end
        object Label27: TLabel
          Left = 908
          Top = 10
          Width = 9
          Height = 11
          Caption = ' / '
          Visible = False
        end
        object Label34: TLabel
          Left = 272
          Top = 33
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #24202#34399
        end
        object Label35: TLabel
          Left = 472
          Top = 33
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #24202#34399
        end
        object SpeedButton21: TSpeedButton
          Left = 492
          Top = 7
          Width = 22
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
            3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
            B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
            33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
            000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
            033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
            BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
            33B33733333773333373B333333B3333333B7333333733333337}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton21Click
        end
        object DBEdit5: TDBEdit
          Left = 187
          Top = 55
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Pjmjfd'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 426
          Top = 55
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Mjzcd'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 666
          Top = 55
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Mjypzbzc'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 666
          Top = 79
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Jhcgzsj'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 426
          Top = 79
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Jhwlzc'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 426
          Top = 103
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Ybl'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit14: TDBEdit
          Left = 187
          Top = 103
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Jhscsh'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 187
          Top = 79
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Jhdzlbzc'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit18: TDBEdit
          Left = 186
          Top = 127
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Pbl'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 8
          Visible = False
        end
        object DBEdit20: TDBEdit
          Left = 426
          Top = 127
          Width = 72
          Height = 19
          Color = clWhite
          DataField = 'Zdypcd'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 666
          Top = 127
          Width = 72
          Height = 19
          Color = 13434875
          DataField = 'Ysmjfd'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnKeyPress = DBEdit4KeyPress
        end
        object DBEdit19: TDBEdit
          Left = 666
          Top = 103
          Width = 72
          Height = 19
          Color = clWhite
          DataField = 'Dzmjps'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnKeyPress = DBEdit19KeyPress
        end
        object DBCheckBox1: TDBCheckBox
          Left = 1074
          Top = 53
          Width = 217
          Height = 17
          Caption = #39361#22044#26550
          DataField = 'bmj'
          DataSource = dslbjh1
          TabOrder = 12
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Visible = False
        end
        object DBEdit11: TDBEdit
          Left = 908
          Top = 30
          Width = 57
          Height = 19
          Color = clWhite
          DataField = 'bcd'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          Visible = False
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit13: TDBEdit
          Left = 1092
          Top = 30
          Width = 57
          Height = 19
          Color = clWhite
          DataField = 'bfd'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          Visible = False
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 932
          Top = 52
          Width = 57
          Height = 19
          Color = clWhite
          DataField = 'bzl'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          Visible = False
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit22: TDBEdit
          Left = 138
          Top = 7
          Width = 159
          Height = 19
          Color = 13434875
          DataField = 'Prjno'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit23: TDBEdit
          Left = 880
          Top = 7
          Width = 25
          Height = 19
          Color = 13434875
          DataField = 'Xh'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 17
          Visible = False
        end
        object DBEdit24: TDBEdit
          Left = 728
          Top = 7
          Width = 49
          Height = 19
          Color = 13434875
          DataField = 'Lbzs'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object DBEdit25: TDBEdit
          Left = 384
          Top = 7
          Width = 105
          Height = 19
          Color = 13434875
          DataField = 'Wl'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 19
        end
        object DBEdit26: TDBEdit
          Left = 920
          Top = 7
          Width = 25
          Height = 19
          Color = 13434875
          DataField = 'ttl_ch'
          DataSource = dslbjh1
          ReadOnly = True
          TabOrder = 20
          Visible = False
        end
        object Edit2: TEdit
          Left = 584
          Top = 7
          Width = 57
          Height = 19
          Color = 13434875
          ReadOnly = True
          TabOrder = 21
        end
        object DBEdit32: TDBEdit
          Left = 384
          Top = 30
          Width = 49
          Height = 19
          Color = 13434875
          DataField = 'ttl_wl'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBEdit33: TDBEdit
          Left = 584
          Top = 30
          Width = 49
          Height = 19
          Color = 13434875
          DataField = 'ttl_xh'
          DataSource = dslbjh1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 543
        Width = 1249
        Height = 49
        Align = alBottom
        TabOrder = 1
        object SpeedButton3: TSpeedButton
          Left = 9
          Top = 11
          Width = 30
          Height = 30
          Hint = #26032#22686#22044#26550
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
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 39
          Top = 11
          Width = 30
          Height = 30
          Hint = #21034#38500#22044#26550
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
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 99
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
          OnClick = tcClick
        end
        object SpeedButton7: TSpeedButton
          Left = 69
          Top = 11
          Width = 30
          Height = 30
          Hint = #20445#23384
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000CE0E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
            2222200000000002222203300007030222220330000703000222033000000303
            0222033333333303000203300000330303020307777703030302030777770303
            0302030777770003030203077777070303020000000000000302220307777707
            0302220000000000000222220307777707022222000000000002}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton7Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 161
        Width = 1249
        Height = 382
        Align = alClient
        TabOrder = 2
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 1247
          Height = 380
          Align = alClient
          Color = clWhite
          DataSource = dslbjh3
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = CHINESEBIG5_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = CHINESEBIG5_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnEnter = DBGridEh1Enter
          OnKeyDown = DBGridEh1KeyDown
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Mjh'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #22044#26550'|'#32232#34399
              Title.Font.Charset = CHINESEBIG5_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 169
            end
            item
              Color = 13434875
              EditButtons = <>
              FieldName = 'Ybl'
              Footers = <>
              Title.Caption = #22044#26550'|'#29992#24067#29575'%'
              Width = 50
            end
            item
              Color = 13434875
              EditButtons = <>
              FieldName = 'Mjfd'
              Footers = <>
              Title.Caption = #22044#26550'|'#23553#24230'(mm)'
              Width = 63
            end
            item
              Color = 13434875
              EditButtons = <>
              FieldName = 'Mjcd'
              Footers = <>
              Title.Caption = #22044#26550'|'#38263#24230'(m)'
              Width = 52
            end
            item
              Color = 13434875
              EditButtons = <>
              FieldName = 'Mjypzbc'
              Footers = <>
              Title.Caption = #22044#26550'|'#27171#29255#21608#37002#38263'(cm)'
              Width = 66
            end
            item
              Color = 13434875
              EditButtons = <>
              FieldName = 'Jhlbzs'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #26032#32048#26126#39636
              Font.Style = []
              Footers = <>
              Title.Caption = #35336#21123'|'#25289#24067#24373#25976
              Width = 35
            end
            item
              Color = 13434875
              EditButtons = <>
              FieldName = 'Jhdzlbcd'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #26032#32048#26126#39636
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = #35336#21123'|'#21934#24373#25289#24067#38263#24230'(m)'
              Width = 71
            end
            item
              Color = 13434875
              EditButtons = <>
              FieldName = 'Jhcgsj'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #26032#32048#26126#39636
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = #35336#21123'|'#35009#21106#26178#38291'(min)'
              Width = 63
            end
            item
              Color = 13434875
              EditButtons = <>
              FieldName = 'Jhwlcd'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #26032#32048#26126#39636
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = #35336#21123'|'#29289#26009#38263#24230' (m)'
              Width = 55
            end
            item
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'lb_out'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #22044#26550#22806'|'#24038#21491#24067#37002#23553#24230'(m)'
              Title.Font.Charset = CHINESEBIG5_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 63
            end
            item
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'tw_out'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #22044#26550#22806'|'#38957#23614#38263#24230'(m)'
              Title.Font.Charset = CHINESEBIG5_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 56
            end
            item
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'wt_g'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #24067#37325'(g/sqm)'
              Title.Font.Charset = CHINESEBIG5_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = False
              Width = 51
            end
            item
              Color = 13434875
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'sh_in'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25613#32791'|'#22044#26550#20839
              Width = 52
            end
            item
              Color = 13434875
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'sh_out'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25613#32791'|'#22044#26550#22806
              Width = 50
            end
            item
              Color = 13434875
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'sh_ttl'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25613#32791'|'#32317#35336
              Width = 52
            end
            item
              Color = 8454143
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'wt_ttlsh'
              Footers = <>
              ReadOnly = True
              Title.Caption = #37002#35282#26009' (kg)'
              Visible = False
              Width = 45
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = dslbjhm
    UserName = 'BDEPipeline1'
    Left = 608
    Top = 504
  end
  object dslbjhm: TDataSource
    DataSet = lbjhm
    OnDataChange = dslbjhmDataChange
    Left = 580
    Top = 504
  end
  object dslbjhd: TDataSource
    DataSet = lbjhd
    Left = 664
    Top = 504
  end
  object ppBDEPipeline2: TppBDEPipeline
    DataSource = dslbjhd
    UserName = 'BDEPipeline2'
    Left = 692
    Top = 504
    MasterDataPipelineName = 'ppBDEPipeline1'
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
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
    Left = 720
    Top = 504
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35009#21106#37096#35009#21934' '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6731
        mmLeft = 50271
        mmTop = 3704
        mmWidth = 95779
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 164836
        mmTop = 6350
        mmWidth = 7959
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'hns'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 6350
        mmWidth = 8255
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913#25976':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164836
        mmTop = 11113
        mmWidth = 7959
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 11113
        mmWidth = 7916
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#32232#34399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 11113
        mmWidth = 15198
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Prjno'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 11113
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      DataPipeline = ppBDEPipeline2
      object ppRegion3: TppRegion
        UserName = 'Region3'
        mmHeight = 5292
        mmLeft = 4498
        mmTop = 0
        mmWidth = 189442
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Gch'
          DataPipeline = ppBDEPipeline2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ReprintOnSubsequent = True
          ResetGroup = ppGroup1
          SuppressRepeatedValues = True
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3387
          mmLeft = 7144
          mmTop = 1058
          mmWidth = 4403
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
          DataField = 'Zdh'
          DataPipeline = ppBDEPipeline2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ReprintOnSubsequent = True
          ResetGroup = ppGroup1
          SuppressRepeatedValues = True
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3387
          mmLeft = 39423
          mmTop = 1058
          mmWidth = 4233
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
          DataField = 'Kh'
          DataPipeline = ppBDEPipeline2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ReprintOnSubsequent = True
          ResetGroup = ppGroup1
          SuppressRepeatedValues = True
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3387
          mmLeft = 98954
          mmTop = 1058
          mmWidth = 3217
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
          DataField = 'Sh'
          DataPipeline = ppBDEPipeline2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ReprintOnSubsequent = True
          ResetGroup = ppGroup1
          SuppressRepeatedValues = True
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3387
          mmLeft = 140759
          mmTop = 1058
          mmWidth = 2794
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
          DataField = 'Cm'
          DataPipeline = ppBDEPipeline2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3387
          mmLeft = 150019
          mmTop = 1058
          mmWidth = 3852
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
          DataField = 'Mjjs'
          DataPipeline = ppBDEPipeline2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3387
          mmLeft = 171652
          mmTop = 1058
          mmWidth = 4826
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
          DataField = 'Mjs'
          DataPipeline = ppBDEPipeline2
          DisplayFormat = '#,0.0;-#,0.0'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 3387
          mmLeft = 186395
          mmTop = 1058
          mmWidth = 4106
          BandType = 4
        end
        object ppShape1: TppShape
          UserName = 'Shape1'
          mmHeight = 5027
          mmLeft = 37835
          mmTop = 264
          mmWidth = 265
          BandType = 4
        end
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 5027
          mmLeft = 97896
          mmTop = 264
          mmWidth = 265
          BandType = 4
        end
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 5027
          mmLeft = 139436
          mmTop = 264
          mmWidth = 265
          BandType = 4
        end
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 5027
          mmLeft = 148696
          mmTop = 264
          mmWidth = 265
          BandType = 4
        end
        object ppShape6: TppShape
          UserName = 'Shape6'
          mmHeight = 5027
          mmLeft = 160602
          mmTop = 264
          mmWidth = 265
          BandType = 4
        end
        object ppShape9: TppShape
          UserName = 'Shape9'
          mmHeight = 5027
          mmLeft = 178330
          mmTop = 264
          mmWidth = 265
          BandType = 4
        end
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 54240
      mmPrintPosition = 0
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #36664#20837#25289#24067#35336#21123#20154#21729#31805#21517
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 7408
        mmTop = 4498
        mmWidth = 28363
        BandType = 8
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CAD'#20027#31649#31805#21517
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 73290
        mmTop = 4498
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CUT'#20027#31649#31805#21517
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 139436
        mmTop = 4498
        mmWidth = 16637
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 36777
        mmTop = 7673
        mmWidth = 28310
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 91281
        mmTop = 7673
        mmWidth = 28310
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 157692
        mmTop = 7673
        mmWidth = 28310
        BandType = 8
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Lines.Strings = (
          #20013#37002#33394#24046#22044#26550': '#27880#24847#21516#21582#30908#27171#29255#22312#24067#23553#26041#21521#25490#21516#19968#39640#24230', '#21487#20197#25289#21512#25484'.'
          #38957#23614#33394#24046#22044#26550': '#27880#24847#21516#21582#30908#27171#29255#22312#24067#38263#26041#21521#25490#21516#19968#39640#24230', '#24517#38920#25289#21934#24373'.'
          #38957#23614#20013#37002#33394#24046#22044#26550': '#27880#24847#21516#20214#20221#25490#22312#38468#36817#19968#36215', '#21516#19968#39640#24230', '#22044#26550#19981#36229#36942'1.5'#31859', '#24517#38920#25289#21934#24373', '#21516#20214#20221#32362#30059#27171#29255#35201#30456#21516#32232#34399'.'
          #25289#21934#24373': '#25289#24067#21069#35201#30475#29983#29986#36774', '#27770#23450#25289#24067#24213#38754#26041#21521', '#27599#29255#24067#35201#21516#19968#26041#21521', '#25490#22044#26550#19981#33021#25490#21322#20214'.'
          #30095#23380','#32178#24067','#32353#33457'LACE'#24067#26009#24517#38920#23433#25490#29992#36939#21098#35009#21106'.'
          #38617#25289#24067#26009#24517#38920#20808#35009#19968#24202#24453'24'#23567#26178#21518#30475#35009#29255#36852#32302#24773#27841#25165#32380#32396#25289#35009'.'
          #24067#26009#24517#38920#25353#36074#27298#37096#33258#28982#36852#32302#28204#35430#35201#27714#26178#38480#23436#25104#26494#24067'.'
          #19981#25509#21463#21487#29992#24067#23553#22823#20110#22044#26550#23553#24230'2'#21400#31859'.'
          #19981#25509#21463#25289#24067#38263#24230#22823#20110#22044#26550#38263#24230'2'#21400#31859'.'
          #39361#24067#38263#24230#24517#38920#31561#20110#35442#22044#26550#20043#26368#22823#27171#29255#38263#24230'.'
          
            #24067#26009#39'12108(2WT00006A)'#21450'12060(2WT00005A)'#39#24517#38920#25490#21069#21518#20013#37002#33394#24046#22044#26550#65292#25289#12289#35009#12289#22519#37117#24517#38920#25353#39'PLMR'#39 +
            #20570#27861'.')
        Transparent = True
        mmHeight = 42863
        mmLeft = 7408
        mmTop = 10319
        mmWidth = 170127
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'yMd'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180711
        mmTop = 47890
        mmWidth = 8213
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'wlmc'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
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
    object ppGroup4: TppGroup
      BreakName = 'Xh'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 64294
        mmPrintPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape5'
          mmHeight = 56621
          mmLeft = 8202
          mmTop = 6350
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #24050#23436#25104#24373#25976
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 10054
          mmTop = 1852
          mmWidth = 14182
          BandType = 5
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #26085#26399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 35719
          mmTop = 1852
          mmWidth = 5673
          BandType = 5
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #26178#38291
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 55298
          mmTop = 1852
          mmWidth = 5673
          BandType = 5
          GroupNo = 1
        end
        object ppLabel26: TppLabel
          UserName = 'Label28'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #32068#38263#31805#21517
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 76729
          mmTop = 1852
          mmWidth = 11345
          BandType = 5
          GroupNo = 1
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 56356
          mmLeft = 96044
          mmTop = 6350
          mmWidth = 265
          BandType = 5
          GroupNo = 1
        end
        object ppLabel27: TppLabel
          UserName = 'Label34'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #24050#23436#25104#24373#25976
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 100277
          mmTop = 1852
          mmWidth = 14182
          BandType = 5
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label37'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #26085#26399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 125942
          mmTop = 1852
          mmWidth = 5673
          BandType = 5
          GroupNo = 1
        end
        object ppLabel29: TppLabel
          UserName = 'Label38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #26178#38291
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 145521
          mmTop = 1852
          mmWidth = 5673
          BandType = 5
          GroupNo = 1
        end
        object ppLabel30: TppLabel
          UserName = 'Label301'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #32068#38263#31805#21517
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 166952
          mmTop = 1852
          mmWidth = 11345
          BandType = 5
          GroupNo = 1
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 12435
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 56356
          mmLeft = 97102
          mmTop = 6350
          mmWidth = 265
          BandType = 5
          GroupNo = 1
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 17992
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine21: TppLine
          UserName = 'Line21'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 23548
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 29104
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine23: TppLine
          UserName = 'Line23'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 34660
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine24: TppLine
          UserName = 'Line24'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 40217
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 45773
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine26: TppLine
          UserName = 'Line26'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 51329
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine27: TppLine
          UserName = 'Line27'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 8202
          mmTop = 57150
          mmWidth = 177007
          BandType = 5
          GroupNo = 1
        end
        object ppLine28: TppLine
          UserName = 'Line28'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 56356
          mmLeft = 28046
          mmTop = 6350
          mmWidth = 1588
          BandType = 5
          GroupNo = 1
        end
        object ppLine29: TppLine
          UserName = 'Line29'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 56356
          mmLeft = 48154
          mmTop = 6350
          mmWidth = 1588
          BandType = 5
          GroupNo = 1
        end
        object ppLine30: TppLine
          UserName = 'Line30'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 56356
          mmLeft = 71173
          mmTop = 6350
          mmWidth = 529
          BandType = 5
          GroupNo = 1
        end
        object ppLine31: TppLine
          UserName = 'Line31'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 56356
          mmLeft = 118004
          mmTop = 6615
          mmWidth = 1588
          BandType = 5
          GroupNo = 1
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 56356
          mmLeft = 138113
          mmTop = 6615
          mmWidth = 1588
          BandType = 5
          GroupNo = 1
        end
        object ppLine33: TppLine
          UserName = 'Line301'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 56356
          mmLeft = 161132
          mmTop = 6615
          mmWidth = 529
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Xh'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 61648
        mmPrintPosition = 0
        object region2: TppRegion
          UserName = 'Region2'
          mmHeight = 33602
          mmLeft = 4233
          mmTop = 22225
          mmWidth = 189442
          BandType = 3
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel78: TppLabel
            UserName = 'Label29'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #29289#26009#21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 7937
            mmTop = 27252
            mmWidth = 11345
            BandType = 3
            GroupNo = 1
          end
          object ppDBText28: TppDBText
            UserName = 'DBText28'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Wl'
            DataPipeline = ppBDEPipeline1
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            DataPipelineName = 'ppBDEPipeline1'
            mmHeight = 3429
            mmLeft = 26194
            mmTop = 27252
            mmWidth = 3429
            BandType = 3
            GroupNo = 1
          end
          object ppLabel79: TppLabel
            UserName = 'Label30'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #29983#29986#22044#26550#29992#37327'(M)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 101071
            mmTop = 27252
            mmWidth = 21167
            BandType = 3
            GroupNo = 1
          end
          object ppLabel80: TppLabel
            UserName = 'Label33'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #35009'   '#24202'   '#33258'   '#37197
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 36
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 15240
            mmLeft = 56885
            mmTop = 37571
            mmWidth = 81068
            BandType = 3
            GroupNo = 1
          end
          object ppDBText29: TppDBText
            UserName = 'DBText29'
            HyperlinkColor = clBlue
            AutoSize = True
            BlankWhenZero = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Mjyl'
            DataPipeline = ppBDEPipeline1
            DisplayFormat = '#,0.0000;-#,0.0000'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            DataPipelineName = 'ppBDEPipeline1'
            mmHeight = 3429
            mmLeft = 124884
            mmTop = 27252
            mmWidth = 5292
            BandType = 3
            GroupNo = 1
          end
        end
        object Region1: TppRegion
          UserName = 'Region1'
          mmHeight = 33602
          mmLeft = 4498
          mmTop = 22225
          mmWidth = 189442
          BandType = 3
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppLabel53: TppLabel
            UserName = 'Label53'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #29289#26009#21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 8202
            mmTop = 24606
            mmWidth = 11345
            BandType = 3
            GroupNo = 1
          end
          object ppLabel54: TppLabel
            UserName = 'Label54'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #22044#26550#32232#34399
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 73290
            mmTop = 24606
            mmWidth = 11345
            BandType = 3
            GroupNo = 1
          end
          object ppLabel55: TppLabel
            UserName = 'Label55'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #38928#31639#25289#24067#24373#25976
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 8202
            mmTop = 29633
            mmWidth = 17018
            BandType = 3
            GroupNo = 1
          end
          object ppLabel56: TppLabel
            UserName = 'Label56'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #29983#29986#22044#26550#21608#38263'(CM)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 8202
            mmTop = 45508
            mmWidth = 22945
            BandType = 3
            GroupNo = 1
          end
          object ppLabel57: TppLabel
            UserName = 'Label57'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #29983#29986#22044#26550#38263#24230'(M)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 72231
            mmTop = 29633
            mmWidth = 21167
            BandType = 3
            GroupNo = 1
          end
          object ppLabel59: TppLabel
            UserName = 'Label59'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #38928#31639#22044#26550#23553#24230'(MM)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 137584
            mmTop = 29633
            mmWidth = 23537
            BandType = 3
            GroupNo = 1
          end
          object ppLabel60: TppLabel
            UserName = 'Label60'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #29983#29986#22044#26550#23553#24230'(MM)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 8202
            mmTop = 34925
            mmWidth = 23537
            BandType = 3
            GroupNo = 1
          end
          object ppLabel61: TppLabel
            UserName = 'Label61'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #21934#24373#22044#26550#29255#25976
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 72231
            mmTop = 34925
            mmWidth = 17018
            BandType = 3
            GroupNo = 1
          end
          object ppLabel63: TppLabel
            UserName = 'Label601'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #29983#29986#22044#26550#29992#37327'(M)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 8202
            mmTop = 40217
            mmWidth = 21167
            BandType = 3
            GroupNo = 1
          end
          object ppLabel64: TppLabel
            UserName = 'Label64'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #29992#24067#29575'(%)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 72232
            mmTop = 40217
            mmWidth = 12488
            BandType = 3
            GroupNo = 1
          end
          object ppLabel65: TppLabel
            UserName = 'Label65'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #35009#21106#26178#38291'(MIN)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 137584
            mmTop = 40217
            mmWidth = 18288
            BandType = 3
            GroupNo = 1
          end
          object ppLabel66: TppLabel
            UserName = 'Label602'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #26368#22823#27171#29255#38263#24230'(CM)'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 72231
            mmTop = 46038
            mmWidth = 22945
            BandType = 3
            GroupNo = 1
          end
          object ppLabel69: TppLabel
            UserName = 'Label69'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Caption = #27599#24202#22044#26550#20214#25976
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3387
            mmLeft = 8202
            mmTop = 50800
            mmWidth = 17018
            BandType = 3
            GroupNo = 1
          end
          object wlmc: TppDBText
            UserName = 'wlmc'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'wl'
            DataPipeline = ppBDEPipeline1
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            DataPipelineName = 'ppBDEPipeline1'
            mmHeight = 3429
            mmLeft = 29104
            mmTop = 25135
            mmWidth = 3429
            BandType = 3
            GroupNo = 1
          end
          object ppLine4: TppLine
            UserName = 'Line4'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 28840
            mmTop = 28310
            mmWidth = 38100
            BandType = 3
            GroupNo = 1
          end
          object ppLine5: TppLine
            UserName = 'Line5'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 96573
            mmTop = 33073
            mmWidth = 38894
            BandType = 3
            GroupNo = 1
          end
          object ppLine6: TppLine
            UserName = 'Line6'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 32544
            mmTop = 38100
            mmWidth = 34396
            BandType = 3
            GroupNo = 1
          end
          object ppLine7: TppLine
            UserName = 'Line7'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 32544
            mmTop = 43127
            mmWidth = 34396
            BandType = 3
            GroupNo = 1
          end
          object ppLine8: TppLine
            UserName = 'Line8'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 32544
            mmTop = 48683
            mmWidth = 34396
            BandType = 3
            GroupNo = 1
          end
          object ppLine10: TppLine
            UserName = 'Line10'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 87048
            mmTop = 28310
            mmWidth = 103452
            BandType = 3
            GroupNo = 1
          end
          object ppLine12: TppLine
            UserName = 'Line12'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 96574
            mmTop = 38100
            mmWidth = 38629
            BandType = 3
            GroupNo = 1
          end
          object ppLine13: TppLine
            UserName = 'Line13'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 96574
            mmTop = 43127
            mmWidth = 38629
            BandType = 3
            GroupNo = 1
          end
          object ppLine14: TppLine
            UserName = 'Line14'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 96573
            mmTop = 48683
            mmWidth = 38629
            BandType = 3
            GroupNo = 1
          end
          object ppLine15: TppLine
            UserName = 'Line15'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 32544
            mmTop = 53711
            mmWidth = 34396
            BandType = 3
            GroupNo = 1
          end
          object ppLine16: TppLine
            UserName = 'Line101'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 32544
            mmTop = 33338
            mmWidth = 34396
            BandType = 3
            GroupNo = 1
          end
          object ppLine17: TppLine
            UserName = 'Line17'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 161925
            mmTop = 33073
            mmWidth = 28310
            BandType = 3
            GroupNo = 1
          end
          object ppLine19: TppLine
            UserName = 'Line19'
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Weight = 0.750000000000000000
            mmHeight = 265
            mmLeft = 161925
            mmTop = 43127
            mmWidth = 28046
            BandType = 3
            GroupNo = 1
          end
          object ppDBText44: TppDBText
            UserName = 'DBText25'
            HyperlinkColor = clBlue
            AutoSize = True
            BlankWhenZero = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Zdypcd'
            DataPipeline = ppBDEPipeline1
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            DataPipelineName = 'ppBDEPipeline1'
            mmHeight = 3429
            mmLeft = 97367
            mmTop = 45244
            mmWidth = 8467
            BandType = 3
            GroupNo = 1
          end
          object mjbh: TppLabel
            UserName = 'Label26'
            HyperlinkColor = clBlue
            AutoSize = False
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2921
            mmLeft = 87313
            mmTop = 25135
            mmWidth = 105040
            BandType = 3
            GroupNo = 1
          end
          object zmjjs: TppLabel
            UserName = 'Label27'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 2921
            mmLeft = 32808
            mmTop = 50536
            mmWidth = 11134
            BandType = 3
            GroupNo = 1
          end
          object ppDBText25: TppDBText
            UserName = 'DBText15'
            HyperlinkColor = clBlue
            AutoSize = True
            BlankWhenZero = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Ysmjfd'
            DataPipeline = ppBDEPipeline1
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            DataPipelineName = 'ppBDEPipeline1'
            mmHeight = 3429
            mmLeft = 161925
            mmTop = 29633
            mmWidth = 8213
            BandType = 3
            GroupNo = 1
          end
          object yslbzs: TppLabel
            UserName = 'yslbzs'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3429
            mmLeft = 32808
            mmTop = 29898
            mmWidth = 6858
            BandType = 3
            GroupNo = 1
          end
          object scmjcd: TppLabel
            UserName = 'scmjcd'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3429
            mmLeft = 97367
            mmTop = 29633
            mmWidth = 7662
            BandType = 3
            GroupNo = 1
          end
          object scmjfd: TppLabel
            UserName = 'scmjfd'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3429
            mmLeft = 32808
            mmTop = 34925
            mmWidth = 7408
            BandType = 3
            GroupNo = 1
          end
          object ybl: TppLabel
            UserName = 'ybl'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3429
            mmLeft = 97367
            mmTop = 39688
            mmWidth = 3429
            BandType = 3
            GroupNo = 1
          end
          object scmjzc: TppLabel
            UserName = 'scmjzc'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3429
            mmLeft = 32808
            mmTop = 45244
            mmWidth = 7662
            BandType = 3
            GroupNo = 1
          end
          object dzmjps: TppLabel
            UserName = 'dzmjps'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3429
            mmLeft = 97367
            mmTop = 34925
            mmWidth = 7959
            BandType = 3
            GroupNo = 1
          end
          object jhcgzsj: TppLabel
            UserName = 'jhcgzsj'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3429
            mmLeft = 161925
            mmTop = 39688
            mmWidth = 7662
            BandType = 3
            GroupNo = 1
          end
          object scmjyl: TppLabel
            UserName = 'scmjyl'
            HyperlinkColor = clBlue
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3429
            mmLeft = 32808
            mmTop = 39952
            mmWidth = 7408
            BandType = 3
            GroupNo = 1
          end
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #24037#31243#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 10583
          mmTop = 57944
          mmWidth = 8509
          BandType = 3
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #21046#21934#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 50271
          mmTop = 57944
          mmWidth = 8509
          BandType = 3
          GroupNo = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27454#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 110067
          mmTop = 57944
          mmWidth = 5673
          BandType = 3
          GroupNo = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #33394#34399
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 140229
          mmTop = 57944
          mmWidth = 5673
          BandType = 3
          GroupNo = 1
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #22283#38555#30908
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 150019
          mmTop = 57944
          mmWidth = 8509
          BandType = 3
          GroupNo = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #38928#35009#25976
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 168275
          mmTop = 57944
          mmWidth = 8509
          BandType = 3
          GroupNo = 1
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #21934#24373#25976
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 183092
          mmTop = 57944
          mmWidth = 8509
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27161#28310#22044#26550'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 15081
          mmTop = 6350
          mmWidth = 12785
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #21934#27454'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 15081
          mmTop = 11642
          mmWidth = 7112
          BandType = 3
          GroupNo = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #28151#27454'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 15081
          mmTop = 17198
          mmWidth = 7112
          BandType = 3
          GroupNo = 1
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #20013#37002#33394#24046#22044#26550'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 43921
          mmTop = 6350
          mmWidth = 18457
          BandType = 3
          GroupNo = 1
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #21934#33394'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 43921
          mmTop = 11642
          mmWidth = 7112
          BandType = 3
          GroupNo = 1
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #28151#33394'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 43921
          mmTop = 17198
          mmWidth = 7112
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #38957#23614#33394#24046#22044#26550'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 80433
          mmTop = 6350
          mmWidth = 18457
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #21934#21046#21934'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 80433
          mmTop = 11642
          mmWidth = 9948
          BandType = 3
          GroupNo = 1
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #28151#21046#21934'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 80433
          mmTop = 17198
          mmWidth = 9948
          BandType = 3
          GroupNo = 1
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #30896#25758#32218'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 118798
          mmTop = 6350
          mmWidth = 9948
          BandType = 3
          GroupNo = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #25289#21934#24373'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 118798
          mmTop = 11642
          mmWidth = 9948
          BandType = 3
          GroupNo = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #25289#21512#25484'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 118798
          mmTop = 17198
          mmWidth = 9948
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #38957#23614#20013#37002#33394#24046#22044#26550'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 146844
          mmTop = 6350
          mmWidth = 24130
          BandType = 3
          GroupNo = 1
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #25289#21516#21521#21512#25484#35009'  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 146844
          mmTop = 11642
          mmWidth = 18457
          BandType = 3
          GroupNo = 1
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #27880#24847#33394#24046'('#37325#26032#32771#24942#35009#24202#29983#29986#25613#32791')  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 146844
          mmTop = 17198
          mmWidth = 42926
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox1: TmyDBCheckBox
          UserName = 'DBCheckBox1'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Bzmj'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 9790
          mmTop = 5292
          mmWidth = 4763
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox2: TmyDBCheckBox
          UserName = 'DBCheckBox2'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Dk'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 9790
          mmTop = 10583
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox3: TmyDBCheckBox
          UserName = 'DBCheckBox3'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Hk'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 9790
          mmTop = 16140
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox4: TmyDBCheckBox
          UserName = 'DBCheckBox4'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Zbmj'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 38629
          mmTop = 5292
          mmWidth = 4763
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox5: TmyDBCheckBox
          UserName = 'DBCheckBox5'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Ds'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 38629
          mmTop = 10583
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox6: TmyDBCheckBox
          UserName = 'DBCheckBox6'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Hs'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 38629
          mmTop = 16140
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox7: TmyDBCheckBox
          UserName = 'DBCheckBox7'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Twmj'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 75142
          mmTop = 5292
          mmWidth = 4763
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox8: TmyDBCheckBox
          UserName = 'DBCheckBox8'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Dzd'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 75142
          mmTop = 10583
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox9: TmyDBCheckBox
          UserName = 'DBCheckBox9'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Hzd'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 75142
          mmTop = 16140
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox10: TmyDBCheckBox
          UserName = 'DBCheckBox10'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Pzx'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 113506
          mmTop = 5292
          mmWidth = 4763
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox11: TmyDBCheckBox
          UserName = 'DBCheckBox11'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Ldz'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 113506
          mmTop = 10583
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox12: TmyDBCheckBox
          UserName = 'DBCheckBox12'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Lhz'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 113506
          mmTop = 16140
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox13: TmyDBCheckBox
          UserName = 'DBCheckBox101'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Yymj'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 141288
          mmTop = 5292
          mmWidth = 4763
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox14: TmyDBCheckBox
          UserName = 'DBCheckBox14'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Yqxg'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 141288
          mmTop = 10583
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object myDBCheckBox15: TmyDBCheckBox
          UserName = 'DBCheckBox15'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = ppBDEPipeline1
          DataField = 'Zysc'
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 5556
          mmLeft = 141288
          mmTop = 16140
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label23'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #31532
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 6615
          mmTop = 1588
          mmWidth = 2879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label32'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = #24202
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 16933
          mmTop = 1588
          mmWidth = 2879
          BandType = 3
          GroupNo = 1
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Xh'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2921
          mmLeft = 12171
          mmTop = 1588
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Mjstatus'
          DataPipeline = ppBDEPipeline1
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 3429
          mmLeft = 30692
          mmTop = 1588
          mmWidth = 9525
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand2BeforePrint
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 25400
        mmPrintPosition = 0
        object fcgch: TppLabel
          UserName = 'fcgch'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 7144
          mmTop = 1058
          mmWidth = 29633
          BandType = 5
          GroupNo = 1
        end
        object fczdh: TppLabel
          UserName = 'fczdh'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 42069
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object fckh: TppLabel
          UserName = 'fckh'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 69850
          mmTop = 1058
          mmWidth = 35454
          BandType = 5
          GroupNo = 1
        end
        object fcsh: TppLabel
          UserName = 'fcsh'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 110067
          mmTop = 1058
          mmWidth = 14817
          BandType = 5
          GroupNo = 1
        end
        object fccm: TppLabel
          UserName = 'fccm'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 133879
          mmTop = 1058
          mmWidth = 8202
          BandType = 5
          GroupNo = 1
        end
        object fcmjjs: TppLabel
          UserName = 'fcmjjs'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 145786
          mmTop = 1058
          mmWidth = 29104
          BandType = 5
          GroupNo = 1
        end
        object fcmjs: TppLabel
          UserName = 'fcmjs'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 179388
          mmTop = 1058
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object fcgch1: TppLabel
          UserName = 'fcgch1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcgch1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 7144
          mmTop = 5821
          mmWidth = 29633
          BandType = 5
          GroupNo = 1
        end
        object fczdh1: TppLabel
          UserName = 'fczdh1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fczdh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 42069
          mmTop = 5821
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object fckh1: TppLabel
          UserName = 'fckh1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fckh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 69850
          mmTop = 5821
          mmWidth = 35454
          BandType = 5
          GroupNo = 1
        end
        object fcsh1: TppLabel
          UserName = 'fcsh1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcsh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 110067
          mmTop = 5821
          mmWidth = 14817
          BandType = 5
          GroupNo = 1
        end
        object fccm1: TppLabel
          UserName = 'fccm1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fccm1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 133879
          mmTop = 5821
          mmWidth = 8202
          BandType = 5
          GroupNo = 1
        end
        object fcmjjs1: TppLabel
          UserName = 'fcmjjs1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcmjjs1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 145786
          mmTop = 5821
          mmWidth = 29104
          BandType = 5
          GroupNo = 1
        end
        object fcmjs1: TppLabel
          UserName = 'fcmjs1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcmjs1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 179388
          mmTop = 5821
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object fcgch2: TppLabel
          UserName = 'fcgch2'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcgch1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 7144
          mmTop = 10583
          mmWidth = 29633
          BandType = 5
          GroupNo = 1
        end
        object fczdh2: TppLabel
          UserName = 'fczdh2'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fczdh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 42069
          mmTop = 10583
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object fckh2: TppLabel
          UserName = 'fckh2'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fckh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 69850
          mmTop = 10583
          mmWidth = 35454
          BandType = 5
          GroupNo = 1
        end
        object fcsh2: TppLabel
          UserName = 'fcsh2'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcsh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 110067
          mmTop = 10583
          mmWidth = 14817
          BandType = 5
          GroupNo = 1
        end
        object fccm2: TppLabel
          UserName = 'fccm2'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fccm1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 133879
          mmTop = 10583
          mmWidth = 8202
          BandType = 5
          GroupNo = 1
        end
        object fcmjjs2: TppLabel
          UserName = 'fcmjjs2'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcmjjs1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 145786
          mmTop = 10583
          mmWidth = 29104
          BandType = 5
          GroupNo = 1
        end
        object fcmjs2: TppLabel
          UserName = 'fcmjs2'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcmjs1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 179388
          mmTop = 10583
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object fcgch3: TppLabel
          UserName = 'fcgch3'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcgch1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 7144
          mmTop = 15346
          mmWidth = 29633
          BandType = 5
          GroupNo = 1
        end
        object fczdh3: TppLabel
          UserName = 'fczdh3'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fczdh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 42069
          mmTop = 15346
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object fckh3: TppLabel
          UserName = 'fckh3'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fckh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 69850
          mmTop = 15346
          mmWidth = 35454
          BandType = 5
          GroupNo = 1
        end
        object fcsh3: TppLabel
          UserName = 'fcsh3'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcsh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 110067
          mmTop = 15346
          mmWidth = 14817
          BandType = 5
          GroupNo = 1
        end
        object fccm3: TppLabel
          UserName = 'fccm3'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fccm1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 133879
          mmTop = 15346
          mmWidth = 8202
          BandType = 5
          GroupNo = 1
        end
        object fcmjjs3: TppLabel
          UserName = 'fcmjjs3'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcmjjs1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 145786
          mmTop = 15346
          mmWidth = 29104
          BandType = 5
          GroupNo = 1
        end
        object fcmjs3: TppLabel
          UserName = 'fcmjs3'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcmjs1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 179388
          mmTop = 15346
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object fcgch4: TppLabel
          UserName = 'fcgch4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcgch1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 7144
          mmTop = 20108
          mmWidth = 29633
          BandType = 5
          GroupNo = 1
        end
        object fczdh4: TppLabel
          UserName = 'fczdh4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fczdh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 42069
          mmTop = 20108
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object fckh4: TppLabel
          UserName = 'fckh4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fckh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 69850
          mmTop = 20108
          mmWidth = 35454
          BandType = 5
          GroupNo = 1
        end
        object fcsh4: TppLabel
          UserName = 'fcsh4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcsh1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 110067
          mmTop = 20108
          mmWidth = 14817
          BandType = 5
          GroupNo = 1
        end
        object fccm4: TppLabel
          UserName = 'fccm4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fccm1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 133879
          mmTop = 20108
          mmWidth = 8202
          BandType = 5
          GroupNo = 1
        end
        object fcmjjs4: TppLabel
          UserName = 'fcmjjs4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcmjjs1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 145786
          mmTop = 20108
          mmWidth = 29104
          BandType = 5
          GroupNo = 1
        end
        object fcmjs4: TppLabel
          UserName = 'fcmjs4'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'fcmjs1'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 3387
          mmLeft = 179388
          mmTop = 20108
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DataSource2: TDataSource
    DataSet = lbwld
    Left = 616
    Top = 304
  end
  object ppBDEPipeline4: TppBDEPipeline
    DataSource = DataSource2
    UserName = 'BDEPipeline4'
    Left = 644
    Top = 304
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline4
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport3PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 672
    Top = 304
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline4'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppLabel39: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35336#21123' '#25976#37327#20998#26512'('#26681#25818#21046#21934') '
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6731
        mmLeft = 66411
        mmTop = 3704
        mmWidth = 63415
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #26085#26399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 164836
        mmTop = 6615
        mmWidth = 7959
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'hns'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 6615
        mmWidth = 6604
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38913#25976':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164836
        mmTop = 11113
        mmWidth = 7959
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 175684
        mmTop = 11113
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#32232#34399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 11113
        mmWidth = 15198
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Prjno'
        DataPipeline = ppBDEPipeline4
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline4'
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 11113
        mmWidth = 7366
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 41275
        mmTop = 17463
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 9525
        mmTop = 17463
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27454#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 89429
        mmTop = 17463
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33394#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 121973
        mmTop = 17463
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 147109
        mmTop = 17463
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #38928#35009#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 159015
        mmTop = 17463
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22810#35009'%'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 184150
        mmTop = 17463
        mmWidth = 7874
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22283#38555#30908
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 134673
        mmTop = 17463
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #22810#35009#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 171715
        mmTop = 17463
        mmWidth = 8509
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppRegion4: TppRegion
        UserName = 'Region3'
        mmHeight = 6350
        mmLeft = 2646
        mmTop = 0
        mmWidth = 191823
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText35: TppDBText
          UserName = 'DBText1'
          HyperlinkColor = clBlue
          Anchors = [atLeft, atBottom]
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Gch'
          DataPipeline = ppBDEPipeline4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ReprintOnSubsequent = True
          ResetGroup = ppGroup3
          SuppressRepeatedValues = True
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 29633
          mmTop = 1852
          mmWidth = 4403
          BandType = 4
        end
        object ppDBText36: TppDBText
          UserName = 'DBText3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Zdh'
          DataPipeline = ppBDEPipeline4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ReprintOnSubsequent = True
          ResetGroup = ppGroup3
          SuppressRepeatedValues = True
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 3969
          mmTop = 1852
          mmWidth = 4233
          BandType = 4
        end
        object ppDBText37: TppDBText
          UserName = 'DBText4'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Kh'
          DataPipeline = ppBDEPipeline4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ReprintOnSubsequent = True
          SuppressRepeatedValues = True
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 65352
          mmTop = 1852
          mmWidth = 3217
          BandType = 4
        end
        object ppDBText38: TppDBText
          UserName = 'DBText5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Sh'
          DataPipeline = ppBDEPipeline4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ReprintOnSubsequent = True
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 120121
          mmTop = 1852
          mmWidth = 8202
          BandType = 4
        end
        object ppDBText39: TppDBText
          UserName = 'DBText7'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Zds'
          DataPipeline = ppBDEPipeline4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 152432
          mmTop = 1852
          mmWidth = 3937
          BandType = 4
        end
        object ppDBText40: TppDBText
          UserName = 'DBText8'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Mjjs'
          DataPipeline = ppBDEPipeline4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 164243
          mmTop = 1852
          mmWidth = 4826
          BandType = 4
        end
        object ppDBText41: TppDBText
          UserName = 'DBText11'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Dcpercent'
          DataPipeline = ppBDEPipeline4
          DisplayFormat = '0.00 %'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 182267
          mmTop = 1852
          mmWidth = 10880
          BandType = 4
        end
        object ppShape19: TppShape
          UserName = 'Shape1'
          mmHeight = 6085
          mmLeft = 28840
          mmTop = 265
          mmWidth = 265
          BandType = 4
        end
        object ppShape21: TppShape
          UserName = 'Shape3'
          mmHeight = 6085
          mmLeft = 64294
          mmTop = 265
          mmWidth = 265
          BandType = 4
        end
        object ppShape22: TppShape
          UserName = 'Shape4'
          mmHeight = 6085
          mmLeft = 118798
          mmTop = 265
          mmWidth = 265
          BandType = 4
        end
        object ppShape23: TppShape
          UserName = 'Shape5'
          mmHeight = 6085
          mmLeft = 132292
          mmTop = 265
          mmWidth = 265
          BandType = 4
        end
        object ppShape24: TppShape
          UserName = 'Shape6'
          mmHeight = 6085
          mmLeft = 169863
          mmTop = 265
          mmWidth = 265
          BandType = 4
        end
        object ppShape25: TppShape
          UserName = 'Shape7'
          mmHeight = 6085
          mmLeft = 182034
          mmTop = 265
          mmWidth = 265
          BandType = 4
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Dcs'
          DataPipeline = ppBDEPipeline4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 176341
          mmTop = 1852
          mmWidth = 4106
          BandType = 4
        end
        object ppShape26: TppShape
          UserName = 'Shape26'
          mmHeight = 6085
          mmLeft = 145521
          mmTop = 265
          mmWidth = 265
          BandType = 4
        end
        object ppShape27: TppShape
          UserName = 'Shape27'
          mmHeight = 6085
          mmLeft = 157427
          mmTop = 265
          mmWidth = 265
          BandType = 4
        end
        object ppDBText24: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Cm'
          DataPipeline = ppBDEPipeline4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Name = #26032#32048#26126#39636
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEPipeline4'
          mmHeight = 3387
          mmLeft = 134938
          mmTop = 1852
          mmWidth = 3852
          BandType = 4
        end
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'yMd'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 1058
        mmWidth = 8255
        BandType = 8
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Kh'
      DataPipeline = ppBDEPipeline4
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline4'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppRegion5: TppRegion
          UserName = 'Region5'
          mmHeight = 6615
          mmLeft = 2646
          mmTop = 0
          mmWidth = 191823
          BandType = 5
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppDBCalc1: TppDBCalc
            UserName = 'DBCalc1'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Zds'
            DataPipeline = ppBDEPipeline4
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            ResetGroup = ppGroup3
            TextAlignment = taRightJustified
            Transparent = True
            DataPipelineName = 'ppBDEPipeline4'
            mmHeight = 3387
            mmLeft = 145447
            mmTop = 1852
            mmWidth = 10922
            BandType = 5
            GroupNo = 0
          end
          object ppDBCalc2: TppDBCalc
            UserName = 'DBCalc2'
            HyperlinkColor = clBlue
            AutoSize = True
            Border.BorderPositions = []
            Border.Color = clBlack
            Border.Style = psSolid
            Border.Visible = False
            DataField = 'Mjjs'
            DataPipeline = ppBDEPipeline4
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Name = #26032#32048#26126#39636
            Font.Size = 8
            Font.Style = [fsBold]
            ResetGroup = ppGroup3
            TextAlignment = taRightJustified
            Transparent = True
            DataPipelineName = 'ppBDEPipeline4'
            mmHeight = 3387
            mmLeft = 157216
            mmTop = 1852
            mmWidth = 11853
            BandType = 5
            GroupNo = 0
          end
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 724
    Top = 400
    object N1: TMenuItem
      Caption = #21034#38500#19968#24202
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #21034#38500#25972#20491#24037#31243
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #21462#28040#25289#24067#35519#25972
      ShortCut = 116
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #20462#25913#36890#30908#23610#30908
      ShortCut = 117
      Visible = False
    end
    object N5: TMenuItem
      Caption = #22686#21152#23610#30908
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #21034#38500#23610#30908
      OnClick = N6Click
    end
  end
  object dslbjh1: TDataSource
    DataSet = lbjh1
    OnDataChange = dslbjh1DataChange
    Left = 528
    Top = 400
  end
  object dslbjh2: TDataSource
    DataSet = lbjh2
    Left = 584
    Top = 400
  end
  object dslbjh3: TDataSource
    DataSet = lbjh3
    Left = 640
    Top = 400
  end
  object dsfcwl2: TDataSource
    DataSet = fcwl2
    Left = 696
    Top = 400
  end
  object lbjhm: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cut_lbjh1 where prjno='#39'12345'#39
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 552
    Top = 504
  end
  object lbjhd: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cut_lbjh2 where prjno='#39'12345'#39
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 636
    Top = 504
  end
  object lbwld: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cut_lbwl1 where prjno='#39'ETAM194B89-PL'#39
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 588
    Top = 304
  end
  object siLang1: TsiLang
    Version = '7.6.0.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDelim = 1
    LangNames.Strings = (
      'Chinese'
      'English'
      'Thai')
    Language = 'Chinese'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields')
    Left = 392
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D006C0062006A0068000100C962035E088A
      83522D002D002D002D00E55D0B7A049365510100010001000D000A0054006100
      62005300680065006500740031000100C962035E088A83520100010001000D00
      0A00500061006E0065006C00310001000100010001000D000A004C0061006200
      65006C0031000100C1887252E55D0B7A5F860100010001000D000A004C006100
      620065006C00320001008A5E5F860100010001000D000A004C00610062006500
      6C0033000100C962035E355F78650100010001000D000A004C00610062006500
      6C00310037000100C1887252E55D0B7A5F860100010001000D000A004C006100
      620065006C00310038000100697299650100010001000D000A00530070006500
      6500640042007500740074006F006E00390001000100010001000D000A005300
      700065006500640042007500740074006F006E00310035000100010001000100
      0D000A004C006100620065006C00310030000100216A6F670D64178028006D00
      29000100010001000D000A00420069007400420074006E003100010039651A90
      BC780100010001000D000A00420069007400420074006E0033000100EE4F3965
      3A5CBC780100010001000D000A00420069007400420074006E0035000100AE55
      3E6B39651A90BC780100010001000D000A00500061006E0065006C0032000100
      0100010001000D000A007400630001000100010001000D000A00530070006500
      6500640042007500740074006F006E00310001000100010001000D000A005300
      700065006500640042007500740074006F006E00320001000100010001000D00
      0A005300700065006500640042007500740074006F006E003600010001000100
      01000D000A005300700065006500640042007500740074006F006E0038000100
      0100010001000D000A005300700065006500640042007500740074006F006E00
      3100300001000100010001000D000A0053007000650065006400420075007400
      74006F006E003100310001000100010001000D000A0053007000650065006400
      42007500740074006F006E003100320001000100010001000D000A0053007000
      65006500640042007500740074006F006E003100330001000100010001000D00
      0A005300700065006500640042007500740074006F006E003100340001000100
      010001000D000A005300700065006500640042007500740074006F006E003100
      360001000100010001000D000A00530070006500650064004200750074007400
      6F006E003100370001000100010001000D000A00530070006500650064004200
      7500740074006F006E003100380001000100010001000D000A00530070006500
      6500640042007500740074006F006E003100390001000100010001000D000A00
      420069007400420074006E00340001000100010001000D000A00420069007400
      420074006E00320001000100010001000D000A00500061006E0065006C003300
      01000100010001000D000A005400610062005300680065006500740032000100
      1C56B667C78C99650100010001000D000A00500061006E0065006C0034000100
      0100010001000D000A004C006100620065006C00370001001C56B667236A4772
      68548A903D7E7795280063006D0029000100010001000D000A004C0061006200
      65006C0035000100735E47571C56B667015CA65E28006D006D00290001000100
      01000D000A004C006100620065006C00360001001C56B6673D7E7795A65E2800
      6D0029000100010001000D000A004C006100620065006C00310032000100088A
      8352C18872524266939528006D0069006E0029000100010001000D000A004C00
      6100620065006C0039000100088A8352697299653D7E779528006D0029000100
      010001000D000A004C006100620065006C003100360001002875035E87732500
      0100010001000D000A004C006100620065006C0038000100088A8352AE55355F
      C962035E3D7E779528006D0029000100010001000D000A004C00610062006500
      6C00310034000100088A83521F7522750D64178025000100010001000D000A00
      4C006100620065006C003100390001004D91035E877325000100010001000D00
      0A004C006100620065006C0032003100010000672759236A47727795A65E2800
      63006D0029000100010001000D000A004C006100620065006C00340001001098
      977B1C56B667015CA65E28006D006D0029000100010001000D000A004C006100
      620065006C00320030000100AE55355F1C56B667477278650100010001000D00
      0A004400420043006800650063006B0042006F00780031000100C1991C56B667
      0100010001000D000A00500061006E0065006C00350001000100010001000D00
      0A005300700065006500640042007500740074006F006E003300010001000100
      01000D000A005300700065006500640042007500740074006F006E0034000100
      0100010001000D000A005300700065006500640042007500740074006F006E00
      350001000100010001000D000A00530070006500650064004200750074007400
      6F006E00370001000100010001000D000A00500061006E0065006C0036000100
      0100010001000D000A00700070004C006100620065006C00310030000100C188
      7252E890C188AE5520000100010001000D000A00700070004C00610062006500
      6C00330035000100E5651F673A000100010001000D000A00700070004C006100
      620065006C00330036000100019878653A000100010001000D000A0070007000
      4C006100620065006C00340032000100E55D0B7AE87D5F863A00010001000100
      0D000A007000700052006500670069006F006E00330001000100010001000D00
      0A00700070004C006100620065006C00360032000100388F6551C962035E088A
      8352BA4EE1543D7C0D540100010001000D000A00700070004C00610062006500
      6C003800310001004300410044003B4EA17B3D7C0D540100010001000D000A00
      700070004C006100620065006C003800320001004300550054003B4EA17B3D7C
      0D540100010001000D000A00700070004D0065006D006F00310001004D006500
      6D006F0031000100010001000D000A00700070004C006100620065006C003600
      0100F25D8C5B1062355F78650100010001000D000A00700070004C0061006200
      65006C0038000100E5651F670100010001000D000A00700070004C0061006200
      65006C0039000100426693950100010001000D000A00700070004C0061006200
      65006C00320036000100447D77953D7C0D540100010001000D000A0070007000
      4C006100620065006C00320037000100F25D8C5B1062355F7865010001000100
      0D000A00700070004C006100620065006C00320038000100E5651F6701000100
      01000D000A00700070004C006100620065006C00320039000100426693950100
      010001000D000A00700070004C006100620065006C00330030000100447D7795
      3D7C0D540100010001000D000A0072006500670069006F006E00320001000100
      010001000D000A00700070004C006100620065006C0037003800010069729965
      0D54317A0100010001000D000A00700070004C006100620065006C0037003900
      01001F7522751C56B6672875CF9128004D0029000100010001000D000A007000
      70004C006100620065006C00380030000100C1882000200020008A5E20002000
      2000EA812000200020004D910100010001000D000A0052006500670069006F00
      6E00310001000100010001000D000A00700070004C006100620065006C003500
      33000100697299650D54317A0100010001000D000A00700070004C0061006200
      65006C003500340001001C56B667E87D5F860100010001000D000A0070007000
      4C006100620065006C003500350001001098977BC962035E355F786501000100
      01000D000A00700070004C006100620065006C003500360001001F7522751C56
      B66768547795280043004D0029000100010001000D000A00700070004C006100
      620065006C003500370001001F7522751C56B6677795A65E28004D0029000100
      010001000D000A00700070004C006100620065006C003500390001001098977B
      1C56B667015CA65E28004D004D0029000100010001000D000A00700070004C00
      6100620065006C003600300001001F7522751C56B667015CA65E28004D004D00
      29000100010001000D000A00700070004C006100620065006C00360031000100
      AE55355F1C56B667477278650100010001000D000A00700070004C0061006200
      65006C003600330001001F7522751C56B6672875CF9128004D00290001000100
      01000D000A00700070004C006100620065006C003600340001002875035E8773
      2800250029000100010001000D000A00700070004C006100620065006C003600
      35000100C18872524266939528004D0049004E0029000100010001000D000A00
      700070004C006100620065006C0036003600010000672759236A47727795A65E
      280043004D0029000100010001000D000A00700070004C006100620065006C00
      360039000100CF6B8A5E1C56B667F64E78650100010001000D000A006D006A00
      6200680001000100010001000D000A007A006D006A006A007300010001000100
      01000D000A00790073006C0062007A00730001000100010001000D000A007300
      63006D006A006300640001000100010001000D000A00730063006D006A006600
      640001000100010001000D000A00790062006C0001000100010001000D000A00
      730063006D006A007A00630001000100010001000D000A0064007A006D006A00
      7000730001000100010001000D000A006A006800630067007A0073006A000100
      0100010001000D000A00730063006D006A0079006C0001000100010001000D00
      0A00700070004C006100620065006C0031000100E55D0B7A5F86010001000100
      0D000A00700070004C006100620065006C00320001003652AE555F8601000100
      01000D000A00700070004C006100620065006C00330001003E6B5F8601000100
      01000D000A00700070004C006100620065006C003400010072825F8601000100
      01000D000A00700070004C006100620065006C00350001000B579B96BC780100
      010001000D000A00700070004C006100620065006C00370001001098C1887865
      0100010001000D000A00700070004C006100620065006C00330031000100AE55
      355F78650100010001000D000A00700070004C006100620065006C0031003100
      0100196A966E1C56B667200020000100010001000D000A00700070004C006100
      620065006C00310032000100AE553E6B200020000100010001000D000A007000
      70004C006100620065006C00310033000100F76D3E6B20002000010001000100
      0D000A00700070004C006100620065006C003100340001002D4E8A907282EE5D
      1C56B667200020000100010001000D000A00700070004C006100620065006C00
      310035000100AE557282200020000100010001000D000A00700070004C006100
      620065006C00310036000100F76D7282200020000100010001000D000A007000
      70004C006100620065006C003100370001002D983E5C7282EE5D1C56B6672000
      20000100010001000D000A00700070004C006100620065006C00310038000100
      AE553652AE55200020000100010001000D000A00700070004C00610062006500
      6C00310039000100F76D3652AE55200020000100010001000D000A0070007000
      4C006100620065006C00320030000100B0789E64DA7D20002000010001000100
      0D000A00700070004C006100620065006C00320031000100C962AE55355F2000
      20000100010001000D000A00700070004C006100620065006C00320032000100
      C96208548C63200020000100010001000D000A00700070004C00610062006500
      6C003200330001002D983E5C2D4E8A907282EE5D1C56B6672000200001000100
      01000D000A00700070004C006100620065006C00320034000100C9620C541154
      08548C63C188200020000100010001000D000A00700070004C00610062006500
      6C00320035000100E86C0F617282EE5D2800CD91B06503806E61C1888A5E1F75
      22750D6417802900200020000100010001000D000A00700070004C0061006200
      65006C003300320001002C7B0100010001000D000A00700070004C0061006200
      65006C003300330001008A5E0100010001000D000A0066006300670063006800
      01000100010001000D000A00660063007A006400680001000100010001000D00
      0A00660063006B00680001000100010001000D000A0066006300730068000100
      0100010001000D000A006600630063006D0001000100010001000D000A006600
      63006D006A006A00730001000100010001000D000A00660063006D006A007300
      01000100010001000D000A006600630067006300680031000100660063006700
      6300680031000100010001000D000A00660063007A0064006800310001006600
      63007A006400680031000100010001000D000A00660063006B00680031000100
      660063006B00680031000100010001000D000A00660063007300680031000100
      660063007300680031000100010001000D000A006600630063006D0031000100
      6600630063006D0031000100010001000D000A00660063006D006A006A007300
      31000100660063006D006A006A00730031000100010001000D000A0066006300
      6D006A00730031000100660063006D006A00730031000100010001000D000A00
      6600630067006300680032000100660063006700630068003100010001000100
      0D000A00660063007A006400680032000100660063007A006400680031000100
      010001000D000A00660063006B00680032000100660063006B00680031000100
      010001000D000A00660063007300680032000100660063007300680031000100
      010001000D000A006600630063006D00320001006600630063006D0031000100
      010001000D000A00660063006D006A006A00730032000100660063006D006A00
      6A00730031000100010001000D000A00660063006D006A007300320001006600
      63006D006A00730031000100010001000D000A00660063006700630068003300
      01006600630067006300680031000100010001000D000A00660063007A006400
      680033000100660063007A006400680031000100010001000D000A0066006300
      6B00680033000100660063006B00680031000100010001000D000A0066006300
      7300680033000100660063007300680031000100010001000D000A0066006300
      63006D00330001006600630063006D0031000100010001000D000A0066006300
      6D006A006A00730033000100660063006D006A006A0073003100010001000100
      0D000A00660063006D006A00730033000100660063006D006A00730031000100
      010001000D000A00660063006700630068003400010066006300670063006800
      31000100010001000D000A00660063007A006400680034000100660063007A00
      6400680031000100010001000D000A00660063006B0068003400010066006300
      6B00680031000100010001000D000A0066006300730068003400010066006300
      7300680031000100010001000D000A006600630063006D003400010066006300
      63006D0031000100010001000D000A00660063006D006A006A00730034000100
      660063006D006A006A00730031000100010001000D000A00660063006D006A00
      730034000100660063006D006A00730031000100010001000D000A0070007000
      4C006100620065006C00330039000100088A835220007865CF91065290672800
      3968DA643652AE55290020000100010001000D000A00700070004C0061006200
      65006C00340033000100E5651F673A000100010001000D000A00700070004C00
      6100620065006C00340034000100019878653A000100010001000D000A007000
      70004C006100620065006C00340039000100E55D0B7AE87D5F863A0001000100
      01000D000A00700070004C006100620065006C00350030000100E55D0B7A5F86
      0100010001000D000A00700070004C006100620065006C003500310001003652
      AE555F860100010001000D000A00700070004C006100620065006C0035003200
      01003E6B5F860100010001000D000A00700070004C006100620065006C003700
      3000010072825F860100010001000D000A00700070004C006100620065006C00
      3700310001003652AE5578650100010001000D000A00700070004C0061006200
      65006C003700320001001098C18878650100010001000D000A00700070004C00
      6100620065006C003700330001001A59C18825000100010001000D000A007000
      70004C006100620065006C003700350001000B579B96BC780100010001000D00
      0A00700070004C006100620065006C003700360001001A59C188786501000100
      01000D000A007000700052006500670069006F006E0034000100010001000100
      0D000A007000700052006500670069006F006E00350001000100010001000D00
      0A004E00310001002A526496004E8A5E0100010001000D000A004E0032000100
      2A52649674650B50E55D0B7A0100010001000D000A004E0033000100D653886D
      C962035EBF8A74650100010001000D000A004E0034000100EE4F39651A90BC78
      3A5CBC780100010001000D000A004E00350001009E58A0523A5CBC7801000100
      01000D000A004E00360001002A5264963A5CBC780100010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      5400660072006D006C0062006A00680001000100010001000D000A0050006100
      6700650043006F006E00740072006F006C00310001000100010001000D000A00
      54006100620053006800650065007400310001000100010001000D000A005000
      61006E0065006C00310001000100010001000D000A004C006100620065006C00
      310001000100010001000D000A004C006100620065006C003200010001000100
      01000D000A004C006100620065006C00330001000100010001000D000A004C00
      6100620065006C003100370001000100010001000D000A004C00610062006500
      6C003100380001000100010001000D000A005300700065006500640042007500
      740074006F006E0039000100E567628AE55D0B7AE87D5F860100010001000D00
      0A005300700065006500640042007500740074006F006E00310035000100EE4F
      3965C962035E355F78650100010001000D000A004C006100620065006C003100
      300001000100010001000D000A00440042004500640069007400310001000100
      010001000D000A00440042004500640069007400320001000100010001000D00
      0A00440042004500640069007400330001000100010001000D000A0043006F00
      6D0062006F0042006F007800310001000100010001000D000A00440042004500
      6400690074003100370001000100010001000D000A0042006900740042007400
      6E00310001000100010001000D000A00420069007400420074006E0033000100
      0100010001000D000A0044004200450064006900740031003000010001000100
      01000D000A00420069007400420074006E00350001000100010001000D000A00
      500061006E0065006C00320001000100010001000D000A007400630001000090
      FA510100010001000D000A005300700065006500640042007500740074006F00
      6E003100010006528A5EC962035E175270530100010001000D000A0053007000
      65006500640042007500740074006F006E0032000100C962035EBF8A74650100
      010001000D000A005300700065006500640042007500740074006F006E003600
      01001C56B667FA5E708B31000100010001000D000A0053007000650065006400
      42007500740074006F006E0038000100175270530652906731584A5401000100
      01000D000A005300700065006500640042007500740074006F006E0031003000
      0100DD4F585B0100010001000D000A0053007000650065006400420075007400
      74006F006E003100310001001F7522759B52065290670100010001000D000A00
      5300700065006500640042007500740074006F006E003100320001003D84A88C
      188A04930100010001000D000A00530070006500650064004200750074007400
      6F006E00310033000100A95FFD88004E8A5E0100010001000D000A0053007000
      65006500640042007500740074006F006E00310034000100EE4F39653E6B5F86
      0100010001000D000A005300700065006500640042007500740074006F006E00
      310036000100088A83521C56B667065290670100010001000D000A0053007000
      65006500640042007500740074006F006E00310037000100216A6F670D641780
      0100010001000D000A005300700065006500640042007500740074006F006E00
      3100380001001C56B667FA5E708B32000100010001000D000A00530070006500
      6500640042007500740074006F006E003100390001001C56B667FA5E708B3300
      0100010001000D000A00440042004E006100760069006700610074006F007200
      310001000100010001000D000A00420069007400420074006E0034000100EE4F
      3965697299650100010001000D000A00420069007400420074006E0032000100
      EE4F3965E55D0B7A5F860100010001000D000A00500061006E0065006C003300
      01000100010001000D000A004400420047007200690064004500680032000100
      0100010001000D000A0054006100620053006800650065007400320001000100
      010001000D000A00500061006E0065006C00340001000100010001000D000A00
      4C006100620065006C00370001000100010001000D000A004C00610062006500
      6C00350001000100010001000D000A004C006100620065006C00360001000100
      010001000D000A004C006100620065006C003100320001000100010001000D00
      0A004C006100620065006C00390001000100010001000D000A004C0061006200
      65006C003100360001000100010001000D000A004C006100620065006C003800
      01000100010001000D000A004C006100620065006C0031003400010001000100
      01000D000A004C006100620065006C003100390001000100010001000D000A00
      4C006100620065006C003200310001000100010001000D000A004C0061006200
      65006C00340001000100010001000D000A004C006100620065006C0032003000
      01000100010001000D000A004400420045006400690074003500010001000100
      01000D000A00440042004500640069007400360001000100010001000D000A00
      440042004500640069007400370001000100010001000D000A00440042004500
      6400690074003100320001000100010001000D000A0044004200450064006900
      7400390001000100010001000D000A0044004200450064006900740031003600
      01000100010001000D000A004400420045006400690074003100340001000100
      010001000D000A00440042004500640069007400380001000100010001000D00
      0A004400420045006400690074003100380001000100010001000D000A004400
      420045006400690074003200300001000100010001000D000A00440042004500
      640069007400340001000100010001000D000A00440042004500640069007400
      3100390001000100010001000D000A004400420043006800650063006B004200
      6F007800310001000100010001000D000A00500061006E0065006C0035000100
      0100010001000D000A005300700065006500640042007500740074006F006E00
      33000100B0659E581C56B6670100010001000D000A0053007000650065006400
      42007500740074006F006E00340001002A5264961C56B6670100010001000D00
      0A005300700065006500640042007500740074006F006E00350001000090FA51
      0100010001000D000A005300700065006500640042007500740074006F006E00
      37000100DD4F585B0100010001000D000A00500061006E0065006C0036000100
      0100010001000D000A0044004200470072006900640045006800310001000100
      010001000D000A004E00310001000100010001000D000A004E00320001000100
      010001000D000A004E00330001000100010001000D000A004E00340001000100
      010001000D000A004E00350001000100010001000D000A004E00360001000100
      010001000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      72006D006C0062006A00680001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00500061006700650043006F006E00740072006F006C00
      31000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A004C006100620065006C0031000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A004C006100620065006C0032000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A004C00
      6100620065006C0033000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A004C006100620065006C00
      310037000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A004C006100620065006C00310038000100
      B065307D0E66D49A01005400610068006F006D00610001005400610068006F00
      6D00610001000D000A004C006100620065006C00310030000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A0044004200450064006900740031000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A004400
      4200450064006900740032000100B065307D0E66D49A01005400610068006F00
      6D00610001005400610068006F006D00610001000D000A004400420045006400
      6900740033000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A004400420045006400690074003100
      37000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A00440042004500640069007400310030000100
      B065307D0E66D49A01005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00420069007400420074006E0034000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00420069007400420074006E0032000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A004400
      420047007200690064004500680032000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A004C006100
      620065006C0037000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A004C006100620065006C003500
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A004C006100620065006C0036000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A004C006100620065006C00310032000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A004C00
      6100620065006C0039000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A004C006100620065006C00
      310036000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A004C006100620065006C0038000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A004C006100620065006C00310034000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A004C006100620065006C00310039000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A004C006100
      620065006C00320031000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A004C006100620065006C00
      34000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A004C006100620065006C00320030000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A0044004200450064006900740035000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0044004200450064006900740036000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0044004200
      450064006900740037000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A0044004200450064006900
      7400310032000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A004400420045006400690074003900
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00440042004500640069007400310036000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00440042004500640069007400310034000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A0044004200450064006900740038000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A004400
      42004500640069007400310038000100B065307D0E66D49A0100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00440042004500
      640069007400320030000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A0044004200450064006900
      740034000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A0044004200450064006900740031003900
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A004400420047007200690064004500680031000100
      B065307D0E66D49A01005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00700070004C006100620065006C00310030000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00700070004C006100620065006C00330035000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A0070007000530079007300740065006D0056006100720069006100
      62006C00650031000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00700070004C00610062006500
      6C00330036000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A007000700053007900730074006500
      6D005600610072006900610062006C00650033000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      700070004C006100620065006C00340032000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A007000
      7000440042005400650078007400320030000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A007000
      700044004200540065007800740031000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0070007000
      44004200540065007800740033000100B065307D0E66D49A0100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00700070004400
      4200540065007800740034000100B065307D0E66D49A01005400610068006F00
      6D00610001005400610068006F006D00610001000D000A007000700044004200
      540065007800740035000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A0070007000440042005400
      65007800740036000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00700070004400420054006500
      7800740038000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A007000700044004200540065007800
      7400310031000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A00700070004C006100620065006C00
      360032000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A00700070004C006100620065006C003800
      31000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A00700070004C006100620065006C0038003200
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00700070004D0065006D006F0031000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A0070007000530079007300740065006D0056006100720069006100
      62006C00650032000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00700070004C00610062006500
      6C0036000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A00700070004C006100620065006C003800
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00700070004C006100620065006C0039000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00700070004C006100620065006C00320036000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A00700070004C006100620065006C00320037000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00700070004C006100620065006C00320038000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A00700070004C006100620065006C00320039000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      700070004C006100620065006C00330030000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A007000
      70004C006100620065006C00370038000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0070007000
      440042005400650078007400320038000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0070007000
      4C006100620065006C00370039000100B065307D0E66D49A0100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00700070004C00
      6100620065006C00380030000100B065307D0E66D49A01005400610068006F00
      6D00610001005400610068006F006D00610001000D000A007000700044004200
      5400650078007400320039000100B065307D0E66D49A01005400610068006F00
      6D00610001005400610068006F006D00610001000D000A00700070004C006100
      620065006C00350033000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A00700070004C0061006200
      65006C00350034000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00700070004C00610062006500
      6C00350035000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A00700070004C006100620065006C00
      350036000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A00700070004C006100620065006C003500
      37000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A00700070004C006100620065006C0035003900
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00700070004C006100620065006C00360030000100
      B065307D0E66D49A01005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00700070004C006100620065006C00360031000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00700070004C006100620065006C00360033000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A00700070004C006100620065006C00360034000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00700070004C006100620065006C00360035000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A00700070004C006100620065006C00360036000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      700070004C006100620065006C00360039000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A007700
      6C006D0063000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A007000700044004200540065007800
      7400340034000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A006D006A00620068000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A007A006D006A006A0073000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0070007000
      440042005400650078007400320035000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0079007300
      6C0062007A0073000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00730063006D006A0063006400
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00730063006D006A00660064000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00790062006C000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A00730063006D006A007A00
      63000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A0064007A006D006A00700073000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A006A006800630067007A0073006A000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      730063006D006A0079006C000100B065307D0E66D49A01005400610068006F00
      6D00610001005400610068006F006D00610001000D000A00700070004C006100
      620065006C0031000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00700070004C00610062006500
      6C0032000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A00700070004C006100620065006C003300
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00700070004C006100620065006C0034000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00700070004C006100620065006C0035000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00700070004C006100620065006C0037000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      700070004C006100620065006C00330031000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A007000
      70004C006100620065006C00310031000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0070007000
      4C006100620065006C00310032000100B065307D0E66D49A0100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00700070004C00
      6100620065006C00310033000100B065307D0E66D49A01005400610068006F00
      6D00610001005400610068006F006D00610001000D000A00700070004C006100
      620065006C00310034000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A00700070004C0061006200
      65006C00310035000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00700070004C00610062006500
      6C00310036000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A00700070004C006100620065006C00
      310037000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A00700070004C006100620065006C003100
      38000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A00700070004C006100620065006C0031003900
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00700070004C006100620065006C00320030000100
      B065307D0E66D49A01005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00700070004C006100620065006C00320031000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00700070004C006100620065006C00320032000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A00700070004C006100620065006C00320033000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00700070004C006100620065006C00320034000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A00700070004C006100620065006C00320035000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      700070004C006100620065006C00330032000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A007000
      70004C006100620065006C00330033000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0070007000
      440042005400650078007400310032000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0070007000
      44004200540065007800740039000100B065307D0E66D49A0100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00660063006700
      630068000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A00660063007A00640068000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A00660063006B0068000100B065307D0E66D49A0100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00660063007300
      68000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A006600630063006D000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A00660063006D006A006A0073000100B065307D0E66D49A0100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00660063006D00
      6A0073000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A006600630067006300680031000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00660063007A006400680031000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      660063006B00680031000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A0066006300730068003100
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A006600630063006D0031000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A00660063006D006A006A00730031000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0066006300
      6D006A00730031000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00660063006700630068003200
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00660063007A006400680032000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00660063006B00680032000100B065307D0E66D49A0100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00660063007300
      680032000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A006600630063006D0032000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A00660063006D006A006A00730032000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      660063006D006A00730032000100B065307D0E66D49A01005400610068006F00
      6D00610001005400610068006F006D00610001000D000A006600630067006300
      680033000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A00660063007A006400680033000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00660063006B00680033000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A006600
      63007300680033000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A006600630063006D0033000100
      B065307D0E66D49A01005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00660063006D006A006A00730033000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00660063006D006A00730033000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0066006300
      67006300680034000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00660063007A00640068003400
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00660063006B00680034000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A00660063007300680034000100B065307D0E66D49A01005400610068006F00
      6D00610001005400610068006F006D00610001000D000A006600630063006D00
      34000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A00660063006D006A006A00730034000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00660063006D006A00730034000100B065307D0E66D49A0100
      5400610068006F006D00610001005400610068006F006D00610001000D000A00
      700070004C006100620065006C00330039000100B065307D0E66D49A01005400
      610068006F006D00610001005400610068006F006D00610001000D000A007000
      70004C006100620065006C00340033000100B065307D0E66D49A010054006100
      68006F006D00610001005400610068006F006D00610001000D000A0070007000
      530079007300740065006D005600610072006900610062006C00650035000100
      B065307D0E66D49A01005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00700070004C006100620065006C00340034000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A0070007000530079007300740065006D005600610072006900
      610062006C00650036000100B065307D0E66D49A01005400610068006F006D00
      610001005400610068006F006D00610001000D000A00700070004C0061006200
      65006C00340039000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00700070004400420054006500
      78007400330034000100B065307D0E66D49A01005400610068006F006D006100
      01005400610068006F006D00610001000D000A00700070004C00610062006500
      6C00350030000100B065307D0E66D49A01005400610068006F006D0061000100
      5400610068006F006D00610001000D000A00700070004C006100620065006C00
      350031000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A00700070004C006100620065006C003500
      32000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A00700070004C006100620065006C0037003000
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00700070004C006100620065006C00370031000100
      B065307D0E66D49A01005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00700070004C006100620065006C00370032000100B065
      307D0E66D49A01005400610068006F006D00610001005400610068006F006D00
      610001000D000A00700070004C006100620065006C00370033000100B065307D
      0E66D49A01005400610068006F006D00610001005400610068006F006D006100
      01000D000A00700070004C006100620065006C00370035000100B065307D0E66
      D49A01005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00700070004C006100620065006C00370036000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400330035000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400330036000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400330037000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400330038000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400330039000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400340030000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400340031000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400310035000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000440042005400650078007400320034000100B065307D0E66D49A
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A0070007000530079007300740065006D005600610072006900610062006C00
      650034000100B065307D0E66D49A01005400610068006F006D00610001005400
      610068006F006D00610001000D000A007000700044004200430061006C006300
      31000100B065307D0E66D49A01005400610068006F006D006100010054006100
      68006F006D00610001000D000A007000700044004200430061006C0063003200
      0100B065307D0E66D49A01005400610068006F006D0061000100540061006800
      6F006D00610001000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A0043006F006D006200
      6F0042006F00780031002E004900740065006D00730001000100010001000D00
      0A00440042004E006100760069006700610074006F00720031002E0048006900
      6E0074007300010022004600690072007300740020007200650063006F007200
      640022002C0022005000720069006F00720020007200650063006F0072006400
      22002C0022004E0065007800740020007200650063006F007200640022002C00
      22004C0061007300740020007200650063006F007200640022002C0022004900
      6E00730065007200740020007200650063006F007200640022002C0022004400
      65006C0065007400650020007200650063006F007200640022002C0022004500
      64006900740020007200650063006F007200640022002C00220050006F007300
      74002000650064006900740022002C002200430061006E00630065006C002000
      650064006900740022002C002200520065006600720065007300680020006400
      61007400610022000100010001000D000A00700070005200650070006F007200
      740031002E0043006F006C0075006D006E0050006F0073006900740069006F00
      6E00730001000100010001000D000A00700070004D0065006D006F0031002E00
      4C0069006E0065007300010022002D4E8A907282EE5D1C56B6673A002000E86C
      0F610C544E54BC78236A47722857035E015CB965115492630C54004ED89AA65E
      2C002000EF53E54EC96208548C632E0022002C0022002D983E5C7282EE5D1C56
      B6673A002000E86C0F610C544E54BC78236A47722857035E7795B96511549263
      0C54004ED89AA65E2C002000C55F0898C962AE55355F2E0022002C0022002D98
      3E5C2D4E8A907282EE5D1C56B6673A002000E86C0F610C54F64EFD4E92632857
      4496D18F004E778D2C0020000C54004ED89AA65E2C0020001C56B6670D4E858D
      4E9031002E003500737C2C002000C55F0898C962AE55355F2C0020000C54F64E
      FD4E6A7E6B75236A47728189F8760C54E87D5F862E0022002C002200C962AE55
      355F3A002000C962035E4D5281890B771F752275A68F2C0020007A6C9A5BC962
      035E955E6297B96511542C002000CF6B4772035E81890C54004EB96511542C00
      200092631C56B6670D4EFD8092634A53F64E2E0022002C0022008F75545B2C00
      B27D035E2C00617EB1824C00410043004500035E9965C55F0898895B92632875
      4B906A52C18872522E0022002C00D996C962035E9965C55F08984851C188004E
      8A5E855F320034000F5C42660E540B77C1884772F48F2E7EC560C16C4D627C7E
      8C7EC962C1882E002C00035E9965C55F08980963EA8CA26AE890EA813671F48F
      2E7E2C6E668A8189426C426650968C5B10627E67035E2E002C000D4EA563D753
      EF532875035E015C27598E4E1C56B667015CA65E32009853737C2E002C000D4E
      A563D753C962035E7795A65E27598E4E1C56B6677795A65E32009853737C2E00
      2C00C199035E7795A65EC55F0898497B8E4E728A1C56B6674B4E00672759236A
      47727795A65E2E002C00035E9965270031003200310030003800280032005700
      54003000300030003000360041002900CA533100320030003600300028003200
      5700540030003000300030003500410029002700C55F089892634D520E542D4E
      8A907282EE5D1C56B6670CFFC9620130C1880130F757FD90C55F089809632700
      50004C004D00520027005A50D56C2E000100010001000D000A00700070004D00
      65006D006F0031002E00540061006200530074006F00700050006F0073006900
      740069006F006E00730001000100010001000D000A0070007000520065007000
      6F007200740033002E0043006F006C0075006D006E0050006F00730069007400
      69006F006E00730001000100010001000D000A00410051007500650072007900
      31002E00530051004C0001000100010001000D000A0041005100750065007200
      790032002E00530051004C0001000100010001000D000A007300740044006C00
      67007300430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005700610072006E0069006E00670001005700610072006E00
      69006E0067000100010001000D000A004500720072006F007200010045007200
      72006F0072000100010001000D000A0049006E0066006F0072006D0061007400
      69006F006E00010049006E0066006F0072006D006100740069006F006E000100
      010001000D000A0043006F006E006600690072006D00010043006F006E006600
      690072006D000100010001000D000A0059006500730001002600590065007300
      0100010001000D000A004E006F00010026004E006F000100010001000D000A00
      4F004B0001004F004B000100010001000D000A00430061006E00630065006C00
      0100430061006E00630065006C000100010001000D000A00410062006F007200
      740001002600410062006F00720074000100010001000D000A00520065007400
      7200790001002600520065007400720079000100010001000D000A0049006700
      6E006F007200650001002600490067006E006F00720065000100010001000D00
      0A0041006C006C000100260041006C006C000100010001000D000A004E006F00
      200054006F00200041006C006C0001004E0026006F00200074006F0020004100
      6C006C000100010001000D000A00590065007300200054006F00200041006C00
      6C000100590065007300200074006F002000260041006C006C00010001000100
      0D000A00480065006C00700001002600480065006C0070000100010001000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A005400660072006D00
      6C0062006A0068002E00480065006C007000460069006C006500010001000100
      01000D000A0044004200450064006900740031002E0044006100740061004600
      690065006C0064000100500072006A006E006F000100010001000D000A004400
      4200450064006900740032002E0044006100740061004600690065006C006400
      0100580068000100010001000D000A0044004200450064006900740033002E00
      44006100740061004600690065006C00640001004C0062007A00730001000100
      01000D000A0043006F006D0062006F0042006F00780031002E00540065007800
      740001000100010001000D000A00440042004500640069007400310037002E00
      44006100740061004600690065006C006400010057006C000100010001000D00
      0A00440042004500640069007400310030002E00440061007400610046006900
      65006C00640001004D006A0079006C000100010001000D000A00440042004500
      64006900740035002E0044006100740061004600690065006C00640001005000
      6A006D006A00660064000100010001000D000A00440042004500640069007400
      36002E0044006100740061004600690065006C00640001004D006A007A006300
      64000100010001000D000A0044004200450064006900740037002E0044006100
      740061004600690065006C00640001004D006A00790070007A0062007A006300
      0100010001000D000A00440042004500640069007400310032002E0044006100
      740061004600690065006C00640001004A006800630067007A0073006A000100
      010001000D000A0044004200450064006900740039002E004400610074006100
      4600690065006C00640001004A00680077006C007A0063000100010001000D00
      0A00440042004500640069007400310036002E00440061007400610046006900
      65006C0064000100590062006C000100010001000D000A004400420045006400
      69007400310034002E0044006100740061004600690065006C00640001004A00
      680073006300730068000100010001000D000A00440042004500640069007400
      38002E0044006100740061004600690065006C00640001004A00680064007A00
      6C0062007A0063000100010001000D000A004400420045006400690074003100
      38002E0044006100740061004600690065006C0064000100500062006C000100
      010001000D000A00440042004500640069007400320030002E00440061007400
      61004600690065006C00640001005A0064007900700063006400010001000100
      0D000A0044004200450064006900740034002E00440061007400610046006900
      65006C0064000100590073006D006A00660064000100010001000D000A004400
      42004500640069007400310039002E0044006100740061004600690065006C00
      6400010044007A006D006A00700073000100010001000D000A00440042004300
      6800650063006B0042006F00780031002E004400610074006100460069006500
      6C006400010062006D006A000100010001000D000A0044004200430068006500
      63006B0042006F00780031002E00560061006C00750065004300680065006300
      6B0065006400010054007200750065000100010001000D000A00440042004300
      6800650063006B0042006F00780031002E00560061006C007500650055006E00
      63006800650063006B00650064000100460061006C0073006500010001000100
      0D000A007000700042004400450050006900700065006C0069006E0065003100
      2E004D00610073007400650072004600690065006C0064004C0069006E006B00
      730001000100010001000D000A00700070004200440045005000690070006500
      6C0069006E00650031002E0055007300650072004E0061006D00650001004200
      4400450050006900700065006C0069006E00650031000100010001000D000A00
      7000700042004400450050006900700065006C0069006E00650032002E004D00
      610073007400650072004600690065006C0064004C0069006E006B0073000100
      0100010001000D000A007000700042004400450050006900700065006C006900
      6E00650032002E0055007300650072004E0061006D0065000100420044004500
      50006900700065006C0069006E00650032000100010001000D000A0070007000
      5200650070006F007200740031002E0041007200630068006900760065004600
      69006C0065004E0061006D00650001000100010001000D000A00700070005200
      650070006F007200740031002E00440065007600690063006500540079007000
      65000100530063007200650065006E000100010001000D000A00700070005200
      650070006F007200740031002E005400650078007400460069006C0065004E00
      61006D00650001000100010001000D000A00700070004C006100620065006C00
      310030002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310030000100010001000D000A00700070004C006100620065006C003300
      35002E0055007300650072004E0061006D00650001004C006100620065006C00
      330035000100010001000D000A0070007000530079007300740065006D005600
      610072006900610062006C00650031002E0055007300650072004E0061006D00
      65000100530079007300740065006D005600610072006900610062006C006500
      31000100010001000D000A00700070004C006100620065006C00330036002E00
      55007300650072004E0061006D00650001004C006100620065006C0033003600
      0100010001000D000A0070007000530079007300740065006D00560061007200
      6900610062006C00650033002E0055007300650072004E0061006D0065000100
      530079007300740065006D005600610072006900610062006C00650033000100
      010001000D000A00700070004C006100620065006C00340032002E0055007300
      650072004E0061006D00650001004C006100620065006C003400320001000100
      01000D000A0070007000440042005400650078007400320030002E0044006100
      740061004600690065006C0064000100500072006A006E006F00010001000100
      0D000A0070007000440042005400650078007400320030002E00550073006500
      72004E0061006D00650001004400420054006500780074003200300001000100
      01000D000A007000700052006500670069006F006E0033002E00550073006500
      72004E0061006D006500010052006500670069006F006E003300010001000100
      0D000A007000700044004200540065007800740031002E004400610074006100
      4600690065006C00640001004700630068000100010001000D000A0070007000
      44004200540065007800740031002E0055007300650072004E0061006D006500
      010044004200540065007800740031000100010001000D000A00700070004400
      4200540065007800740033002E0044006100740061004600690065006C006400
      01005A00640068000100010001000D000A007000700044004200540065007800
      740033002E0055007300650072004E0061006D00650001004400420054006500
      7800740033000100010001000D000A0070007000440042005400650078007400
      34002E0044006100740061004600690065006C00640001004B00680001000100
      01000D000A007000700044004200540065007800740034002E00550073006500
      72004E0061006D00650001004400420054006500780074003400010001000100
      0D000A007000700044004200540065007800740035002E004400610074006100
      4600690065006C0064000100530068000100010001000D000A00700070004400
      4200540065007800740035002E0055007300650072004E0061006D0065000100
      44004200540065007800740035000100010001000D000A007000700044004200
      540065007800740036002E0044006100740061004600690065006C0064000100
      43006D000100010001000D000A00700070004400420054006500780074003600
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      36000100010001000D000A007000700044004200540065007800740038002E00
      44006100740061004600690065006C00640001004D006A006A00730001000100
      01000D000A007000700044004200540065007800740038002E00550073006500
      72004E0061006D00650001004400420054006500780074003800010001000100
      0D000A0070007000440042005400650078007400310031002E00440061007400
      61004600690065006C00640001004D006A0073000100010001000D000A007000
      7000440042005400650078007400310031002E0055007300650072004E006100
      6D0065000100440042005400650078007400310031000100010001000D000A00
      700070005300680061007000650031002E0055007300650072004E0061006D00
      650001005300680061007000650031000100010001000D000A00700070005300
      680061007000650032002E0055007300650072004E0061006D00650001005300
      680061007000650032000100010001000D000A00700070005300680061007000
      650033002E0055007300650072004E0061006D00650001005300680061007000
      650033000100010001000D000A00700070005300680061007000650034002E00
      55007300650072004E0061006D00650001005300680061007000650034000100
      010001000D000A00700070005300680061007000650036002E00550073006500
      72004E0061006D00650001005300680061007000650036000100010001000D00
      0A00700070005300680061007000650039002E0055007300650072004E006100
      6D00650001005300680061007000650039000100010001000D000A0070007000
      4C006100620065006C00360032002E0055007300650072004E0061006D006500
      01004C006100620065006C00360032000100010001000D000A00700070004C00
      6100620065006C00380031002E0055007300650072004E0061006D0065000100
      4C006100620065006C00380031000100010001000D000A00700070004C006100
      620065006C00380032002E0055007300650072004E0061006D00650001004C00
      6100620065006C00380032000100010001000D000A00700070004C0069006E00
      650031002E0055007300650072004E0061006D00650001004C0069006E006500
      31000100010001000D000A00700070004C0069006E00650032002E0055007300
      650072004E0061006D00650001004C0069006E00650032000100010001000D00
      0A00700070004C0069006E00650033002E0055007300650072004E0061006D00
      650001004C0069006E00650033000100010001000D000A00700070004D006500
      6D006F0031002E0055007300650072004E0061006D00650001004D0065006D00
      6F0031000100010001000D000A0070007000530079007300740065006D005600
      610072006900610062006C00650032002E0055007300650072004E0061006D00
      65000100530079007300740065006D005600610072006900610062006C006500
      32000100010001000D000A0070007000470072006F007500700031002E004200
      7200650061006B004E0061006D006500010077006C006D006300010001000100
      0D000A0070007000470072006F007500700031002E0055007300650072004E00
      61006D0065000100470072006F007500700031000100010001000D000A007000
      7000470072006F007500700034002E0042007200650061006B004E0061006D00
      65000100580068000100010001000D000A0070007000470072006F0075007000
      34002E0055007300650072004E0061006D0065000100470072006F0075007000
      34000100010001000D000A00700070005300680061007000650035002E005500
      7300650072004E0061006D006500010053006800610070006500350001000100
      01000D000A00700070004C006100620065006C0036002E005500730065007200
      4E0061006D00650001004C006100620065006C0036000100010001000D000A00
      700070004C006100620065006C0038002E0055007300650072004E0061006D00
      650001004C006100620065006C0038000100010001000D000A00700070004C00
      6100620065006C0039002E0055007300650072004E0061006D00650001004C00
      6100620065006C0039000100010001000D000A00700070004C00610062006500
      6C00320036002E0055007300650072004E0061006D00650001004C0061006200
      65006C00320038000100010001000D000A00700070004C0069006E0065003900
      2E0055007300650072004E0061006D00650001004C0069006E00650039000100
      010001000D000A00700070004C006100620065006C00320037002E0055007300
      650072004E0061006D00650001004C006100620065006C003300340001000100
      01000D000A00700070004C006100620065006C00320038002E00550073006500
      72004E0061006D00650001004C006100620065006C0033003700010001000100
      0D000A00700070004C006100620065006C00320039002E005500730065007200
      4E0061006D00650001004C006100620065006C00330038000100010001000D00
      0A00700070004C006100620065006C00330030002E0055007300650072004E00
      61006D00650001004C006100620065006C003300300031000100010001000D00
      0A00700070004C0069006E006500310031002E0055007300650072004E006100
      6D00650001004C0069006E006500310031000100010001000D000A0070007000
      4C0069006E006500310038002E0055007300650072004E0061006D0065000100
      4C0069006E006500310038000100010001000D000A00700070004C0069006E00
      6500320030002E0055007300650072004E0061006D00650001004C0069006E00
      6500320030000100010001000D000A00700070004C0069006E00650032003100
      2E0055007300650072004E0061006D00650001004C0069006E00650032003100
      0100010001000D000A00700070004C0069006E006500320032002E0055007300
      650072004E0061006D00650001004C0069006E00650032003200010001000100
      0D000A00700070004C0069006E006500320033002E0055007300650072004E00
      61006D00650001004C0069006E006500320033000100010001000D000A007000
      70004C0069006E006500320034002E0055007300650072004E0061006D006500
      01004C0069006E006500320034000100010001000D000A00700070004C006900
      6E006500320035002E0055007300650072004E0061006D00650001004C006900
      6E006500320035000100010001000D000A00700070004C0069006E0065003200
      36002E0055007300650072004E0061006D00650001004C0069006E0065003200
      36000100010001000D000A00700070004C0069006E006500320037002E005500
      7300650072004E0061006D00650001004C0069006E0065003200370001000100
      01000D000A00700070004C0069006E006500320038002E005500730065007200
      4E0061006D00650001004C0069006E006500320038000100010001000D000A00
      700070004C0069006E006500320039002E0055007300650072004E0061006D00
      650001004C0069006E006500320039000100010001000D000A00700070004C00
      69006E006500330030002E0055007300650072004E0061006D00650001004C00
      69006E006500330030000100010001000D000A00700070004C0069006E006500
      330031002E0055007300650072004E0061006D00650001004C0069006E006500
      330031000100010001000D000A00700070004C0069006E006500330032002E00
      55007300650072004E0061006D00650001004C0069006E006500330032000100
      010001000D000A00700070004C0069006E006500330033002E00550073006500
      72004E0061006D00650001004C0069006E006500330030003100010001000100
      0D000A0070007000470072006F007500700032002E0042007200650061006B00
      4E0061006D0065000100580068000100010001000D000A007000700047007200
      6F007500700032002E0055007300650072004E0061006D006500010047007200
      6F007500700032000100010001000D000A0072006500670069006F006E003200
      2E0055007300650072004E0061006D006500010052006500670069006F006E00
      32000100010001000D000A00700070004C006100620065006C00370038002E00
      55007300650072004E0061006D00650001004C006100620065006C0032003900
      0100010001000D000A0070007000440042005400650078007400320038002E00
      44006100740061004600690065006C006400010057006C000100010001000D00
      0A0070007000440042005400650078007400320038002E005500730065007200
      4E0061006D006500010044004200540065007800740032003800010001000100
      0D000A00700070004C006100620065006C00370039002E005500730065007200
      4E0061006D00650001004C006100620065006C00330030000100010001000D00
      0A00700070004C006100620065006C00380030002E0055007300650072004E00
      61006D00650001004C006100620065006C00330033000100010001000D000A00
      70007000440042005400650078007400320039002E0044006100740061004600
      690065006C00640001004D006A0079006C000100010001000D000A0070007000
      440042005400650078007400320039002E0055007300650072004E0061006D00
      65000100440042005400650078007400320039000100010001000D000A005200
      6500670069006F006E0031002E0055007300650072004E0061006D0065000100
      52006500670069006F006E0031000100010001000D000A00700070004C006100
      620065006C00350033002E0055007300650072004E0061006D00650001004C00
      6100620065006C00350033000100010001000D000A00700070004C0061006200
      65006C00350034002E0055007300650072004E0061006D00650001004C006100
      620065006C00350034000100010001000D000A00700070004C00610062006500
      6C00350035002E0055007300650072004E0061006D00650001004C0061006200
      65006C00350035000100010001000D000A00700070004C006100620065006C00
      350036002E0055007300650072004E0061006D00650001004C00610062006500
      6C00350036000100010001000D000A00700070004C006100620065006C003500
      37002E0055007300650072004E0061006D00650001004C006100620065006C00
      350037000100010001000D000A00700070004C006100620065006C0035003900
      2E0055007300650072004E0061006D00650001004C006100620065006C003500
      39000100010001000D000A00700070004C006100620065006C00360030002E00
      55007300650072004E0061006D00650001004C006100620065006C0036003000
      0100010001000D000A00700070004C006100620065006C00360031002E005500
      7300650072004E0061006D00650001004C006100620065006C00360031000100
      010001000D000A00700070004C006100620065006C00360033002E0055007300
      650072004E0061006D00650001004C006100620065006C003600300031000100
      010001000D000A00700070004C006100620065006C00360034002E0055007300
      650072004E0061006D00650001004C006100620065006C003600340001000100
      01000D000A00700070004C006100620065006C00360035002E00550073006500
      72004E0061006D00650001004C006100620065006C0036003500010001000100
      0D000A00700070004C006100620065006C00360036002E005500730065007200
      4E0061006D00650001004C006100620065006C00360030003200010001000100
      0D000A00700070004C006100620065006C00360039002E005500730065007200
      4E0061006D00650001004C006100620065006C00360039000100010001000D00
      0A0077006C006D0063002E0044006100740061004600690065006C0064000100
      77006C000100010001000D000A0077006C006D0063002E005500730065007200
      4E0061006D006500010077006C006D0063000100010001000D000A0070007000
      4C0069006E00650034002E0055007300650072004E0061006D00650001004C00
      69006E00650034000100010001000D000A00700070004C0069006E0065003500
      2E0055007300650072004E0061006D00650001004C0069006E00650035000100
      010001000D000A00700070004C0069006E00650036002E005500730065007200
      4E0061006D00650001004C0069006E00650036000100010001000D000A007000
      70004C0069006E00650037002E0055007300650072004E0061006D0065000100
      4C0069006E00650037000100010001000D000A00700070004C0069006E006500
      38002E0055007300650072004E0061006D00650001004C0069006E0065003800
      0100010001000D000A00700070004C0069006E006500310030002E0055007300
      650072004E0061006D00650001004C0069006E00650031003000010001000100
      0D000A00700070004C0069006E006500310032002E0055007300650072004E00
      61006D00650001004C0069006E006500310032000100010001000D000A007000
      70004C0069006E006500310033002E0055007300650072004E0061006D006500
      01004C0069006E006500310033000100010001000D000A00700070004C006900
      6E006500310034002E0055007300650072004E0061006D00650001004C006900
      6E006500310034000100010001000D000A00700070004C0069006E0065003100
      35002E0055007300650072004E0061006D00650001004C0069006E0065003100
      35000100010001000D000A00700070004C0069006E006500310036002E005500
      7300650072004E0061006D00650001004C0069006E0065003100300031000100
      010001000D000A00700070004C0069006E006500310037002E00550073006500
      72004E0061006D00650001004C0069006E006500310037000100010001000D00
      0A00700070004C0069006E006500310039002E0055007300650072004E006100
      6D00650001004C0069006E006500310039000100010001000D000A0070007000
      440042005400650078007400340034002E004400610074006100460069006500
      6C00640001005A00640079007000630064000100010001000D000A0070007000
      440042005400650078007400340034002E0055007300650072004E0061006D00
      65000100440042005400650078007400320035000100010001000D000A006D00
      6A00620068002E0055007300650072004E0061006D00650001004C0061006200
      65006C00320036000100010001000D000A007A006D006A006A0073002E005500
      7300650072004E0061006D00650001004C006100620065006C00320037000100
      010001000D000A0070007000440042005400650078007400320035002E004400
      6100740061004600690065006C0064000100590073006D006A00660064000100
      010001000D000A0070007000440042005400650078007400320035002E005500
      7300650072004E0061006D006500010044004200540065007800740031003500
      0100010001000D000A00790073006C0062007A0073002E005500730065007200
      4E0061006D0065000100790073006C0062007A0073000100010001000D000A00
      730063006D006A00630064002E0055007300650072004E0061006D0065000100
      730063006D006A00630064000100010001000D000A00730063006D006A006600
      64002E0055007300650072004E0061006D0065000100730063006D006A006600
      64000100010001000D000A00790062006C002E0055007300650072004E006100
      6D0065000100790062006C000100010001000D000A00730063006D006A007A00
      63002E0055007300650072004E0061006D0065000100730063006D006A007A00
      63000100010001000D000A0064007A006D006A00700073002E00550073006500
      72004E0061006D006500010064007A006D006A00700073000100010001000D00
      0A006A006800630067007A0073006A002E0055007300650072004E0061006D00
      650001006A006800630067007A0073006A000100010001000D000A0073006300
      6D006A0079006C002E0055007300650072004E0061006D006500010073006300
      6D006A0079006C000100010001000D000A00700070004C006100620065006C00
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      31000100010001000D000A00700070004C006100620065006C0032002E005500
      7300650072004E0061006D00650001004C006100620065006C00320001000100
      01000D000A00700070004C006100620065006C0033002E005500730065007200
      4E0061006D00650001004C006100620065006C0033000100010001000D000A00
      700070004C006100620065006C0034002E0055007300650072004E0061006D00
      650001004C006100620065006C0034000100010001000D000A00700070004C00
      6100620065006C0035002E0055007300650072004E0061006D00650001004C00
      6100620065006C0035000100010001000D000A00700070004C00610062006500
      6C0037002E0055007300650072004E0061006D00650001004C00610062006500
      6C0037000100010001000D000A00700070004C006100620065006C0033003100
      2E0055007300650072004E0061006D00650001004C006100620065006C003300
      31000100010001000D000A00700070004C006100620065006C00310031002E00
      55007300650072004E0061006D00650001004C006100620065006C0031003100
      0100010001000D000A00700070004C006100620065006C00310032002E005500
      7300650072004E0061006D00650001004C006100620065006C00310032000100
      010001000D000A00700070004C006100620065006C00310033002E0055007300
      650072004E0061006D00650001004C006100620065006C003100330001000100
      01000D000A00700070004C006100620065006C00310034002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003400010001000100
      0D000A00700070004C006100620065006C00310035002E005500730065007200
      4E0061006D00650001004C006100620065006C00310035000100010001000D00
      0A00700070004C006100620065006C00310036002E0055007300650072004E00
      61006D00650001004C006100620065006C00310036000100010001000D000A00
      700070004C006100620065006C00310037002E0055007300650072004E006100
      6D00650001004C006100620065006C00310037000100010001000D000A007000
      70004C006100620065006C00310038002E0055007300650072004E0061006D00
      650001004C006100620065006C00310038000100010001000D000A0070007000
      4C006100620065006C00310039002E0055007300650072004E0061006D006500
      01004C006100620065006C00310039000100010001000D000A00700070004C00
      6100620065006C00320030002E0055007300650072004E0061006D0065000100
      4C006100620065006C00320030000100010001000D000A00700070004C006100
      620065006C00320031002E0055007300650072004E0061006D00650001004C00
      6100620065006C00320031000100010001000D000A00700070004C0061006200
      65006C00320032002E0055007300650072004E0061006D00650001004C006100
      620065006C00320032000100010001000D000A00700070004C00610062006500
      6C00320033002E0055007300650072004E0061006D00650001004C0061006200
      65006C003200300031000100010001000D000A00700070004C00610062006500
      6C00320034002E0055007300650072004E0061006D00650001004C0061006200
      65006C00320034000100010001000D000A00700070004C006100620065006C00
      320035002E0055007300650072004E0061006D00650001004C00610062006500
      6C00320035000100010001000D000A006D007900440042004300680065006300
      6B0042006F00780031002E0042006F006F006C00650061006E00460061006C00
      730065000100460061006C00730065000100010001000D000A006D0079004400
      420043006800650063006B0042006F00780031002E0042006F006F006C006500
      61006E005400720075006500010054007200750065000100010001000D000A00
      6D0079004400420043006800650063006B0042006F00780031002E0044006100
      740061004600690065006C006400010042007A006D006A000100010001000D00
      0A006D0079004400420043006800650063006B0042006F00780031002E005500
      7300650072004E0061006D00650001004400420043006800650063006B004200
      6F00780031000100010001000D000A006D007900440042004300680065006300
      6B0042006F00780032002E0042006F006F006C00650061006E00460061006C00
      730065000100460061006C00730065000100010001000D000A006D0079004400
      420043006800650063006B0042006F00780032002E0042006F006F006C006500
      61006E005400720075006500010054007200750065000100010001000D000A00
      6D0079004400420043006800650063006B0042006F00780032002E0044006100
      740061004600690065006C006400010044006B000100010001000D000A006D00
      79004400420043006800650063006B0042006F00780032002E00550073006500
      72004E0061006D00650001004400420043006800650063006B0042006F007800
      32000100010001000D000A006D0079004400420043006800650063006B004200
      6F00780033002E0042006F006F006C00650061006E00460061006C0073006500
      0100460061006C00730065000100010001000D000A006D007900440042004300
      6800650063006B0042006F00780033002E0042006F006F006C00650061006E00
      5400720075006500010054007200750065000100010001000D000A006D007900
      4400420043006800650063006B0042006F00780033002E004400610074006100
      4600690065006C006400010048006B000100010001000D000A006D0079004400
      420043006800650063006B0042006F00780033002E0055007300650072004E00
      61006D00650001004400420043006800650063006B0042006F00780033000100
      010001000D000A006D0079004400420043006800650063006B0042006F007800
      34002E0042006F006F006C00650061006E00460061006C007300650001004600
      61006C00730065000100010001000D000A006D00790044004200430068006500
      63006B0042006F00780034002E0042006F006F006C00650061006E0054007200
      75006500010054007200750065000100010001000D000A006D00790044004200
      43006800650063006B0042006F00780034002E00440061007400610046006900
      65006C00640001005A0062006D006A000100010001000D000A006D0079004400
      420043006800650063006B0042006F00780034002E0055007300650072004E00
      61006D00650001004400420043006800650063006B0042006F00780034000100
      010001000D000A006D0079004400420043006800650063006B0042006F007800
      35002E0042006F006F006C00650061006E00460061006C007300650001004600
      61006C00730065000100010001000D000A006D00790044004200430068006500
      63006B0042006F00780035002E0042006F006F006C00650061006E0054007200
      75006500010054007200750065000100010001000D000A006D00790044004200
      43006800650063006B0042006F00780035002E00440061007400610046006900
      65006C0064000100440073000100010001000D000A006D007900440042004300
      6800650063006B0042006F00780035002E0055007300650072004E0061006D00
      650001004400420043006800650063006B0042006F0078003500010001000100
      0D000A006D0079004400420043006800650063006B0042006F00780036002E00
      42006F006F006C00650061006E00460061006C00730065000100460061006C00
      730065000100010001000D000A006D0079004400420043006800650063006B00
      42006F00780036002E0042006F006F006C00650061006E005400720075006500
      010054007200750065000100010001000D000A006D0079004400420043006800
      650063006B0042006F00780036002E0044006100740061004600690065006C00
      64000100480073000100010001000D000A006D00790044004200430068006500
      63006B0042006F00780036002E0055007300650072004E0061006D0065000100
      4400420043006800650063006B0042006F00780036000100010001000D000A00
      6D0079004400420043006800650063006B0042006F00780037002E0042006F00
      6F006C00650061006E00460061006C00730065000100460061006C0073006500
      0100010001000D000A006D0079004400420043006800650063006B0042006F00
      780037002E0042006F006F006C00650061006E00540072007500650001005400
      7200750065000100010001000D000A006D007900440042004300680065006300
      6B0042006F00780037002E0044006100740061004600690065006C0064000100
      540077006D006A000100010001000D000A006D00790044004200430068006500
      63006B0042006F00780037002E0055007300650072004E0061006D0065000100
      4400420043006800650063006B0042006F00780037000100010001000D000A00
      6D0079004400420043006800650063006B0042006F00780038002E0042006F00
      6F006C00650061006E00460061006C00730065000100460061006C0073006500
      0100010001000D000A006D0079004400420043006800650063006B0042006F00
      780038002E0042006F006F006C00650061006E00540072007500650001005400
      7200750065000100010001000D000A006D007900440042004300680065006300
      6B0042006F00780038002E0044006100740061004600690065006C0064000100
      44007A0064000100010001000D000A006D007900440042004300680065006300
      6B0042006F00780038002E0055007300650072004E0061006D00650001004400
      420043006800650063006B0042006F00780038000100010001000D000A006D00
      79004400420043006800650063006B0042006F00780039002E0042006F006F00
      6C00650061006E00460061006C00730065000100460061006C00730065000100
      010001000D000A006D0079004400420043006800650063006B0042006F007800
      39002E0042006F006F006C00650061006E005400720075006500010054007200
      750065000100010001000D000A006D0079004400420043006800650063006B00
      42006F00780039002E0044006100740061004600690065006C00640001004800
      7A0064000100010001000D000A006D0079004400420043006800650063006B00
      42006F00780039002E0055007300650072004E0061006D006500010044004200
      43006800650063006B0042006F00780039000100010001000D000A006D007900
      4400420043006800650063006B0042006F007800310030002E0042006F006F00
      6C00650061006E00460061006C00730065000100460061006C00730065000100
      010001000D000A006D0079004400420043006800650063006B0042006F007800
      310030002E0042006F006F006C00650061006E00540072007500650001005400
      7200750065000100010001000D000A006D007900440042004300680065006300
      6B0042006F007800310030002E0044006100740061004600690065006C006400
      010050007A0078000100010001000D000A006D00790044004200430068006500
      63006B0042006F007800310030002E0055007300650072004E0061006D006500
      01004400420043006800650063006B0042006F00780031003000010001000100
      0D000A006D0079004400420043006800650063006B0042006F00780031003100
      2E0042006F006F006C00650061006E00460061006C0073006500010046006100
      6C00730065000100010001000D000A006D007900440042004300680065006300
      6B0042006F007800310031002E0042006F006F006C00650061006E0054007200
      75006500010054007200750065000100010001000D000A006D00790044004200
      43006800650063006B0042006F007800310031002E0044006100740061004600
      690065006C00640001004C0064007A000100010001000D000A006D0079004400
      420043006800650063006B0042006F007800310031002E005500730065007200
      4E0061006D00650001004400420043006800650063006B0042006F0078003100
      31000100010001000D000A006D0079004400420043006800650063006B004200
      6F007800310032002E0042006F006F006C00650061006E00460061006C007300
      65000100460061006C00730065000100010001000D000A006D00790044004200
      43006800650063006B0042006F007800310032002E0042006F006F006C006500
      61006E005400720075006500010054007200750065000100010001000D000A00
      6D0079004400420043006800650063006B0042006F007800310032002E004400
      6100740061004600690065006C00640001004C0068007A000100010001000D00
      0A006D0079004400420043006800650063006B0042006F007800310032002E00
      55007300650072004E0061006D00650001004400420043006800650063006B00
      42006F007800310032000100010001000D000A006D0079004400420043006800
      650063006B0042006F007800310033002E0042006F006F006C00650061006E00
      460061006C00730065000100460061006C00730065000100010001000D000A00
      6D0079004400420043006800650063006B0042006F007800310033002E004200
      6F006F006C00650061006E005400720075006500010054007200750065000100
      010001000D000A006D0079004400420043006800650063006B0042006F007800
      310033002E0044006100740061004600690065006C0064000100590079006D00
      6A000100010001000D000A006D0079004400420043006800650063006B004200
      6F007800310033002E0055007300650072004E0061006D006500010044004200
      43006800650063006B0042006F0078003100300031000100010001000D000A00
      6D0079004400420043006800650063006B0042006F007800310034002E004200
      6F006F006C00650061006E00460061006C00730065000100460061006C007300
      65000100010001000D000A006D0079004400420043006800650063006B004200
      6F007800310034002E0042006F006F006C00650061006E005400720075006500
      010054007200750065000100010001000D000A006D0079004400420043006800
      650063006B0042006F007800310034002E004400610074006100460069006500
      6C006400010059007100780067000100010001000D000A006D00790044004200
      43006800650063006B0042006F007800310034002E0055007300650072004E00
      61006D00650001004400420043006800650063006B0042006F00780031003400
      0100010001000D000A006D0079004400420043006800650063006B0042006F00
      7800310035002E0042006F006F006C00650061006E00460061006C0073006500
      0100460061006C00730065000100010001000D000A006D007900440042004300
      6800650063006B0042006F007800310035002E0042006F006F006C0065006100
      6E005400720075006500010054007200750065000100010001000D000A006D00
      79004400420043006800650063006B0042006F007800310035002E0044006100
      740061004600690065006C00640001005A007900730063000100010001000D00
      0A006D0079004400420043006800650063006B0042006F007800310035002E00
      55007300650072004E0061006D00650001004400420043006800650063006B00
      42006F007800310035000100010001000D000A00700070004C00610062006500
      6C00330032002E0055007300650072004E0061006D00650001004C0061006200
      65006C00320033000100010001000D000A00700070004C006100620065006C00
      330033002E0055007300650072004E0061006D00650001004C00610062006500
      6C00330032000100010001000D000A0070007000440042005400650078007400
      310032002E0044006100740061004600690065006C0064000100580068000100
      010001000D000A0070007000440042005400650078007400310032002E005500
      7300650072004E0061006D006500010044004200540065007800740031003200
      0100010001000D000A007000700044004200540065007800740039002E004400
      6100740061004600690065006C00640001004D006A0073007400610074007500
      73000100010001000D000A007000700044004200540065007800740039002E00
      55007300650072004E0061006D00650001004400420054006500780074003900
      0100010001000D000A00660063006700630068002E0055007300650072004E00
      61006D0065000100660063006700630068000100010001000D000A0066006300
      7A00640068002E0055007300650072004E0061006D0065000100660063007A00
      640068000100010001000D000A00660063006B0068002E005500730065007200
      4E0061006D0065000100660063006B0068000100010001000D000A0066006300
      730068002E0055007300650072004E0061006D00650001006600630073006800
      0100010001000D000A006600630063006D002E0055007300650072004E006100
      6D00650001006600630063006D000100010001000D000A00660063006D006A00
      6A0073002E0055007300650072004E0061006D0065000100660063006D006A00
      6A0073000100010001000D000A00660063006D006A0073002E00550073006500
      72004E0061006D0065000100660063006D006A0073000100010001000D000A00
      6600630067006300680031002E0055007300650072004E0061006D0065000100
      6600630067006300680031000100010001000D000A00660063007A0064006800
      31002E0055007300650072004E0061006D0065000100660063007A0064006800
      31000100010001000D000A00660063006B00680031002E005500730065007200
      4E0061006D0065000100660063006B00680031000100010001000D000A006600
      63007300680031002E0055007300650072004E0061006D006500010066006300
      7300680031000100010001000D000A006600630063006D0031002E0055007300
      650072004E0061006D00650001006600630063006D0031000100010001000D00
      0A00660063006D006A006A00730031002E0055007300650072004E0061006D00
      65000100660063006D006A006A00730031000100010001000D000A0066006300
      6D006A00730031002E0055007300650072004E0061006D006500010066006300
      6D006A00730031000100010001000D000A006600630067006300680032002E00
      55007300650072004E0061006D00650001006600630067006300680032000100
      010001000D000A00660063007A006400680032002E0055007300650072004E00
      61006D0065000100660063007A006400680032000100010001000D000A006600
      63006B00680032002E0055007300650072004E0061006D006500010066006300
      6B00680032000100010001000D000A00660063007300680032002E0055007300
      650072004E0061006D0065000100660063007300680032000100010001000D00
      0A006600630063006D0032002E0055007300650072004E0061006D0065000100
      6600630063006D0032000100010001000D000A00660063006D006A006A007300
      32002E0055007300650072004E0061006D0065000100660063006D006A006A00
      730032000100010001000D000A00660063006D006A00730032002E0055007300
      650072004E0061006D0065000100660063006D006A0073003200010001000100
      0D000A006600630067006300680033002E0055007300650072004E0061006D00
      650001006600630067006300680033000100010001000D000A00660063007A00
      6400680033002E0055007300650072004E0061006D0065000100660063007A00
      6400680033000100010001000D000A00660063006B00680033002E0055007300
      650072004E0061006D0065000100660063006B00680033000100010001000D00
      0A00660063007300680033002E0055007300650072004E0061006D0065000100
      660063007300680033000100010001000D000A006600630063006D0033002E00
      55007300650072004E0061006D00650001006600630063006D00330001000100
      01000D000A00660063006D006A006A00730033002E0055007300650072004E00
      61006D0065000100660063006D006A006A00730033000100010001000D000A00
      660063006D006A00730033002E0055007300650072004E0061006D0065000100
      660063006D006A00730033000100010001000D000A0066006300670063006800
      34002E0055007300650072004E0061006D006500010066006300670063006800
      34000100010001000D000A00660063007A006400680034002E00550073006500
      72004E0061006D0065000100660063007A006400680034000100010001000D00
      0A00660063006B00680034002E0055007300650072004E0061006D0065000100
      660063006B00680034000100010001000D000A00660063007300680034002E00
      55007300650072004E0061006D00650001006600630073006800340001000100
      01000D000A006600630063006D0034002E0055007300650072004E0061006D00
      650001006600630063006D0034000100010001000D000A00660063006D006A00
      6A00730034002E0055007300650072004E0061006D0065000100660063006D00
      6A006A00730034000100010001000D000A00660063006D006A00730034002E00
      55007300650072004E0061006D0065000100660063006D006A00730034000100
      010001000D000A007000700042004400450050006900700065006C0069006E00
      650034002E004D00610073007400650072004600690065006C0064004C006900
      6E006B00730001000100010001000D000A007000700042004400450050006900
      700065006C0069006E00650034002E0055007300650072004E0061006D006500
      010042004400450050006900700065006C0069006E0065003400010001000100
      0D000A00700070005200650070006F007200740033002E004100720063006800
      690076006500460069006C0065004E0061006D00650001000100010001000D00
      0A00700070005200650070006F007200740033002E0044006500760069006300
      650054007900700065000100530063007200650065006E000100010001000D00
      0A00700070005200650070006F007200740033002E0054006500780074004600
      69006C0065004E0061006D00650001000100010001000D000A00700070004C00
      6100620065006C00330039002E0055007300650072004E0061006D0065000100
      4C006100620065006C00310030000100010001000D000A00700070004C006100
      620065006C00340033002E0055007300650072004E0061006D00650001004C00
      6100620065006C00330035000100010001000D000A0070007000530079007300
      740065006D005600610072006900610062006C00650035002E00550073006500
      72004E0061006D0065000100530079007300740065006D005600610072006900
      610062006C00650031000100010001000D000A00700070004C00610062006500
      6C00340034002E0055007300650072004E0061006D00650001004C0061006200
      65006C00330036000100010001000D000A007000700053007900730074006500
      6D005600610072006900610062006C00650036002E0055007300650072004E00
      61006D0065000100530079007300740065006D00560061007200690061006200
      6C00650033000100010001000D000A00700070004C006100620065006C003400
      39002E0055007300650072004E0061006D00650001004C006100620065006C00
      340032000100010001000D000A00700070004400420054006500780074003300
      34002E0044006100740061004600690065006C0064000100500072006A006E00
      6F000100010001000D000A007000700044004200540065007800740033003400
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      320030000100010001000D000A00700070004C006100620065006C0035003000
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      0100010001000D000A00700070004C006100620065006C00350031002E005500
      7300650072004E0061006D00650001004C006100620065006C00320001000100
      01000D000A00700070004C006100620065006C00350032002E00550073006500
      72004E0061006D00650001004C006100620065006C0033000100010001000D00
      0A00700070004C006100620065006C00370030002E0055007300650072004E00
      61006D00650001004C006100620065006C0034000100010001000D000A007000
      70004C006100620065006C00370031002E0055007300650072004E0061006D00
      650001004C006100620065006C0036000100010001000D000A00700070004C00
      6100620065006C00370032002E0055007300650072004E0061006D0065000100
      4C006100620065006C0037000100010001000D000A00700070004C0061006200
      65006C00370033002E0055007300650072004E0061006D00650001004C006100
      620065006C00330031000100010001000D000A00700070004C00610062006500
      6C00370035002E0055007300650072004E0061006D00650001004C0061006200
      65006C00370035000100010001000D000A00700070004C006100620065006C00
      370036002E0055007300650072004E0061006D00650001004C00610062006500
      6C00370036000100010001000D000A007000700052006500670069006F006E00
      34002E0055007300650072004E0061006D006500010052006500670069006F00
      6E0033000100010001000D000A00700070004400420054006500780074003300
      35002E0044006100740061004600690065006C00640001004700630068000100
      010001000D000A0070007000440042005400650078007400330035002E005500
      7300650072004E0061006D006500010044004200540065007800740031000100
      010001000D000A0070007000440042005400650078007400330036002E004400
      6100740061004600690065006C00640001005A00640068000100010001000D00
      0A0070007000440042005400650078007400330036002E005500730065007200
      4E0061006D006500010044004200540065007800740033000100010001000D00
      0A0070007000440042005400650078007400330037002E004400610074006100
      4600690065006C00640001004B0068000100010001000D000A00700070004400
      42005400650078007400330037002E0055007300650072004E0061006D006500
      010044004200540065007800740034000100010001000D000A00700070004400
      42005400650078007400330038002E0044006100740061004600690065006C00
      64000100530068000100010001000D000A007000700044004200540065007800
      7400330038002E0055007300650072004E0061006D0065000100440042005400
      65007800740035000100010001000D000A007000700044004200540065007800
      7400330039002E0044006100740061004600690065006C00640001005A006400
      73000100010001000D000A007000700044004200540065007800740033003900
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      37000100010001000D000A007000700044004200540065007800740034003000
      2E0044006100740061004600690065006C00640001004D006A006A0073000100
      010001000D000A0070007000440042005400650078007400340030002E005500
      7300650072004E0061006D006500010044004200540065007800740038000100
      010001000D000A0070007000440042005400650078007400340031002E004400
      6100740061004600690065006C00640001004400630070006500720063006500
      6E0074000100010001000D000A00700070004400420054006500780074003400
      31002E0055007300650072004E0061006D006500010044004200540065007800
      7400310031000100010001000D000A0070007000530068006100700065003100
      39002E0055007300650072004E0061006D006500010053006800610070006500
      31000100010001000D000A007000700053006800610070006500320031002E00
      55007300650072004E0061006D00650001005300680061007000650033000100
      010001000D000A007000700053006800610070006500320032002E0055007300
      650072004E0061006D0065000100530068006100700065003400010001000100
      0D000A007000700053006800610070006500320033002E005500730065007200
      4E0061006D00650001005300680061007000650035000100010001000D000A00
      7000700053006800610070006500320034002E0055007300650072004E006100
      6D00650001005300680061007000650036000100010001000D000A0070007000
      53006800610070006500320035002E0055007300650072004E0061006D006500
      01005300680061007000650037000100010001000D000A007000700044004200
      5400650078007400310035002E0044006100740061004600690065006C006400
      01004400630073000100010001000D000A007000700044004200540065007800
      7400310035002E0055007300650072004E0061006D0065000100440042005400
      650078007400310035000100010001000D000A00700070005300680061007000
      6500320036002E0055007300650072004E0061006D0065000100530068006100
      70006500320036000100010001000D000A007000700053006800610070006500
      320037002E0055007300650072004E0061006D00650001005300680061007000
      6500320037000100010001000D000A0070007000440042005400650078007400
      320034002E0044006100740061004600690065006C006400010043006D000100
      010001000D000A0070007000440042005400650078007400320034002E005500
      7300650072004E0061006D006500010044004200540065007800740032000100
      010001000D000A0070007000530079007300740065006D005600610072006900
      610062006C00650034002E0055007300650072004E0061006D00650001005300
      79007300740065006D005600610072006900610062006C006500340001000100
      01000D000A0070007000470072006F007500700033002E004200720065006100
      6B004E0061006D00650001004B0068000100010001000D000A00700070004700
      72006F007500700033002E0055007300650072004E0061006D00650001004700
      72006F007500700033000100010001000D000A00700070005200650067006900
      6F006E0035002E0055007300650072004E0061006D0065000100520065006700
      69006F006E0035000100010001000D000A007000700044004200430061006C00
      630031002E0044006100740061004600690065006C00640001005A0064007300
      0100010001000D000A007000700044004200430061006C00630031002E005500
      7300650072004E0061006D006500010044004200430061006C00630031000100
      010001000D000A007000700044004200430061006C00630032002E0044006100
      740061004600690065006C00640001004D006A006A0073000100010001000D00
      0A007000700044004200430061006C00630032002E0055007300650072004E00
      61006D006500010044004200430061006C00630032000100010001000D000A00
      6C0062006A0068006D002E0043006F006D006D0061006E006400540065007800
      74000100730065006C0065006300740020002A002000660072006F006D002000
      6300750074005F006C0062006A00680031002000770068006500720065002000
      700072006A006E006F003D002700310032003300340035002700010001000100
      0D000A006C0062006A0068006D002E00460069006C0074006500720001000100
      010001000D000A006C0062006A0068006D002E0049006E006400650078004600
      690065006C0064004E0061006D006500730001000100010001000D000A006C00
      62006A0068006D002E00500072006F00760069006400650072004E0061006D00
      650001006400730070007000680067000100010001000D000A006C0062006A00
      680064002E0043006F006D006D0061006E006400540065007800740001007300
      65006C0065006300740020002A002000660072006F006D002000630075007400
      5F006C0062006A00680032002000770068006500720065002000700072006A00
      6E006F003D0027003100320033003400350027000100010001000D000A006C00
      62006A00680064002E00460069006C0074006500720001000100010001000D00
      0A006C0062006A00680064002E0049006E006400650078004600690065006C00
      64004E0061006D006500730001000100010001000D000A006C0062006A006800
      64002E00500072006F00760069006400650072004E0061006D00650001006400
      730070007000680067000100010001000D000A006C00620077006C0064002E00
      43006F006D006D0061006E00640054006500780074000100730065006C006500
      6300740020002A002000660072006F006D0020006300750074005F006C006200
      77006C0031002000770068006500720065002000700072006A006E006F003D00
      27004500540041004D003100390034004200380039002D0050004C0027000100
      010001000D000A006C00620077006C0064002E00460069006C00740065007200
      01000100010001000D000A006C00620077006C0064002E0049006E0064006500
      78004600690065006C0064004E0061006D006500730001000100010001000D00
      0A006C00620077006C0064002E00500072006F00760069006400650072004E00
      61006D00650001006400730070007000680067000100010001000D000A007000
      70005200650070006F007200740031002E0050006100720061006D0065007400
      65007200730045006400690074006F00720001000100010001000D000A007000
      70005200650070006F007200740033002E0050006100720061006D0065007400
      65007200730045006400690074006F00720001000100010001000D000A004100
      5100750065007200790031002E0043006F006E006E0065006300740069006F00
      6E0053007400720069006E00670001000100010001000D000A00410051007500
      65007200790031002E00460069006C0074006500720001000100010001000D00
      0A0041005100750065007200790032002E0043006F006E006E00650063007400
      69006F006E0053007400720069006E00670001000100010001000D000A004100
      5100750065007200790032002E00460069006C00740065007200010001000100
      01000D000A00730074004C006F00630061006C00650073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00440042004700
      7200690064004500680032002E0043006F006C0075006D006E0073005B003000
      5D002E0046006F006F007400650072002E00560061006C007500650001000100
      010001000D000A004400420047007200690064004500680032002E0043006F00
      6C0075006D006E0073005B0030005D002E0053005400460069006C0074006500
      72002E0044006100740061004600690065006C00640001000100010001000D00
      0A004400420047007200690064004500680032002E0043006F006C0075006D00
      6E0073005B0030005D002E0053005400460069006C007400650072002E004B00
      650079004600690065006C00640001000100010001000D000A00440042004700
      7200690064004500680032002E0043006F006C0075006D006E0073005B003000
      5D002E0053005400460069006C007400650072002E004C006900730074004600
      690065006C00640001000100010001000D000A00440042004700720069006400
      4500680032002E0043006F006C0075006D006E0073005B0030005D002E005400
      690074006C0065002E00430061007000740069006F006E000100E55D0B7A5F86
      0100010001000D000A004400420047007200690064004500680032002E004300
      6F006C0075006D006E0073005B0030005D002E005400690074006C0065002E00
      480069006E00740001000100010001000D000A00440042004700720069006400
      4500680032002E0043006F006C0075006D006E0073005B0031005D002E004600
      6F006F007400650072002E00560061006C007500650001000100010001000D00
      0A004400420047007200690064004500680032002E0043006F006C0075006D00
      6E0073005B0031005D002E0053005400460069006C007400650072002E004400
      6100740061004600690065006C00640001000100010001000D000A0044004200
      47007200690064004500680032002E0043006F006C0075006D006E0073005B00
      31005D002E0053005400460069006C007400650072002E004B00650079004600
      690065006C00640001000100010001000D000A00440042004700720069006400
      4500680032002E0043006F006C0075006D006E0073005B0031005D002E005300
      5400460069006C007400650072002E004C006900730074004600690065006C00
      640001000100010001000D000A00440042004700720069006400450068003200
      2E0043006F006C0075006D006E0073005B0031005D002E005400690074006C00
      65002E00430061007000740069006F006E0001003652AE555F86010001000100
      0D000A004400420047007200690064004500680032002E0043006F006C007500
      6D006E0073005B0031005D002E005400690074006C0065002E00480069006E00
      740001000100010001000D000A00440042004700720069006400450068003200
      2E0043006F006C0075006D006E0073005B0032005D002E0046006F006F007400
      650072002E00560061006C007500650001000100010001000D000A0044004200
      47007200690064004500680032002E0043006F006C0075006D006E0073005B00
      32005D002E0053005400460069006C007400650072002E004400610074006100
      4600690065006C00640001000100010001000D000A0044004200470072006900
      64004500680032002E0043006F006C0075006D006E0073005B0032005D002E00
      53005400460069006C007400650072002E004B00650079004600690065006C00
      640001000100010001000D000A00440042004700720069006400450068003200
      2E0043006F006C0075006D006E0073005B0032005D002E005300540046006900
      6C007400650072002E004C006900730074004600690065006C00640001000100
      010001000D000A004400420047007200690064004500680032002E0043006F00
      6C0075006D006E0073005B0032005D002E005400690074006C0065002E004300
      61007000740069006F006E0001003E6B5F860100010001000D000A0044004200
      47007200690064004500680032002E0043006F006C0075006D006E0073005B00
      32005D002E005400690074006C0065002E00480069006E007400010001000100
      01000D000A004400420047007200690064004500680032002E0043006F006C00
      75006D006E0073005B0033005D002E0046006F006F007400650072002E005600
      61006C007500650001000100010001000D000A00440042004700720069006400
      4500680032002E0043006F006C0075006D006E0073005B0033005D002E005300
      5400460069006C007400650072002E0044006100740061004600690065006C00
      640001000100010001000D000A00440042004700720069006400450068003200
      2E0043006F006C0075006D006E0073005B0033005D002E005300540046006900
      6C007400650072002E004B00650079004600690065006C006400010001000100
      01000D000A004400420047007200690064004500680032002E0043006F006C00
      75006D006E0073005B0033005D002E0053005400460069006C00740065007200
      2E004C006900730074004600690065006C00640001000100010001000D000A00
      4400420047007200690064004500680032002E0043006F006C0075006D006E00
      73005B0033005D002E005400690074006C0065002E0043006100700074006900
      6F006E00010072825F860100010001000D000A00440042004700720069006400
      4500680032002E0043006F006C0075006D006E0073005B0033005D002E005400
      690074006C0065002E00480069006E00740001000100010001000D000A004400
      420047007200690064004500680032002E0043006F006C0075006D006E007300
      5B0034005D002E0046006F006F007400650072002E00560061006C0075006500
      01000100010001000D000A004400420047007200690064004500680032002E00
      43006F006C0075006D006E0073005B0034005D002E0053005400460069006C00
      7400650072002E0044006100740061004600690065006C006400010001000100
      01000D000A004400420047007200690064004500680032002E0043006F006C00
      75006D006E0073005B0034005D002E0053005400460069006C00740065007200
      2E004B00650079004600690065006C00640001000100010001000D000A004400
      420047007200690064004500680032002E0043006F006C0075006D006E007300
      5B0034005D002E0053005400460069006C007400650072002E004C0069007300
      74004600690065006C00640001000100010001000D000A004400420047007200
      690064004500680032002E0043006F006C0075006D006E0073005B0034005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001003A5C
      BC780100010001000D000A004400420047007200690064004500680032002E00
      43006F006C0075006D006E0073005B0034005D002E005400690074006C006500
      2E00480069006E00740001000100010001000D000A0044004200470072006900
      64004500680032002E0043006F006C0075006D006E0073005B0035005D002E00
      46006F006F007400650072002E00560061006C00750065000100010001000100
      0D000A004400420047007200690064004500680032002E0043006F006C007500
      6D006E0073005B0035005D002E0053005400460069006C007400650072002E00
      44006100740061004600690065006C00640001000100010001000D000A004400
      420047007200690064004500680032002E0043006F006C0075006D006E007300
      5B0035005D002E0053005400460069006C007400650072002E004B0065007900
      4600690065006C00640001000100010001000D000A0044004200470072006900
      64004500680032002E0043006F006C0075006D006E0073005B0035005D002E00
      53005400460069006C007400650072002E004C00690073007400460069006500
      6C00640001000100010001000D000A0044004200470072006900640045006800
      32002E0043006F006C0075006D006E0073005B0035005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001001C56B667F64E78650100
      010001000D000A004400420047007200690064004500680032002E0043006F00
      6C0075006D006E0073005B0035005D002E005400690074006C0065002E004800
      69006E00740001000100010001000D000A004400420047007200690064004500
      680032002E0043006F006C0075006D006E0073005B0036005D002E0046006F00
      6F007400650072002E00560061006C007500650001000100010001000D000A00
      4400420047007200690064004500680032002E0043006F006C0075006D006E00
      73005B0036005D002E0053005400460069006C007400650072002E0044006100
      740061004600690065006C00640001000100010001000D000A00440042004700
      7200690064004500680032002E0043006F006C0075006D006E0073005B003600
      5D002E0053005400460069006C007400650072002E004B006500790046006900
      65006C00640001000100010001000D000A004400420047007200690064004500
      680032002E0043006F006C0075006D006E0073005B0036005D002E0053005400
      460069006C007400650072002E004C006900730074004600690065006C006400
      01000100010001000D000A004400420047007200690064004500680032002E00
      43006F006C0075006D006E0073005B0036005D002E005400690074006C006500
      2E00430061007000740069006F006E0001001C56B66778650100010001000D00
      0A004400420047007200690064004500680032002E0043006F006C0075006D00
      6E0073005B0036005D002E005400690074006C0065002E00480069006E007400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0030005D002E0046006F006F0074006500
      72002E00560061006C007500650001000100010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003000
      5D002E0053005400460069006C007400650072002E0044006100740061004600
      690065006C00640001000100010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0030005D002E005300
      5400460069006C007400650072002E004B00650079004600690065006C006400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0030005D002E0053005400460069006C00
      7400650072002E004C006900730074004600690065006C006400010001000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0030005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001001C56B6677C00E87D5F860100010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0030005D002E005400690074006C0065002E00480069006E0074000100
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0031005D002E0046006F006F00740065007200
      2E00560061006C007500650001000100010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0031005D00
      2E0053005400460069006C007400650072002E00440061007400610046006900
      65006C00640001000100010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0031005D002E0053005400
      460069006C007400650072002E004B00650079004600690065006C0064000100
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0031005D002E0053005400460069006C007400
      650072002E004C006900730074004600690065006C0064000100010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0031005D002E005400690074006C0065002E00430061007000
      740069006F006E0001001C56B6677C002875035E877325000100010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0031005D002E005400690074006C0065002E00480069006E007400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0032005D002E0046006F006F0074006500
      72002E00560061006C007500650001000100010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003200
      5D002E0053005400460069006C007400650072002E0044006100740061004600
      690065006C00640001000100010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0032005D002E005300
      5400460069006C007400650072002E004B00650079004600690065006C006400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0032005D002E0053005400460069006C00
      7400650072002E004C006900730074004600690065006C006400010001000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0032005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001001C56B6677C00015CA65E28006D006D0029000100
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B0032005D002E005400690074006C0065002E004800
      69006E00740001000100010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0033005D002E0046006F00
      6F007400650072002E00560061006C007500650001000100010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0033005D002E0053005400460069006C007400650072002E0044006100
      740061004600690065006C00640001000100010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003300
      5D002E0053005400460069006C007400650072002E004B006500790046006900
      65006C00640001000100010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0033005D002E0053005400
      460069006C007400650072002E004C006900730074004600690065006C006400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0033005D002E005400690074006C006500
      2E00430061007000740069006F006E0001001C56B6677C007795A65E28006D00
      29000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0033005D002E005400690074006C006500
      2E00480069006E00740001000100010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0034005D002E00
      46006F006F007400650072002E00560061006C00750065000100010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0034005D002E0053005400460069006C007400650072002E00
      44006100740061004600690065006C00640001000100010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0034005D002E0053005400460069006C007400650072002E004B0065007900
      4600690065006C00640001000100010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0034005D002E00
      53005400460069006C007400650072002E004C00690073007400460069006500
      6C00640001000100010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0034005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001001C56B6677C00236A4772
      68548A907795280063006D0029000100010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0034005D00
      2E005400690074006C0065002E00480069006E00740001000100010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0035005D002E0046006F006F007400650072002E00560061006C00
      7500650001000100010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0035005D002E00530054004600
      69006C007400650072002E0044006100740061004600690065006C0064000100
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0035005D002E0053005400460069006C007400
      650072002E004B00650079004600690065006C00640001000100010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0035005D002E0053005400460069006C007400650072002E004C00
      6900730074004600690065006C00640001000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      35005D002E005400690074006C0065002E00430061007000740069006F006E00
      0100088A83527C00C962035E355F78650100010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003500
      5D002E005400690074006C0065002E00480069006E0074000100010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0036005D002E0046006F006F007400650072002E0056006100
      6C007500650001000100010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0036005D002E0053005400
      460069006C007400650072002E0044006100740061004600690065006C006400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0036005D002E0053005400460069006C00
      7400650072002E004B00650079004600690065006C0064000100010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0036005D002E0053005400460069006C007400650072002E00
      4C006900730074004600690065006C00640001000100010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0036005D002E005400690074006C0065002E00430061007000740069006F00
      6E000100088A83527C00AE55355FC962035E7795A65E28006D00290001000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0036005D002E005400690074006C0065002E0048006900
      6E00740001000100010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0037005D002E0046006F006F00
      7400650072002E00560061006C007500650001000100010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0037005D002E0053005400460069006C007400650072002E00440061007400
      61004600690065006C00640001000100010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0037005D00
      2E0053005400460069006C007400650072002E004B0065007900460069006500
      6C00640001000100010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0037005D002E00530054004600
      69006C007400650072002E004C006900730074004600690065006C0064000100
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0037005D002E005400690074006C0065002E00
      430061007000740069006F006E000100088A83527C00C1887252426693952800
      6D0069006E0029000100010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0037005D002E0054006900
      74006C0065002E00480069006E00740001000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      38005D002E0046006F006F007400650072002E00560061006C00750065000100
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0038005D002E0053005400460069006C007400
      650072002E0044006100740061004600690065006C0064000100010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0038005D002E0053005400460069006C007400650072002E00
      4B00650079004600690065006C00640001000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      38005D002E0053005400460069006C007400650072002E004C00690073007400
      4600690065006C00640001000100010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0038005D002E00
      5400690074006C0065002E00430061007000740069006F006E000100088A8352
      7C00697299657795A65E28006D0029000100010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003800
      5D002E005400690074006C0065002E00480069006E0074000100010001000100
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660072006D006C0062006A00680001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0050006100
      6700650043006F006E00740072006F006C00310001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A004C006100
      620065006C00310001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A004C006100620065006C00320001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A004C006100620065006C00330001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A004C00610062006500
      6C003100370001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A004C006100620065006C003100380001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A004C006100620065006C003100300001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00440042004500
      640069007400310001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0044004200450064006900740032000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A00440042004500640069007400330001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0044004200
      45006400690074003100370001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00440042004500640069007400
      3100300001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A00420069007400420074006E003400010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00420069007400420074006E00320001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A004400420047007200
      6900640045006800320001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A004C006100620065006C0037000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A004C006100620065006C00350001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A004C0061006200
      65006C00360001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A004C006100620065006C003100320001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A004C006100620065006C00390001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A004C00610062006500
      6C003100360001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A004C006100620065006C003800010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A004C006100620065006C003100340001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A004C00610062006500
      6C003100390001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A004C006100620065006C003200310001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A004C006100620065006C00340001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A004C00610062006500
      6C003200300001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00440042004500640069007400350001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A00440042004500640069007400360001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00440042004500
      640069007400370001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0044004200450064006900740031003200
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A00440042004500640069007400390001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A004400
      420045006400690074003100360001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A0044004200450064006900
      74003100340001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00440042004500640069007400380001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A004400420045006400690074003100380001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0044004200
      45006400690074003200300001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00440042004500640069007400
      340001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A0044004200450064006900740031003900010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A0044004200470072006900640045006800310001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003100300001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003300350001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C006500310001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003300360001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00700070005300790073007400
      65006D005600610072006900610062006C006500330001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003400320001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A007000700044004200
      54006500780074003200300001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      78007400310001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003300
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003400010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A0070007000440042005400650078007400350001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400360001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A0070007000440042005400
      650078007400380001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      3100310001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00360032000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00380031000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C003800320001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004D00
      65006D006F00310001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C006500320001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C00360001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      380001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003900010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C003200360001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003200370001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003200380001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003200
      390001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003300300001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003700380001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A007000
      70004400420054006500780074003200380001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003700390001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C003800300001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003200
      390001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003500330001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003500340001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003500350001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003500360001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      3500370001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00350039000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00360030000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C003600310001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003600330001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C003600340001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0036003500
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0036003600010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C003600390001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0077006C00
      6D00630001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740034003400
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A006D006A006200680001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A007A006D006A006A00
      730001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400320035000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A00790073006C0062007A00730001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00730063006D00
      6A006300640001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00730063006D006A0066006400010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00790062006C0001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A00730063006D006A007A00630001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A0064007A006D006A007000730001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A006A00680063006700
      7A0073006A0001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00730063006D006A0079006C00010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C00310001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C00320001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      330001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003400010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C00350001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C00370001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      3300310001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00310031000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310032000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      700070004C006100620065006C003100330001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C003100340001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C003100350001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0031003600
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0031003700010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C003100380001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003100390001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003200300001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003200
      310001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003200320001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003200330001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003200340001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003200350001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      3300320001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00330033000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740031003200010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A0070007000440042005400650078007400390001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0066006300
      67006300680001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00660063007A00640068000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      660063006B00680001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0066006300730068000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      6600630063006D0001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A00660063006D006A006A00730001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A00660063006D006A00730001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A0066006300670063006800
      310001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00660063007A0064006800310001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A006600
      63006B006800310001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0066006300730068003100010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A006600630063006D00310001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00660063006D006A006A007300
      310001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00660063006D006A007300310001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A006600
      6300670063006800320001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00660063007A006400680032000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A00660063006B006800320001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A006600630073006800
      320001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A006600630063006D00320001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0066006300
      6D006A006A007300320001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00660063006D006A00730032000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A0066006300670063006800330001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00660063007A00
      64006800330001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00660063006B00680033000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      6600630073006800330001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A006600630063006D00330001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A00660063006D006A006A007300330001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00660063006D00
      6A007300330001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00660063006700630068003400010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00660063007A0064006800340001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A00660063006B0068003400
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A006600630073006800340001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00660063006300
      6D00340001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A00660063006D006A006A0073003400010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00660063006D006A007300340001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003300390001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003400
      330001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A0070007000530079007300740065006D00560061007200
      6900610062006C006500350001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C003400340001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A0070007000530079007300740065006D005600
      610072006900610062006C006500360001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C003400390001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A007000700044004200540065007800
      74003300340001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0035003000
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0035003100010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C003500320001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003700300001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C003700310001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003700
      320001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003700330001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A00700070004C006100620065006C003700350001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C003700360001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A007000700044004200
      54006500780074003300350001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00700070004400420054006500
      780074003300360001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      3300370001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740033003800
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003300390001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400340030000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      700070004400420054006500780074003400310001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A0070007000
      4400420054006500780074003100350001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A007000700044004200
      54006500780074003200340001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00700070005300790073007400
      65006D005600610072006900610062006C006500340001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A007000
      700044004200430061006C006300310001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A007000700044004200
      430061006C006300320001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00}
  end
  object AQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 560
    Top = 337
  end
  object AQuery2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 600
    Top = 337
  end
  object lbjh1: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    AfterOpen = lbjh1AfterOpen
    AfterPost = lbjh1AfterPost
    CommandText = 
      'select * from cut_lbjh1 where prjno='#39'A2M120M-B89-PD1-C1'#39' and wl=' +
      #39'2WT-2WT00568A'#39
    CommandTimeout = 300
    IndexFieldNames = 'prjno;wl;xh'
    Parameters = <>
    Left = 500
    Top = 401
  end
  object lbjh2: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    AfterOpen = lbjh2AfterOpen
    AfterPost = lbjh2AfterPost
    OnNewRecord = lbjh2NewRecord
    CommandText = 
      'select * from cut_lbjh2 where prjno='#39'A2M120M-B89-PD1-C1'#39' and wl=' +
      #39'2WT-2WT00568A'#39
    CommandTimeout = 300
    Parameters = <>
    Left = 556
    Top = 401
  end
  object lbjh3: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    AfterOpen = lbjh3AfterOpen
    BeforePost = lbjh3BeforePost
    AfterPost = lbjh3AfterPost
    OnNewRecord = lbjh3NewRecord
    CommandText = 
      'select * from cut_lbjh3 where prjno='#39'A2M120M-B89-PD1-C1'#39' and wl=' +
      #39'2WT-2WT00568A'#39
    CommandTimeout = 300
    Parameters = <>
    Left = 612
    Top = 401
  end
  object fcwl2: TADODataSet
    Connection = frmmain.ADOConnection1
    AfterPost = fcwl2AfterPost
    CommandTimeout = 300
    Parameters = <>
    Left = 668
    Top = 401
  end
  object Query1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 464
    Top = 305
  end
  object Query2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 488
    Top = 305
  end
  object Query3: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 512
    Top = 305
  end
  object Query4: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 536
    Top = 305
  end
  object Query5: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 560
    Top = 305
  end
  object Query6: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 704
    Top = 305
  end
  object Query7: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 520
    Top = 505
  end
end
