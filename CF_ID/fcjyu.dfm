object frmfcjy: Tfrmfcjy
  Left = 264
  Top = 37
  Caption = #20998#24202#35336#21123'----'#20998#24202#25490#22044#26550#24314#35696
  ClientHeight = 456
  ClientWidth = 1262
  Color = clBtnFace
  Font.Charset = CHINESEBIG5_CHARSET
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 11
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1262
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 31
      Top = 40
      Width = 88
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = #24202#34399
    end
    object Label2: TLabel
      Left = 1194
      Top = 0
      Width = 45
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = #25289#24067#24373#25976
      Visible = False
    end
    object Label3: TLabel
      Left = 293
      Top = 40
      Width = 155
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Marker Job Ord Qty'
    end
    object Label5: TLabel
      Left = 4
      Top = 17
      Width = 115
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = #22044#26550#25490#29256#35215#21123#34399#13#10'Marker Marking Planning #'
    end
    object Label4: TLabel
      Left = 594
      Top = 64
      Width = 105
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Per Sht'
    end
    object Label6: TLabel
      Left = 303
      Top = 17
      Width = 145
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat'#39'l Cde'
    end
    object Label7: TLabel
      Left = 1059
      Top = 19
      Width = 80
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pile Height (M)'
      Visible = False
    end
    object Label8: TLabel
      Left = 1005
      Top = 15
      Width = 9
      Height = 11
      Caption = ' / '
      Visible = False
    end
    object Label9: TLabel
      Left = 1090
      Top = 51
      Width = 52
      Height = 11
      AutoSize = False
      Caption = 'Marked'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 1142
      Top = 51
      Width = 56
      Height = 11
      AutoSize = False
      Caption = 'Extra Marked'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label11: TLabel
      Left = 1197
      Top = 49
      Width = 57
      Height = 11
      AutoSize = False
      Caption = 'Non-Marked'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label12: TLabel
      Left = 958
      Top = 63
      Width = 129
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ed. Marking Qty (determine)'
      Visible = False
    end
    object Label13: TLabel
      Left = 760
      Top = 40
      Width = 122
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ed. - determine laying: '
    end
    object Label14: TLabel
      Left = 760
      Top = 64
      Width = 122
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ttl '
    end
    object Label15: TLabel
      Left = 1017
      Top = 0
      Width = 171
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'The Ed. - determine marker length (M): '
      Visible = False
    end
    object Label16: TLabel
      Left = 561
      Top = 40
      Width = 138
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ed. Marker Job  Ord Qty'
    end
    object SpeedButton13: TSpeedButton
      Left = 272
      Top = 14
      Width = 22
      Height = 22
      Hint = #26597#35426
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
      OnClick = SpeedButton7Click
    end
    object Label17: TLabel
      Left = 1098
      Top = 82
      Width = 167
      Height = 11
      AutoSize = False
      Caption = '[* Marked (Gr) incl. add'#39'l marked]'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label18: TLabel
      Left = 586
      Top = 16
      Width = 113
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ttl Mat'#39'l'
    end
    object Label19: TLabel
      Left = 357
      Top = 63
      Width = 91
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Marker Type '
    end
    object Label20: TLabel
      Left = 952
      Top = 15
      Width = 9
      Height = 11
      Caption = ' / '
      Visible = False
    end
    object Label21: TLabel
      Left = 4
      Top = 64
      Width = 264
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = #22044#26550#25490#29256#35215#21123#34399#13#10'Marker Marking Planning #'
    end
    object Label22: TLabel
      Left = 941
      Top = 40
      Width = 39
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ed. - determine laying: '
    end
    object Label23: TLabel
      Left = 769
      Top = 16
      Width = 113
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ttl Mat'#39'l'
    end
    object SpeedButton15: TSpeedButton
      Left = 581
      Top = 14
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
      OnClick = SpeedButton15Click
    end
    object DBEdit7: TDBEdit
      Left = 166
      Top = 14
      Width = 79
      Height = 19
      Color = 11927551
      DataField = 'Prjno'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 123
      Top = 14
      Width = 145
      Height = 19
      CharCase = ecUpperCase
      Color = 13434875
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 977
      Top = 13
      Width = 25
      Height = 19
      Color = 13434875
      DataField = 'Xh'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 2
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 888
      Top = 38
      Width = 52
      Height = 19
      DataField = 'Lbzs'
      DataSource = dsfcjy1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 3
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 1090
      Top = 61
      Width = 53
      Height = 19
      Color = 11927551
      DataField = 'sjs'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 4
      Visible = False
    end
    object DBEdit5: TDBEdit
      Left = 1197
      Top = 61
      Width = 58
      Height = 19
      Color = 11927551
      DataField = 'ys'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 5
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 1240
      Top = 17
      Width = 22
      Height = 22
      Caption = ' '
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
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
      OnClick = BitBtn1Click
    end
    object DBEdit6: TDBEdit
      Left = 1141
      Top = 61
      Width = 57
      Height = 19
      Color = 11927551
      DataField = 'jcs'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 7
      Visible = False
    end
    object DBEdit8: TDBEdit
      Left = 454
      Top = 14
      Width = 124
      Height = 19
      Color = 13434875
      DataField = 'Wl'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 705
      Top = 62
      Width = 49
      Height = 19
      Color = 13434875
      DataField = 'jhyl'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 9
    end
    object BitBtn2: TBitBtn
      Left = 1205
      Top = 17
      Width = 22
      Height = 22
      Caption = ' '
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Visible = False
      OnClick = BitBtn2Click
    end
    object DBEdit10: TDBEdit
      Left = 1141
      Top = 17
      Width = 37
      Height = 19
      DataField = 'lbhd'
      DataSource = dsfcjy1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 11
      Visible = False
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit11: TDBEdit
      Left = 1017
      Top = 13
      Width = 25
      Height = 19
      Color = 13434875
      DataField = 'ttl_ch'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 12
      Visible = False
    end
    object DBEdit12: TDBEdit
      Left = 888
      Top = 62
      Width = 52
      Height = 19
      Color = 11927551
      DataField = 'ttl_zyl'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit3: TDBEdit
      Left = 705
      Top = 38
      Width = 49
      Height = 19
      Color = 13434875
      DataField = 'zds'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit13: TDBEdit
      Left = 454
      Top = 38
      Width = 55
      Height = 19
      Color = 13434875
      DataField = 'ttl_zds'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 15
    end
    object DBEdit14: TDBEdit
      Left = 705
      Top = 13
      Width = 33
      Height = 19
      Color = 13434875
      DataField = 'ttl_wl'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 16
    end
    object DBComboBox1: TDBComboBox
      Left = 454
      Top = 62
      Width = 55
      Height = 19
      DataField = 'mak_type'
      DataSource = dsfcjy1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      Items.Strings = (
        'PU'
        'CU'
        'PP'
        'TP')
      ParentFont = False
      TabOrder = 17
    end
    object DBEdit29: TDBEdit
      Left = 932
      Top = 13
      Width = 21
      Height = 19
      Color = 13434875
      DataField = 'wl_seq'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 18
      Visible = False
    end
    object Edit2: TEdit
      Left = 123
      Top = 38
      Width = 54
      Height = 19
      CharCase = ecUpperCase
      Color = 13434875
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
      OnKeyPress = Edit1KeyPress
    end
    object DBEdit15: TDBEdit
      Left = 274
      Top = 62
      Width = 55
      Height = 19
      Color = 13434875
      DataField = 'cdxz'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 20
    end
    object DBCheckBox1: TDBCheckBox
      Left = 986
      Top = 39
      Width = 22
      Height = 17
      DataField = 'cfm'
      DataSource = dsfcjy1
      TabOrder = 21
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit16: TDBEdit
      Left = 888
      Top = 13
      Width = 33
      Height = 19
      Color = 13434875
      DataField = 'ttl_xh'
      DataSource = dsfcjy1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 22
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 410
    Width = 1262
    Height = 46
    Align = alBottom
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 116
      Top = 11
      Width = 25
      Height = 25
      Hint = #26032#22686#22044#26550#29256#27425
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
      Left = 142
      Top = 11
      Width = 25
      Height = 25
      Hint = #21034#38500#22044#26550#29256#27425
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
    object tc: TSpeedButton
      Left = 428
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
    object SpeedButton3: TSpeedButton
      Left = 298
      Top = 11
      Width = 25
      Height = 25
      Hint = #21015#21360#20998#24202#35336#21123
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
      Left = 324
      Top = 11
      Width = 25
      Height = 25
      Hint = #21152#35009#25976#21015#21360
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
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 168
      Top = 11
      Width = 25
      Height = 25
      Hint = #21034#38500#22044#26550#24037#21934#34399
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 553
      Top = 6
      Width = 25
      Height = 25
      Hint = #26032#22686#22044#26550#24037#21934#34399
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 778
      Top = 11
      Width = 30
      Height = 30
      Hint = #26597#35426
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
      Visible = False
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 246
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
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 220
      Top = 11
      Width = 25
      Height = 25
      Hint = #30906#23450
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
      OnClick = SpeedButton9Click
    end
    object SpeedButton10: TSpeedButton
      Left = 350
      Top = 11
      Width = 25
      Height = 25
      Hint = #25353#21407#27604#20363
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888000000088888888807777708888888880777770888800000077
        777088880BFBF077777088880FBFB077777088880BFBF000000080000000BFBF
        088880777770FBFB088880777770BFBF088880777770FBFB0888807777700000
        0888807777708888888880000000888888888888888888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton10Click
    end
    object SpeedButton11: TSpeedButton
      Left = 376
      Top = 11
      Width = 25
      Height = 25
      Hint = #26681#25454#29289#26009#24489#35069
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
      OnClick = SpeedButton11Click
    end
    object SpeedButton12: TSpeedButton
      Left = 402
      Top = 11
      Width = 25
      Height = 25
      Hint = #26681#25454#35009#21106#27969#31243#35672#21029#30908#24489#35069
      Glyph.Data = {
        96010000424D9601000000000000760000002800000018000000180000000100
        0400000000002001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888884444444444444444444488887373737373737373737488887B
        BBBBBBBBBBBBBBBBB4888887B77777777777774B788888887FFFFFFFFFFFFF47
        888888888F8888FF28282F48888888888FFFFFFF2F2F2F48888888888F88888F
        2F2F2F4888888888CFFFFFFFFF2F2F4888888888CF8888FFFF2FFFC088888884
        CFFFFFFFFFFFFFCF0888884BCFF888888888FFCBF088883BCFFFFFFFFFFFFFCF
        B7888883CCCCC555546666CB788888886CCC4D55446666C78888888886C46B85
        8BF66C788888888886C6BF555FBF67888888888887C4FB555BF66C8888888888
        86C43FD5DFB66C8888888888864783FBFB76C688888888888888883FB7888888
        8888888888888883788888888888888888888888888888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton12Click
    end
    object SpeedButton14: TSpeedButton
      Left = 194
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
      OnClick = SpeedButton14Click
    end
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 11
      Width = 100
      Height = 25
      DataSource = dsfcjy1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 272
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 89
    Width = 1262
    Height = 321
    Align = alClient
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1260
      Height = 319
      Align = alClient
      AllowedOperations = [alopInsertEh, alopUpdateEh]
      DataSource = dsfcjy2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = CHINESEBIG5_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = CHINESEBIG5_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          Color = 13434875
          EditButtons = <>
          FieldName = 'zdh'
          Footer.ValueType = fvtStaticText
          Footers = <>
          ReadOnly = True
          Title.Caption = #21046#21934#34399
          Width = 135
        end
        item
          Color = 13434875
          EditButtons = <>
          FieldName = 'kh'
          Footer.ValueType = fvtStaticText
          Footers = <>
          ReadOnly = True
          Title.Caption = #27454#34399
          Width = 70
        end
        item
          Color = 13434875
          EditButtons = <>
          FieldName = 'cm'
          Footer.Alignment = taRightJustify
          Footer.ValueType = fvtStaticText
          Footers = <>
          ReadOnly = True
          Title.Caption = #23610#30908
          Width = 40
        end
        item
          Color = 13434875
          EditButtons = <>
          FieldName = 'zds_o'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 50
        end
        item
          Color = 13434875
          EditButtons = <>
          FieldName = 'cm_rev'
          Footer.Alignment = taRightJustify
          Footer.ValueType = fvtStaticText
          Footers = <>
          ReadOnly = True
          Width = 40
        end
        item
          Color = 13434875
          EditButtons = <>
          FieldName = 'zds'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #29983#29986#21046#21934#25976
          Width = 50
        end
        item
          Color = 13434875
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'jy'
          Footers = <>
          ReadOnly = True
          Title.Caption = #27492#29256' - '#21934#24373#25490#29256#25976'|'#38928#35373#27604#20363
          Width = 50
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
          Width = 50
        end
        item
          Color = 15007456
          EditButtons = <>
          FieldName = 'sj_qty'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Width = 50
        end
        item
          Color = 15007456
          EditButtons = <>
          FieldName = 'jc'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #21152#35009
          Title.Font.Charset = CHINESEBIG5_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
        end
        item
          Color = 13434875
          EditButtons = <>
          FieldName = 'ys'
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
  object DataSource1: TDataSource
    DataSet = jcly
    Left = 612
    Top = 312
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296863
    PrinterSetup.mmPaperWidth = 210079
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
    Left = 668
    Top = 312
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 15081
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #35009#24202#37096'/'#22044#26550#37096'  '#21152#35009#24314#35696
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6731
        mmLeft = 65881
        mmTop = 1058
        mmWidth = 66411
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24037#31243#32232#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 9260
        mmWidth = 14224
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
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
        mmLeft = 17992
        mmTop = 9260
        mmWidth = 7366
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21046#21934#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 57944
        mmTop = 15875
        mmWidth = 9652
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #27454#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 82021
        mmTop = 15875
        mmWidth = 6435
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #33394#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 116152
        mmTop = 15875
        mmWidth = 6435
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #23610#30908
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 128323
        mmTop = 15875
        mmWidth = 6435
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #21152#35009#25976
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 138113
        mmTop = 15875
        mmWidth = 9652
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #20633#27880
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 149754
        mmTop = 15875
        mmWidth = 6435
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #29289#26009
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 15875
        mmWidth = 6435
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #24202#27425
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 48948
        mmTop = 15875
        mmWidth = 6435
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 47625
        mmTop = 15081
        mmWidth = 265
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 56621
        mmTop = 15081
        mmWidth = 265
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 80963
        mmTop = 15346
        mmWidth = 265
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 115359
        mmTop = 15081
        mmWidth = 265
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 127265
        mmTop = 15081
        mmWidth = 265
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 137319
        mmTop = 15081
        mmWidth = 265
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 148696
        mmTop = 15081
        mmWidth = 265
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Zdh'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3810
        mmLeft = 57944
        mmTop = 794
        mmWidth = 4784
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
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3810
        mmLeft = 82021
        mmTop = 794
        mmWidth = 3641
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
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3810
        mmLeft = 116152
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
        DataField = 'Cm'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3810
        mmLeft = 128852
        mmTop = 794
        mmWidth = 4318
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
        DataField = 'Jc'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3810
        mmLeft = 141478
        mmTop = 794
        mmWidth = 2455
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
        DataField = 'Bz'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3810
        mmLeft = 149754
        mmTop = 794
        mmWidth = 3302
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
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
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 794
        mmWidth = 3683
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
        DataField = 'Xh'
        DataPipeline = ppBDEPipeline1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Name = #26032#32048#26126#39636
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3810
        mmLeft = 51065
        mmTop = 529
        mmWidth = 3641
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DataSource1
    UserName = 'BDEPipeline1'
    Left = 640
    Top = 312
  end
  object dsfcjy1: TDataSource
    DataSet = fcjy1
    OnDataChange = dsfcjy1DataChange
    Left = 68
    Top = 160
  end
  object dsfcjy2: TDataSource
    DataSet = fcjy2
    Left = 124
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 640
    Top = 401
    object N1: TMenuItem
      Caption = #21462#28040#29289#26009#24489#35069
      ShortCut = 122
      Visible = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #37325#35336#32317#29256#27425
      ShortCut = 24647
      Visible = False
      OnClick = N2Click
    end
    object FRN1: TMenuItem
      Caption = #20351#29992'FRN'
      ShortCut = 24658
      Visible = False
      OnClick = FRN1Click
    end
    object N3: TMenuItem
      Caption = #21034#38500#29289#26009
      ShortCut = 24644
      Visible = False
      OnClick = N3Click
    end
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
    Left = 352
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00660063006A007900010006528A5E088A
      83522D002D002D002D0006528A5E92631C56B667FA5E708B0100010001000D00
      0A00500061006E0065006C00310001000100010001000D000A004C0061006200
      65006C00310001008A5E5F860100010001000D000A004C006100620065006C00
      32000100C962035E355F78650100010001000D000A004C006100620065006C00
      330001003D7E3652AE5578650100010001000D000A004C006100620065006C00
      35000100E55D0B7AE87D5F860100010001000D000A004C006100620065006C00
      34000100FA5E708B1C56B6677795A65E28004D0029000100010001000D000A00
      4C006100620065006C0036000100697299650100010001000D000A0042006900
      7400420074006E00310001007890C7643652AE550100010001000D000A004200
      69007400420074006E0032000100EE4F39651A90BC780100010001000D000A00
      500061006E0065006C00320001000100010001000D000A005300700065006500
      640042007500740074006F006E00310001000100010001000D000A0053007000
      65006500640042007500740074006F006E00320001000100010001000D000A00
      7400630001000100010001000D000A0053007000650065006400420075007400
      74006F006E00330001000100010001000D000A00530070006500650064004200
      7500740074006F006E00340001000100010001000D000A005300700065006500
      640042007500740074006F006E00350001000100010001000D000A0053007000
      65006500640042007500740074006F006E00360001000100010001000D000A00
      5300700065006500640042007500740074006F006E0037000100010001000100
      0D000A005300700065006500640042007500740074006F006E00380001000100
      010001000D000A005300700065006500640042007500740074006F006E003900
      01000100010001000D000A005300700065006500640042007500740074006F00
      6E003100300001000100010001000D000A005300700065006500640042007500
      740074006F006E003100310001000100010001000D000A005300700065006500
      640042007500740074006F006E003100320001000100010001000D000A004200
      69007400420074006E00340001000100010001000D000A00500061006E006500
      6C00330001000100010001000D000A00700070004C006100620065006C003100
      0100C1888A5EE8902F001C56B667E89020002000A052C188FA5E708B01000100
      01000D000A00700070004C006100620065006C0032000100E55D0B7AE87D5F86
      0100010001000D000A00700070004C006100620065006C00340001003652AE55
      5F860100010001000D000A00700070004C006100620065006C00350001003E6B
      5F860100010001000D000A00700070004C006100620065006C00360001007282
      5F860100010001000D000A00700070004C006100620065006C00370001003A5C
      BC780100010001000D000A00700070004C006100620065006C0038000100A052
      C18878650100010001000D000A00700070004C006100620065006C0039000100
      9950E86C0100010001000D000A00700070004C006100620065006C0034003400
      0100697299650100010001000D000A00700070004C006100620065006C003400
      360001008A5E216B0100010001000D000A004E0031000100D653886D69729965
      A95FFD880100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A005400660072006D00660063006A007900
      01000100010001000D000A00500061006E0065006C0031000100010001000100
      0D000A004C006100620065006C00310001000100010001000D000A004C006100
      620065006C00320001000100010001000D000A004C006100620065006C003300
      01000100010001000D000A004C006100620065006C0035000100010001000100
      0D000A004C006100620065006C00340001000100010001000D000A004C006100
      620065006C00360001000100010001000D000A00440042004500640069007400
      370001000100010001000D000A00450064006900740031000100010001000100
      0D000A00440042004500640069007400310001000100010001000D000A004400
      42004500640069007400320001000100010001000D000A004400420045006400
      69007400340001000100010001000D000A004400420045006400690074003500
      01000100010001000D000A00420069007400420074006E003100010001000100
      01000D000A00440042004500640069007400360001000100010001000D000A00
      440042004500640069007400380001000100010001000D000A00440042004500
      640069007400390001000100010001000D000A00420069007400420074006E00
      320001000100010001000D000A00500061006E0065006C003200010001000100
      01000D000A005300700065006500640042007500740074006F006E0031000100
      B0659E58004E8A5E0100010001000D000A005300700065006500640042007500
      740074006F006E00320001002A5264960100010001000D000A00740063000100
      0090FA510100010001000D000A00530070006500650064004200750074007400
      6F006E00330001001752705306528A5E088A83520100010001000D000A005300
      700065006500640042007500740074006F006E0034000100A052C18878651752
      70530100010001000D000A005300700065006500640042007500740074006F00
      6E00350001002A52649674650B50E55D0B7A0100010001000D000A0053007000
      65006500640042007500740074006F006E0036000100B0659E58E55D0B7AE87D
      5F860100010001000D000A005300700065006500640042007500740074006F00
      6E0037000100E567628A0100010001000D000A00530070006500650064004200
      7500740074006F006E0038000100EE4F39653E6B5F860100010001000D000A00
      5300700065006500640042007500740074006F006E0039000100BA789A5B0100
      010001000D000A005300700065006500640042007500740074006F006E003100
      3000010009639F53D46B8B4F0100010001000D000A0053007000650065006400
      42007500740074006F006E0031003100010039686E6369729965A95FFD880100
      010001000D000A005300700065006500640042007500740074006F006E003100
      3200010039686E63E55D0B7AE87D5F86A95FFD880100010001000D000A004400
      42004E006100760069006700610074006F007200310001000100010001000D00
      0A00420069007400420074006E0034000100EE4F396569729965010001000100
      0D000A00500061006E0065006C00330001000100010001000D000A0044004200
      470072006900640045006800310001000100010001000D000A004E0031000100
      0100010001000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      660072006D00660063006A00790001004D0053002000530061006E0073002000
      5300650072006900660001005400610068006F006D0061000100410072006900
      61006C00200055006E00690063006F006400650020004D00530001000D000A00
      4C006100620065006C0031000100B065307D0E66D49A01005400610068006F00
      6D006100010041007200690061006C00200055006E00690063006F0064006500
      20004D00530001000D000A004C006100620065006C0032000100B065307D0E66
      D49A01005400610068006F006D006100010041007200690061006C0020005500
      6E00690063006F006400650020004D00530001000D000A004C00610062006500
      6C0033000100B065307D0E66D49A01005400610068006F006D00610001004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      0D000A004C006100620065006C0035000100B065307D0E66D49A010054006100
      68006F006D006100010041007200690061006C00200055006E00690063006F00
      6400650020004D00530001000D000A004C006100620065006C0034000100B065
      307D0E66D49A01005400610068006F006D006100010041007200690061006C00
      200055006E00690063006F006400650020004D00530001000D000A004C006100
      620065006C0036000100B065307D0E66D49A01005400610068006F006D006100
      010041007200690061006C00200055006E00690063006F006400650020004D00
      530001000D000A0044004200450064006900740037000100B065307D0E66D49A
      01005400610068006F006D006100010041007200690061006C00200055006E00
      690063006F006400650020004D00530001000D000A0044004200450064006900
      740031000100B065307D0E66D49A01005400610068006F006D00610001004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      0D000A0044004200450064006900740032000100B065307D0E66D49A01005400
      610068006F006D006100010041007200690061006C00200055006E0069006300
      6F006400650020004D00530001000D000A004400420045006400690074003400
      0100B065307D0E66D49A01005400610068006F006D0061000100410072006900
      61006C00200055006E00690063006F006400650020004D00530001000D000A00
      44004200450064006900740035000100B065307D0E66D49A0100540061006800
      6F006D006100010041007200690061006C00200055006E00690063006F006400
      650020004D00530001000D000A00420069007400420074006E0031000100B065
      307D0E66D49A01005400610068006F006D006100010041007200690061006C00
      200055006E00690063006F006400650020004D00530001000D000A0044004200
      450064006900740036000100B065307D0E66D49A01005400610068006F006D00
      6100010041007200690061006C00200055006E00690063006F00640065002000
      4D00530001000D000A0044004200450064006900740038000100B065307D0E66
      D49A01005400610068006F006D006100010041007200690061006C0020005500
      6E00690063006F006400650020004D00530001000D000A004400420045006400
      6900740039000100B065307D0E66D49A01005400610068006F006D0061000100
      41007200690061006C00200055006E00690063006F006400650020004D005300
      01000D000A00420069007400420074006E0032000100B065307D0E66D49A0100
      5400610068006F006D006100010041007200690061006C00200055006E006900
      63006F006400650020004D00530001000D000A00420069007400420074006E00
      34000100B065307D0E66D49A01005400610068006F006D006100010041007200
      690061006C00200055006E00690063006F006400650020004D00530001000D00
      0A004400420047007200690064004500680031000100B065307D0E66D49A0100
      5400610068006F006D006100010041007200690061006C00200055006E006900
      63006F006400650020004D00530001000D000A00700070004C00610062006500
      6C0031000100B065307D0E66D49A01005400610068006F006D00610001004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      0D000A00700070004C006100620065006C0032000100B065307D0E66D49A0100
      5400610068006F006D006100010041007200690061006C00200055006E006900
      63006F006400650020004D00530001000D000A00700070004400420054006500
      7800740031000100B065307D0E66D49A01005400610068006F006D0061000100
      41007200690061006C00200055006E00690063006F006400650020004D005300
      01000D000A00700070004C006100620065006C0034000100B065307D0E66D49A
      01005400610068006F006D006100010041007200690061006C00200055006E00
      690063006F006400650020004D00530001000D000A00700070004C0061006200
      65006C0035000100B065307D0E66D49A01005400610068006F006D0061000100
      41007200690061006C00200055006E00690063006F006400650020004D005300
      01000D000A00700070004C006100620065006C0036000100B065307D0E66D49A
      01005400610068006F006D006100010041007200690061006C00200055006E00
      690063006F006400650020004D00530001000D000A00700070004C0061006200
      65006C0037000100B065307D0E66D49A01005400610068006F006D0061000100
      41007200690061006C00200055006E00690063006F006400650020004D005300
      01000D000A00700070004C006100620065006C0038000100B065307D0E66D49A
      01005400610068006F006D006100010041007200690061006C00200055006E00
      690063006F006400650020004D00530001000D000A00700070004C0061006200
      65006C0039000100B065307D0E66D49A01005400610068006F006D0061000100
      41007200690061006C00200055006E00690063006F006400650020004D005300
      01000D000A00700070004C006100620065006C00340034000100B065307D0E66
      D49A01005400610068006F006D006100010041007200690061006C0020005500
      6E00690063006F006400650020004D00530001000D000A00700070004C006100
      620065006C00340036000100B065307D0E66D49A01005400610068006F006D00
      6100010041007200690061006C00200055006E00690063006F00640065002000
      4D00530001000D000A007000700044004200540065007800740033000100B065
      307D0E66D49A01005400610068006F006D006100010041007200690061006C00
      200055006E00690063006F006400650020004D00530001000D000A0070007000
      44004200540065007800740034000100B065307D0E66D49A0100540061006800
      6F006D006100010041007200690061006C00200055006E00690063006F006400
      650020004D00530001000D000A00700070004400420054006500780074003500
      0100B065307D0E66D49A01005400610068006F006D0061000100410072006900
      61006C00200055006E00690063006F006400650020004D00530001000D000A00
      7000700044004200540065007800740036000100B065307D0E66D49A01005400
      610068006F006D006100010041007200690061006C00200055006E0069006300
      6F006400650020004D00530001000D000A007000700044004200540065007800
      740037000100B065307D0E66D49A01005400610068006F006D00610001004100
      7200690061006C00200055006E00690063006F006400650020004D0053000100
      0D000A007000700044004200540065007800740038000100B065307D0E66D49A
      01005400610068006F006D006100010041007200690061006C00200055006E00
      690063006F006400650020004D00530001000D000A0070007000440042005400
      650078007400310038000100B065307D0E66D49A01005400610068006F006D00
      6100010041007200690061006C00200055006E00690063006F00640065002000
      4D00530001000D000A0070007000440042005400650078007400310039000100
      B065307D0E66D49A01005400610068006F006D00610001004100720069006100
      6C00200055006E00690063006F006400650020004D00530001000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A00440042004E006100760069006700610074006F007200
      31002E00480069006E0074007300010022004600690072007300740020007200
      650063006F007200640022002C0022005000720069006F007200200072006500
      63006F007200640022002C0022004E0065007800740020007200650063006F00
      7200640022002C0022004C0061007300740020007200650063006F0072006400
      22002C00220049006E00730065007200740020007200650063006F0072006400
      22002C002200440065006C0065007400650020007200650063006F0072006400
      22002C002200450064006900740020007200650063006F007200640022002C00
      220050006F00730074002000650064006900740022002C002200430061006E00
      630065006C002000650064006900740022002C00220052006500660072006500
      730068002000640061007400610022000100010001000D000A00700070005200
      650070006F007200740031002E0043006F006C0075006D006E0050006F007300
      6900740069006F006E00730001000100010001000D000A007300740044006C00
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
      660063006A0079002E00480065006C007000460069006C006500010001000100
      01000D000A0044004200450064006900740037002E0044006100740061004600
      690065006C0064000100500072006A006E006F000100010001000D000A004500
      64006900740031002E00540065007800740001000100010001000D000A004400
      4200450064006900740031002E0044006100740061004600690065006C006400
      0100580068000100010001000D000A0044004200450064006900740032002E00
      44006100740061004600690065006C00640001004C0062007A00730001000100
      01000D000A0044004200450064006900740034002E0044006100740061004600
      690065006C006400010073006A0073000100010001000D000A00440042004500
      64006900740035002E0044006100740061004600690065006C00640001007900
      73000100010001000D000A0044004200450064006900740036002E0044006100
      740061004600690065006C00640001006A00630073000100010001000D000A00
      44004200450064006900740038002E0044006100740061004600690065006C00
      6400010057006C000100010001000D000A004400420045006400690074003900
      2E0044006100740061004600690065006C00640001006A00680079006C000100
      010001000D000A00700070005200650070006F007200740031002E0041007200
      63006800690076006500460069006C0065004E0061006D006500010001000100
      01000D000A00700070005200650070006F007200740031002E00440065007600
      69006300650054007900700065000100530063007200650065006E0001000100
      01000D000A00700070005200650070006F007200740031002E00540065007800
      7400460069006C0065004E0061006D00650001000100010001000D000A007000
      70005300680061007000650031002E0055007300650072004E0061006D006500
      01005300680061007000650031000100010001000D000A00700070004C006100
      620065006C0031002E0055007300650072004E0061006D00650001004C006100
      620065006C0031000100010001000D000A00700070004C006100620065006C00
      32002E0055007300650072004E0061006D00650001004C006100620065006C00
      32000100010001000D000A007000700044004200540065007800740031002E00
      44006100740061004600690065006C0064000100500072006A006E006F000100
      010001000D000A007000700044004200540065007800740031002E0055007300
      650072004E0061006D0065000100440042005400650078007400310001000100
      01000D000A00700070004C006100620065006C0034002E005500730065007200
      4E0061006D00650001004C006100620065006C0034000100010001000D000A00
      700070004C006100620065006C0035002E0055007300650072004E0061006D00
      650001004C006100620065006C0035000100010001000D000A00700070004C00
      6100620065006C0036002E0055007300650072004E0061006D00650001004C00
      6100620065006C0036000100010001000D000A00700070004C00610062006500
      6C0037002E0055007300650072004E0061006D00650001004C00610062006500
      6C0037000100010001000D000A00700070004C006100620065006C0038002E00
      55007300650072004E0061006D00650001004C006100620065006C0038000100
      010001000D000A00700070004C006100620065006C0039002E00550073006500
      72004E0061006D00650001004C006100620065006C0039000100010001000D00
      0A00700070004C006100620065006C00340034002E0055007300650072004E00
      61006D00650001004C006100620065006C00340034000100010001000D000A00
      700070004C006100620065006C00340036002E0055007300650072004E006100
      6D00650001004C006100620065006C00340036000100010001000D000A007000
      70004C0069006E006500310039002E0055007300650072004E0061006D006500
      01004C0069006E006500310039000100010001000D000A00700070004C006900
      6E006500320030002E0055007300650072004E0061006D00650001004C006900
      6E006500320030000100010001000D000A00700070004C0069006E0065003200
      31002E0055007300650072004E0061006D00650001004C0069006E0065003200
      300031000100010001000D000A00700070004C0069006E006500320032002E00
      55007300650072004E0061006D00650001004C0069006E006500320032000100
      010001000D000A00700070004C0069006E006500320033002E00550073006500
      72004E0061006D00650001004C0069006E006500320033000100010001000D00
      0A00700070004C0069006E006500320034002E0055007300650072004E006100
      6D00650001004C0069006E006500320034000100010001000D000A0070007000
      4C0069006E006500320035002E0055007300650072004E0061006D0065000100
      4C0069006E006500320035000100010001000D000A0070007000440042005400
      65007800740033002E0044006100740061004600690065006C00640001005A00
      640068000100010001000D000A00700070004400420054006500780074003300
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      33000100010001000D000A007000700044004200540065007800740034002E00
      44006100740061004600690065006C00640001004B0068000100010001000D00
      0A007000700044004200540065007800740034002E0055007300650072004E00
      61006D006500010044004200540065007800740034000100010001000D000A00
      7000700044004200540065007800740035002E00440061007400610046006900
      65006C0064000100530068000100010001000D000A0070007000440042005400
      65007800740035002E0055007300650072004E0061006D006500010044004200
      540065007800740035000100010001000D000A00700070004400420054006500
      7800740036002E0044006100740061004600690065006C006400010043006D00
      0100010001000D000A007000700044004200540065007800740036002E005500
      7300650072004E0061006D006500010044004200540065007800740036000100
      010001000D000A007000700044004200540065007800740037002E0044006100
      740061004600690065006C00640001004A0063000100010001000D000A007000
      700044004200540065007800740037002E0055007300650072004E0061006D00
      6500010044004200540065007800740037000100010001000D000A0070007000
      44004200540065007800740038002E0044006100740061004600690065006C00
      6400010042007A000100010001000D000A007000700044004200540065007800
      740038002E0055007300650072004E0061006D00650001004400420054006500
      7800740038000100010001000D000A0070007000440042005400650078007400
      310038002E0044006100740061004600690065006C006400010057006C000100
      010001000D000A0070007000440042005400650078007400310038002E005500
      7300650072004E0061006D006500010044004200540065007800740031003800
      0100010001000D000A0070007000440042005400650078007400310039002E00
      44006100740061004600690065006C0064000100580068000100010001000D00
      0A0070007000440042005400650078007400310039002E005500730065007200
      4E0061006D006500010044004200540065007800740031003900010001000100
      0D000A007000700042004400450050006900700065006C0069006E0065003100
      2E004D00610073007400650072004600690065006C0064004C0069006E006B00
      730001000100010001000D000A00700070004200440045005000690070006500
      6C0069006E00650031002E0055007300650072004E0061006D00650001004200
      4400450050006900700065006C0069006E00650031000100010001000D000A00
      730074004C006F00630061006C00650073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0030005D002E004600
      6F006F007400650072002E00560061006C007500650001000100010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0030005D002E0053005400460069006C007400650072002E004400
      6100740061004600690065006C00640001000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      30005D002E0053005400460069006C007400650072002E004B00650079004600
      690065006C00640001000100010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0030005D002E005300
      5400460069006C007400650072002E004C006900730074004600690065006C00
      640001000100010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0030005D002E005400690074006C00
      65002E00430061007000740069006F006E0001003652AE555F86010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0030005D002E005400690074006C0065002E00480069006E00
      740001000100010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0031005D002E0046006F006F007400
      650072002E00560061006C007500650001000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      31005D002E0053005400460069006C007400650072002E004400610074006100
      4600690065006C00640001000100010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0031005D002E00
      53005400460069006C007400650072002E004B00650079004600690065006C00
      640001000100010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0031005D002E005300540046006900
      6C007400650072002E004C006900730074004600690065006C00640001000100
      010001000D000A004400420047007200690064004500680031002E0043006F00
      6C0075006D006E0073005B0031005D002E005400690074006C0065002E004300
      61007000740069006F006E0001003E6B5F860100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      31005D002E005400690074006C0065002E00480069006E007400010001000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0032005D002E0046006F006F007400650072002E005600
      61006C007500650001000100010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0032005D002E005300
      5400460069006C007400650072002E0044006100740061004600690065006C00
      640001000100010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0032005D002E005300540046006900
      6C007400650072002E004B00650079004600690065006C006400010001000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0032005D002E0053005400460069006C00740065007200
      2E004C006900730074004600690065006C00640001000100010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B0032005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001003A5CBC780100010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0032005D002E005400
      690074006C0065002E00480069006E00740001000100010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0033005D002E0046006F006F007400650072002E00560061006C0075006500
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0033005D002E0053005400460069006C00
      7400650072002E0044006100740061004600690065006C006400010001000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0033005D002E0053005400460069006C00740065007200
      2E004B00650079004600690065006C00640001000100010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0033005D002E0053005400460069006C007400650072002E004C0069007300
      74004600690065006C00640001000100010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0033005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001001F75
      22753652AE5578650100010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0033005D002E0054006900
      74006C0065002E00480069006E00740001000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      34005D002E0046006F006F007400650072002E00560061006C00750065000100
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0034005D002E0053005400460069006C007400
      650072002E0044006100740061004600690065006C0064000100010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0034005D002E0053005400460069006C007400650072002E00
      4B00650079004600690065006C00640001000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      34005D002E0053005400460069006C007400650072002E004C00690073007400
      4600690065006C00640001000100010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0034005D002E00
      5400690074006C0065002E00430061007000740069006F006E000100FA5E708B
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0034005D002E005400690074006C0065002E00
      480069006E00740001000100010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0035005D002E004600
      6F006F007400650072002E00560061006C007500650001000100010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0035005D002E0053005400460069006C007400650072002E004400
      6100740061004600690065006C00640001000100010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      35005D002E0053005400460069006C007400650072002E004B00650079004600
      690065006C00640001000100010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0035005D002E005300
      5400460069006C007400650072002E004C006900730074004600690065006C00
      640001000100010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0035005D002E005400690074006C00
      65002E00430061007000740069006F006E000100E65B9B960100010001000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0035005D002E005400690074006C0065002E00480069006E007400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0036005D002E0046006F006F0074006500
      72002E00560061006C007500650001000100010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003600
      5D002E0053005400460069006C007400650072002E0044006100740061004600
      690065006C00640001000100010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B0036005D002E005300
      5400460069006C007400650072002E004B00650079004600690065006C006400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0036005D002E0053005400460069006C00
      7400650072002E004C006900730074004600690065006C006400010001000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0036005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100594F78650100010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003600
      5D002E005400690074006C0065002E00480069006E0074000100010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0037005D002E0046006F006F007400650072002E0056006100
      6C007500650001000100010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0037005D002E0053005400
      460069006C007400650072002E0044006100740061004600690065006C006400
      01000100010001000D000A004400420047007200690064004500680031002E00
      43006F006C0075006D006E0073005B0037005D002E0053005400460069006C00
      7400650072002E004B00650079004600690065006C0064000100010001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B0037005D002E0053005400460069006C007400650072002E00
      4C006900730074004600690065006C00640001000100010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B0037005D002E005400690074006C0065002E00430061007000740069006F00
      6E000100A052C1880100010001000D000A004400420047007200690064004500
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
      5400690074006C0065002E00430061007000740069006F006E0001009950E86C
      0100010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0038005D002E005400690074006C0065002E00
      480069006E00740001000100010001000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      72006D00660063006A00790001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A00420069007400420074006E00
      310001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00420069007400420074006E0032000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      420069007400420074006E00340001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A0044004200450064006900
      7400310001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A004400420045006400690074003200010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00440042004500640069007400340001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A004400420045006400
      69007400350001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00440042004500640069007400360001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A00440042004500640069007400370001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00440042004500
      640069007400380001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A0044004200450064006900740039000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A004400420047007200690064004500680031000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010054004800410049005F00430048004100520053004500540001000D000A00
      4C006100620065006C00310001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010054004800410049005F00
      430048004100520053004500540001000D000A004C006100620065006C003200
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A004C006100620065006C00330001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001005400
      4800410049005F00430048004100520053004500540001000D000A004C006100
      620065006C00340001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A004C006100620065006C00350001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A004C006100620065006C00360001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A007000700044004200
      5400650078007400310001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A007000700044004200540065007800
      74003100380001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003100
      390001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400330001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      45005400010054004800410049005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400340001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A007000
      7000440042005400650078007400350001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100540048004100
      49005F00430048004100520053004500540001000D000A007000700044004200
      5400650078007400360001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A007000700044004200540065007800
      7400370001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      480041005200530045005400010054004800410049005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740038000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      530045005400010054004800410049005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      54004800410049005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00320001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001005400480041004900
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00340001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      4300480041005200530045005400010054004800410049005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0034003400
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      5200530045005400010054004800410049005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0034003600010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C00350001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00700070004C00
      6100620065006C00360001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F004300480041005200530045005400010054004800410049005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      370001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      41005200530045005400010054004800410049005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003800010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      5400010054004800410049005F00430048004100520053004500540001000D00
      0A00700070004C006100620065006C00390001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010054004800
      410049005F00430048004100520053004500540001000D000A00}
  end
  object AQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 584
    Top = 193
  end
  object AQuery2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 624
    Top = 193
  end
  object fcjy1: TADODataSet
    Connection = frmmain.ADOConnection1
    AfterOpen = fcjy1AfterOpen
    AfterPost = fcjy1AfterPost
    CommandTimeout = 300
    IndexFieldNames = 'prjno;wl;xh'
    Parameters = <>
    Left = 40
    Top = 161
  end
  object fcjy2: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    AfterOpen = fcjy2AfterOpen
    AfterPost = fcjy2AfterPost
    CommandText = 'select * from cut_fcjy2 where prjno='#39'A3C250M-B89-PD1-S0'#39
    CommandTimeout = 300
    Parameters = <>
    Left = 96
    Top = 161
    object fcjy2prjno: TStringField
      FieldName = 'prjno'
      Size = 30
    end
    object fcjy2wl: TStringField
      FieldName = 'wl'
    end
    object fcjy2xh: TIntegerField
      FieldName = 'xh'
    end
    object fcjy2kh: TStringField
      FieldName = 'kh'
    end
    object fcjy2gch: TStringField
      FieldName = 'gch'
      Size = 50
    end
    object fcjy2zdh: TStringField
      FieldName = 'zdh'
      Size = 160
    end
    object fcjy2sh: TStringField
      FieldName = 'sh'
      Size = 3
    end
    object fcjy2id: TIntegerField
      FieldName = 'id'
    end
    object fcjy2cup: TStringField
      FieldName = 'cup'
      Size = 5
    end
    object fcjy2siz1: TIntegerField
      FieldName = 'siz1'
    end
    object fcjy2cm: TStringField
      FieldName = 'cm'
      Size = 10
    end
    object fcjy2zds: TIntegerField
      FieldName = 'zds'
    end
    object fcjy2jy: TFloatField
      FieldName = 'jy'
    end
    object fcjy2sj: TFloatField
      FieldName = 'sj'
      OnChange = fcjy2sjChange
    end
    object fcjy2jc: TIntegerField
      FieldName = 'jc'
      OnChange = fcjy2JcChange
    end
    object fcjy2ys: TIntegerField
      FieldName = 'ys'
    end
    object fcjy2gmc: TStringField
      FieldName = 'gmc'
      Size = 10
    end
    object fcjy2gmt: TStringField
      FieldName = 'gmt'
      Size = 10
    end
    object fcjy2gm: TIntegerField
      FieldName = 'gm'
    end
    object fcjy2bz: TStringField
      FieldName = 'bz'
      Size = 60
    end
    object fcjy2jyl: TFloatField
      FieldName = 'jyl'
    end
    object fcjy2sj_qty: TIntegerField
      FieldName = 'sj_qty'
    end
    object fcjy2cm_cor: TStringField
      FieldName = 'cm_cor'
      Size = 10
    end
    object fcjy2cm_pt: TStringField
      FieldName = 'cm_pt'
    end
    object fcjy2cm_rev: TStringField
      FieldName = 'cm_rev'
      Size = 10
    end
    object fcjy2zds_o: TIntegerField
      FieldName = 'zds_o'
    end
  end
  object jcly: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 584
    Top = 313
  end
  object dsfcwl2: TDataSource
    DataSet = fcwl2
    Left = 696
    Top = 400
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 720
    Top = 312
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 752
    Top = 312
  end
  object fcwl2: TADODataSet
    Connection = frmmain.ADOConnection1
    AfterPost = fcwl2AfterPost
    CommandTimeout = 300
    Parameters = <>
    Left = 664
    Top = 401
  end
end
