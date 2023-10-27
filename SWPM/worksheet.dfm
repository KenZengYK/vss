object worksheet1: Tworksheet1
  Left = 210
  Top = 98
  Caption = 'Planning & Scheduling (Mainboard) - Application'
  ClientHeight = 534
  ClientWidth = 1297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 142
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 1144
      Top = 74
      Width = 65
      Height = 13
      AutoSize = False
      Caption = 'Impact Code'
      Visible = False
    end
    object Label14: TLabel
      Left = 1200
      Top = 5
      Width = 81
      Height = 13
      AutoSize = False
      Caption = #23395#31680'/'#31995#21015
      Visible = False
    end
    object SpeedButton2: TSpeedButton
      Left = 375
      Top = -21
      Width = 57
      Height = 22
      Caption = 'QN'#20108#37096
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
      Visible = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 431
      Top = -21
      Width = 169
      Height = 22
      Caption = 'QN/QN'#20108#37096#23529#25209#27969#31243
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888000000088888888807777708888888880777770888800000077
        777088880BFBF077777088880FBFB077777088880BFBF000000080000000BFBF
        088880777770FBFB088880777770BFBF088880777770FBFB0888807777700000
        0888807777708888888880000000888888888888888888888888}
      Visible = False
      OnClick = SpeedButton3Click
    end
    object ComboBox4: TComboBox
      Left = 1200
      Top = 74
      Width = 57
      Height = 21
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      TabOrder = 1
      Visible = False
      OnEnter = ComboBox4Enter
      OnKeyPress = Edit1KeyPress
      Items.Strings = (
        'B'
        'K'
        'U')
    end
    object chk3: TCheckBox
      Left = 1112
      Top = 3
      Width = 145
      Height = 17
      Caption = 'Without RWO FW Start Date'
      TabOrder = 2
      Visible = False
      OnClick = chk3Click
    end
    object chk4: TCheckBox
      Left = 1135
      Top = 91
      Width = 185
      Height = 17
      Caption = #25976#38913'/'#36938#25976#38913'SKU'#20132#25563#20736#34920#26495
      TabOrder = 3
      Visible = False
      OnClick = chk4Click
    end
    object Edit8: TEdit
      Left = 1280
      Top = 4
      Width = 41
      Height = 21
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      TabOrder = 0
      Visible = False
      OnKeyPress = Edit1KeyPress
    end
    object GroupBox2: TGroupBox
      Left = 1144
      Top = 24
      Width = 273
      Height = 33
      Caption = #22577#34920
      TabOrder = 4
      Visible = False
      object chk9: TCheckBox
        Left = 8
        Top = 13
        Width = 169
        Height = 17
        Caption = #25976#38913#37325#25490#21644#36681#31227#22577#34920
        TabOrder = 0
        OnClick = chk9Click
      end
      object chk10: TCheckBox
        Left = 184
        Top = 13
        Width = 81
        Height = 17
        Caption = #25976#38913#20108#37096#22577#34920
        TabOrder = 1
        OnClick = chk10Click
      end
    end
    object chk12: TCheckBox
      Left = 1145
      Top = 51
      Width = 97
      Height = 17
      Caption = 'Waiting for packing (without PDN)'
      TabOrder = 5
      Visible = False
      OnClick = chk12Click
    end
    object DateEdit3: TDateEdit
      Left = 1104
      Top = 26
      Width = 105
      Height = 21
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      NumGlyphs = 2
      TabOrder = 6
      Visible = False
    end
    object DateEdit4: TDateEdit
      Left = 1215
      Top = 26
      Width = 106
      Height = 21
      ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
      NumGlyphs = 2
      TabOrder = 7
      Visible = False
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 4
      Width = 993
      Height = 136
      Caption = 'Criteria (Enquiry && Filter)'
      TabOrder = 8
      object SpeedButton4: TSpeedButton
        Left = 832
        Top = 11
        Width = 89
        Height = 22
        Caption = 'Completed'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
          C43337777777777777F33444881B188444333777F3737337773333308881FF70
          33333337F3373337F3333330888BF770333333373F33F337333333330881F703
          3333333373F73F7333333333308B703333333333373F77333333333333080333
          3333333333777FF333333333301F103333333333377777FF3333333301B1F103
          333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
          333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
          C43337777777777777F334444444444444333777777777777733}
        NumGlyphs = 2
        Visible = False
        OnClick = SpeedButton4Click
      end
      object Label1: TLabel
        Left = 560
        Top = 18
        Width = 49
        Height = 13
        AutoSize = False
        Caption = 'Proj#'
      end
      object Label2: TLabel
        Left = 224
        Top = 18
        Width = 33
        Height = 13
        AutoSize = False
        Caption = 'Line#'
      end
      object Label3: TLabel
        Left = 528
        Top = 25
        Width = 3
        Height = 13
        Visible = False
      end
      object Label5: TLabel
        Left = 114
        Top = 18
        Width = 57
        Height = 13
        AutoSize = False
        Caption = 'Ws'
      end
      object Label6: TLabel
        Left = 253
        Top = 42
        Width = 64
        Height = 13
        AutoSize = False
        Caption = 'Cust Style'
      end
      object Label7: TLabel
        Left = 10
        Top = 18
        Width = 41
        Height = 13
        AutoSize = False
        Caption = 'Fty'
      end
      object Label8: TLabel
        Left = 338
        Top = 18
        Width = 33
        Height = 13
        AutoSize = False
        Caption = 'Div#'
      end
      object Label9: TLabel
        Left = 10
        Top = 42
        Width = 41
        Height = 13
        AutoSize = False
        Caption = 'Pdt'
      end
      object Label10: TLabel
        Left = 114
        Top = 42
        Width = 89
        Height = 13
        AutoSize = False
        Caption = 'Pdt Cde'
      end
      object Label11: TLabel
        Left = 440
        Top = 18
        Width = 73
        Height = 13
        AutoSize = False
        Caption = 'Cust class'
      end
      object Label12: TLabel
        Left = 400
        Top = 42
        Width = 66
        Height = 13
        AutoSize = False
        Caption = 'ERP Clr Cde'
      end
      object Label13: TLabel
        Left = 520
        Top = 42
        Width = 57
        Height = 13
        Caption = 'LB Process  '
      end
      object Label15: TLabel
        Left = 648
        Top = 42
        Width = 41
        Height = 13
        AutoSize = False
        Caption = 'WO#'
      end
      object Label16: TLabel
        Left = 18
        Top = 112
        Width = 91
        Height = 13
        Caption = 'QN start date from'
      end
      object Label17: TLabel
        Left = 237
        Top = 112
        Width = 16
        Height = 13
        Caption = ' to '
      end
      object Label18: TLabel
        Left = 699
        Top = 18
        Width = 87
        Height = 13
        AutoSize = False
        Caption = 'Proj proess'
      end
      object Label19: TLabel
        Left = 776
        Top = 42
        Width = 93
        Height = 13
        Caption = 'Locked (ex-fty) diff'
        Visible = False
      end
      object Edit1: TEdit
        Left = 598
        Top = 14
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 5
        OnKeyPress = Edit1KeyPress
      end
      object Edit5: TEdit
        Left = 304
        Top = 39
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 9
        OnKeyPress = Edit1KeyPress
      end
      object ComboBox1: TComboBox
        Left = 377
        Top = 14
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 3
        OnKeyPress = Edit1KeyPress
        Items.Strings = (
          'A'
          'B'
          'C'
          'D')
      end
      object ComboBox2: TComboBox
        Left = 40
        Top = 39
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 7
        OnKeyPress = Edit1KeyPress
        Items.Strings = (
          'B'
          'K'
          'U')
      end
      object ComboBox3: TComboBox
        Left = 176
        Top = 39
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 8
        OnEnter = ComboBox3Enter
        OnKeyPress = Edit1KeyPress
        Items.Strings = (
          'P'
          'B'
          'K'
          'U')
      end
      object Edit7: TEdit
        Left = 491
        Top = 15
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 4
        OnKeyPress = Edit1KeyPress
      end
      object Edit3: TEdit
        Left = 463
        Top = 39
        Width = 35
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 10
        OnKeyPress = Edit1KeyPress
      end
      object ComboBox5: TComboBox
        Left = 576
        Top = 39
        Width = 50
        Height = 21
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 11
        OnEnter = ComboBox5Enter
        OnKeyPress = Edit1KeyPress
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 61
        Width = 975
        Height = 48
        Caption = 'Dashboard'
        TabOrder = 14
        object chk5: TCheckBox
          Left = 8
          Top = 13
          Width = 178
          Height = 17
          Caption = 'QNs to be arranged'
          TabOrder = 0
          OnClick = chk5Click
        end
        object chk7: TCheckBox
          Left = 192
          Top = 13
          Width = 146
          Height = 17
          Caption = 'QNs without B/D'
          TabOrder = 1
          OnClick = chk7Click
        end
        object chk1: TCheckBox
          Left = 8
          Top = 28
          Width = 178
          Height = 17
          Caption = 'PLC re-arrange (D2 seg)'
          TabOrder = 2
          OnClick = chk1Click
        end
        object chk8: TCheckBox
          Left = 976
          Top = 8
          Width = 97
          Height = 17
          Caption = #25976#38913#20108#37096#20736#34920#26495
          TabOrder = 3
          Visible = False
          OnClick = chk8Click
        end
        object chk6: TCheckBox
          Left = 344
          Top = 13
          Width = 167
          Height = 17
          Caption = 'Merged QNs'
          TabOrder = 4
          OnClick = chk6Click
        end
        object chk2: TCheckBox
          Left = 530
          Top = 13
          Width = 168
          Height = 17
          Caption = 'QNs u/d stream'
          TabOrder = 5
          OnClick = chk2Click
        end
        object chk11: TCheckBox
          Left = 344
          Top = 28
          Width = 180
          Height = 17
          Caption = 'sT3 due days limit (C3 seg)'
          TabOrder = 6
          OnClick = chk11Click
        end
        object chk13: TCheckBox
          Left = 732
          Top = 13
          Width = 229
          Height = 17
          Caption = 'QNs without CU Marker'
          TabOrder = 7
          OnClick = chk13Click
        end
        object chk14: TCheckBox
          Left = 530
          Top = 28
          Width = 207
          Height = 17
          Caption = 'Prdn Kick-off command (C1 seg)'
          TabOrder = 8
          OnClick = chk14Click
        end
        object chk15: TCheckBox
          Left = 192
          Top = 28
          Width = 127
          Height = 17
          Caption = 'Split QNs'
          TabOrder = 9
          OnClick = chk15Click
        end
        object chk16: TCheckBox
          Left = 732
          Top = 28
          Width = 229
          Height = 17
          Caption = 'aT3 undue days limit (C3 seg)'
          TabOrder = 10
          Visible = False
          OnClick = chk16Click
        end
        object chk17: TCheckBox
          Left = 732
          Top = 28
          Width = 178
          Height = 17
          Caption = 'Re-sch. QN Pool'
          TabOrder = 11
          OnClick = chk17Click
        end
      end
      object Edit9: TEdit
        Left = 688
        Top = 39
        Width = 75
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 12
        OnKeyPress = Edit1KeyPress
      end
      object DateEdit1: TDateEdit
        Left = 144
        Top = 112
        Width = 87
        Height = 21
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        NumGlyphs = 2
        TabOrder = 15
      end
      object DateEdit2: TDateEdit
        Left = 261
        Top = 112
        Width = 87
        Height = 21
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        NumGlyphs = 2
        TabOrder = 16
      end
      object ComboBox6: TComboBox
        Left = 784
        Top = 13
        Width = 42
        Height = 21
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 6
        OnKeyPress = Edit1KeyPress
        Items.Strings = (
          '2'
          '3'
          '4'
          '8')
      end
      object Edit6: TComboBox
        Left = 40
        Top = 14
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 0
        Text = 'ALL'
        OnKeyPress = Edit1KeyPress
        Items.Strings = (
          'SL'
          'RX'
          'CN'
          'CL'
          'ALL')
      end
      object Edit4: TComboBox
        Left = 152
        Top = 14
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 1
        OnEnter = Edit4Enter
        OnKeyPress = Edit1KeyPress
        Items.Strings = (
          'SL'
          'CS'
          'GG'
          'RX')
      end
      object Edit2: TComboBox
        Left = 253
        Top = 14
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 2
        OnChange = Edit2Change
        OnEnter = Edit2Enter
        OnKeyPress = Edit1KeyPress
        Items.Strings = (
          'SL'
          'CS'
          'GG'
          'RX')
      end
      object speedbutton1: TBitBtn
        Left = 635
        Top = 110
        Width = 73
        Height = 22
        Caption = 'Confirm'
        Kind = bkOK
        TabOrder = 17
        OnClick = SpeedButton1Click
      end
      object ComboBox7: TComboBox
        Left = 880
        Top = 39
        Width = 67
        Height = 21
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        TabOrder = 13
        Visible = False
        OnKeyPress = Edit1KeyPress
        Items.Strings = (
          '>0'
          '<0')
      end
      object chk_exit: TCheckBox
        Left = 367
        Top = 112
        Width = 259
        Height = 17
        Caption = 'New line'#39's PLC setting based on past prdn records'
        TabOrder = 18
      end
      object memo2: TMemo
        Left = 18
        Top = 131
        Width = 343
        Height = 89
        ImeName = #20013#25991' ('#31616#20307') - '#35895#27468#25340#38899#36755#20837#27861
        Lines.Strings = (
          'memo2')
        TabOrder = 19
        Visible = False
        WordWrap = False
      end
    end
    object BitBtn6: TBitBtn
      Left = 750
      Top = 115
      Width = 98
      Height = 22
      Caption = 'Capacity GAP'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080BFB0888880BFB080FBF0888880FBF08000008808800
        000888088808088808888808808E80880888880008E8E80008888888808E8088
        8888888888080888888888888880888888888888800000888888888880FBF088
        8888888880BFB088888888888000008888888888888888888888}
      TabOrder = 9
      OnClick = BitBtn6Click
    end
    object BitBtn9: TBitBtn
      Left = 854
      Top = 115
      Width = 139
      Height = 22
      Caption = 'Locked QN'#39's start dd'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
        00333337777777777733333308033308033333337F7F337F7F33333308033308
        033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
        7333333373F77733733333333088888033333333373FFFF73333333333000003
        3333333333777773333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 10
      OnClick = BitBtn9Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 499
    Width = 1297
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object lbl850: TLabel
      Left = 961
      Top = 6
      Width = 34
      Height = 16
      Caption = 'lbl850'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 2
      Width = 114
      Height = 27
      Caption = 'Re-scheduling'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkAll
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 122
      Top = 2
      Width = 48
      Height = 27
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
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
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 170
      Top = 2
      Width = 64
      Height = 27
      Caption = 'Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 337
      Top = 2
      Width = 88
      Height = 27
      Caption = 'Next Style(s)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 512
      Top = 2
      Width = 89
      Height = 27
      Caption = 'Last Order(s)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
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
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = BitBtn5Click
    end
    object BitBtn7: TBitBtn
      Left = 234
      Top = 2
      Width = 103
      Height = 27
      Caption = 'Transit Summary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 425
      Top = 2
      Width = 87
      Height = 27
      Caption = 'Next Order(s)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = BitBtn8Click
    end
    object BitBtn10: TBitBtn
      Left = 1135
      Top = 5
      Width = 81
      Height = 27
      Caption = 'Gantt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = GanttChart1Click
    end
    object BitBtn12: TBitBtn
      Left = 643
      Top = 5
      Width = 151
      Height = 27
      Caption = 'Preview (3 kinds of WO)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
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
      ParentFont = False
      PopupMenu = pm1
      TabOrder = 8
      Visible = False
      OnClick = BitBtn12Click
    end
    object BitBtn13: TBitBtn
      Left = 170
      Top = 2
      Width = 75
      Height = 27
      Caption = 'Export'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn13Click
    end
    object BitBtn11: TBitBtn
      Left = 245
      Top = 2
      Width = 50
      Height = 27
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkClose
      ParentFont = False
      TabOrder = 10
    end
    object BitBtn14: TBitBtn
      Left = 709
      Top = 2
      Width = 157
      Height = 27
      Caption = 'Production Progress'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 11
      Visible = False
      OnClick = BitBtn14Click
    end
    object BitBtn15: TBitBtn
      Left = 866
      Top = 2
      Width = 146
      Height = 27
      Caption = 'E Ws Weekly GAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 12
      Visible = False
      OnClick = BitBtn15Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 142
    Width = 1297
    Height = 357
    Align = alClient
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1295
      Height = 355
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxView1: TcxGridDBBandedTableView
        PopupMenu = PopupMenu1
        OnKeyPress = cxView1KeyPress
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = cxView1CellClick
        OnCellDblClick = cxView1CellDblClick
        OnCustomDrawCell = cxView1CustomDrawCell
        DataController.DataSource = DataSource1
        DataController.Filter.OnChanged = cxView1DataControllerFilterChanged
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxView1FCCS
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1SCQTY
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1scqty1
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1piqty
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1pfqty
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1sqty1
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1sqty
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1bqty
          end
          item
            Column = cxView1J_NO
          end
          item
            Column = cxView1J2_JOB
          end
          item
            Column = cxView1CSTYLE
          end
          item
            Column = cxView1PLINE
          end
          item
            Column = cxView1ACOL
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1Column25
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1eyc
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1pfyc
          end
          item
            Kind = skCount
            Column = cxGrid1View1Column26
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1Column27
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1Column28
          end
          item
            Format = '#0'
            Kind = skSum
            Column = cxView1Column29
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.ImmediateEditor = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 30
        OptionsView.BandHeaderHeight = 32
        Styles.Inactive = cxStyle6
        Styles.Selection = cxStyle6
        Styles.OnGetContentStyle = cxView1StylesGetContentStyle
        OnCustomDrawIndicatorCell = cxView1CustomDrawIndicatorCell
        Bands = <
          item
            Caption = 'A Seg. - Ord Info (Style & Qty)  A '#27573' - '#35330#21934#20449#24687' ('#27454#21450#25976#37327')'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
          end
          item
            Caption = 'B Seg.'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
          end
          item
            Caption = 'ERP WO#'#13#10#21046#21934#34399
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 0
          end
          item
            Caption = 'ERP'#13#10'Clr'#13#10'Cde'#13#10#33394#30908
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 6
          end
          item
            Caption = 'CWO Qty'#13#10#13#10#13#10#13#10'(a)='#13#10'b+c'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 8
          end
          item
            Caption = 
              'C Seg. (Key path) - QN(s) Scheduling by line  C '#27573' ('#24185#36947') - '#25976#38913#25353#29983#29987#32218#25490 +
              #25289
            HeaderAlignmentVert = vaTop
          end
          item
            Caption = 'D Seg.'#13#10'D '#27573
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 0
          end
          item
            Caption = 'D1 - Sect hr output (pcs), excl PLC'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 1
          end
          item
            Caption = 'D3 - Ttl sect hr based on PLC'#13#10'D3 - '#20381'PLC'#35336#31639#32317#31680#26178
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 3
          end
          item
            Caption = 'D4 - LB lost'#13#10'- This is for ref'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 4
          end
          item
            Caption = 'D2 - Line eff. based on PLC'#13#10'D2 -'#20381'PLC'#35336#31639#25289#25928#29575
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 2
          end
          item
            Caption = 'I Seg.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 5
          end
          item
            Caption = 'J - Ws Direct WF'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 6
          end
          item
            Caption = 'K - Ws Hardware'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 7
          end
          item
            Caption = 'A'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 13
            Position.ColIndex = 1
          end
          item
            Caption = '12'#13#10'Class'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 1
          end
          item
            Caption = #36914#34892#13#10'(C1+A2'#13#10'excl.'#13#10'B2)'#13#10
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 78
            Position.ColIndex = 0
            Visible = False
          end
          item
            Caption = 'Pre'#13#10'-dict'#13#10'by'#13#10'GSD'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 8
            Position.ColIndex = 0
            Styles.Header = cxStyle8
          end
          item
            Caption = 'FWS dd (Items std-by hv 3 stages)'#13#10#21424#21046#20316#38283#22987#26085#26399' ('#20633#29992#26009#26377#19977#20491#38542#27573')'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 203
            Position.ColIndex = 2
          end
          item
            Caption = 'Def.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 39
            Position.ColIndex = 0
          end
          item
            Caption = 'Prdn'#13#10'kick'#13#10'-off'#13#10'Com-'#13#10'mand'#13#10#13#10'[PRESS]'#13#10'list in'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 203
            Position.ColIndex = 4
            Styles.Header = cxStyle5
            OnHeaderClick = cxView1Bands20HeaderClick
          end
          item
            Caption = 'Sewing Start to Finish dd'#13#10#32299#21512#38283#22987#21040#23436#25104#26085#26399
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 204
            Position.ColIndex = 0
          end
          item
            Caption = 'In Process to Cmp. (Act)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 8
            Position.ColIndex = 3
          end
          item
            Caption = 'X'
            HeaderAlignmentVert = vaTop
            Visible = False
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 186
            Position.ColIndex = 0
            Styles.Header = cxStyle1
            OnHeaderClick = cxView1Bands163HeaderClick
          end
          item
            Caption = 'Def.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 42
            Position.ColIndex = 0
          end
          item
            Caption = 'Finish'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 189
            Position.ColIndex = 1
            Visible = False
          end
          item
            Caption = 'Def.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 40
            Position.ColIndex = 0
          end
          item
            Caption = 'Non Prdn '#13#10'(with holiday)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 33
            Position.ColIndex = 2
          end
          item
            Caption = 'Plan/'#13#10'Actual'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 43
            Position.ColIndex = 0
            Visible = False
          end
          item
            Caption = 'PDN'#13#10'/Act.^'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 4
            Visible = False
          end
          item
            Caption = 'Ex-fty dd '#38626#21424#26399
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 205
            Position.ColIndex = 1
          end
          item
            Caption = 'QN (Plan)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 33
            Position.ColIndex = 0
          end
          item
            Caption = 'Total Time Frame [Fty Start to Ex-fty]'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 6
            Position.ColIndex = 1
          end
          item
            Caption = 'LB'#13#10'Pro-'#13#10'cess'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 9
            Position.ColIndex = 0
          end
          item
            Caption = 'Label standby dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 203
            Position.ColIndex = 1
          end
          item
            Caption = 'Fin.'#13#10'(Y)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 41
            Position.ColIndex = 0
          end
          item
            Caption = 'Style / Clr Dpd'#13#10#27454'/'#33394#30908#20381#38752
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 0
            Position.ColIndex = 2
          end
          item
            Caption = 'A'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 12
            Position.ColIndex = 1
          end
          item
            Caption = '(1) Mat Standby to Sewing Start'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 74
            Position.ColIndex = 0
          end
          item
            Caption = '(3) Sewing Start to T3'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 74
            Position.ColIndex = 2
          end
          item
            Caption = 'Ex-fty'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 205
            Position.ColIndex = 2
            Visible = False
          end
          item
            Caption = '(2) Sewing'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 74
            Position.ColIndex = 1
          end
          item
            Caption = 'T3 dd ('#26085#26399')'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 205
            Position.ColIndex = 0
          end
          item
            Caption = 'GSD'#13#10'SAH'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 2
          end
          item
            Caption = '# of'#13#10'Opts'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 3
          end
          item
            Caption = 'Output'#13#10'(pcs)'#13#10'per'#13#10'sect hr'#13#10'(A2/2'#13#10'/A1)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 6
          end
          item
            Caption = 'Standard Qty/Sect'#13#10'by Ws'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 0
            Visible = False
          end
          item
            Caption = 'F'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 10
            Position.ColIndex = 0
          end
          item
            Caption = 'A'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 10
            Position.ColIndex = 4
            Visible = False
          end
          item
            Caption = 'E'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 10
            Position.ColIndex = 5
          end
          item
            Caption = 'Add'#39'l criteria of'#13#10'Cust PO'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 285
            Position.ColIndex = 0
          end
          item
            Caption = 'Ws #'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 1
            Position.ColIndex = 0
            Visible = False
          end
          item
            Caption = 'Where '#13#10'are they?'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 1
            Position.ColIndex = 1
          end
          item
            Caption = 'LB'#13#10'SMB3'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 9
            Position.ColIndex = 2
          end
          item
            Caption = 'F'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 12
            Position.ColIndex = 0
          end
          item
            Caption = 'E'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 12
            Position.ColIndex = 2
          end
          item
            Caption = 'TTL'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 12
            Position.ColIndex = 3
          end
          item
            Caption = 'F'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 13
            Position.ColIndex = 0
          end
          item
            Caption = 'E'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 13
            Position.ColIndex = 2
          end
          item
            Caption = 'TTL'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 13
            Position.ColIndex = 3
          end
          item
            Caption = 'WF Eff'#13#10'(Invalid)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 48
            Position.ColIndex = 0
          end
          item
            Caption = 'Def.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 10
            Position.ColIndex = 1
          end
          item
            Caption = 'Plan'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 10
            Position.ColIndex = 2
          end
          item
            Caption = 'Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 10
            Position.ColIndex = 3
          end
          item
            Caption = 'WF Eff'#13#10'(Invalid)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 50
            Position.ColIndex = 0
          end
          item
            Caption = 'Def. Ttl Sect hr'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 8
            Position.ColIndex = 2
          end
          item
            Caption = 'AL(S)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 21
            Position.ColIndex = 3
            Visible = False
          end
          item
            Caption = 'F Workshop'#13#10'F '#24037#22580
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 21
            Position.ColIndex = 4
            Visible = False
          end
          item
            Caption = 'AL Workshop ('#24037#22580')'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 21
            Position.ColIndex = 5
          end
          item
            Caption = 'E Workshop'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 21
            Position.ColIndex = 6
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 185
            Position.ColIndex = 0
            Styles.Header = cxStyle1
            OnHeaderClick = cxView1Bands163HeaderClick
          end
          item
            Caption = 'Date'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 185
            Position.ColIndex = 1
          end
          item
            Caption = 'Sect'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 185
            Position.ColIndex = 2
          end
          item
            Caption = 'Production Time Frame (TF-1/2/3)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 6
            Position.ColIndex = 0
          end
          item
            Caption = 'B. Behind Sect - On-hold'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 22
            Position.ColIndex = 3
            Visible = False
          end
          item
            Caption = 'A. Eff Perf. - Sect (+/-)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 22
            Position.ColIndex = 2
            Visible = False
          end
          item
            Caption = 'Behind'#13#10'due to'#13#10'On-hold'#13#10'(+) only'#13#10#13#10'(CU loss)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 213
            Position.ColIndex = 1
          end
          item
            Caption = 'Total sect. hr. - used'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 22
            Position.ColIndex = 1
          end
          item
            Caption = 'CWO#'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 33
            Position.ColIndex = 1
          end
          item
            Caption = 'Plan'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 39
            Position.ColIndex = 1
          end
          item
            Caption = 'Plan'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 42
            Position.ColIndex = 1
          end
          item
            Caption = 'Plan'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 40
            Position.ColIndex = 1
          end
          item
            Caption = 'Finished Date'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 41
            Position.ColIndex = 1
          end
          item
            Caption = 'F'#13#10'l'#13#10'a'#13#10'g'#13#10'1'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 200
            Position.ColIndex = 0
            Styles.Header = cxStyle1
            OnHeaderClick = cxView1Bands84HeaderClick
          end
          item
            Caption = 'Proj#'#13#10#24037#31243#34399
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 200
            Position.ColIndex = 1
          end
          item
            Caption = 'F'#13#10'l'#13#10'a'#13#10'g'#13#10'2'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 4
            Styles.Header = cxStyle1
            OnHeaderClick = cxView1Bands86HeaderClick
          end
          item
            Caption = 'Cust'#13#10'Sty#'#13#10#23458#27454#34399
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 284
            Position.ColIndex = 0
          end
          item
            Caption = 'Ttl'#13#10'[PRESS]'#13#10'list in'#13#10'(b)'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 272
            Position.ColIndex = 0
            Styles.Header = cxStyle5
            OnHeaderClick = cxView1Bands88HeaderClick
          end
          item
            Caption = 'F'#13#10'l'#13#10'a'#13#10'g'#13#10'3'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 11
            Styles.Header = cxStyle1
            OnHeaderClick = cxView1Bands89HeaderClick
          end
          item
            Caption = 'ERP'#13#10'WO '#13#10'suffix'#13#10#21046#21934#13#10#24460#32180
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 37
            Position.ColIndex = 0
          end
          item
            Caption = 'CWO '#13#10#23450#33394#13#10#21046#21934
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 288
            Position.ColIndex = 0
          end
          item
            Caption = 'QN'#13#10#25976#38913
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 288
            Position.ColIndex = 1
          end
          item
            Caption = 'Def'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 61
            Position.ColIndex = 0
          end
          item
            Caption = 'Act./'#13#10'Finish'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 61
            Position.ColIndex = 1
          end
          item
            Caption = 'Def'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 65
            Position.ColIndex = 0
          end
          item
            Caption = 'Act./'#13#10'Finish'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 65
            Position.ColIndex = 1
          end
          item
            Caption = 'PLC'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 62
            Position.ColIndex = 0
          end
          item
            Caption = 'Line'#13#10'Eff.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 62
            Position.ColIndex = 1
          end
          item
            Caption = 'F'#13#10'l'#13#10'a'#13#10'g'#13#10'5'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 63
            Position.ColIndex = 0
            Styles.Header = cxStyle1
            OnHeaderClick = cxView1Bands99HeaderClick
          end
          item
            Caption = 'Line'#13#10'Eff.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 63
            Position.ColIndex = 1
          end
          item
            Caption = 'WF Eff.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 63
            Position.ColIndex = 2
          end
          item
            Caption = 'Line'#13#10'Eff.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 64
            Position.ColIndex = 0
          end
          item
            Caption = 'WF Eff.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 64
            Position.ColIndex = 1
          end
          item
            Caption = 'Diff'#13#10'(B1-'#13#10'A1)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 212
            Position.ColIndex = 2
            Visible = False
          end
          item
            Caption = 'Ttl'#13#10'sect hr'#13#10'[PRESS]'#13#10'list in'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 212
            Position.ColIndex = 1
            Styles.Header = cxStyle8
            OnHeaderClick = cxView1Bands105HeaderClick
          end
          item
            Caption = #35201#35036
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 75
            Position.ColIndex = 0
          end
          item
            Caption = 'Ttl'#13#10'sect'#13#10'hr'#13#10#13#10'(D1+'#13#10'D2)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 213
            Position.ColIndex = 2
          end
          item
            Caption = 'Behind'#13#10'or'#13#10'ahead'#13#10'in %'#13#10'(+/-)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 78
            Position.ColIndex = 2
          end
          item
            Caption = 'Behind'#13#10'or'#13#10'ahead'#13#10'(+/-)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 213
            Position.ColIndex = 0
          end
          item
            Caption = #25928#29575#38477' ('#22686')'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 76
            Position.ColIndex = 0
          end
          item
            Caption = #25928#29575#21319' ('#28187')'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 76
            Position.ColIndex = 1
          end
          item
            Caption = 'dWF'#13#10'(def.)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 4
          end
          item
            Caption = 'WF'#13#10'(adj.)'#13#10'if any'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 7
          end
          item
            Caption = 'Actual/Finish (RAD-5/6)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 9
            Position.ColIndex = 4
          end
          item
            Caption = 'Def (SMB-3)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 55
            Position.ColIndex = 0
          end
          item
            Caption = 'Plan (RAD-4)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 55
            Position.ColIndex = 1
          end
          item
            Caption = 'Actual/Finish (RAA-5/6)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 55
            Position.ColIndex = 2
          end
          item
            Caption = 'Def (SMB-3)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 56
            Position.ColIndex = 0
          end
          item
            Caption = 'Plan (RAA-4)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 56
            Position.ColIndex = 1
          end
          item
            Caption = 'Actual/Finish (RAA-5/6)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 56
            Position.ColIndex = 2
          end
          item
            Caption = 'A) Def (SMB-3)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 57
            Position.ColIndex = 0
          end
          item
            Caption = 'B) Plan (RAA-4)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 57
            Position.ColIndex = 1
          end
          item
            Caption = 'C) Actual/Finish (RAA-5/6)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 57
            Position.ColIndex = 2
          end
          item
            Caption = 'sHW'#13#10'(def.)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 5
          end
          item
            Caption = 'HW'#13#10'(adj.)'#13#10'if any'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 217
            Position.ColIndex = 0
          end
          item
            Caption = 'Actual/Finish (RAA-5/6)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 14
            Position.ColIndex = 0
          end
          item
            Caption = 'Def (SMB-3)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 58
            Position.ColIndex = 0
          end
          item
            Caption = 'Plan (RAA-4)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 58
            Position.ColIndex = 1
          end
          item
            Caption = 'Actual/Finish (RAA-5/6)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 58
            Position.ColIndex = 2
          end
          item
            Caption = 'Def (SMB-3)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 59
            Position.ColIndex = 0
          end
          item
            Caption = 'Plan (RAA-4)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 59
            Position.ColIndex = 1
          end
          item
            Caption = 'Actual/Finish (RAA-5/6)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 59
            Position.ColIndex = 2
          end
          item
            Caption = 'A) Def (SMB-3)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 60
            Position.ColIndex = 0
          end
          item
            Caption = 'B) Plan (RAA-4)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 60
            Position.ColIndex = 1
          end
          item
            Caption = 'C) Actual/Finish (RAA-5/6)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 60
            Position.ColIndex = 2
          end
          item
            Caption = '2nd '#13#10'Def. dd'#13#10'(based on'#13#10'CWO)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 18
            Position.ColIndex = 0
          end
          item
            Caption = 'Adj. '#13#10'(if any)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 18
            Position.ColIndex = 1
          end
          item
            Caption = 'Day'#13#10'diff'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 18
            Position.ColIndex = 3
          end
          item
            Caption = 'F'#13#10'l'#13#10'a'#13#10'g'#13#10'4'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 18
            Position.ColIndex = 6
            Styles.Header = cxStyle1
            OnHeaderClick = cxView1Bands139HeaderClick
          end
          item
            Caption = 'Lock'#13#10'-ed'#13#10'day'#13#10'diff'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 18
            Position.ColIndex = 7
          end
          item
            Caption = 'Latecome'#13#10#24310#20132
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 3
            Visible = False
          end
          item
            Caption = 'Plan/'#13#10'Actual'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 5
            Visible = False
          end
          item
            Caption = 'sT3'#13#10'due'#13#10'days'#13#10'limit'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 220
            Position.ColIndex = 3
            Styles.Header = cxStyle3
          end
          item
            Caption = 'F'#13#10'l'#13#10'a'#13#10'g'#13#10'5'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 6
            Styles.Header = cxStyle1
            Visible = False
            OnHeaderClick = cxView1Bands144HeaderClick
          end
          item
            Caption = 'Days'#13#10'Diff'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 2
          end
          item
            Caption = 'Start'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 192
            Position.ColIndex = 1
            Visible = False
          end
          item
            Caption = 'Finish'#13#10'(T2)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 192
            Position.ColIndex = 3
          end
          item
            Caption = 'Start'#13#10'(= LWS)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 190
            Position.ColIndex = 3
          end
          item
            Caption = 'Finish'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 190
            Position.ColIndex = 4
          end
          item
            Caption = 'Locked (Y)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 190
            Position.ColIndex = 5
            Visible = False
          end
          item
            Caption = 'Start'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 188
            Position.ColIndex = 1
          end
          item
            Caption = 'Finish'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 188
            Position.ColIndex = 2
          end
          item
            Caption = 'Finish'#13#10'(T2)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 191
            Position.ColIndex = 2
          end
          item
            Caption = 'Sect'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 191
            Position.ColIndex = 3
            Visible = False
          end
          item
            Caption = 'Wk'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 189
            Position.ColIndex = 2
            Visible = False
          end
          item
            Caption = 'Date'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 189
            Position.ColIndex = 3
            Visible = False
          end
          item
            Caption = 'Sect'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 189
            Position.ColIndex = 4
            Visible = False
          end
          item
            Caption = 'Start'#13#10'(= LWS)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 189
            Position.ColIndex = 0
          end
          item
            Caption = 'Start'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 187
            Position.ColIndex = 2
          end
          item
            Caption = 'Sect'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 187
            Position.ColIndex = 3
            Visible = False
          end
          item
            Caption = 'Standard% (SMB'#13#10'-1)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 9
            Position.ColIndex = 1
            Visible = False
          end
          item
            Caption = 'LB'#13#10'RAD4'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 9
            Position.ColIndex = 3
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 187
            Position.ColIndex = 1
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 190
            Position.ColIndex = 1
            Styles.Header = cxStyle1
            Visible = False
            OnHeaderClick = cxView1Bands163HeaderClick
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 191
            Position.ColIndex = 0
            Visible = False
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 188
            Position.ColIndex = 0
            Styles.Header = cxStyle1
            Visible = False
            OnHeaderClick = cxView1Bands163HeaderClick
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 190
            Position.ColIndex = 0
            Styles.Header = cxStyle1
            Visible = False
            OnHeaderClick = cxView1Bands163HeaderClick
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 192
            Position.ColIndex = 0
            Styles.Header = cxStyle1
            Visible = False
            OnHeaderClick = cxView1Bands163HeaderClick
          end
          item
            Caption = 'QN Qty (based on picked)'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 0
            Position.ColIndex = 4
            Visible = False
          end
          item
            Caption = 'Original'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 169
            Position.ColIndex = 0
          end
          item
            Caption = 'F(B) / F(S)'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 169
            Position.ColIndex = 1
          end
          item
            Caption = 'AL'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 169
            Position.ColIndex = 2
          end
          item
            Caption = 'F(B) / F(S)'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 172
            Position.ColIndex = 0
          end
          item
            Caption = 'AL'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 172
            Position.ColIndex = 1
          end
          item
            Caption = 'E'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 172
            Position.ColIndex = 2
          end
          item
            Caption = 'Rest'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 169
            Position.ColIndex = 3
          end
          item
            Caption = '*'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 169
            Position.ColIndex = 4
          end
          item
            Caption = 'Unit'#13#10'flow'#13#10#21934#27969#13#10'(u)'#13#10'Mix'#13#10'flow'#13#10#38598#27969#13#10'(m)'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 3
            Styles.Header = cxStyle3
          end
          item
            Caption = 'Def.'#13#10'based'#13#10'on LCL'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 0
          end
          item
            Caption = 'Adj.'#13#10'(if any)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 1
          end
          item
            Caption = 'Ws Flow'#13#10'(shd'#13#10'based'#13#10'on PPMC)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 21
            Position.ColIndex = 0
          end
          item
            Caption = 'TBA'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 1
            Position.ColIndex = 2
            Visible = False
          end
          item
            Caption = 'Plan (PMC)'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 1
            Position.ColIndex = 3
            Visible = False
          end
          item
            Caption = 'TBA'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 21
            Position.ColIndex = 2
            Visible = False
          end
          item
            Caption = 'Start'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 184
            Position.ColIndex = 0
          end
          item
            Caption = 'Finish'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 184
            Position.ColIndex = 1
          end
          item
            Caption = 'Predict'#13#10'fm Sch.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 68
            Position.ColIndex = 0
          end
          item
            Caption = 'Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 68
            Position.ColIndex = 1
          end
          item
            Caption = 'Scheduling - by the flow of QN'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 69
            Position.ColIndex = 0
          end
          item
            Caption = 'Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 69
            Position.ColIndex = 1
          end
          item
            Caption = 'Predict fm Sch.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 70
            Position.ColIndex = 0
          end
          item
            Caption = 'Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 70
            Position.ColIndex = 1
          end
          item
            Caption = 'Date'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 186
            Position.ColIndex = 1
          end
          item
            Caption = 'Section'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 186
            Position.ColIndex = 2
          end
          item
            Caption = 'B-A) Diff'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 57
            Position.ColIndex = 3
          end
          item
            Caption = 'C-B) Diff'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 57
            Position.ColIndex = 4
          end
          item
            Caption = 'B-A) Diff'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 60
            Position.ColIndex = 3
          end
          item
            Caption = 'C-B) Diff'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 60
            Position.ColIndex = 4
          end
          item
            Caption = 'Ws'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 187
            Position.ColIndex = 0
            Visible = False
          end
          item
            Caption = 'Style iDpd'#13#10#27454#19981#20381#38752
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 0
            Position.ColIndex = 0
          end
          item
            Caption = 'Color '#13#10'iDpd'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 0
            Position.ColIndex = 1
          end
          item
            Caption = 'Style / Clr Dpd'#13#10#27454'/'#33394#30908#20381#38752
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 0
            Position.ColIndex = 3
          end
          item
            Caption = 'C1'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 5
            Position.ColIndex = 0
          end
          item
            Caption = 'C2'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 5
            Position.ColIndex = 1
          end
          item
            Caption = 'C3'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 5
            Position.ColIndex = 2
          end
          item
            Caption = 'Loc.'#13#10'(BF'#13#10'AE)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 35
            Position.ColIndex = 0
          end
          item
            Caption = 'Def.'#13#10'(SW'#13#10's.dd)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 35
            Position.ColIndex = 1
          end
          item
            Caption = 'Rev.'#13#10'if any'#13#10'(SW'#13#10's.dd)'#13#10
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 35
            Position.ColIndex = 2
            Visible = False
          end
          item
            Caption = 'Day'#13#10'diff'#13#10'(D-A)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 35
            Position.ColIndex = 3
            Visible = False
          end
          item
            Caption = 'Act.'#13#10'(Fin.'#13#10'dd)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 35
            Position.ColIndex = 5
          end
          item
            Caption = 'GSD'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 8
            Position.ColIndex = 1
          end
          item
            Caption = 'on PLC'#13#10'(w/ave)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 66
            Position.ColIndex = 0
          end
          item
            Caption = 'Add'#39'l sect. hr.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 22
            Position.ColIndex = 0
          end
          item
            Caption = 'P'#13#10'h'#13#10'a'#13#10's'#13#10'e'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 212
            Position.ColIndex = 0
          end
          item
            Caption = 'In-pro'#13#10'-cess'#13#10'(C1+'#13#10'D3)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 78
            Position.ColIndex = 1
            Styles.Header = cxStyle8
          end
          item
            Caption = 'Act.'#13#10'^'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 78
            Position.ColIndex = 3
          end
          item
            Caption = 'Output of AL Ws'#13#10'AL '#24037#22580#29986#37327
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 7
            Position.ColIndex = 8
          end
          item
            Caption = 'Adj.'#13#10'(if any)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 35
            Position.ColIndex = 4
          end
          item
            Caption = 'CWO '#23450#33394#21046#21934' - dT3/aT3'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 43
            Position.ColIndex = 1
          end
          item
            Caption = 'QN'#25976#38913' - sT3'#13#10'(sch. / '#25490#25289')'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 43
            Position.ColIndex = 2
          end
          item
            Caption = 'dT3'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 219
            Position.ColIndex = 0
          end
          item
            Caption = 'aT3 (adjusted/'#20462#35330')'#13#10'(ahead is a must)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 219
            Position.ColIndex = 1
          end
          item
            Caption = 'Def.'#13#10'dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 221
            Position.ColIndex = 0
          end
          item
            Caption = '?'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 222
            Position.ColIndex = 0
          end
          item
            Caption = 'Days'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 222
            Position.ColIndex = 1
          end
          item
            Caption = 'dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 222
            Position.ColIndex = 2
          end
          item
            Caption = 'dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 220
            Position.ColIndex = 0
            Styles.Header = cxStyle3
          end
          item
            Caption = 'Act.'#13#10'^'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 220
            Position.ColIndex = 2
          end
          item
            Caption = 'Undue days'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 220
            Position.ColIndex = 4
            Visible = False
          end
          item
            Caption = 'aT3'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 229
            Position.ColIndex = 0
          end
          item
            Caption = 'aT3 due'#13#10'days limit'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 222
            Position.ColIndex = 3
            Styles.Header = cxStyle3
          end
          item
            Caption = '?'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 141
            Position.ColIndex = 0
          end
          item
            Caption = 'Days'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 141
            Position.ColIndex = 1
          end
          item
            Caption = '^'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 8
          end
          item
            Caption = 'B Workshop'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 21
            Position.ColIndex = 1
          end
          item
            Caption = 'Predict'#13#10'fm Sch.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 235
            Position.ColIndex = 0
          end
          item
            Caption = 'Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 235
            Position.ColIndex = 1
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 236
            Position.ColIndex = 0
          end
          item
            Caption = 'Start'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 236
            Position.ColIndex = 1
          end
          item
            Caption = 'Sect'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 236
            Position.ColIndex = 2
            Visible = False
          end
          item
            Caption = 'Start'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 237
            Position.ColIndex = 0
          end
          item
            Caption = 'Finish'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 237
            Position.ColIndex = 1
          end
          item
            Caption = 'T3'#13#10'Window'
            Position.BandIndex = 220
            Position.ColIndex = 1
          end
          item
            Caption = 'Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 18
            Position.ColIndex = 2
          end
          item
            Caption = 'Specific Mat'#39'l can be used at End phase Ws later'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 203
            Position.ColIndex = 0
          end
          item
            Caption = 'Mat'#39'l'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 245
            Position.ColIndex = 0
          end
          item
            Caption = 'Mat'#39'l standby dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 245
            Position.ColIndex = 1
          end
          item
            Caption = 'F(-)/J(0)/G(+)?'#13#10'(based on locked dd)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 245
            Position.ColIndex = 2
          end
          item
            Caption = 'SW AL Ws'#13#10'Finish dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 245
            Position.ColIndex = 3
          end
          item
            Caption = 'SW E Ws'#13#10'start dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 245
            Position.ColIndex = 4
          end
          item
            Caption = 'Last'#13#10'4 sect.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 245
            Position.ColIndex = 5
          end
          item
            Caption = 'Ex-fty'#13#10'dd'#13#10'buffer'#13#10'(+/-)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 245
            Position.ColIndex = 6
          end
          item
            Caption = '#'#13#10'of'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 246
            Position.ColIndex = 0
          end
          item
            Caption = 'Type'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 246
            Position.ColIndex = 1
          end
          item
            Caption = 'Locked'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 247
            Position.ColIndex = 0
          end
          item
            Caption = 'Adj.'#13#10'(if'#13#10'any)'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 247
            Position.ColIndex = 1
          end
          item
            Caption = 'Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 247
            Position.ColIndex = 2
          end
          item
            Caption = 'Locked'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 248
            Position.ColIndex = 0
          end
          item
            Caption = 'Variance'#13#10'vs'#13#10'Sch. dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 248
            Position.ColIndex = 1
          end
          item
            Caption = 'Agree'#13#10'fixed'#13#10'dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 249
            Position.ColIndex = 0
          end
          item
            Caption = 'Sch.'#13#10'/Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 249
            Position.ColIndex = 1
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 249
            Position.ColIndex = 2
          end
          item
            Caption = 'Sch.'#13#10'/Act.'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 250
            Position.ColIndex = 0
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 250
            Position.ColIndex = 1
          end
          item
            Caption = 'Days'#13#10'vs mat'#39'l'#13#10'standby'#13#10'dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 250
            Position.ColIndex = 2
          end
          item
            Caption = 'Agreed'#13#10'days'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 251
            Position.ColIndex = 0
          end
          item
            Caption = 'Items '#13#10'std-by'#39's'#13#10'stages'#13#10#13#10'[PRESS]'#13#10'list in'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 18
            Position.ColIndex = 4
          end
          item
            Caption = 'Spec.'#13#10'items'#13#10'latest'#13#10'std-by'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 18
            Position.ColIndex = 5
          end
          item
            Caption = 'Reason'#13#10'Cde#'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 51
            Position.ColIndex = 0
          end
          item
            Caption = '# of'#13#10'region'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 51
            Position.ColIndex = 1
          end
          item
            Caption = 'Smpl'#13#10'Ord'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 10
          end
          item
            Caption = 'All Sewing Ws'#13#10#20840#37096#32299#21512#24037#22580
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 289
            Position.ColIndex = 0
          end
          item
            Caption = 'Bulk'#13#10'Shpt'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 272
            Position.ColIndex = 1
          end
          item
            Caption = 'Bulk'#13#10'Smpl'#13#10'*'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 272
            Position.ColIndex = 2
          end
          item
            Caption = 'PP'#13#10'Ws'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 271
            Position.ColIndex = 0
          end
          item
            Caption = '2 factors for kick-off -'#13#10'Items & Smpl appv'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 203
            Position.ColIndex = 3
          end
          item
            Caption = 'Items std-by'#13#10'= FWS dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 276
            Position.ColIndex = 0
          end
          item
            Caption = 'Smpl'#13#10'Appv'#13#10#13#10'Def. is'#13#10'<6 days'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 276
            Position.ColIndex = 2
          end
          item
            Caption = '# of'#13#10'CWO'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 7
          end
          item
            Caption = 'Diff.'#13#10'Del.'#13#10'dd'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 51
            Position.ColIndex = 2
          end
          item
            Caption = 'Diff.'#13#10'Reg'#13#10'-ion'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 51
            Position.ColIndex = 3
          end
          item
            Caption = 'QN#'#13#10'(1st prefix digits'#13#10'is WO#)'#13#10#13#10#25976#38913'#'#13#10'('#31532#19968#20491#21069#32180#13#10#26159#21046#21934#34399')'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 2
          end
          item
            Caption = 'ERP'#13#10'Sty#'#13#10'ERP'#27454#34399
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 284
            Position.ColIndex = 1
          end
          item
            Caption = 'Style'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 5
          end
          item
            Caption = 'H Seg.'#13#10'H '#27573
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 287
            Position.ColIndex = 8
          end
          item
            Caption = 'I'#13#10'F'#13#10'R'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 276
            Position.ColIndex = 1
          end
          item
            Caption = 
              'D Seg. - Time criteria to calculate three kinds of Ttl sect hr f' +
              'or assembly line'
            HeaderAlignmentVert = vaTop
          end
          item
            Caption = '- Suffix'#13#10'- '#24460#32180
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 1
          end
          item
            Caption = 'QN Qty'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 202
            Position.ColIndex = 9
            Styles.Header = cxStyle5
          end
          item
            Caption = 'Bulk'#13#10'Smpl'#13#10'**'#13#10'(c)'
            FixedKind = fkLeft
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 275
            Position.ColIndex = 0
          end
          item
            Caption = 'Non Shpd Qty'#13#10'by QNs'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 31
            Position.ColIndex = 7
          end
          item
            Caption = 'E Seg.'
            HeaderAlignmentVert = vaTop
          end
          item
            Caption = 'Reason'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 292
            Position.ColIndex = 0
          end
          item
            Caption = 'Finish'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 189
            Position.ColIndex = 5
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 190
            Position.ColIndex = 2
            Styles.Header = cxStyle1
            OnHeaderClick = cxView1Bands163HeaderClick
          end
          item
            Caption = 'Cde'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 191
            Position.ColIndex = 1
          end
          item
            Caption = 'Start'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 192
            Position.ColIndex = 2
          end>
        object cxView1PLINE: TcxGridDBBandedColumn
          Caption = 'AL#'
          DataBinding.FieldName = 'PLINE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 53
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxView1FLAG1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG1'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 20
          Position.BandIndex = 84
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1J_NO: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'J_NO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 70
          Position.BandIndex = 85
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1J2_JOB: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'J2_JOB'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1J2_JOBPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 58
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1CWO: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'CWO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 34
          Position.BandIndex = 90
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1RWO: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'CWO_N'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1RWOPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 50
          Position.BandIndex = 91
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FCCS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FCCS'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1FCCSPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 34
          Position.BandIndex = 92
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FLAG6: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG6'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 28
          Position.BandIndex = 86
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1CSTYLE: TcxGridDBBandedColumn
          Caption = 'image'
          DataBinding.FieldName = 'CSTYLE'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1CSTYLEPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle2
          Width = 73
          Position.BandIndex = 87
          Position.ColIndex = 0
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
          Position.BandIndex = 86
          Position.ColIndex = 1
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxView1QTY: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'QTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 38
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ACOL: TcxGridDBBandedColumn
          Caption = 'image'
          DataBinding.FieldName = 'ACOL'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1ACOLPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle2
          Width = 34
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FLAG4: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG401'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 28
          Position.BandIndex = 89
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1SCQTY: TcxGridDBBandedColumn
          Caption = 'scr-'#13#10'een'
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
          Styles.Header = cxStyle2
          Width = 45
          Position.BandIndex = 88
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1LSTRS: TcxGridDBBandedColumn
          Caption = 'A2'
          DataBinding.FieldName = 'AWF'
          HeaderAlignmentHorz = taCenter
          Width = 35
          Position.BandIndex = 112
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1SJRS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SJRS'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1SJRSPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 38
          Position.BandIndex = 114
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1TRS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TRS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 35
          Position.BandIndex = 124
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1SJYC: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SJYC'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1SJRSPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 126
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FLAG2: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG2'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Sorting = False
          Width = 32
          Position.BandIndex = 34
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1TBU: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TBU'
          HeaderAlignmentHorz = taCenter
          Width = 40
          Position.BandIndex = 54
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1TMU: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TMU'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 44
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1JXJS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'JXJS'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 41
          Position.BandIndex = 46
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1PHISZJS: TcxGridDBBandedColumn
          Caption = 'B1'
          DataBinding.FieldName = 'PHISZJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 36
          Position.BandIndex = 17
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FLAG7: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FLAG7'
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
          Position.BandIndex = 104
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxView1SHJS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SHJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 38
          Position.BandIndex = 104
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1ZJS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'ZJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle2
          Styles.Header = cxStyle2
          Width = 33
          Position.BandIndex = 106
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1PLAN_DATE: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PLAN_DATE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 48
          Position.BandIndex = 136
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1CPLAN: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'CPLAN'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1CPLANPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 42
          Position.BandIndex = 137
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1XC4: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'XC4'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 25
          Position.BandIndex = 138
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FYFS: TcxGridDBBandedColumn
          Caption = '-'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 22
          Position.BandIndex = 139
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1UNBAL: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'UNBAL'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 140
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1XC1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'XC1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 36
          Position.BandIndex = 80
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1WEEK: TcxGridDBBandedColumn
          Caption = 'wk'
          DataBinding.FieldName = 'A_KSWK'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 27
          Position.BandIndex = 158
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1FLAG3: TcxGridDBBandedColumn
          Caption = 'Flag 7'
          DataBinding.FieldName = 'FLAG3'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1FLAG3PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 24
          Position.BandIndex = 67
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1A_KSRQ1: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'A_KSRQ1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 158
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxView1A_KSJS1: TcxGridDBBandedColumn
          Caption = 'sect'#13#10'hr'
          DataBinding.FieldName = 'A_KSJS1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 33
          Position.BandIndex = 158
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxView1ZKTD: TcxGridDBBandedColumn
          Caption = 'QN Qty (+/-)'
          DataBinding.FieldName = 'ZKTD'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle5
          Position.BandIndex = 109
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1SCLH_LH: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SCLH_LH'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1SJRSPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle2
          Styles.Header = cxStyle2
          Width = 33
          Position.BandIndex = 110
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1QYJS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'QYJS'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1SJRSPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle2
          Styles.Header = cxStyle2
          Width = 33
          Position.BandIndex = 111
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ZHJS: TcxGridDBBandedColumn
          Caption = 'Advanced Sect (CsT)'
          DataBinding.FieldName = 'ZHJS'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxView1SJRSPropertiesButtonClick
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = cxStyle2
          Styles.Header = cxStyle2
          Position.BandIndex = 109
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1BCJS: TcxGridDBBandedColumn
          Caption = 'Used CsT Sect'
          DataBinding.FieldName = 'BCJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 23
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1A_AKSRQ: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'A_AKSRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 148
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1A_AWCRQ: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'A_AWCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 149
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1NSHJS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'NSHJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 40
          Position.BandIndex = 28
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1KDJS: TcxGridDBBandedColumn
          Caption = 'Day'#13#10'diff'
          DataBinding.FieldName = 'KDJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle3
          Width = 33
          Position.BandIndex = 158
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1BZJS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'BZJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 35
          Position.BandIndex = 27
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1TZLCRQ: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TZLCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 142
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1YQLCRQ: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'YQLCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 179
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1RQXC: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'RQXC'
          HeaderAlignmentHorz = taCenter
          Width = 38
          Position.BandIndex = 143
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1FLAG5: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG5'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 28
          Position.BandIndex = 144
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1QRXC: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'EX_AP'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 38
          Position.BandIndex = 145
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1XC2: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'XC2'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 35
          Position.BandIndex = 32
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1XC3: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'XC3'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 35
          Position.BandIndex = 79
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1LFLAG: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LFLAG'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 26
          Position.BandIndex = 99
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1YSJHL: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'YSJHL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 100
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1JHL: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'JHL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 102
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1YZH: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'YZH'
          HeaderAlignmentHorz = taCenter
          Width = 28
          Position.BandIndex = 36
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1PD8: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PD8'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 83
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1KHZL1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'KHZL1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Sorting = False
          Width = 45
          Position.BandIndex = 20
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1IECLS: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'IECLS'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            '1A'
            '2A'
            '2B'
            '3A'
            '3B'
            '3C'
            '4A'
            '4B'
            '4C'
            '4D'
            '4E'
            '4F')
          HeaderAlignmentHorz = taCenter
          Width = 35
          Position.BandIndex = 15
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1IECLS1: TcxGridDBBandedColumn
          Caption = 'Suffix'
          DataBinding.FieldName = 'IECLS1'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '0a'
            '0b'
            '0c'
            '0ab'
            '0ac'
            '0bc'
            '0abc'
            '1a'
            '1b'
            '1c'
            '1ab'
            '1ac'
            '1bc'
            '1abc'
            '2a'
            '2b'
            '2c'
            '2ab'
            '2ac'
            '2bc'
            '2abc'
            '3a'
            '3b'
            '3c'
            '3ab'
            '3ac'
            '3bc'
            '3abc'
            '4a'
            '4b'
            '4c'
            '4ab'
            '4ac'
            '4bc'
            '4abc'
            '5a'
            '5b'
            '5c'
            '5ab'
            '5ac'
            '5bc'
            '5abc'
            '6a'
            '6b'
            '6c'
            '6ab'
            '6ac'
            '6bc'
            '6abc'
            '+'
            '1+'
            '2+'
            '3+'
            '4+'
            '5+'
            '6+')
          OnGetCellHint = cxView1IECLS1GetCellHint
          HeaderAlignmentHorz = taCenter
          Width = 31
          Position.BandIndex = 15
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1lbling: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LBL_PT'
          HeaderAlignmentHorz = taCenter
          Width = 28
          Position.BandIndex = 206
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1tshop: TcxGridDBBandedColumn
          Caption = 'AL'
          DataBinding.FieldName = 'TSHOP'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 21
          Position.BandIndex = 52
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1yszjs: TcxGridDBBandedColumn
          Caption = 'C1'
          DataBinding.FieldName = 'YSZJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 105
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sclh_bs: TcxGridDBBandedColumn
          Caption = 'E'#13#10'screen'
          DataBinding.FieldName = 'SCLH_BS'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1SJRSPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle2
          Styles.Header = cxStyle2
          Width = 50
          Position.BandIndex = 215
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfoptqty: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'DIFF_PAK'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 62
          Position.BandIndex = 269
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sjrs_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SJRS_A'
          HeaderAlignmentHorz = taCenter
          Width = 35
          Position.BandIndex = 113
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sjyc_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SJYC_A'
          HeaderAlignmentHorz = taCenter
          Width = 35
          Position.BandIndex = 125
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ct1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'CT1'
          HeaderAlignmentHorz = taCenter
          Width = 37
          Position.BandIndex = 19
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1lockcfks: TcxGridDBBandedColumn
          Caption = 'Lock'#13#10'?'
          DataBinding.FieldName = 'LOCKCFKS'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle3
          Width = 33
          Position.BandIndex = 158
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ct3: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'CT3'
          HeaderAlignmentHorz = taCenter
          Width = 35
          Position.BandIndex = 82
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ct2_1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'CT2_1'
          HeaderAlignmentHorz = taCenter
          Width = 35
          Position.BandIndex = 25
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ct2_2: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'CT2_2'
          HeaderAlignmentHorz = taCenter
          Width = 35
          Position.BandIndex = 81
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1at3_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'AT3_A'
          HeaderAlignmentHorz = taCenter
          Width = 43
          Position.BandIndex = 227
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pdn_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PDN_A'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 30
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfsah: TcxGridDBBandedColumn
          Caption = 'F'
          DataBinding.FieldName = 'PFSAH'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 41
          Position.BandIndex = 45
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1asah: TcxGridDBBandedColumn
          Caption = 'A1'
          DataBinding.FieldName = 'ASAH'
          HeaderAlignmentHorz = taCenter
          Width = 46
          Position.BandIndex = 44
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1esah: TcxGridDBBandedColumn
          Caption = 'E'
          DataBinding.FieldName = 'ESAH'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 41
          Position.BandIndex = 45
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1pfxjs: TcxGridDBBandedColumn
          Caption = 'F'
          DataBinding.FieldName = 'PFXJS'
          HeaderAlignmentHorz = taCenter
          Width = 41
          Position.BandIndex = 47
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1alxjs: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'ALXJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 42
          Position.BandIndex = 46
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1exjs: TcxGridDBBandedColumn
          Caption = 'E'
          DataBinding.FieldName = 'EXJS'
          HeaderAlignmentHorz = taCenter
          Width = 41
          Position.BandIndex = 47
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1pfeff1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFEFF1'
          HeaderAlignmentHorz = taCenter
          Width = 42
          Position.BandIndex = 93
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfeff2: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFEFF2'
          HeaderAlignmentHorz = taCenter
          Width = 42
          Position.BandIndex = 94
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1eeff1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'EEFF1'
          HeaderAlignmentHorz = taCenter
          Width = 42
          Position.BandIndex = 95
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1eeff2: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'EEFF2'
          HeaderAlignmentHorz = taCenter
          Width = 42
          Position.BandIndex = 96
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1aloptqty: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'ALOPTQTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 32
          Position.BandIndex = 45
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1eoptqty: TcxGridDBBandedColumn
          Caption = 'E'
          DataBinding.FieldName = 'EOPTQTY'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 30
          Position.BandIndex = 269
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1toptqty: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'Dest_qty'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 38
          Position.BandIndex = 270
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pws: TcxGridDBBandedColumn
          Caption = 'P'
          DataBinding.FieldName = 'PWS'
          HeaderAlignmentHorz = taCenter
          Width = 20
          Position.BandIndex = 52
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1fws: TcxGridDBBandedColumn
          Caption = 'F'
          DataBinding.FieldName = 'FWS'
          HeaderAlignmentHorz = taCenter
          Width = 20
          Position.BandIndex = 52
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1ews: TcxGridDBBandedColumn
          Caption = 'E'
          DataBinding.FieldName = 'EWS'
          HeaderAlignmentHorz = taCenter
          Width = 20
          Position.BandIndex = 52
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxView1pzb: TcxGridDBBandedColumn
          Caption = 'P'
          DataBinding.FieldName = 'PZB'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 53
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1fzb: TcxGridDBBandedColumn
          Caption = 'F'
          DataBinding.FieldName = 'FZB'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 31
          Position.BandIndex = 53
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1ezb: TcxGridDBBandedColumn
          Caption = 'E'
          DataBinding.FieldName = 'EZB'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 53
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxView1pfrs_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFRS_A'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 115
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfrs_a1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFRS_A1'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 116
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfrs: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFRS'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 117
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ewf: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'EWF'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 118
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ers_a1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'ERS_A1'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 119
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ers: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'ERS'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 120
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ttlrs_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TTLRS_A'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 121
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ttlrs_a1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TTLRS_A1'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 122
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ttlrs: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TTLRS'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 123
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfyc_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFYC_A'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 127
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfyc_a1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFYC_A1'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 128
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfyc: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFYC'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 273
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1eyc_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'EYC_A'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 130
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1eyc_a1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'EYC_A1'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 131
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1eyc: TcxGridDBBandedColumn
          Caption = 'scr-'#13#10'een'
          DataBinding.FieldName = 'EYC'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1eycPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle2
          Width = 35
          Position.BandIndex = 274
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ttlyc_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TTLYC_A'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 133
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ttlyc_a1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TTLYC_A1'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 134
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ttlyc: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'TTLYC'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 135
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ysdx: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LFLAG'
          HeaderAlignmentHorz = taCenter
          Width = 26
          Position.BandIndex = 97
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1ysxl: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'YSJHL'
          HeaderAlignmentHorz = taCenter
          Width = 43
          Position.BandIndex = 98
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1rjxl_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'RJXL_A'
          HeaderAlignmentHorz = taCenter
          Width = 44
          Position.BandIndex = 101
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1rjxl: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'RJXL'
          HeaderAlignmentHorz = taCenter
          Width = 43
          Position.BandIndex = 103
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1f_ksrq1: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'F_KSRQ1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 159
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1f_ksjs: TcxGridDBBandedColumn
          Caption = 'sect'#13#10'hr'
          DataBinding.FieldName = 'F_KSJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 29
          Position.BandIndex = 151
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1e_wcrq1: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'E_WCRQ1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 153
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1e_awcjs: TcxGridDBBandedColumn
          Caption = 'sect'#13#10'hr'
          DataBinding.FieldName = 'E_AWCJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 29
          Position.BandIndex = 147
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1f_ksrq: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'F_KSRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 151
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1f_wcrq: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'F_WCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 152
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1e_aksrq: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'E_AKSRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 297
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1e_awcrq: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'E_AWCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 147
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sclh_yb: TcxGridDBBandedColumn
          Caption = 'D3'
          DataBinding.FieldName = 'SCLH_YB'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 35
          Position.BandIndex = 107
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sclh_wb: TcxGridDBBandedColumn
          Caption = 'D1/E'
          DataBinding.FieldName = 'SCLH_WB'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 40
          Position.BandIndex = 108
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sclh_bb: TcxGridDBBandedColumn
          Caption = 'D2'
          DataBinding.FieldName = 'SCLH_BB'
          HeaderAlignmentHorz = taCenter
          Width = 52
          Position.BandIndex = 77
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sclh_xl: TcxGridDBBandedColumn
          Caption = 'D1'
          DataBinding.FieldName = 'SCLH_XL'
          HeaderAlignmentHorz = taCenter
          Width = 40
          Position.BandIndex = 109
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1lockcfwc: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LOCKCFWC'
          HeaderAlignmentHorz = taCenter
          Width = 20
          Position.BandIndex = 150
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1bzl: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'BZL'
          HeaderAlignmentHorz = taCenter
          Width = 39
          Position.BandIndex = 161
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1jjl: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'JJL'
          HeaderAlignmentHorz = taCenter
          Width = 40
          Position.BandIndex = 162
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1flag31p: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG31P'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1flag31pPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Options.Sorting = False
          Width = 25
          Position.BandIndex = 163
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1flag31a: TcxGridDBBandedColumn
          Caption = 'scr-'#13#10'een'
          DataBinding.FieldName = 'FLAG31A'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1FLAG3PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Options.Sorting = False
          Styles.Content = cxStyle1
          Styles.Header = cxStyle2
          Width = 25
          Position.BandIndex = 295
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1flag31e: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG31E'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1flag31ePropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Options.Sorting = False
          Width = 25
          Position.BandIndex = 296
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1flag32p: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG32P'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 22
          Position.BandIndex = 166
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1flag32a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG32A'
          HeaderAlignmentHorz = taCenter
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 22
          Position.BandIndex = 167
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1flag32e: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG32E'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 22
          Position.BandIndex = 168
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1scqty1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SCQTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 170
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1piqty: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PIQTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 171
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pfqty: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PFQTY'
          HeaderAlignmentHorz = taCenter
          Width = 41
          Position.BandIndex = 173
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sqty1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SQTY1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 41
          Position.BandIndex = 174
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1sqty: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SQTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 41
          Position.BandIndex = 175
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1bqty: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'BQTY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 41
          Position.BandIndex = 176
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1bqty1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'BQTY1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 20
          Position.BandIndex = 177
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1qnf: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'QNF'
          HeaderAlignmentHorz = taCenter
          Width = 36
          Position.BandIndex = 178
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1yqlcrq1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'YQLCRQ1'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 180
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1dta: TcxGridDBBandedColumn
          Caption = 'IE'
          DataBinding.FieldName = 'DTA'
          HeaderAlignmentHorz = taCenter
          Width = 40
          Position.BandIndex = 181
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1dta1: TcxGridDBBandedColumn
          Caption = 'PPMC'
          DataBinding.FieldName = 'DTA1'
          HeaderAlignmentHorz = taCenter
          Width = 40
          Position.BandIndex = 181
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1Column1: TcxGridDBBandedColumn
          Caption = '-'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 22
          Position.BandIndex = 71
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column2: TcxGridDBBandedColumn
          Caption = '-'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 72
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column3: TcxGridDBBandedColumn
          Caption = '-'
          HeaderAlignmentHorz = taCenter
          Width = 29
          Position.BandIndex = 73
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column4: TcxGridDBBandedColumn
          Caption = '-'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          Width = 22
          Position.BandIndex = 24
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column5: TcxGridDBBandedColumn
          Caption = '-'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 193
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column6: TcxGridDBBandedColumn
          Caption = '-'
          HeaderAlignmentHorz = taCenter
          Width = 29
          Position.BandIndex = 194
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1RSXC1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'RSXC1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 30
          Position.BandIndex = 195
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1RSXC2: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'RSXC2'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 30
          Position.BandIndex = 196
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1YCXC1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'YCXC1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 30
          Position.BandIndex = 197
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1YCXC2: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'YCXC2'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 30
          Position.BandIndex = 198
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pf_sb: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'pf_sb'
          HeaderAlignmentHorz = taCenter
          Width = 22
          Position.BandIndex = 199
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1lbl_pdt: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LBL_PDT'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 207
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1lbl_sdt: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LBL_SDT'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 218
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1lbl_diff: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LBL_DIFF'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 32
          Position.BandIndex = 209
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1lbl_adt: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LBL_ADT'
          HeaderAlignmentHorz = taCenter
          Width = 45
          Position.BandIndex = 210
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1lflag1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LFLAG'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 214
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1flag71: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG7'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 26
          Position.BandIndex = 216
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1dt3: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'DT3'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 223
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1at_q: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'AT_A'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 20
          Position.BandIndex = 224
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1at3_w: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'AT3_W'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 35
          Position.BandIndex = 225
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1at3: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'AT3'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 226
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1t3_a: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'T3_A'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 28
          Position.BandIndex = 228
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1bat3: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'BAT3'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 40
          Position.BandIndex = 230
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1bt3: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'BT3'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
          Position.BandIndex = 231
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1fcl_a1: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FCL_A1'
          HeaderAlignmentHorz = taCenter
          Width = 20
          Position.BandIndex = 232
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1fcl_a2: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FCL_A2'
          HeaderAlignmentHorz = taCenter
          Width = 35
          Position.BandIndex = 233
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1pdn_x: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'PDN_X'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 20
          Position.BandIndex = 234
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1b_flag31: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'B_FLAG31'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxView1Column7PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 25
          Position.BandIndex = 238
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1b_ksrq1: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'B_KSRQ1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 239
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1b_ksjs: TcxGridDBBandedColumn
          Caption = 'sect'#13#10'hr'
          DataBinding.FieldName = 'B_KSJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 29
          Position.BandIndex = 241
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1b_ksrq: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'B_KSRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 241
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1b_wcrq: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'B_WCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 242
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column12: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'OKHRQ'
          HeaderAlignmentHorz = taCenter
          Width = 42
          Position.BandIndex = 244
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1A_WCRQ1: TcxGridDBBandedColumn
          Caption = 'dd'
          DataBinding.FieldName = 'A_WCRQ1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 294
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1A_AKSJS: TcxGridDBBandedColumn
          Caption = 'sect'#13#10'hr'
          DataBinding.FieldName = 'A_AKSJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 29
          Position.BandIndex = 148
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1A_AWCJS: TcxGridDBBandedColumn
          Caption = 'sect'#13#10'hr'
          DataBinding.FieldName = 'A_AWCJS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 29
          Position.BandIndex = 149
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1e_wcjs1: TcxGridDBBandedColumn
          Caption = 'sect'#13#10'hr'
          DataBinding.FieldName = 'E_WCJS1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 29
          Position.BandIndex = 153
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1Column7: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'I_NO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 25
          Position.BandIndex = 253
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column8: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'ITEM_NO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1Column8PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 48
          Position.BandIndex = 254
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column9: TcxGridDBBandedColumn
          Caption = '(a1)'
          DataBinding.FieldName = 'ITEM_LDT'
          HeaderAlignmentHorz = taCenter
          Width = 43
          Position.BandIndex = 255
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column10: TcxGridDBBandedColumn
          Caption = '(a2)'
          DataBinding.FieldName = 'ITEM_RDT'
          HeaderAlignmentHorz = taCenter
          Width = 43
          Position.BandIndex = 256
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column11: TcxGridDBBandedColumn
          Caption = '(a3)'
          DataBinding.FieldName = 'ITEM_ADT'
          HeaderAlignmentHorz = taCenter
          Width = 43
          Position.BandIndex = 257
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column13: TcxGridDBBandedColumn
          Caption = '(b=a1-d1)'
          DataBinding.FieldName = 'ITEM_LDIFF'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 58
          Position.BandIndex = 258
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column14: TcxGridDBBandedColumn
          Caption = '(c=a-d2+b)'
          DataBinding.FieldName = 'ITEM_VDIFF'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 63
          Position.BandIndex = 259
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column15: TcxGridDBBandedColumn
          Caption = '(d1)'
          DataBinding.FieldName = 'A_LDT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 260
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column16: TcxGridDBBandedColumn
          Caption = '(d2)'
          DataBinding.FieldName = 'CFWCRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 261
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column17: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'FLAG32A'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 22
          Position.BandIndex = 262
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column18: TcxGridDBBandedColumn
          Caption = '(e)'
          DataBinding.FieldName = 'E_KSRQ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 263
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column19: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'E_FLAG31'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 23
          Position.BandIndex = 264
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column20: TcxGridDBBandedColumn
          Caption = '(f=a-e)'
          DataBinding.FieldName = 'ITEM_EDIFF'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 265
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column21: TcxGridDBBandedColumn
          Caption = '(g)'
          DataBinding.FieldName = 'LAST_TTL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 43
          Position.BandIndex = 266
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column22: TcxGridDBBandedColumn
          Caption = '(h=e+g-i)'
          DataBinding.FieldName = 'RQXC'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 55
          Position.BandIndex = 252
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column23: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'Item_fm'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxView1Column23PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 55
          Position.BandIndex = 267
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column24: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'item_dt'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 42
          Position.BandIndex = 268
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column25: TcxGridDBBandedColumn
          Caption = 'scr-'#13#10'een'
          DataBinding.FieldName = 'LBL_DIFF'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxView1Column25PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle2
          Width = 47
          Position.BandIndex = 290
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1diff_m: TcxGridDBBandedColumn
          Caption = 'Sch.'
          DataBinding.FieldName = 'DIFF_M'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle4
          Width = 32
          Position.BandIndex = 277
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1diff_s: TcxGridDBBandedColumn
          Caption = 'Sch.'
          DataBinding.FieldName = 'DIFF_S'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Header = cxStyle4
          Width = 32
          Position.BandIndex = 278
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgrdbndclmniecls_n: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'IECLS_N'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 35
          Position.BandIndex = 15
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgrdbndclmnView1Column26: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'DIFF_DDT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 32
          Position.BandIndex = 279
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgrdbndclmnView1Column27: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'diff_ddt'
          HeaderAlignmentHorz = taCenter
          Width = 40
          Position.BandIndex = 280
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgrdbndclmnView1Column28: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'diff_reg'
          HeaderAlignmentHorz = taCenter
          Width = 40
          Position.BandIndex = 281
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1View1Column26: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'CWONO1'
          HeaderAlignmentHorz = taCenter
          Width = 112
          Position.BandIndex = 282
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1View1Column27: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'ARTNO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 65
          Position.BandIndex = 283
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1fw_wdn: TcxGridDBBandedColumn
          Caption = 'Def.'
          DataBinding.FieldName = 'fw_wdn'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 32
          Position.BandIndex = 277
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1View1Column29: TcxGridDBBandedColumn
          Caption = '*'#13#10'^'
          DataBinding.FieldName = 'WL_F'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 20
          Position.BandIndex = 277
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1View1Column30: TcxGridDBBandedColumn
          Caption = '*'#13#10'^'
          DataBinding.FieldName = 'SP_F'
          HeaderAlignmentHorz = taCenter
          Width = 20
          Position.BandIndex = 278
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1View1Column31: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SP_ST'
          HeaderAlignmentHorz = taCenter
          Width = 22
          Position.BandIndex = 286
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column26: TcxGridDBBandedColumn
          Caption = 'Ws#'
          DataBinding.FieldName = 'TSHOP'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 38
          Position.BandIndex = 53
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column27: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'SHPT_BAL'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 45
          Position.BandIndex = 291
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxView1Column28: TcxGridDBBandedColumn
          Caption = 'WIP'
          DataBinding.FieldName = 'SHPT_B1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 40
          Position.BandIndex = 291
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxView1Column29: TcxGridDBBandedColumn
          Caption = 'Sewn'
          DataBinding.FieldName = 'SHPT_B2'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 40
          Position.BandIndex = 291
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxView1Column30: TcxGridDBBandedColumn
          Caption = 'Ttl'#13#10'%'
          DataBinding.FieldName = 'SHPT_Bp'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 40
          Position.BandIndex = 291
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxView1LTC_RM: TcxGridDBBandedColumn
          Caption = '-'
          DataBinding.FieldName = 'LTC_RM'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxView1LTC_RMPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 450
          Position.BandIndex = 293
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
    Top = 328
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 328
    object N1: TMenuItem
      Caption = 'Print Plan Ex-fty Date Records'
      Visible = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Print Start Sewing Records'
      Visible = False
      OnClick = N2Click
    end
    object GetTMU1: TMenuItem
      Caption = 'Calc Zjs'
      Visible = False
    end
    object ExpandAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpandAll1Click
    end
    object CollapseAll1: TMenuItem
      Caption = 'Collapse All'
      OnClick = CollapseAll1Click
    end
    object ClearSorting1: TMenuItem
      Caption = 'Clear Sorting'
      OnClick = ClearSorting1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CancelPFS1: TMenuItem
      Caption = 'Cancel "B - s"'
      OnClick = CancelPFS1Click
    end
    object CancelPFX1: TMenuItem
      Caption = 'Cancel "B - x"'
      OnClick = CancelPFX1Click
    end
    object Cancels1: TMenuItem
      Caption = 'Cancel "AL - s"'
      OnClick = Cancels1Click
    end
    object Cancelx1: TMenuItem
      Caption = 'Cancel "AL - x"'
      OnClick = Cancelx1Click
    end
    object CancelEs1: TMenuItem
      Caption = 'Cancel "E - s"'
      OnClick = CancelEs1Click
    end
    object CancelEx1: TMenuItem
      Caption = 'Cancel "E - x"'
      OnClick = CancelEx1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object WIPTransit1: TMenuItem
      Caption = 'WIP'#20132#25910
      ShortCut = 49232
      Visible = False
      OnClick = WIPTransit1Click
    end
    object GanttChart1: TMenuItem
      Caption = 'Gantt Chart'
      Visible = False
      OnClick = GanttChart1Click
    end
    object StartTime1: TMenuItem
      Caption = 'Start Sect'
      ShortCut = 49235
      Visible = False
      OnClick = StartTime1Click
    end
    object ExportGAIData1: TMenuItem
      Caption = 'Export GAI Data'
      ShortCut = 49240
      Visible = False
      OnClick = ExportGAIData1Click
    end
    object transitFlow1: TMenuItem
      Caption = #20132#25910#27969#31243
      Visible = False
      OnClick = transitFlow1Click
    end
    object AllSewingQNs1: TMenuItem
      Caption = 'All Sewing QNs'
      ShortCut = 24657
      Visible = False
      OnClick = AllSewingQNs1Click
    end
    object PrintTicketforFJ1: TMenuItem
      Caption = 'Print Postbox Mark && Pay Slips'
      OnClick = PrintTicketforFJ1Click
    end
    object Printticketforbulksample1: TMenuItem
      Caption = 'Print Postbox Mark for bulk sample'
      Visible = False
      OnClick = Printticketforbulksample1Click
    end
    object RecalculateQN1: TMenuItem
      Caption = 'Re-calculate QN#'
      ShortCut = 49234
      Visible = False
      OnClick = RecalculateQN1Click
    end
    object ClassbySize1: TMenuItem
      Caption = 'IE Group and Class by Color/Size'
      OnClick = ClassbySize1Click
    end
    object UPDIEGRPandCLS1: TMenuItem
      Caption = 'UPD IEGRP and CLS'
      ShortCut = 116
      Visible = False
      OnClick = UPDIEGRPandCLS1Click
    end
    object UpdateIEdataforQNGAI1: TMenuItem
      Caption = 'Update IE data for QN GAI'
      ShortCut = 49268
      Visible = False
      OnClick = UpdateIEdataforQNGAI1Click
    end
    object PLCnotcompleted1: TMenuItem
      Caption = 'PLC not completed'
      ShortCut = 49228
      Visible = False
      OnClick = PLCnotcompleted1Click
    end
    object ExporttoExcel1: TMenuItem
      Caption = '915 QNs'
      ShortCut = 49230
      Visible = False
      OnClick = ExporttoExcel1Click
    end
    object PforSC1: TMenuItem
      Caption = 'TP for SC'
      ShortCut = 16468
      Visible = False
      OnClick = PforSC1Click
    end
    object SampleChecking1: TMenuItem
      Caption = 'Sample Checking'
      ShortCut = 32882
      Visible = False
      OnClick = SampleChecking1Click
    end
    object WaitingforpackingwithoutPDN1: TMenuItem
      Caption = 'Waiting for packing (without PDN)'
      OnClick = WaitingforpackingwithoutPDN1Click
    end
    object N4: TMenuItem
      Caption = 'Issue Production Marker'
      OnClick = N4Click
    end
    object showhidecls11: TMenuItem
      Caption = 'show/hide cls1'
      ShortCut = 49273
      Visible = False
      OnClick = showhidecls11Click
    end
    object updateRAP41: TMenuItem
      Caption = 'Update RAD-4'
      ShortCut = 16506
      OnClick = updateRAP41Click
    end
    object UpdateJKcolumns1: TMenuItem
      Caption = 'Update J&&K columns'
      ShortCut = 16504
      OnClick = UpdateJKcolumns1Click
    end
    object ALE1: TMenuItem
      Caption = 'Refresh AL && E Output'
      OnClick = ALE1Click
    end
    object N5: TMenuItem
      Caption = 'Update LB%'
      OnClick = N5Click
    end
    object QNGAI1: TMenuItem
      Caption = 'Delete QN GAI'
      ShortCut = 24644
      Visible = False
      OnClick = QNGAI1Click
    end
    object QN1: TMenuItem
      Caption = 'Error QN(s)'
      ShortCut = 49239
      Visible = False
      OnClick = QN1Click
    end
    object EnquiryWF1: TMenuItem
      Caption = 'Enquiry WF'
      ShortCut = 24655
      Visible = False
      OnClick = EnquiryWF1Click
    end
    object UpdateLB4n51: TMenuItem
      Caption = 'Update LB4n5'
      ShortCut = 24661
      Visible = False
      OnClick = UpdateLB4n51Click
    end
    object showFinishedcolumns1: TMenuItem
      Caption = 'show Finished columns'
      ShortCut = 49222
      Visible = False
      OnClick = showFinishedcolumns1Click
    end
    object RefreshdatafromCOPlog1: TMenuItem
      Caption = 'Refresh data from COP_log'
      ShortCut = 24643
      Visible = False
      OnClick = RefreshdatafromCOPlog1Click
    end
    object AccessSampleQty1: TMenuItem
      Caption = 'Access Sample Qty'
      ShortCut = 24659
      Visible = False
      OnClick = AccessSampleQty1Click
    end
    object N915GAI1: TMenuItem
      Caption = '915 GAI'
      ShortCut = 24696
      Visible = False
      OnClick = N915GAI1Click
    end
    object ransitSummary1: TMenuItem
      Caption = 'Transit Summary'
      ShortCut = 24656
      Visible = False
      OnClick = BitBtn7Click
    end
    object FixQN1: TMenuItem
      Caption = 'Fix QN#'
      OnClick = FixQN1Click
    end
    object FixQNGAIdd1: TMenuItem
      Caption = 'Fix QN GAI dd'
      OnClick = FixQNGAIdd1Click
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule_plc'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 144
    Top = 328
  end
  object tblshedule: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule where pline='#39'T003U'#39' and yzh=0'
    FieldDefs = <
      item
        Name = 'PLINE'
        Attributes = [faRequired]
        DataType = ftWideString
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
        DataType = ftFloat
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 22
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
        Size = 20
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
        DataType = ftFloat
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
        Size = 10
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
        Name = 'AFLAG'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'AWF'
        DataType = ftFloat
      end
      item
        Name = 'EWF'
        DataType = ftFloat
      end
      item
        Name = 'ASAH'
        DataType = ftFloat
      end
      item
        Name = 'ESAH'
        DataType = ftFloat
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
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'YSZJS'
        DataType = ftFloat
      end
      item
        Name = 'SCLH_BS'
        DataType = ftFloat
      end
      item
        Name = 'SCLH_LH'
        DataType = ftFloat
      end
      item
        Name = 'SJRS_A'
        DataType = ftFloat
      end
      item
        Name = 'SJYC_A'
        DataType = ftFloat
      end
      item
        Name = 'LOCKCFKS'
        DataType = ftBoolean
      end
      item
        Name = 'CT1'
        DataType = ftFloat
      end
      item
        Name = 'CT3'
        DataType = ftFloat
      end
      item
        Name = 'CT2_1'
        DataType = ftFloat
      end
      item
        Name = 'CT2_2'
        DataType = ftFloat
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
        DataType = ftFloat
      end
      item
        Name = 'PFXJS'
        DataType = ftFloat
      end
      item
        Name = 'ALXJS'
        DataType = ftFloat
      end
      item
        Name = 'EXJS'
        DataType = ftFloat
      end
      item
        Name = 'PFEFF1'
        DataType = ftFloat
      end
      item
        Name = 'PFEFF2'
        DataType = ftFloat
      end
      item
        Name = 'EEFF1'
        DataType = ftFloat
      end
      item
        Name = 'EEFF2'
        DataType = ftFloat
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
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FWS'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'EWS'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PZB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FZB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'EZB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PFRS_A'
        DataType = ftFloat
      end
      item
        Name = 'PFRS_A1'
        DataType = ftFloat
      end
      item
        Name = 'PFRS'
        DataType = ftFloat
      end
      item
        Name = 'ERS_A1'
        DataType = ftFloat
      end
      item
        Name = 'ERS'
        DataType = ftFloat
      end
      item
        Name = 'TTLRS_A'
        DataType = ftFloat
      end
      item
        Name = 'TTLRS_A1'
        DataType = ftFloat
      end
      item
        Name = 'TTLRS'
        DataType = ftFloat
      end
      item
        Name = 'PFYC_A'
        DataType = ftFloat
      end
      item
        Name = 'PFYC_A1'
        DataType = ftFloat
      end
      item
        Name = 'PFYC'
        DataType = ftFloat
      end
      item
        Name = 'EYC_A'
        DataType = ftFloat
      end
      item
        Name = 'EYC_A1'
        DataType = ftFloat
      end
      item
        Name = 'EYC'
        DataType = ftFloat
      end
      item
        Name = 'TTLYC_A'
        DataType = ftFloat
      end
      item
        Name = 'TTLYC_A1'
        DataType = ftFloat
      end
      item
        Name = 'TTLYC'
        DataType = ftFloat
      end
      item
        Name = 'YSDX'
        DataType = ftFloat
      end
      item
        Name = 'YSXL'
        DataType = ftFloat
      end
      item
        Name = 'RJXL_A'
        DataType = ftFloat
      end
      item
        Name = 'RJXL'
        DataType = ftFloat
      end
      item
        Name = 'PF_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'PF_KSJS'
        DataType = ftFloat
      end
      item
        Name = 'E_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'E_KSJS'
        DataType = ftFloat
      end
      item
        Name = 'PF_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'PF_WCJS'
        DataType = ftFloat
      end
      item
        Name = 'E_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'E_WCJS'
        DataType = ftFloat
      end
      item
        Name = 'SCLH_YB'
        DataType = ftFloat
      end
      item
        Name = 'SCLH_WB'
        DataType = ftFloat
      end
      item
        Name = 'SCLH_BB'
        DataType = ftFloat
      end
      item
        Name = 'SCLH_XL'
        DataType = ftFloat
      end
      item
        Name = 'LOCKCFWC'
        DataType = ftBoolean
      end
      item
        Name = 'BZL'
        DataType = ftFloat
      end
      item
        Name = 'JJL'
        DataType = ftFloat
      end
      item
        Name = 'FLAG31P'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG31A'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG31E'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG32P'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG32A'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG32E'
        DataType = ftWideString
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
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'AL_WCRQ'
        DataType = ftDate
      end
      item
        Name = 'AL_WCJS'
        DataType = ftFloat
      end
      item
        Name = 'QNF'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FLAG401'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'YQLCRQ1'
        DataType = ftDate
      end
      item
        Name = 'DTA1'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RSXC1'
        DataType = ftFloat
      end
      item
        Name = 'RSXC2'
        DataType = ftFloat
      end
      item
        Name = 'YCXC1'
        DataType = ftFloat
      end
      item
        Name = 'YCXC2'
        DataType = ftFloat
      end
      item
        Name = 'PRTWO'
        DataType = ftBoolean
      end
      item
        Name = 'PF_SB'
        DataType = ftWideString
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
        DataType = ftWideString
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
        DataType = ftWideString
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
        DataType = ftWideString
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
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'FCL_A2'
        DataType = ftInteger
      end
      item
        Name = 'PDN_X'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'B_KSRQ1'
        DataType = ftDate
      end
      item
        Name = 'B_FLAG31'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'B_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'B_KSJS'
        DataType = ftFloat
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
        DataType = ftFloat
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
        DataType = ftFloat
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
        DataType = ftFloat
      end
      item
        Name = 'A_AWCRQ'
        DataType = ftDate
      end
      item
        Name = 'A_AWCJS'
        DataType = ftFloat
      end
      item
        Name = 'E_WCRQ1'
        DataType = ftDate
      end
      item
        Name = 'E_WCJS1'
        DataType = ftFloat
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
        DataType = ftFloat
      end
      item
        Name = 'I_NO'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_NO'
        DataType = ftWideString
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
        DataType = ftWideString
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
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ITEM_DT'
        DataType = ftDate
      end
      item
        Name = 'SAH_TTL'
        DataType = ftFloat
      end
      item
        Name = 'SAH_TTLW'
        DataType = ftInteger
      end
      item
        Name = 'SAH_TTLQ'
        DataType = ftFloat
      end
      item
        Name = 'SAH_B'
        DataType = ftFloat
      end
      item
        Name = 'SAH_BW'
        DataType = ftInteger
      end
      item
        Name = 'SAH_BQ'
        DataType = ftFloat
      end
      item
        Name = 'DIFF_LBL'
        DataType = ftWideString
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
      end
      item
        Name = 'IECLS_N'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DIFF_PAK'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DIFF_DDT'
        DataType = ftInteger
      end
      item
        Name = 'DIFF_REG'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'WL_F'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SP_F'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SP_ST'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CWONO1'
        DataType = ftWideString
        Size = 25
      end
      item
        Name = 'LINE_SEQ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'LK_S1'
        DataType = ftFloat
      end
      item
        Name = 'B_S1'
        DataType = ftFloat
      end
      item
        Name = 'F_S1'
        DataType = ftFloat
      end
      item
        Name = 'E_S1'
        DataType = ftFloat
      end
      item
        Name = 'TTL_S1'
        DataType = ftFloat
      end
      item
        Name = 'TTL_S2'
        DataType = ftFloat
      end
      item
        Name = 'CWO_N'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SHPT_BAL'
        DataType = ftInteger
      end
      item
        Name = 'SHPT_B1'
        DataType = ftInteger
      end
      item
        Name = 'SHPT_B2'
        DataType = ftInteger
      end
      item
        Name = 'SHPT_BP'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;tshop;pline;seq'
      end
      item
        Name = 'idx2'
        Fields = 'j_no;j2_job'
      end
      item
        Name = 'idx3'
        Fields = 'j_no;j2_job;rwo'
      end
      item
        Name = 'idx4'
        Fields = 'j_no;acol;j2_job;rwo'
      end
      item
        Name = 'idx5'
        Fields = 'j_no;j2_job;rwo;fccs'
      end
      item
        Name = 'idx6'
        Fields = 'cfksrq;pline;seq'
      end
      item
        Name = 'idx7'
        Fields = 'tplant;tshop;pline;seq'
      end
      item
        Name = 'idx8'
        Fields = 'tshop;pline;seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = tblsheduleAfterOpen
    AfterPost = tblsheduleAfterPost
    OnCalcFields = tblsheduleCalcFields
    Left = 80
    Top = 328
    object tblshedulePLINE: TWideStringField
      FieldName = 'PLINE'
      Origin = '"TBLSHEDULE"."PLINE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object tblsheduleSEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = '"TBLSHEDULE"."SEQ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblsheduleCFKSRQ: TDateField
      FieldName = 'CFKSRQ'
      Origin = '"TBLSHEDULE"."CFKSRQ"'
      OnChange = tblsheduleCfksrqChange
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleCFKSJS: TFloatField
      FieldName = 'CFKSJS'
      Origin = '"TBLSHEDULE"."CFKSJS"'
    end
    object tblsheduleJ_NO: TWideStringField
      FieldName = 'J_NO'
      Origin = '"TBLSHEDULE"."J_NO"'
      Size = 22
    end
    object tblsheduleJ2_JOB: TWideStringField
      FieldName = 'J2_JOB'
      Origin = '"TBLSHEDULE"."J2_JOB"'
      Size = 10
    end
    object tblsheduleARTNO: TWideStringField
      FieldName = 'ARTNO'
      Origin = '"TBLSHEDULE"."ARTNO"'
    end
    object tblsheduleACOL: TWideStringField
      FieldName = 'ACOL'
      Origin = '"TBLSHEDULE"."ACOL"'
      Required = True
      Size = 4
    end
    object tblsheduleWEEK: TIntegerField
      FieldName = 'WEEK'
      Origin = '"TBLSHEDULE"."WEEK"'
    end
    object tblshedulePLAN_DATE: TDateField
      FieldName = 'PLAN_DATE'
      Origin = '"TBLSHEDULE"."PLAN_DATE"'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleKHZL: TWideStringField
      FieldName = 'KHZL'
      Origin = '"TBLSHEDULE"."KHZL"'
      Size = 2
    end
    object tblsheduleOKHRQ: TDateField
      FieldName = 'OKHRQ'
      Origin = '"TBLSHEDULE"."OKHRQ"'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleSCQTY: TIntegerField
      FieldName = 'SCQTY'
      Origin = '"TBLSHEDULE"."SCQTY"'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleTMU: TFloatField
      FieldName = 'TMU'
      Origin = '"TBLSHEDULE"."TMU"'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleTRS: TIntegerField
      FieldName = 'TRS'
      Origin = '"TBLSHEDULE"."TRS"'
    end
    object tblsheduleFYL: TFloatField
      FieldName = 'FYL'
      Origin = '"TBLSHEDULE"."FYL"'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleXJS: TIntegerField
      FieldName = 'XJS'
      Origin = '"TBLSHEDULE"."XJS"'
    end
    object tblsheduleJXJS: TFloatField
      FieldName = 'JXJS'
      Origin = '"TBLSHEDULE"."JXJS"'
    end
    object tblsheduleZJS: TFloatField
      FieldName = 'ZJS'
      Origin = '"TBLSHEDULE"."ZJS"'
    end
    object tblsheduleJHL: TFloatField
      FieldName = 'JHL'
      Origin = '"TBLSHEDULE"."JHL"'
    end
    object tblsheduleCFWCRQ: TDateField
      FieldName = 'CFWCRQ'
      Origin = '"TBLSHEDULE"."CFWCRQ"'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleYQLCRQ: TDateTimeField
      FieldName = 'YQLCRQ'
      Origin = '"TBLSHEDULE"."YQLCRQ"'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleSCTD: TIntegerField
      FieldName = 'SCTD'
      Origin = '"TBLSHEDULE"."SCTD"'
      OnChange = tblsheduleTmuChange
    end
    object tblshedulePHISZJS: TFloatField
      FieldName = 'PHISZJS'
      Origin = '"TBLSHEDULE"."PHISZJS"'
    end
    object tblsheduleZHJS: TFloatField
      FieldName = 'ZHJS'
      Origin = '"TBLSHEDULE"."ZHJS"'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleBCJS: TIntegerField
      FieldName = 'BCJS'
      Origin = '"TBLSHEDULE"."BCJS"'
      OnChange = tblsheduleTmuChange
    end
    object tblshedulePD4: TDateField
      FieldName = 'PD4'
      Origin = '"TBLSHEDULE"."PD4"'
    end
    object tblsheduleSCLHJS: TFloatField
      FieldName = 'SCLHJS'
      Origin = '"TBLSHEDULE"."SCLHJS"'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleZKTD: TFloatField
      FieldName = 'ZKTD'
      Origin = '"TBLSHEDULE"."ZKTD"'
    end
    object tblsheduleJHRS: TWideStringField
      FieldName = 'JHRS'
      Origin = '"TBLSHEDULE"."JHRS"'
      Size = 5
    end
    object tblsheduleYSJHL: TFloatField
      FieldName = 'YSJHL'
      Origin = '"TBLSHEDULE"."YSJHL"'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleDBXL: TFloatField
      FieldName = 'DBXL'
      Origin = '"TBLSHEDULE"."DBXL"'
    end
    object tblshedulePD8: TDateField
      FieldName = 'PD8'
      Origin = '"TBLSHEDULE"."PD8"'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleBZJS: TIntegerField
      FieldName = 'BZJS'
      Origin = '"TBLSHEDULE"."BZJS"'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleTZLCRQ: TDateField
      FieldName = 'TZLCRQ'
      Origin = '"TBLSHEDULE"."TZLCRQ"'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleFLAG1: TWideStringField
      FieldName = 'FLAG1'
      Origin = '"TBLSHEDULE"."FLAG1"'
      Size = 2
    end
    object tblsheduleFLAG2: TWideStringField
      FieldName = 'FLAG2'
      Origin = '"TBLSHEDULE"."FLAG2"'
      Size = 2
    end
    object tblsheduleFLAG3: TWideStringField
      FieldName = 'FLAG3'
      Origin = '"TBLSHEDULE"."FLAG3"'
      Size = 5
    end
    object tblsheduleFLAG4: TWideStringField
      FieldName = 'FLAG4'
      Origin = '"TBLSHEDULE"."FLAG4"'
      Size = 5
    end
    object tblsheduleRQXC: TIntegerField
      FieldName = 'RQXC'
      Origin = '"TBLSHEDULE"."RQXC"'
    end
    object tblsheduleQRLCRQ: TDateField
      FieldName = 'QRLCRQ'
      Origin = '"TBLSHEDULE"."QRLCRQ"'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleKDJS: TIntegerField
      FieldName = 'KDJS'
      Origin = '"TBLSHEDULE"."KDJS"'
    end
    object tblsheduleWEEK1: TIntegerField
      FieldName = 'WEEK1'
      Origin = '"TBLSHEDULE"."WEEK1"'
    end
    object tblsheduleORDLINE: TIntegerField
      FieldName = 'ORDLINE'
      Origin = '"TBLSHEDULE"."ORDLINE"'
      Required = True
    end
    object tblsheduleFYFS: TWideStringField
      FieldName = 'FYFS'
      Origin = '"TBLSHEDULE"."FYFS"'
    end
    object tblsheduleCFWCJS: TFloatField
      FieldName = 'CFWCJS'
      Origin = '"TBLSHEDULE"."CFWCJS"'
    end
    object tblsheduleSOPNO: TWideStringField
      FieldName = 'SOPNO'
      Origin = '"TBLSHEDULE"."SOPNO"'
      Required = True
    end
    object tblsheduleFLAG5: TWideStringField
      FieldName = 'FLAG5'
      Origin = '"TBLSHEDULE"."FLAG5"'
      Size = 2
    end
    object tblsheduleCKTS: TIntegerField
      FieldName = 'CKTS'
      Origin = '"TBLSHEDULE"."CKTS"'
    end
    object tblsheduleYZH: TBooleanField
      FieldName = 'YZH'
      Origin = '"TBLSHEDULE"."YZH"'
      OnChange = tblsheduleYzhChange
    end
    object tblsheduleXS: TIntegerField
      FieldName = 'XS'
      Origin = '"TBLSHEDULE"."XS"'
    end
    object tblsheduleTSHOP: TWideStringField
      FieldName = 'TSHOP'
      Origin = '"TBLSHEDULE"."TSHOP"'
      Size = 10
    end
    object tblshedulePFLAG1: TWideStringField
      FieldName = 'PFLAG1'
      Origin = '"TBLSHEDULE"."PFLAG1"'
      Size = 2
    end
    object tblsheduleCSTYLE: TWideStringField
      FieldName = 'CSTYLE'
      Origin = '"TBLSHEDULE"."CSTYLE"'
      Size = 35
    end
    object tblsheduleDBZS: TWideStringField
      FieldName = 'DBZS'
      Origin = '"TBLSHEDULE"."DBZS"'
      Size = 3
    end
    object tblsheduleFLAG6: TWideStringField
      FieldName = 'FLAG6'
      Origin = '"TBLSHEDULE"."FLAG6"'
      Size = 2
    end
    object tblsheduleFCCS: TWideStringField
      FieldName = 'FCCS'
      Origin = '"TBLSHEDULE"."FCCS"'
      Size = 8
    end
    object tblsheduleLSTRS: TFloatField
      FieldName = 'LSTRS'
      Origin = '"TBLSHEDULE"."LSTRS"'
    end
    object tblsheduleTPLANT: TWideStringField
      FieldName = 'TPLANT'
      Origin = '"TBLSHEDULE"."TPLANT"'
      Size = 10
    end
    object tblsheduleSHJS: TFloatField
      FieldName = 'SHJS'
      Origin = '"TBLSHEDULE"."SHJS"'
    end
    object tblsheduleQYJS: TFloatField
      FieldName = 'QYJS'
      Origin = '"TBLSHEDULE"."QYJS"'
      OnChange = tblsheduleTmuChange
    end
    object tblshedulePLAN_W: TWideStringField
      FieldName = 'PLAN_W'
      Origin = '"TBLSHEDULE"."PLAN_W"'
      Size = 3
    end
    object tblsheduleYQ_W: TWideStringField
      FieldName = 'YQ_W'
      Origin = '"TBLSHEDULE"."YQ_W"'
      Size = 3
    end
    object tblsheduleTZ_W: TWideStringField
      FieldName = 'TZ_W'
      Origin = '"TBLSHEDULE"."TZ_W"'
      Size = 3
    end
    object tblsheduleRWO: TWideStringField
      FieldName = 'RWO'
      Origin = '"TBLSHEDULE"."RWO"'
      Size = 10
    end
    object tblsheduleRID: TIntegerField
      FieldName = 'RID'
      Origin = '"TBLSHEDULE"."RID"'
    end
    object tblsheduleHC: TIntegerField
      FieldName = 'HC'
      Origin = '"TBLSHEDULE"."HC"'
    end
    object tblsheduleLEARN: TFloatField
      FieldName = 'LEARN'
      Origin = '"TBLSHEDULE"."LEARN"'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleLFLAG: TWideStringField
      FieldName = 'LFLAG'
      Origin = '"TBLSHEDULE"."LFLAG"'
      OnChange = tblsheduleLFLAGChange
      Size = 3
    end
    object tblsheduleNSHJS: TIntegerField
      FieldName = 'NSHJS'
      Origin = '"TBLSHEDULE"."NSHJS"'
    end
    object tblsheduleUNBAL: TFloatField
      FieldName = 'UNBAL'
      Origin = '"TBLSHEDULE"."UNBAL"'
    end
    object tblsheduleXC1: TIntegerField
      FieldName = 'XC1'
      Origin = '"TBLSHEDULE"."XC1"'
    end
    object tblsheduleXC2: TIntegerField
      FieldName = 'XC2'
      Origin = '"TBLSHEDULE"."XC2"'
    end
    object tblsheduleXC3: TIntegerField
      FieldName = 'XC3'
      Origin = '"TBLSHEDULE"."XC3"'
    end
    object tblsheduleSJRS: TFloatField
      FieldName = 'SJRS'
      Origin = '"TBLSHEDULE"."SJRS"'
    end
    object tblsheduleSJYC: TFloatField
      FieldName = 'SJYC'
      Origin = '"TBLSHEDULE"."SJYC"'
    end
    object tblsheduleCKJS: TFloatField
      FieldName = 'CKJS'
      Origin = '"TBLSHEDULE"."CKJS"'
    end
    object tblsheduleGRP: TWideStringField
      FieldName = 'GRP'
      Origin = '"TBLSHEDULE"."GRP"'
      Size = 1
    end
    object tblsheduleRQXC1: TIntegerField
      FieldName = 'RQXC1'
      Origin = '"TBLSHEDULE"."RQXC1"'
    end
    object tblsheduleQTY: TIntegerField
      FieldName = 'QTY'
      Origin = '"TBLSHEDULE"."QTY"'
    end
    object tblsheduleTBU: TFloatField
      FieldName = 'TBU'
      Origin = '"TBLSHEDULE"."TBU"'
    end
    object tblsheduleCPLAN: TDateField
      FieldName = 'CPLAN'
      Origin = '"TBLSHEDULE"."CPLAN"'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleXC4: TIntegerField
      FieldName = 'XC4'
      Origin = '"TBLSHEDULE"."XC4"'
    end
    object tblsheduleLTC_D: TFloatField
      FieldName = 'LTC_D'
      Origin = '"TBLSHEDULE"."LTC_D"'
    end
    object tblsheduleLTC_R: TFloatField
      FieldName = 'LTC_R'
      Origin = '"TBLSHEDULE"."LTC_R"'
    end
    object tblsheduleLTC_A: TFloatField
      FieldName = 'LTC_A'
      Origin = '"TBLSHEDULE"."LTC_A"'
    end
    object tblsheduleLTC_RM: TWideStringField
      FieldName = 'LTC_RM'
      Origin = '"TBLSHEDULE"."LTC_RM"'
      Size = 200
    end
    object tblsheduleLTC_KSRQ: TDateField
      FieldName = 'LTC_KSRQ'
      Origin = '"TBLSHEDULE"."LTC_KSRQ"'
    end
    object tblsheduleLTC_KSJS: TFloatField
      FieldName = 'LTC_KSJS'
      Origin = '"TBLSHEDULE"."LTC_KSJS"'
    end
    object tblsheduleDSQN: TWideStringField
      FieldName = 'DSQN'
      Origin = '"TBLSHEDULE"."DSQN"'
      Size = 5
    end
    object tblsheduleFLAG7: TWideStringField
      FieldName = 'FLAG7'
      Origin = '"TBLSHEDULE"."FLAG7"'
      Size = 5
    end
    object tblsheduleCWO: TWideStringField
      FieldName = 'CWO'
      Origin = '"TBLSHEDULE"."CWO"'
      Size = 10
    end
    object tblsheduleIECLS: TWideStringField
      FieldName = 'IECLS'
      Origin = '"TBLSHEDULE"."IECLS"'
      OnChange = tblsheduleIECLSChange
      Size = 10
    end
    object tblsheduleIECLS1: TWideStringField
      FieldName = 'IECLS1'
      Origin = '"TBLSHEDULE"."IECLS1"'
      OnChange = tblsheduleIECLSChange
      Size = 5
    end
    object tblsheduleWL_JHDT: TDateField
      FieldName = 'WL_JHDT'
      Origin = '"TBLSHEDULE"."WL_JHDT"'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleWL_JHP: TFloatField
      FieldName = 'WL_JHP'
      Origin = '"TBLSHEDULE"."WL_JHP"'
    end
    object tblsheduleWL_WC: TBooleanField
      FieldName = 'WL_WC'
      Origin = '"TBLSHEDULE"."WL_WC"'
    end
    object tblsheduleWL_WCP: TFloatField
      FieldName = 'WL_WCP'
      Origin = '"TBLSHEDULE"."WL_WCP"'
    end
    object tblshedulePB_JHDT: TDateField
      FieldName = 'PB_JHDT'
      Origin = '"TBLSHEDULE"."PB_JHDT"'
      DisplayFormat = 'mm/dd'
    end
    object tblshedulePB_WC: TBooleanField
      FieldName = 'PB_WC'
      Origin = '"TBLSHEDULE"."PB_WC"'
    end
    object tblsheduleKHZL1: TBooleanField
      FieldName = 'KHZL1'
      Origin = '"TBLSHEDULE"."KHZL1"'
    end
    object tblsheduleAFLAG: TWideStringField
      FieldName = 'AFLAG'
      Size = 10
    end
    object tblsheduleAWF: TFloatField
      FieldName = 'AWF'
      OnChange = tblsheduleTmuChange
      DisplayFormat = '0.0'
    end
    object tblsheduleEWF: TFloatField
      FieldName = 'EWF'
      DisplayFormat = '0.0'
    end
    object tblsheduleASAH: TFloatField
      FieldName = 'ASAH'
      OnChange = tblsheduleTmuChange
    end
    object tblsheduleESAH: TFloatField
      FieldName = 'ESAH'
    end
    object tblsheduleMANTBL: TIntegerField
      FieldName = 'MANTBL'
    end
    object tblsheduleGZW: TIntegerField
      FieldName = 'GZW'
    end
    object tblsheduleLBLING: TWideStringField
      FieldName = 'LBLING'
      Size = 50
    end
    object tblsheduleYSZJS: TFloatField
      FieldName = 'YSZJS'
    end
    object tblsheduleSCLH_BS: TFloatField
      FieldName = 'SCLH_BS'
    end
    object tblsheduleSCLH_LH: TFloatField
      FieldName = 'SCLH_LH'
    end
    object tblsheduleSJRS_A: TFloatField
      FieldName = 'SJRS_A'
    end
    object tblsheduleSJYC_A: TFloatField
      FieldName = 'SJYC_A'
    end
    object tblsheduleLOCKCFKS: TBooleanField
      FieldName = 'LOCKCFKS'
      OnChange = tblsheduleLOCKCFKSChange
    end
    object tblsheduleCT1: TFloatField
      FieldName = 'CT1'
    end
    object tblsheduleCT3: TFloatField
      FieldName = 'CT3'
    end
    object tblsheduleCT2_1: TFloatField
      FieldName = 'CT2_1'
    end
    object tblsheduleCT2_2: TFloatField
      FieldName = 'CT2_2'
    end
    object tblsheduleAT3_A: TDateField
      FieldName = 'AT3_A'
      DisplayFormat = 'MM/dd'
    end
    object tblshedulePDN_A: TDateField
      FieldName = 'PDN_A'
      DisplayFormat = 'MM/dd'
    end
    object tblshedulePFSAH: TFloatField
      FieldName = 'PFSAH'
    end
    object tblshedulePFXJS: TFloatField
      FieldName = 'PFXJS'
    end
    object tblsheduleALXJS: TFloatField
      FieldName = 'ALXJS'
    end
    object tblsheduleEXJS: TFloatField
      FieldName = 'EXJS'
    end
    object tblshedulePFEFF1: TFloatField
      FieldName = 'PFEFF1'
    end
    object tblshedulePFEFF2: TFloatField
      FieldName = 'PFEFF2'
    end
    object tblsheduleEEFF1: TFloatField
      FieldName = 'EEFF1'
    end
    object tblsheduleEEFF2: TFloatField
      FieldName = 'EEFF2'
    end
    object tblshedulePFOPTQTY: TIntegerField
      FieldName = 'PFOPTQTY'
    end
    object tblsheduleALOPTQTY: TIntegerField
      FieldName = 'ALOPTQTY'
    end
    object tblsheduleEOPTQTY: TIntegerField
      FieldName = 'EOPTQTY'
    end
    object tblsheduleTOPTQTY: TIntegerField
      FieldName = 'TOPTQTY'
    end
    object tblshedulePWS: TWideStringField
      FieldName = 'PWS'
      Size = 10
    end
    object tblsheduleFWS: TWideStringField
      FieldName = 'FWS'
      Size = 10
    end
    object tblsheduleEWS: TWideStringField
      FieldName = 'EWS'
      Size = 10
    end
    object tblshedulePZB: TWideStringField
      FieldName = 'PZB'
      Size = 10
    end
    object tblsheduleFZB: TWideStringField
      FieldName = 'FZB'
      Size = 10
    end
    object tblsheduleEZB: TWideStringField
      FieldName = 'EZB'
      Size = 10
    end
    object tblshedulePFRS_A: TFloatField
      FieldName = 'PFRS_A'
    end
    object tblshedulePFRS_A1: TFloatField
      FieldName = 'PFRS_A1'
    end
    object tblshedulePFRS: TFloatField
      FieldName = 'PFRS'
    end
    object tblsheduleERS_A1: TFloatField
      FieldName = 'ERS_A1'
    end
    object tblsheduleERS: TFloatField
      FieldName = 'ERS'
    end
    object tblsheduleTTLRS_A: TFloatField
      FieldName = 'TTLRS_A'
    end
    object tblsheduleTTLRS_A1: TFloatField
      FieldName = 'TTLRS_A1'
    end
    object tblsheduleTTLRS: TFloatField
      FieldName = 'TTLRS'
    end
    object tblshedulePFYC_A: TFloatField
      FieldName = 'PFYC_A'
    end
    object tblshedulePFYC_A1: TFloatField
      FieldName = 'PFYC_A1'
    end
    object tblshedulePFYC: TFloatField
      FieldName = 'PFYC'
    end
    object tblsheduleEYC_A: TFloatField
      FieldName = 'EYC_A'
    end
    object tblsheduleEYC_A1: TFloatField
      FieldName = 'EYC_A1'
    end
    object tblsheduleEYC: TFloatField
      FieldName = 'EYC'
    end
    object tblsheduleTTLYC_A: TFloatField
      FieldName = 'TTLYC_A'
    end
    object tblsheduleTTLYC_A1: TFloatField
      FieldName = 'TTLYC_A1'
    end
    object tblsheduleTTLYC: TFloatField
      FieldName = 'TTLYC'
    end
    object tblsheduleYSDX: TFloatField
      FieldName = 'YSDX'
    end
    object tblsheduleYSXL: TFloatField
      FieldName = 'YSXL'
    end
    object tblsheduleRJXL_A: TFloatField
      FieldName = 'RJXL_A'
    end
    object tblsheduleRJXL: TFloatField
      FieldName = 'RJXL'
    end
    object tblshedulePF_KSRQ: TDateField
      FieldName = 'PF_KSRQ'
      DisplayFormat = 'MM/dd'
    end
    object tblshedulePF_KSJS: TFloatField
      FieldName = 'PF_KSJS'
    end
    object tblsheduleE_KSRQ: TDateField
      FieldName = 'E_KSRQ'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleE_KSJS: TFloatField
      FieldName = 'E_KSJS'
    end
    object tblshedulePF_WCRQ: TDateField
      FieldName = 'PF_WCRQ'
      DisplayFormat = 'MM/dd'
    end
    object tblshedulePF_WCJS: TFloatField
      FieldName = 'PF_WCJS'
    end
    object tblsheduleE_WCRQ: TDateField
      FieldName = 'E_WCRQ'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleE_WCJS: TFloatField
      FieldName = 'E_WCJS'
    end
    object tblsheduleSCLH_YB: TFloatField
      FieldName = 'SCLH_YB'
    end
    object tblsheduleSCLH_WB: TFloatField
      FieldName = 'SCLH_WB'
    end
    object tblsheduleSCLH_BB: TFloatField
      FieldName = 'SCLH_BB'
    end
    object tblsheduleDTA: TWideStringField
      FieldName = 'DTA'
      Size = 10
    end
    object tblsheduleSCLH_XL: TFloatField
      FieldName = 'SCLH_XL'
    end
    object tblsheduleLOCKCFWC: TBooleanField
      FieldName = 'LOCKCFWC'
    end
    object tblsheduleBZL: TFloatField
      FieldName = 'BZL'
    end
    object tblsheduleJJL: TFloatField
      FieldName = 'JJL'
    end
    object tblsheduleFLAG31P: TWideStringField
      FieldName = 'FLAG31P'
      Size = 5
    end
    object tblsheduleFLAG31A: TWideStringField
      FieldName = 'FLAG31A'
      Size = 5
    end
    object tblsheduleFLAG31E: TWideStringField
      FieldName = 'FLAG31E'
      Size = 5
    end
    object tblsheduleFLAG32P: TWideStringField
      FieldName = 'FLAG32P'
      Size = 5
    end
    object tblsheduleFLAG32A: TWideStringField
      FieldName = 'FLAG32A'
      Size = 5
    end
    object tblsheduleFLAG32E: TWideStringField
      FieldName = 'FLAG32E'
      Size = 5
    end
    object tblshedulePIQTY: TIntegerField
      FieldName = 'PIQTY'
    end
    object tblshedulePFQTY: TIntegerField
      FieldName = 'PFQTY'
    end
    object tblsheduleSQTY1: TIntegerField
      FieldName = 'SQTY1'
    end
    object tblsheduleSQTY: TIntegerField
      FieldName = 'SQTY'
    end
    object tblsheduleBQTY: TIntegerField
      FieldName = 'BQTY'
    end
    object tblsheduleBQTY1: TWideStringField
      FieldName = 'BQTY1'
      Size = 5
    end
    object tblsheduleAL_WCRQ: TDateField
      FieldName = 'AL_WCRQ'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleAL_WCJS: TFloatField
      FieldName = 'AL_WCJS'
    end
    object tblsheduleQNF: TWideStringField
      FieldName = 'QNF'
      Size = 5
    end
    object tblsheduleFLAG401: TWideStringField
      FieldName = 'FLAG401'
      Size = 5
    end
    object tblsheduleYQLCRQ1: TDateField
      FieldName = 'YQLCRQ1'
      OnChange = tblsheduleYQLCRQ1Change
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleQRXC: TFloatField
      FieldName = 'QRXC'
    end
    object tblsheduleDTA1: TWideStringField
      FieldName = 'DTA1'
      Size = 5
    end
    object tblsheduleRSXC1: TFloatField
      FieldName = 'RSXC1'
    end
    object tblsheduleRSXC2: TFloatField
      FieldName = 'RSXC2'
    end
    object tblsheduleYCXC1: TFloatField
      FieldName = 'YCXC1'
    end
    object tblsheduleYCXC2: TFloatField
      FieldName = 'YCXC2'
    end
    object tblshedulePRTWO: TBooleanField
      FieldName = 'PRTWO'
    end
    object tblshedulepf_sb: TWideStringField
      FieldName = 'pf_sb'
      Size = 5
    end
    object tblshedulePF_BQTY: TIntegerField
      FieldName = 'PF_BQTY'
    end
    object tblshedulePF_FQTY: TIntegerField
      FieldName = 'PF_FQTY'
    end
    object tblsheduleT2QTY: TIntegerField
      FieldName = 'T2QTY'
    end
    object tblsheduleLBL_PT: TWideStringField
      FieldName = 'LBL_PT'
      Size = 10
    end
    object tblsheduleLBL_PDT: TDateField
      FieldName = 'LBL_PDT'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleLBL_SDT: TDateField
      FieldName = 'LBL_SDT'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleLBL_DIFF: TIntegerField
      FieldName = 'LBL_DIFF'
    end
    object tblsheduleLBL_ADT: TDateField
      FieldName = 'LBL_ADT'
      DisplayFormat = 'MM/dd'
    end
    object tblsheduleDT3: TDateField
      FieldName = 'DT3'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleAT_A: TWideStringField
      FieldName = 'AT_A'
      Size = 5
    end
    object tblsheduleAT3_W: TIntegerField
      FieldName = 'AT3_W'
    end
    object tblsheduleAT3: TDateField
      FieldName = 'AT3'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleT3_A: TWideStringField
      FieldName = 'T3_A'
      Size = 5
    end
    object tblsheduleBAT3: TIntegerField
      FieldName = 'BAT3'
    end
    object tblsheduleBT3: TIntegerField
      FieldName = 'BT3'
    end
    object tblsheduleFCL_A1: TWideStringField
      FieldName = 'FCL_A1'
      Size = 5
    end
    object tblsheduleFCL_A2: TIntegerField
      FieldName = 'FCL_A2'
    end
    object tblshedulePDN_X: TWideStringField
      FieldName = 'PDN_X'
      Size = 5
    end
    object tblsheduleB_KSRQ1: TDateField
      FieldName = 'B_KSRQ1'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleB_FLAG31: TWideStringField
      FieldName = 'B_FLAG31'
      Size = 5
    end
    object tblsheduleB_KSRQ: TDateField
      FieldName = 'B_KSRQ'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleB_KSJS: TFloatField
      FieldName = 'B_KSJS'
      DisplayFormat = '#0.0'
    end
    object tblsheduleB_WCRQ: TDateField
      FieldName = 'B_WCRQ'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleF_KSRQ1: TDateField
      FieldName = 'F_KSRQ1'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleF_KSRQ: TDateField
      FieldName = 'F_KSRQ'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleF_KSJS: TFloatField
      FieldName = 'F_KSJS'
      DisplayFormat = '#0.0'
    end
    object tblsheduleF_WCRQ: TDateField
      FieldName = 'F_WCRQ'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleA_KSWK: TIntegerField
      FieldName = 'A_KSWK'
    end
    object tblsheduleA_KSRQ1: TDateField
      FieldName = 'A_KSRQ1'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleA_KSJS1: TFloatField
      FieldName = 'A_KSJS1'
      DisplayFormat = '#0.0'
    end
    object tblsheduleA_WCRQ1: TDateField
      FieldName = 'A_WCRQ1'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleA_AKSRQ: TDateField
      FieldName = 'A_AKSRQ'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleA_AKSJS: TFloatField
      FieldName = 'A_AKSJS'
      DisplayFormat = '#0.0'
    end
    object tblsheduleA_AWCRQ: TDateField
      FieldName = 'A_AWCRQ'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleA_AWCJS: TFloatField
      FieldName = 'A_AWCJS'
      DisplayFormat = '#0.0'
    end
    object tblsheduleE_WCRQ1: TDateField
      FieldName = 'E_WCRQ1'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleE_WCJS1: TFloatField
      FieldName = 'E_WCJS1'
      DisplayFormat = '#0.0'
    end
    object tblsheduleE_AKSRQ: TDateField
      FieldName = 'E_AKSRQ'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleE_AWCRQ: TDateField
      FieldName = 'E_AWCRQ'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleE_AWCJS: TFloatField
      FieldName = 'E_AWCJS'
      DisplayFormat = '#0.0'
    end
    object tblsheduleI_NO: TIntegerField
      FieldName = 'I_NO'
    end
    object tblsheduleITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
    end
    object tblsheduleITEM_LDT: TDateField
      FieldName = 'ITEM_LDT'
      OnChange = tblsheduleITEM_LDTChange
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleITEM_RDT: TDateField
      FieldName = 'ITEM_RDT'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleITEM_ADT: TDateField
      FieldName = 'ITEM_ADT'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleITEM_LDIFF: TIntegerField
      FieldName = 'ITEM_LDIFF'
    end
    object tblsheduleITEM_VDIFF: TIntegerField
      FieldName = 'ITEM_VDIFF'
    end
    object tblsheduleA_LDT: TDateField
      FieldName = 'A_LDT'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleE_FLAG31: TWideStringField
      FieldName = 'E_FLAG31'
      Size = 5
    end
    object tblsheduleITEM_EDIFF: TIntegerField
      FieldName = 'ITEM_EDIFF'
    end
    object tblsheduleLAST_TTL: TIntegerField
      FieldName = 'LAST_TTL'
    end
    object tblsheduleITEM_FM: TWideStringField
      FieldName = 'ITEM_FM'
    end
    object tblsheduleITEM_DT: TDateField
      FieldName = 'ITEM_DT'
      DisplayFormat = 'mm/dd'
    end
    object tblsheduleSAH_TTL: TFloatField
      FieldName = 'SAH_TTL'
      DisplayFormat = '0.0000'
    end
    object tblsheduleSAH_TTLW: TIntegerField
      FieldName = 'SAH_TTLW'
      DisplayFormat = '0.0'
    end
    object tblsheduleSAH_TTLQ: TFloatField
      FieldName = 'SAH_TTLQ'
      DisplayFormat = '#0.00'
    end
    object tblsheduleSAH_B: TFloatField
      FieldName = 'SAH_B'
      DisplayFormat = '0.0000'
    end
    object tblsheduleSAH_BW: TIntegerField
      FieldName = 'SAH_BW'
      DisplayFormat = '0.0'
    end
    object tblsheduleSAH_BQ: TFloatField
      FieldName = 'SAH_BQ'
      DisplayFormat = '#0.00'
    end
    object tblsheduleDIFF_LBL: TWideStringField
      FieldName = 'DIFF_LBL'
      Size = 10
    end
    object tblsheduleDEST_QTY: TIntegerField
      FieldName = 'DEST_QTY'
    end
    object tblsheduleLOCK_DT: TDateField
      FieldName = 'LOCK_DT'
    end
    object tblsheduleLOCK_GAP: TIntegerField
      FieldName = 'LOCK_GAP'
    end
    object tblsheduleDIFF_M: TIntegerField
      FieldName = 'DIFF_M'
    end
    object tblsheduleDIFF_S: TIntegerField
      FieldName = 'DIFF_S'
    end
    object tblsheduleEX_AP: TIntegerField
      FieldName = 'EX_AP'
      DisplayFormat = '#0'
    end
    object tblsheduleIECLS_N: TWideStringField
      FieldName = 'IECLS_N'
      Size = 5
    end
    object tblsheduleDIFF_PAK: TWideStringField
      FieldName = 'DIFF_PAK'
      Size = 10
    end
    object tblsheduleDIFF_REG: TWideStringField
      FieldName = 'DIFF_REG'
      Size = 10
    end
    object tblsheduleDIFF_DDT: TIntegerField
      FieldName = 'DIFF_DDT'
    end
    object tblsheduleWL_F: TWideStringField
      FieldName = 'WL_F'
      Size = 5
    end
    object tblsheduleSP_F: TWideStringField
      FieldName = 'SP_F'
      Size = 5
    end
    object tblsheduleSP_ST: TWideStringField
      FieldName = 'SP_ST'
      Size = 5
    end
    object tblshedulefw_wdn: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'fw_wdn'
      Calculated = True
    end
    object tblsheduleCWONO1: TWideStringField
      FieldName = 'CWONO1'
      Size = 25
    end
    object tblsheduleLINE_SEQ: TWideStringField
      FieldName = 'LINE_SEQ'
      Size = 5
    end
    object tblsheduleLK_S1: TFloatField
      FieldName = 'LK_S1'
      DisplayFormat = '0.00'
    end
    object tblsheduleB_S1: TFloatField
      FieldName = 'B_S1'
      DisplayFormat = '0.00'
    end
    object tblsheduleF_S1: TFloatField
      FieldName = 'F_S1'
      DisplayFormat = '0.00'
    end
    object tblsheduleE_S1: TFloatField
      FieldName = 'E_S1'
      DisplayFormat = '0.00'
    end
    object tblsheduleTTL_S1: TFloatField
      FieldName = 'TTL_S1'
      DisplayFormat = '0.00'
    end
    object tblsheduleTTL_S2: TFloatField
      FieldName = 'TTL_S2'
      DisplayFormat = '0.00'
    end
    object tblsheduleCWO_N: TWideStringField
      FieldName = 'CWO_N'
    end
    object tblsheduleSHPT_BAL: TIntegerField
      FieldName = 'SHPT_BAL'
    end
    object tblsheduleSHPT_B1: TIntegerField
      FieldName = 'SHPT_B1'
    end
    object tblsheduleSHPT_B2: TIntegerField
      FieldName = 'SHPT_B2'
    end
    object tblsheduleSHPT_BP: TFloatField
      FieldName = 'SHPT_BP'
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 176
    Top = 328
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 208
    Top = 328
  end
  object ClientDataSet5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 272
    Top = 328
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet1
    Left = 304
    Top = 328
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 336
    Top = 328
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 368
    Top = 352
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 400
    Top = 328
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 944
    Top = 65528
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14479568
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15850183
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15710920
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 1024
    Top = 32
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13499643
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 1072
    Top = 32
    PixelsPerInch = 96
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16776415
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15850183
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 1040
    Top = 65528
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13092603
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 672
    Top = 376
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 72
    Top = 280
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 576
    Top = 240
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 480
    Top = 328
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 440
    Top = 328
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weekly QNs Summary for Week 22 Opts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5122
        mmLeft = 70115
        mmTop = 4233
        mmWidth = 83608
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 15610
        mmLeft = 4498
        mmTop = 18785
        mmWidth = 275167
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 6350
        mmTop = 12700
        mmWidth = 10033
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Assembly '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 19579
        mmTop = 21431
        mmWidth = 12573
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33867
        mmTop = 21431
        mmWidth = 12488
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WO # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 50536
        mmTop = 21431
        mmWidth = 8382
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WOc # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 69056
        mmTop = 21431
        mmWidth = 9694
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 80433
        mmTop = 21431
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 92604
        mmTop = 21431
        mmWidth = 6858
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
        Caption = '(submission must be on week 20)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 154517
        mmTop = 4763
        mmWidth = 62706
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 108479
        mmTop = 21431
        mmWidth = 13250
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 146579
        mmTop = 21431
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 131234
        mmTop = 21431
        mmWidth = 12404
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 154782
        mmTop = 21431
        mmWidth = 9991
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Assembly Line Stitching Team'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 171450
        mmTop = 20108
        mmWidth = 37126
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suffix '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 69056
        mmTop = 25400
        mmWidth = 7832
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suffix '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 80433
        mmTop = 25400
        mmWidth = 7832
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suffix '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 92604
        mmTop = 25400
        mmWidth = 7832
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def. Each '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 183886
        mmTop = 24606
        mmWidth = 12869
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Output '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 183886
        mmTop = 29369
        mmWidth = 15621
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl Sect Hrs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 202671
        mmTop = 24606
        mmWidth = 15367
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Start Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 220928
        mmTop = 21431
        mmWidth = 18288
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN T2 Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 241830
        mmTop = 21431
        mmWidth = 15579
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO T3 Date '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 259292
        mmTop = 21431
        mmWidth = 17992
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
        mmHeight = 15610
        mmLeft = 32808
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 49477
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 67998
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 79375
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 91281
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 102394
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 130175
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 144727
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 153194
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 15610
        mmLeft = 166952
        mmTop = 18785
        mmWidth = 2117
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
        mmHeight = 9790
        mmLeft = 182563
        mmTop = 24606
        mmWidth = 2117
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 200819
        mmTop = 24606
        mmWidth = 2117
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 219869
        mmTop = 18785
        mmWidth = 2117
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line104'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 240507
        mmTop = 18785
        mmWidth = 2117
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line105'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 258498
        mmTop = 18785
        mmWidth = 2117
        BandType = 0
      end
      object lw001: TppLabel
        UserName = 'lw001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Start Date from '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 65088
        mmTop = 12700
        mmWidth = 24977
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 203465
        mmTop = 12700
        mmWidth = 14647
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
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 219605
        mmTop = 12700
        mmWidth = 635
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 243682
        mmTop = 12700
        mmWidth = 8001
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
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 255059
        mmTop = 12700
        mmWidth = 635
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ws '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 6350
        mmTop = 21431
        mmWidth = 4699
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
        mmHeight = 15610
        mmLeft = 18521
        mmTop = 18785
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 169863
        mmTop = 29369
        mmWidth = 5165
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 166952
        mmTop = 24606
        mmWidth = 52917
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 169863
        mmTop = 25400
        mmWidth = 9779
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 146579
        mmTop = 25400
        mmWidth = 3344
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 145521
        mmTop = 29369
        mmWidth = 7154
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 19579
        mmTop = 25400
        mmWidth = 8932
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
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
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 19579
        mmTop = 1058
        mmWidth = 7535
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
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 33867
        mmTop = 1058
        mmWidth = 6646
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
        DataField = 'J2_JOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 50536
        mmTop = 1058
        mmWidth = 9144
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
        DataField = 'CWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 69056
        mmTop = 1058
        mmWidth = 6223
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
        DataField = 'RWO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 80963
        mmTop = 1058
        mmWidth = 6308
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
        DataField = 'FCCS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 92604
        mmTop = 1058
        mmWidth = 6435
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
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 103452
        mmTop = 1058
        mmWidth = 8043
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 110596
        mmTop = 1058
        mmWidth = 9567
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
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 147373
        mmTop = 1058
        mmWidth = 6773
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
        DataField = 'SCQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 155756
        mmTop = 1058
        mmWidth = 8551
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TMU'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 172879
        mmTop = 1058
        mmWidth = 5715
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
        DataField = 'JXJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 190130
        mmTop = 1058
        mmWidth = 5588
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ZJS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 212058
        mmTop = 1058
        mmWidth = 4318
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
        DataField = 'LFLAG'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 203465
        mmTop = 1058
        mmWidth = 7874
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
        DataField = 'FLAG3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 220663
        mmTop = 1058
        mmWidth = 8043
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
        DataField = 'CFKSRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 225161
        mmTop = 1058
        mmWidth = 10160
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
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 138049
        mmTop = 1058
        mmWidth = 5292
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
        DataField = 'CFWCRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 241830
        mmTop = 1058
        mmWidth = 11176
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
        DataField = 'YQLCRQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yyyy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 260880
        mmTop = 1058
        mmWidth = 10499
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
        DataField = 'TSHOP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 5556
        mmTop = 1058
        mmWidth = 8678
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5556
        mmLeft = 4498
        mmTop = 0
        mmWidth = 275167
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
        DataField = 'SEQ'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 24733
        mmTop = 1323
        mmWidth = 5165
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
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
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 155756
        mmTop = 1323
        mmWidth = 8551
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'TSHOP'
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
        mmHeight = 2117
        mmPrintPosition = 0
        object ppLine17: TppLine
          UserName = 'Line11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 4498
          mmTop = 0
          mmWidth = 275167
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object siLang1: TsiLang
    Version = '7.6.0.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    ActiveLanguage = 2
    LangDelim = 1
    LangNames.Strings = (
      'Traditional Chinese'
      'English'
      'Bengali')
    Language = 'English'
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
    Left = 400
    Top = 232
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540077006F0072006B007300680065006500740031000100
      088A8352078292630B7A28003B4E7F67290020002D002000C96128750B7A0F5F
      010050006C0061006E006E0069006E0067002000260020005300630068006500
      640075006C0069006E006700200028004D00610069006E0062006F0061007200
      6400290020002D0020004100700070006C00690063006100740069006F006E00
      010001000D000A004C006100620065006C00340001005D88CA646F983A790100
      49006D007000610063007400200043006F0064006500010001000D000A004C00
      6100620065006C00310034000100635BC07B2F00FB7C17520100010001000D00
      0A005300700065006500640042007500740074006F006E003200010051004E00
      8C4EE8900100010001000D000A00530070006500650064004200750074007400
      6F006E003300010051004E002F0051004E008C4EE890E95B7962416D0B7A0100
      010001000D000A00630068006B003300010057006900740068006F0075007400
      2000520057004F00200046005700200053007400610072007400200044006100
      740065000100010001000D000A00630068006B0034000100786501982F004A90
      7865019853004B005500A44EDB63005168887F670100010001000D000A004700
      72006F007500700042006F00780032000100315868880100010001000D000A00
      630068006B003900010078650198CD9192638C54498FFB793158688801000100
      01000D000A00630068006B00310030000100786501988C4EE890315868880100
      010001000D000A00630068006B00310032000100570061006900740069006E00
      6700200066006F00720020007000610063006B0069006E006700200028007700
      6900740068006F00750074002000500044004E0029000100010001000D000A00
      470072006F007500700042006F00780033000100E567628A4E90FE6F9D68F64E
      0100430072006900740065007200690061002000280045006E00710075006900
      720079002000260026002000460069006C007400650072002900010001000D00
      0A005300700065006500640042007500740074006F006E0034000100F25D8C5B
      1062010043006F006D0070006C006500740065006400010001000D000A004C00
      6100620065006C0031000100E55D0B7A5F860100500072006F006A0023000100
      01000D000A004C006100620065006C0032000100C9622F00447D01004C006900
      6E0065002300010001000D000A004C006100620065006C0035000100E55D3458
      010057007300010001000D000A004C006100620065006C0036000100A25B3E6B
      5F860100430075007300740020005300740079006C006500010001000D000A00
      4C006100620065006C0037000100E55DE05E0100460074007900010001000D00
      0A004C006100620065006C0038000100A25B4053255201004400690076002300
      010001000D000A004C006100620065006C00390001002275C154010050006400
      7400010001000D000A004C006100620065006C003100300001002275C1542E7A
      5E9801005000640074002000430064006500010001000D000A004C0061006200
      65006C00310031000100E55D0B7AE34E5F860100430075007300740020006300
      6C00610073007300010001000D000A004C006100620065006C00310032000100
      7282BC780100450052005000200043006C007200200043006400650001000100
      0D000A004C006100620065006C00310033000100530041004800416D0B7A2000
      01004C0042002000500072006F00630065007300730020002000010001000D00
      0A004C006100620065006C003100350001003652AE555F86010057004F002300
      010001000D000A004C006100620065006C00310036000100786501988B95CB59
      E5651F67200020009E5F2000010051004E002000730074006100720074002000
      64006100740065002000660072006F006D00010001000D000A004C0061006200
      65006C003100370001002000F38120000100200074006F002000010001000D00
      0A004C006100620065006C00310038000100E55D0B7A416D0B7A010050007200
      6F006A002000700072006F00650073007300010001000D000A004C0061006200
      65006C0031003900010096939A5B2800E296E05E2900E565EE5D200020002000
      200001004C006F0063006B006500640020002800650078002D00660074007900
      290020006400690066006600010001000D000A00470072006F00750070004200
      6F00780031000100005136937F6720002800440061007300680062006F006100
      7200640029000100440061007300680062006F00610072006400010001000D00
      0A00630068006B003500010078650198855F9263C962010051004E0073002000
      74006F00200062006500200061007200720061006E0067006500640001000100
      0D000A00630068006B0037000100786501982A6709673A5CBC7806524D910100
      51004E007300200077006900740068006F0075007400200042002F0044000100
      01000D000A00630068006B0031000100B56B785BCD9178902000280044003200
      B56B2900010050004C0043002000720065002D0061007200720061006E006700
      6500200028004400320020007300650067002900010001000D000A0063006800
      6B0038000100786501988C4EE890005168887F670100010001000D000A006300
      68006B00360001003E597865019801004D006500720067006500640020005100
      4E007300010001000D000A00630068006B00320001000652386E786501980100
      51004E007300200075002F0064002000730074007200650061006D0001000100
      0D000A00630068006B00310031000100F25D895B926384765400330030521F67
      E56550962000280043003300B56B290001007300540033002000640075006500
      2000640061007900730020006C0069006D006900740020002800430033002000
      7300650067002900010001000D000A00630068006B0031003300010078650198
      2A677C763E65C18872521C56B667010051004E00730020007700690074006800
      6F007500740020004300550020004D00610072006B0065007200010001000D00
      0A007300700065006500640062007500740074006F006E0031000100BA789A5B
      010043006F006E006600690072006D00010001000D000A006C0062006C003800
      3500300001006C0062006C003800350030000100010001000D000A0042006900
      7400420074006E0031000100C696D49A2760EA81D552CD919263010052006500
      2D007300630068006500640075006C0069006E006700010001000D000A004200
      69007400420074006E0032000100DD4F585B0100530061007600650001000100
      0D000A00420069007400420074006E00330001001098BD890100500072006500
      7600690065007700010001000D000A00420069007400420074006E0034000100
      0B4E7E5E3E6B01004E0065007800740020005300740079006C00650028007300
      2900010001000D000A00420069007400420074006E003500010000678C5F7E5E
      355FAE5501004C0061007300740020004F007200640065007200280073002900
      010001000D000A00420069007400420074006E0037000100A44E3665416D0B7A
      5864818901005400720061006E007300690074002000530075006D006D006100
      72007900010001000D000A00420069007400420074006E00380001000B4E7E5E
      355FAE5501004E0065007800740020004F007200640065007200280073002900
      010001000D000A00420069007400420074006E00310030000100187579721657
      0100470061006E0074007400010001000D000A00420069007400420074006E00
      3100320001000090FA5101005000720065007600690065007700200028003300
      20006B0069006E006400730020006F006600200057004F002900010001000D00
      0A00420069007400420074006E003100330001000E5CFA510100450078007000
      6F0072007400010001000D000A00630078005600690065007700310046004C00
      41004700310001002D000100010001000D000A00630078005600690065007700
      31004A005F004E004F0001002D000100010001000D000A006300780056006900
      6500770031004A0032005F004A004F00420001002D000100010001000D000A00
      6300780056006900650077003100430057004F0001002D000100010001000D00
      0A006300780056006900650077003100520057004F0001002D00010001000100
      0D000A006300780056006900650077003100460043004300530001002D000100
      010001000D000A00630078005600690065007700310046004C00410047003600
      01002D000100010001000D000A00630078005600690065007700310051005400
      590001002D000100010001000D000A0063007800560069006500770031004600
      4C0041004700340001002D000100010001000D000A0063007800560069006500
      770031004C00530054005200530001002D000100010001000D000A0063007800
      5600690065007700310053004A005200530001002D000100010001000D000A00
      630078005600690065007700310054005200530001002D000100010001000D00
      0A00630078005600690065007700310053004A005900430001002D0001000100
      01000D000A00630078005600690065007700310046004C004100470032000100
      2D000100010001000D000A006300780056006900650077003100540042005500
      01002D000100010001000D000A00630078005600690065007700310054004D00
      550001002D000100010001000D000A0063007800560069006500770031004A00
      58004A00530001002D000100010001000D000A00630078005600690065007700
      31005A004A00530001002D000100010001000D000A0063007800560069006500
      7700310050004C0041004E005F00440041005400450001002D00010001000100
      0D000A006300780056006900650077003100430050004C0041004E0001002D00
      0100010001000D000A0063007800560069006500770031005800430034000100
      2D000100010001000D000A006300780056006900650077003100460059004600
      530001002D000100010001000D000A0063007800560069006500770031005500
      4E00420041004C0001002D000100010001000D000A0063007800560069006500
      7700310058004300310001002D000100010001000D000A006300780056006900
      65007700310046004C004100470033000100010046006C006100670020003700
      010001000D000A0063007800560069006500770031005A004B00540044000100
      010051004E002000510074007900200028002B002F002D002900010001000D00
      0A006300780056006900650077003100530043004C0048005F004C0048000100
      2D000100010001000D000A006300780056006900650077003100510059004A00
      530001002D000100010001000D000A0063007800560069006500770031005A00
      48004A0053000100010041006400760061006E00630065006400200053006500
      63007400200028004300730054002900010001000D000A006300780056006900
      650077003100420043004A005300010001005500730065006400200043007300
      540020005300650063007400010001000D000A00630078005600690065007700
      31004E00530048004A00530001002D000100010001000D000A00630078005600
      690065007700310042005A004A00530001002D000100010001000D000A006300
      78005600690065007700310054005A004C0043005200510001002D0001000100
      01000D000A006300780056006900650077003100590051004C00430052005100
      01002D000100010001000D000A00630078005600690065007700310052005100
      5800430001002D000100010001000D000A006300780056006900650077003100
      46004C0041004700350001002D000100010001000D000A006300780056006900
      650077003100510052005800430001002D000100010001000D000A0063007800
      5600690065007700310058004300320001002D000100010001000D000A006300
      78005600690065007700310058004300330001002D000100010001000D000A00
      63007800560069006500770031004C0046004C004100470001002D0001000100
      01000D000A006300780056006900650077003100590053004A0048004C000100
      2D000100010001000D000A0063007800560069006500770031004A0048004C00
      01002D000100010001000D000A00630078005600690065007700310059005A00
      480001002D000100010001000D000A0063007800560069006500770031005000
      4400380001002D000100010001000D000A006300780056006900650077003100
      4B0048005A004C00310001002D000100010001000D000A006300780056006900
      6500770031004900450043004C00530001002D000100010001000D000A006300
      7800560069006500770031004900450043004C00530031000100010053007500
      6600660069007800010001000D000A0063007800560069006500770031006C00
      62006C0069006E00670001002D000100010001000D000A006300780056006900
      650077003100700066006F007000740071007400790001002D00010001000100
      0D000A00630078005600690065007700310073006A00720073005F0061000100
      2D000100010001000D000A00630078005600690065007700310073006A007900
      63005F00610001002D000100010001000D000A00630078005600690065007700
      310063007400310001002D000100010001000D000A0063007800560069006500
      7700310063007400330001002D000100010001000D000A006300780056006900
      6500770031006300740032005F00310001002D000100010001000D000A006300
      7800560069006500770031006300740032005F00320001002D00010001000100
      0D000A0063007800560069006500770031006100740033005F00610001002D00
      0100010001000D000A006300780056006900650077003100700064006E005F00
      610001002D000100010001000D000A0063007800560069006500770031006100
      73006100680001002D000100010001000D000A00630078005600690065007700
      310061006C0078006A00730001002D000100010001000D000A00630078005600
      690065007700310070006600650066006600310001002D000100010001000D00
      0A00630078005600690065007700310070006600650066006600320001002D00
      0100010001000D000A0063007800560069006500770031006500650066006600
      310001002D000100010001000D000A0063007800560069006500770031006500
      650066006600320001002D000100010001000D000A0063007800560069006500
      7700310061006C006F007000740071007400790001002D000100010001000D00
      0A00630078005600690065007700310074006F00700074007100740079000100
      2D000100010001000D000A006300780056006900650077003100700066007200
      73005F00610001002D000100010001000D000A00630078005600690065007700
      310070006600720073005F006100310001002D000100010001000D000A006300
      780056006900650077003100700066007200730001002D000100010001000D00
      0A00630078005600690065007700310065007700660001002D00010001000100
      0D000A0063007800560069006500770031006500720073005F00610031000100
      2D000100010001000D000A006300780056006900650077003100650072007300
      01002D000100010001000D000A00630078005600690065007700310074007400
      6C00720073005F00610001002D000100010001000D000A006300780056006900
      650077003100740074006C00720073005F006100310001002D00010001000100
      0D000A006300780056006900650077003100740074006C007200730001002D00
      0100010001000D000A0063007800560069006500770031007000660079006300
      5F00610001002D000100010001000D000A006300780056006900650077003100
      70006600790063005F006100310001002D000100010001000D000A0063007800
      56006900650077003100700066007900630001002D000100010001000D000A00
      63007800560069006500770031006500790063005F00610001002D0001000100
      01000D000A0063007800560069006500770031006500790063005F0061003100
      01002D000100010001000D000A00630078005600690065007700310074007400
      6C00790063005F00610001002D000100010001000D000A006300780056006900
      650077003100740074006C00790063005F006100310001002D00010001000100
      0D000A006300780056006900650077003100740074006C007900630001002D00
      0100010001000D000A0063007800560069006500770031007900730064007800
      01002D000100010001000D000A00630078005600690065007700310079007300
      78006C0001002D000100010001000D000A006300780056006900650077003100
      72006A0078006C005F00610001002D000100010001000D000A00630078005600
      690065007700310072006A0078006C0001002D000100010001000D000A006300
      7800560069006500770031006C006F0063006B00630066007700630001002D00
      0100010001000D000A00630078005600690065007700310062007A006C000100
      2D000100010001000D000A0063007800560069006500770031006A006A006C00
      01002D000100010001000D000A00630078005600690065007700310066006C00
      6100670033003100700001002D000100010001000D000A006300780056006900
      65007700310066006C006100670033003100650001002D000100010001000D00
      0A00630078005600690065007700310066006C00610067003300320070000100
      2D000100010001000D000A00630078005600690065007700310066006C006100
      670033003200610001002D000100010001000D000A0063007800560069006500
      7700310066006C006100670033003200650001002D000100010001000D000A00
      630078005600690065007700310073006300710074007900310001002D000100
      010001000D000A00630078005600690065007700310070006900710074007900
      01002D000100010001000D000A00630078005600690065007700310070006600
      71007400790001002D000100010001000D000A00630078005600690065007700
      31007300710074007900310001002D000100010001000D000A00630078005600
      6900650077003100730071007400790001002D000100010001000D000A006300
      780056006900650077003100620071007400790001002D000100010001000D00
      0A0063007800560069006500770031006200710074007900310001002D000100
      010001000D000A00630078005600690065007700310071006E00660001002D00
      0100010001000D000A006300780056006900650077003100790071006C006300
      72007100310001002D000100010001000D000A00630078005600690065007700
      310043006F006C0075006D006E00310001002D000100010001000D000A006300
      78005600690065007700310043006F006C0075006D006E00320001002D000100
      010001000D000A00630078005600690065007700310043006F006C0075006D00
      6E00330001002D000100010001000D000A006300780056006900650077003100
      43006F006C0075006D006E00340001002D000100010001000D000A0063007800
      5600690065007700310043006F006C0075006D006E00350001002D0001000100
      01000D000A00630078005600690065007700310043006F006C0075006D006E00
      360001002D000100010001000D000A0063007800560069006500770031005200
      530058004300310001002D000100010001000D000A0063007800560069006500
      770031005200530058004300320001002D000100010001000D000A0063007800
      560069006500770031005900430058004300310001002D000100010001000D00
      0A0063007800560069006500770031005900430058004300320001002D000100
      010001000D000A006300780056006900650077003100700066005F0073006200
      01002D000100010001000D000A004E003100010053627053EE4F028AE296E05E
      E5651F67188A049301005000720069006E007400200050006C0061006E002000
      450078002D006600740079002000440061007400650020005200650063006F00
      720064007300010001000D000A004E0032000100536270538B95A88CE5651F67
      188A049301005000720069006E00740020005300740061007200740020005300
      6500770069006E00670020005200650063006F00720064007300010001000D00
      0A0047006500740054004D00550031000100430061006C00630020005A006A00
      73000100010001000D000A0045007800700061006E00640041006C006C003100
      010045007800700061006E006400200041006C006C000100010001000D000A00
      43006F006C006C00610070007300650041006C006C003100010043006F006C00
      6C006100700073006500200041006C006C000100010001000D000A0043006C00
      65006100720053006F007200740069006E0067003100010043006C0065006100
      7200200053006F007200740069006E0067000100010001000D000A0043006100
      6E00630065006C0050004600530031000100430061006E00630065006C002000
      2200420020002D002000730022000100010001000D000A00430061006E006300
      65006C0050004600580031000100430061006E00630065006C00200022004200
      20002D002000780022000100010001000D000A00430061006E00630065006C00
      730031000100430061006E00630065006C002000220041004C0020002D002000
      730022000100010001000D000A00430061006E00630065006C00780031000100
      430061006E00630065006C002000220041004C0020002D002000780022000100
      010001000D000A00430061006E00630065006C00450073003100010043006100
      6E00630065006C0020002200450020002D002000730022000100010001000D00
      0A00430061006E00630065006C004500780031000100430061006E0063006500
      6C0020002200450020002D002000780022000100010001000D000A0057004900
      50005400720061006E0073006900740031000100570049005000A44E36650100
      010001000D000A00470061006E00740074004300680061007200740031000100
      470061006E00740074002000430068006100720074000100010001000D000A00
      53007400610072007400540069006D006500310001008B95CB59C07B42660100
      5300740061007200740020005300650063007400010001000D000A0045007800
      70006F0072007400470041004900440061007400610031000100450078007000
      6F00720074002000470041004900200044006100740061000100010001000D00
      0A007400720061006E0073006900740046006C006F00770031000100A44E3665
      416D0B7A0100010001000D000A0041006C006C0053006500770069006E006700
      51004E0073003100010041006C006C00200053006500770069006E0067002000
      51004E0073000100010001000D000A005000720069006E007400540069006300
      6B006500740066006F00720046004A00310001005000720069006E0074002000
      5400690063006B00650074000100010001000D000A0052006500630061006C00
      630075006C0061007400650051004E0031000100520065002D00630061006C00
      630075006C00610074006500200051004E0023000100010001000D000A004300
      6C0061007300730062007900530069007A006500310001004900450020004700
      72006F0075007000200061006E006400200043006C0061007300730020006200
      7900200043006F006C006F0072002F00530069007A0065000100010001000D00
      0A005500500044004900450047005200500061006E00640043004C0053003100
      0100550050004400200049004500470052005000200061006E00640020004300
      4C0053000100010001000D000A00550070006400610074006500490045006400
      61007400610066006F00720051004E0047004100490031000100550070006400
      61007400650020004900450020006400610074006100200066006F0072002000
      51004E0020004700410049000100010001000D000A0050004C0043006E006F00
      740063006F006D0070006C0065007400650064003100010050004C0043002000
      6E006F007400200063006F006D0070006C006500740065006400010001000100
      0D000A004500780070006F007200740074006F0045007800630065006C003100
      0100390031003500200051004E0073000100010001000D000A00500066006F00
      7200530043003100010054005000200066006F00720020005300430001000100
      01000D000A00530061006D0070006C00650043006800650063006B0069006E00
      670031000100530061006D0070006C006500200043006800650063006B006900
      6E0067000100010001000D000A00570061006900740069006E00670066006F00
      72007000610063006B0069006E00670077006900740068006F00750074005000
      44004E0031000100570061006900740069006E006700200066006F0072002000
      7000610063006B0069006E0067002000280077006900740068006F0075007400
      2000500044004E0029000100010001000D000A004E00340001007C763E651F75
      22751C56B6670100490073007300750065002000500072006F00640075006300
      740069006F006E0020004D00610072006B0065007200010001000D000A007300
      68006F007700680069006400650063006C007300310031000100730068006F00
      77002F006800690064006500200063006C00730031000100010001000D000A00
      7500700064006100740065005200410050003400310001005500700064006100
      7400650020005200410050002D0034000100010001000D000A00550070006400
      6100740065004A004B0063006F006C0075006D006E0073003100010055007000
      640061007400650020004A00260026004B00200063006F006C0075006D006E00
      73000100010001000D000A0041004C004500310001003752B06541004C00CA53
      4500447D2B7E08542275CF910100520065006600720065007300680020004100
      4C002000260026002000450020004F0075007400700075007400010001000D00
      0A004E0035000100F466B0657569734F87730100550070006400610074006500
      20004C0042002500010001000D000A0051004E0047004100490031000100056E
      067451004E004700410049000100440065006C00650074006500200051004E00
      2000470041004900010001000D000A0051004E00310001004F554C9851004E00
      01004500720072006F007200200051004E00280073002900010001000D000A00
      45006E0071007500690072007900570046003100010045006E00710075006900
      720079002000570046000100010001000D000A00550070006400610074006500
      4C00420034006E0035003100010055007000640061007400650020004C004200
      34006E0035000100010001000D000A007400690074006C006500300030003100
      01005700650065006B006C007900200051004E0073002000530075006D006D00
      610072007900200066006F00720020005700650065006B002000320032002000
      4F007000740073000100010001000D000A006600740079003000300031000100
      46006100630074006F007200790020000100010001000D000A00700070004C00
      6100620065006C003300010041007300730065006D0062006C00790020000100
      010001000D000A00700070004C006100620065006C0034000100500072006F00
      6A006500630074002000230020000100010001000D000A00700070004C006100
      620065006C003500010057004F002000230020000100010001000D000A007000
      70004C006100620065006C003600010057004F00630020002300200001000100
      01000D000A00700070004C006100620065006C0037000100520057004F002000
      230020000100010001000D000A00700070004C006100620065006C0038000100
      51004E00200023000100010001000D000A007400690074006C00650030003000
      3200010028007300750062006D0069007300730069006F006E0020006D007500
      7300740020006200650020006F006E0020007700650065006B00200032003000
      29000100010001000D000A00700070004C006100620065006C00310001004300
      75007300740020005300740079006C00650020000100010001000D000A007000
      70004C006100620065006C00390001005000480020000100010001000D000A00
      700070004C006100620065006C00310030000100520057004F00200051007400
      790020000100010001000D000A00700070004C006100620065006C0031003100
      010051004E00200051007400790020000100010001000D000A00700070004C00
      6100620065006C0031003200010041007300730065006D0062006C0079002000
      4C0069006E006500200053007400690074006300680069006E00670020005400
      650061006D000100010001000D000A00700070004C006100620065006C003100
      3300010053007500660066006900780020000100010001000D000A0070007000
      4C006100620065006C0031003400010053007500660066006900780020000100
      010001000D000A00700070004C006100620065006C0031003500010053007500
      660066006900780020000100010001000D000A00700070004C00610062006500
      6C003100360001004400650066002E0020004500610063006800200001000100
      01000D000A00700070004C006100620065006C00310037000100530065006300
      740020004F007500740070007500740020000100010001000D000A0070007000
      4C006100620065006C00310038000100540074006C0020005300650063007400
      200048007200730020000100010001000D000A00700070004C00610062006500
      6C0031003900010051004E002000530074006100720074002000440061007400
      650020000100010001000D000A00700070004C006100620065006C0032003000
      010051004E002000540032002000440061007400650020000100010001000D00
      0A00700070004C006100620065006C00320031000100520057004F0020005400
      33002000440061007400650020000100010001000D000A006C00770030003000
      3100010051004E00200053007400610072007400200044006100740065002000
      660072006F006D0020000100010001000D000A00700070004C00610062006500
      6C00320001005000720069006E0074006500640020006F006E003A0020000100
      010001000D000A00700070004C006100620065006C0032003200010050006100
      670065003A0020000100010001000D000A00700070004C006100620065006C00
      3200330001005700730020000100010001000D000A00700070004C0061006200
      65006C003200340001005300410048000100010001000D000A00700070004C00
      6100620065006C00320035000100440065006600610075006C00740020000100
      010001000D000A00700070004C006100620065006C0032003600010043006C00
      72000100010001000D000A00700070004C006100620065006C00320037000100
      43006F006400650020000100010001000D000A00700070004C00610062006500
      6C003200380001004C0069006E0065002000230020000100010001000D000A00
      63007800560069006500770031006C0062006C005F0070006400740001002D00
      0100010001000D000A0063007800560069006500770031006C0062006C005F00
      73006400740001002D000100010001000D000A00630078005600690065007700
      31006C0062006C005F00640069006600660001002D000100010001000D000A00
      63007800560069006500770031006C0062006C005F0061006400740001002D00
      0100010001000D000A0063007800560069006500770031006C0066006C006100
      6700310001002D000100010001000D000A006300780056006900650077003100
      66006C00610067003700310001002D000100010001000D000A00630068006B00
      5F00650078006900740001003E6B1F752375188A04930652906701004E006500
      770020006C0069006E00650027007300200050004C0043002000730065007400
      740069006E00670020006200610073006500640020006F006E00200070006100
      7300740020007000720064006E0020007200650063006F007200640073000100
      01000D000A00630078005600690065007700310064007400330001002D000100
      010001000D000A006300780056006900650077003100610074005F0071000100
      2D000100010001000D000A006300780056006900650077003100610074003300
      5F00770001002D000100010001000D000A006300780056006900650077003100
      61007400330001002D000100010001000D000A00630078005600690065007700
      3100740033005F00610001002D000100010001000D000A006300780056006900
      650077003100620061007400330001002D000100010001000D000A0063007800
      5600690065007700310062007400330001002D000100010001000D000A006300
      780056006900650077003100660063006C005F006100310001002D0001000100
      01000D000A006300780056006900650077003100660063006C005F0061003200
      01002D000100010001000D000A00630078005600690065007700310070006400
      6E005F00780001002D000100010001000D000A00630078005600690065007700
      310062005F0066006C00610067003300310001002D000100010001000D000A00
      630078005600690065007700310062005F006B00730072007100310001006400
      64000100010001000D000A00630078005600690065007700310062005F006B00
      73006A007300010073006500630074000100010001000D000A00630078005600
      690065007700310062005F006B00730072007100010064006400010001000100
      0D000A00630078005600690065007700310062005F0077006300720071000100
      640064000100010001000D000A00630078005600690065007700310043006F00
      6C0075006D006E003100320001002D000100010001000D000A00730068006F00
      7700460069006E006900730068006500640063006F006C0075006D006E007300
      31000100730068006F0077002000460069006E00690073006800650064002000
      63006F006C0075006D006E0073000100010001000D000A005200650066007200
      6500730068006400610074006100660072006F006D0043004F0050006C006F00
      6700310001005200650066007200650073006800200064006100740061002000
      660072006F006D00200043004F0050005F006C006F0067000100010001000D00
      0A00630078005600690065007700310041005F00570043005200510031000100
      640064000100010001000D000A00630078005600690065007700310041005F00
      41004B0053004A005300010073006500630074000100010001000D000A006300
      78005600690065007700310041005F004100570043004A005300010073006500
      630074000100010001000D000A00630078005600690065007700310065005F00
      770063006A0073003100010073006500630074000100010001000D000A006300
      78005600690065007700310043006F006C0075006D006E00370001002D000100
      010001000D000A00630078005600690065007700310043006F006C0075006D00
      6E00380001002D000100010001000D000A006300780056006900650077003100
      43006F006C0075006D006E003900010028006100310029000100010001000D00
      0A00630078005600690065007700310043006F006C0075006D006E0031003000
      010028006100320029000100010001000D000A00630078005600690065007700
      310043006F006C0075006D006E00310031000100280061003300290001000100
      01000D000A00630078005600690065007700310043006F006C0075006D006E00
      310033000100280062003D00610031002D006400310029000100010001000D00
      0A00630078005600690065007700310043006F006C0075006D006E0031003400
      0100280063003D0061002D00640032002B00620029000100010001000D000A00
      630078005600690065007700310043006F006C0075006D006E00310035000100
      28006400310029000100010001000D000A006300780056006900650077003100
      43006F006C0075006D006E003100360001002800640032002900010001000100
      0D000A00630078005600690065007700310043006F006C0075006D006E003100
      370001002D000100010001000D000A0063007800560069006500770031004300
      6F006C0075006D006E003100380001002800650029000100010001000D000A00
      630078005600690065007700310043006F006C0075006D006E00310039000100
      2D000100010001000D000A00630078005600690065007700310043006F006C00
      75006D006E00320030000100280066003D0061002D0065002900010001000100
      0D000A00630078005600690065007700310043006F006C0075006D006E003200
      310001002800670029000100010001000D000A00630078005600690065007700
      310043006F006C0075006D006E00320032000100280068003D0065002B006700
      2D00690029000100010001000D000A00630068006B003100340001008B95A88C
      0763E44E2000280043003100B56B290001005000720064006E0020004B006900
      63006B002D006F0066006600200063006F006D006D0061006E00640020002800
      4300310020007300650067002900010001000D000A00630068006B0031003500
      0100C662786501980100530070006C0069007400200051004E00730001000100
      0D000A00630068006B003100360001006100540033000D4E706076751F675096
      2000280043003300B56B29000100610054003300200075006E00640075006500
      2000640061007900730020006C0069006D006900740020002800430033002000
      7300650067002900010001000D000A00420069007400420074006E0031003100
      010045007800690074000100010001000D000A00420069007400420074006E00
      310034000100500072006F00640075006300740069006F006E00200050007200
      6F00670072006500730073000100010001000D000A0042006900740042007400
      6E00310035000100450020005700730020005700650065006B006C0079002000
      4700410049000100010001000D000A0063007800470072006900640031005600
      690065007700310043006F006C0075006D006E003200360001002D0001000100
      01000D000A006300780047007200690064003100560069006500770031004300
      6F006C0075006D006E003200370001002D000100010001000D000A0063007800
      56006900650077003100660077005F00770064006E0001004400650066002E00
      0100010001000D000A0063007800470072006900640031005600690065007700
      310043006F006C0075006D006E003200390001002A0019001A005E0001000100
      01000D000A006300780047007200690064003100560069006500770031004300
      6F006C0075006D006E003300300001002A0019001A005E000100010001000D00
      0A0063007800470072006900640031005600690065007700310043006F006C00
      75006D006E003300310001002D000100010001000D000A006300780056006900
      65007700310043006F006C0075006D006E003200360001005300650071002E00
      0100010001000D000A0045005200500057004F003100010057004F0001000100
      01000D000A0043006F00700057004F0031000100430057004F00010001000100
      0D000A004C0069006E00650057004F003100010051004E000100010001000D00
      0A00630078005600690065007700310043005300540059004C00450001006900
      6D006100670065000100010001000D000A006300780056006900650077003100
      410043004F004C00010069006D006100670065000100010001000D000A006300
      7800560069006500770031005300430051005400590001007300630072002D00
      19001A00650065006E000100010001000D000A00630078005600690065007700
      3100730063006C0068005F00620073000100450019001A007300630072006500
      65006E000100010001000D000A00630078005600690065007700310065007900
      630001007300630072002D0019001A00650065006E000100010001000D000A00
      630078005600690065007700310066006C006100670033003100610001007300
      630072002D0019001A00650065006E000100010001000D000A00630078005600
      690065007700310043006F006C0075006D006E00320035000100730063007200
      2D0019001A00650065006E000100010001000D000A0063007800560069006500
      7700310050004800490053005A004A0053000100420031000100010001000D00
      0A006300780056006900650077003100530048004A00530001002D0001000100
      01000D000A0063007800560069006500770031005700450045004B0001007700
      6B000100010001000D000A00630078005600690065007700310041005F004B00
      53005200510031000100640064000100010001000D000A006300780056006900
      65007700310041005F004B0053004A0053003100010073006500630074001900
      1A00680072000100010001000D000A0063007800560069006500770031004100
      5F0041004B005300520051000100640064000100010001000D000A0063007800
      5600690065007700310041005F00410057004300520051000100640064000100
      010001000D000A0063007800560069006500770031004B0044004A0053000100
      44006100790019001A0064006900660066000100010001000D000A0063007800
      560069006500770031007400730068006F007000010041004C00010001000100
      0D000A006300780056006900650077003100790073007A006A00730001004300
      31000100010001000D000A0063007800560069006500770031006C006F006300
      6B00630066006B00730001004C006F0063006B0019001A003F00010001000100
      0D000A0063007800560069006500770031007000660073006100680001004600
      0100010001000D000A0063007800560069006500770031006500730061006800
      010045000100010001000D000A00630078005600690065007700310070006600
      78006A007300010046000100010001000D000A00630078005600690065007700
      3100650078006A007300010045000100010001000D000A006300780056006900
      65007700310065006F0070007400710074007900010045000100010001000D00
      0A00630078005600690065007700310070007700730001005000010001000100
      0D000A0063007800560069006500770031006600770073000100460001000100
      01000D000A006300780056006900650077003100650077007300010045000100
      010001000D000A00630078005600690065007700310070007A00620001005000
      0100010001000D000A00630078005600690065007700310066007A0062000100
      46000100010001000D000A00630078005600690065007700310065007A006200
      010045000100010001000D000A00630078005600690065007700310066005F00
      6B0073007200710031000100640064000100010001000D000A00630078005600
      690065007700310066005F006B0073006A007300010073006500630074001900
      1A00680072000100010001000D000A0063007800560069006500770031006500
      5F00770063007200710031000100640064000100010001000D000A0063007800
      5600690065007700310065005F006100770063006A0073000100730065006300
      740019001A00680072000100010001000D000A00630078005600690065007700
      310066005F006B007300720071000100640064000100010001000D000A006300
      78005600690065007700310066005F0077006300720071000100640064000100
      010001000D000A00630078005600690065007700310065005F0061006B007300
      720071000100640064000100010001000D000A00630078005600690065007700
      310065005F00610077006300720071000100640064000100010001000D000A00
      6300780056006900650077003100730063006C0068005F007900620001004400
      33000100010001000D000A006300780056006900650077003100730063006C00
      68005F00770062000100440031002F0045000100010001000D000A0063007800
      56006900650077003100730063006C0068005F00620062000100440032000100
      010001000D000A006300780056006900650077003100730063006C0068005F00
      78006C000100440031000100010001000D000A00630078005600690065007700
      31006400740061000100490045000100010001000D000A006300780056006900
      65007700310064007400610031000100500050004D0043000100010001000D00
      0A00420069007400420074006E00360001002275FD807A7A946A010043006100
      7000610063006900740079002000470041005000010001000D000A0063007800
      5600690065007700310064006900660066005F006D0001005300630068002E00
      0100010001000D000A0063007800560069006500770031006400690066006600
      5F00730001005300630068002E000100010001000D000A004100630063006500
      73007300530061006D0070006C00650051007400790031000100010041006300
      63006500730073002000530061006D0070006C00650020005100740079000100
      01000D000A005000720069006E0074007400690063006B006500740066006F00
      7200620075006C006B00730061006D0070006C00650031000100010050007200
      69006E007400200050006F007300740062006F00780020004D00610072006B00
      200066006F0072002000620075006C006B002000730061006D0070006C006500
      010001000D000A00420069007400420074006E003900010096939A5B78650198
      4B4E8B95CB59E5651F6701004C006F0063006B0065006400200051004E002700
      7300200073007400610072007400200064006400010001000D000A0063006800
      6B00310037000100CD91926378650198606C0100520065002D00730063006800
      2E00200051004E00200050006F006F006C00010001000D000A00630078005600
      690065007700310050004C0049004E004500010041004C002300010001000100
      0D000A00630078005600690065007700310043006F006C0075006D006E003200
      330001002D000100010001000D000A0063007800560069006500770031004300
      6F006C0075006D006E003200340001002D000100010001000D000A0063007800
      67007200640062006E00640063006C006D006E006900650063006C0073005F00
      6E0001002D000100010001000D000A006300780067007200640062006E006400
      63006C006D006E005600690065007700310043006F006C0075006D006E003200
      360001002D000100010001000D000A006300780067007200640062006E006400
      63006C006D006E005600690065007700310043006F006C0075006D006E003200
      370001002D000100010001000D000A006300780067007200640062006E006400
      63006C006D006E005600690065007700310043006F006C0075006D006E003200
      380001002D000100010001000D000A004E003900310035004700410049003100
      010039003100350020004700410049000100010001000D000A00720061006E00
      730069007400530075006D006D00610072007900310001005400720061006E00
      7300690074002000530075006D006D006100720079000100010001000D000A00
      46006900780051004E0031000100460069007800200051004E00230001000100
      01000D000A00630078005600690065007700310043006F006C0075006D006E00
      3200370001002D000100010001000D000A006300780056006900650077003100
      43006F006C0075006D006E003200380001005700490050000100010001000D00
      0A00630078005600690065007700310043006F006C0075006D006E0032003900
      01005300650077006E000100010001000D000A00630078005600690065007700
      310043006F006C0075006D006E00330030000100540074006C0019001A002500
      0100010001000D000A0046006900780051004E00470041004900640064003100
      0100460069007800200051004E00200047004100490020006400640001000100
      01000D000A0063007800560069006500770031004C00540043005F0052004D00
      01002D000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A00740062006C00730068006500640075006C00650050004C0049004E004500
      010050004C0049004E0045000100010001000D000A00740062006C0073006800
      6500640075006C00650053004500510001005300450051000100010001000D00
      0A00740062006C00730068006500640075006C006500430046004B0053005200
      51000100430046004B005300520051000100010001000D000A00740062006C00
      730068006500640075006C006500430046004B0053004A005300010043004600
      4B0053004A0053000100010001000D000A00740062006C007300680065006400
      75006C0065004A005F004E004F0001004A005F004E004F000100010001000D00
      0A00740062006C00730068006500640075006C0065004A0032005F004A004F00
      420001004A0032005F004A004F0042000100010001000D000A00740062006C00
      730068006500640075006C0065004100520054004E004F000100410052005400
      4E004F000100010001000D000A00740062006C00730068006500640075006C00
      6500410043004F004C000100410043004F004C000100010001000D000A007400
      62006C00730068006500640075006C0065005700450045004B00010057004500
      45004B000100010001000D000A00740062006C00730068006500640075006C00
      650050004C0041004E005F004400410054004500010050004C0041004E005F00
      44004100540045000100010001000D000A00740062006C007300680065006400
      75006C0065004B0048005A004C0001004B0048005A004C000100010001000D00
      0A00740062006C00730068006500640075006C0065004F004B00480052005100
      01004F004B004800520051000100010001000D000A00740062006C0073006800
      6500640075006C00650053004300510054005900010053004300510054005900
      0100010001000D000A00740062006C00730068006500640075006C0065005400
      4D005500010054004D0055000100010001000D000A00740062006C0073006800
      6500640075006C00650054005200530001005400520053000100010001000D00
      0A00740062006C00730068006500640075006C006500460059004C0001004600
      59004C000100010001000D000A00740062006C00730068006500640075006C00
      650058004A005300010058004A0053000100010001000D000A00740062006C00
      730068006500640075006C0065004A0058004A00530001004A0058004A005300
      0100010001000D000A00740062006C00730068006500640075006C0065005A00
      4A00530001005A004A0053000100010001000D000A00740062006C0073006800
      6500640075006C0065004A0048004C0001004A0048004C000100010001000D00
      0A00740062006C00730068006500640075006C00650043004600570043005200
      510001004300460057004300520051000100010001000D000A00740062006C00
      730068006500640075006C006500590051004C00430052005100010059005100
      4C004300520051000100010001000D000A00740062006C007300680065006400
      75006C0065005300430054004400010053004300540044000100010001000D00
      0A00740062006C00730068006500640075006C00650050004800490053005A00
      4A005300010050004800490053005A004A0053000100010001000D000A007400
      62006C00730068006500640075006C0065005A0048004A00530001005A004800
      4A0053000100010001000D000A00740062006C00730068006500640075006C00
      6500420043004A0053000100420043004A0053000100010001000D000A007400
      62006C00730068006500640075006C0065005000440034000100500044003400
      0100010001000D000A00740062006C00730068006500640075006C0065005300
      43004C0048004A0053000100530043004C0048004A0053000100010001000D00
      0A00740062006C00730068006500640075006C0065005A004B00540044000100
      5A004B00540044000100010001000D000A00740062006C007300680065006400
      75006C0065004A0048005200530001004A004800520053000100010001000D00
      0A00740062006C00730068006500640075006C006500590053004A0048004C00
      0100590053004A0048004C000100010001000D000A00740062006C0073006800
      6500640075006C0065004400420058004C0001004400420058004C0001000100
      01000D000A00740062006C00730068006500640075006C006500500044003800
      01005000440038000100010001000D000A00740062006C007300680065006400
      75006C00650042005A004A005300010042005A004A0053000100010001000D00
      0A00740062006C00730068006500640075006C00650054005A004C0043005200
      5100010054005A004C004300520051000100010001000D000A00740062006C00
      730068006500640075006C00650046004C00410047003100010046004C004100
      470031000100010001000D000A00740062006C00730068006500640075006C00
      650046004C00410047003200010046004C004100470032000100010001000D00
      0A00740062006C00730068006500640075006C00650046004C00410047003300
      010046004C004100470033000100010001000D000A00740062006C0073006800
      6500640075006C00650046004C00410047003400010046004C00410047003400
      0100010001000D000A00740062006C00730068006500640075006C0065005200
      510058004300010052005100580043000100010001000D000A00740062006C00
      730068006500640075006C006500510052004C00430052005100010051005200
      4C004300520051000100010001000D000A00740062006C007300680065006400
      75006C0065004B0044004A00530001004B0044004A0053000100010001000D00
      0A00740062006C00730068006500640075006C0065005700450045004B003100
      01005700450045004B0031000100010001000D000A00740062006C0073006800
      6500640075006C0065004F00520044004C0049004E00450001004F0052004400
      4C0049004E0045000100010001000D000A00740062006C007300680065006400
      75006C0065004600590046005300010046005900460053000100010001000D00
      0A00740062006C00730068006500640075006C00650043004600570043004A00
      5300010043004600570043004A0053000100010001000D000A00740062006C00
      730068006500640075006C00650053004F0050004E004F00010053004F005000
      4E004F000100010001000D000A00740062006C00730068006500640075006C00
      650046004C00410047003500010046004C004100470035000100010001000D00
      0A00740062006C00730068006500640075006C00650043004B00540053000100
      43004B00540053000100010001000D000A00740062006C007300680065006400
      75006C00650059005A004800010059005A0048000100010001000D000A007400
      62006C00730068006500640075006C0065005800530001005800530001000100
      01000D000A00740062006C00730068006500640075006C006500540053004800
      4F00500001005400530048004F0050000100010001000D000A00740062006C00
      730068006500640075006C006500500046004C00410047003100010050004600
      4C004100470031000100010001000D000A00740062006C007300680065006400
      75006C00650043005300540059004C004500010043005300540059004C004500
      0100010001000D000A00740062006C00730068006500640075006C0065004400
      42005A0053000100440042005A0053000100010001000D000A00740062006C00
      730068006500640075006C00650046004C00410047003600010046004C004100
      470036000100010001000D000A00740062006C00730068006500640075006C00
      65004600430043005300010046004300430053000100010001000D000A007400
      62006C00730068006500640075006C0065004C00530054005200530001004C00
      53005400520053000100010001000D000A00740062006C007300680065006400
      75006C006500540050004C0041004E0054000100540050004C0041004E005400
      0100010001000D000A00740062006C00730068006500640075006C0065005300
      48004A0053000100530048004A0053000100010001000D000A00740062006C00
      730068006500640075006C006500510059004A0053000100510059004A005300
      0100010001000D000A00740062006C00730068006500640075006C0065005000
      4C0041004E005F005700010050004C0041004E005F0057000100010001000D00
      0A00740062006C00730068006500640075006C006500590051005F0057000100
      590051005F0057000100010001000D000A00740062006C007300680065006400
      75006C00650054005A005F005700010054005A005F0057000100010001000D00
      0A00740062006C00730068006500640075006C006500520057004F0001005200
      57004F000100010001000D000A00740062006C00730068006500640075006C00
      650052004900440001005200490044000100010001000D000A00740062006C00
      730068006500640075006C006500480043000100480043000100010001000D00
      0A00740062006C00730068006500640075006C0065004C004500410052004E00
      01004C004500410052004E000100010001000D000A00740062006C0073006800
      6500640075006C0065004C0046004C004100470001004C0046004C0041004700
      0100010001000D000A00740062006C00730068006500640075006C0065004E00
      530048004A00530001004E00530048004A0053000100010001000D000A007400
      62006C00730068006500640075006C00650055004E00420041004C0001005500
      4E00420041004C000100010001000D000A00740062006C007300680065006400
      75006C00650058004300310001005800430031000100010001000D000A007400
      62006C00730068006500640075006C0065005800430032000100580043003200
      0100010001000D000A00740062006C00730068006500640075006C0065005800
      4300330001005800430033000100010001000D000A00740062006C0073006800
      6500640075006C00650053004A0052005300010053004A005200530001000100
      01000D000A00740062006C00730068006500640075006C00650053004A005900
      4300010053004A00590043000100010001000D000A00740062006C0073006800
      6500640075006C00650043004B004A005300010043004B004A00530001000100
      01000D000A00740062006C00730068006500640075006C006500470052005000
      01004700520050000100010001000D000A00740062006C007300680065006400
      75006C0065005200510058004300310001005200510058004300310001000100
      01000D000A00740062006C00730068006500640075006C006500510054005900
      01005100540059000100010001000D000A00740062006C007300680065006400
      75006C00650054004200550001005400420055000100010001000D000A007400
      62006C00730068006500640075006C006500430050004C0041004E0001004300
      50004C0041004E000100010001000D000A00740062006C007300680065006400
      75006C00650058004300340001005800430034000100010001000D000A007400
      62006C00730068006500640075006C0065004C00540043005F00440001004C00
      540043005F0044000100010001000D000A00740062006C007300680065006400
      75006C0065004C00540043005F00520001004C00540043005F00520001000100
      01000D000A00740062006C00730068006500640075006C0065004C0054004300
      5F00410001004C00540043005F0041000100010001000D000A00740062006C00
      730068006500640075006C0065004C00540043005F0052004D0001004C005400
      43005F0052004D000100010001000D000A00740062006C007300680065006400
      75006C0065004C00540043005F004B0053005200510001004C00540043005F00
      4B005300520051000100010001000D000A00740062006C007300680065006400
      75006C0065004C00540043005F004B0053004A00530001004C00540043005F00
      4B0053004A0053000100010001000D000A00740062006C007300680065006400
      75006C0065004400530051004E0001004400530051004E000100010001000D00
      0A00740062006C00730068006500640075006C00650046004C00410047003700
      010046004C004100470037000100010001000D000A00740062006C0073006800
      6500640075006C006500430057004F000100430057004F000100010001000D00
      0A00740062006C00730068006500640075006C0065004900450043004C005300
      01004900450043004C0053000100010001000D000A00740062006C0073006800
      6500640075006C0065004900450043004C005300310001004900450043004C00
      530031000100010001000D000A00740062006C00730068006500640075006C00
      650057004C005F004A00480044005400010057004C005F004A00480044005400
      0100010001000D000A00740062006C00730068006500640075006C0065005700
      4C005F004A0048005000010057004C005F004A00480050000100010001000D00
      0A00740062006C00730068006500640075006C00650057004C005F0057004300
      010057004C005F00570043000100010001000D000A00740062006C0073006800
      6500640075006C00650057004C005F00570043005000010057004C005F005700
      430050000100010001000D000A00740062006C00730068006500640075006C00
      6500500042005F004A004800440054000100500042005F004A00480044005400
      0100010001000D000A00740062006C00730068006500640075006C0065005000
      42005F00570043000100500042005F00570043000100010001000D000A007400
      62006C00730068006500640075006C0065004B0048005A004C00310001004B00
      48005A004C0031000100010001000D000A00740062006C007300680065006400
      75006C006500410046004C00410047000100410046004C004100470001000100
      01000D000A00740062006C00730068006500640075006C006500410057004600
      01004100570046000100010001000D000A00740062006C007300680065006400
      75006C00650045005700460001004500570046000100010001000D000A007400
      62006C00730068006500640075006C0065004100530041004800010041005300
      410048000100010001000D000A00740062006C00730068006500640075006C00
      65004500530041004800010045005300410048000100010001000D000A007400
      62006C00730068006500640075006C0065004D0041004E00540042004C000100
      4D0041004E00540042004C000100010001000D000A00740062006C0073006800
      6500640075006C00650047005A005700010047005A0057000100010001000D00
      0A00740062006C00730068006500640075006C0065004C0042004C0049004E00
      470001004C0042004C0049004E0047000100010001000D000A00740062006C00
      730068006500640075006C006500590053005A004A0053000100590053005A00
      4A0053000100010001000D000A00740062006C00730068006500640075006C00
      6500530043004C0048005F00420053000100530043004C0048005F0042005300
      0100010001000D000A00740062006C00730068006500640075006C0065005300
      43004C0048005F004C0048000100530043004C0048005F004C00480001000100
      01000D000A00740062006C00730068006500640075006C00650053004A005200
      53005F004100010053004A00520053005F0041000100010001000D000A007400
      62006C00730068006500640075006C00650053004A00590043005F0041000100
      53004A00590043005F0041000100010001000D000A00740062006C0073006800
      6500640075006C0065004C004F0043004B00430046004B00530001004C004F00
      43004B00430046004B0053000100010001000D000A00740062006C0073006800
      6500640075006C00650043005400310001004300540031000100010001000D00
      0A00740062006C00730068006500640075006C00650043005400330001004300
      540033000100010001000D000A00740062006C00730068006500640075006C00
      65004300540032005F00310001004300540032005F0031000100010001000D00
      0A00740062006C00730068006500640075006C0065004300540032005F003200
      01004300540032005F0032000100010001000D000A00740062006C0073006800
      6500640075006C0065004100540033005F00410001004100540033005F004100
      0100010001000D000A00740062006C00730068006500640075006C0065005000
      44004E005F0041000100500044004E005F0041000100010001000D000A007400
      62006C00730068006500640075006C0065005000460053004100480001005000
      46005300410048000100010001000D000A00740062006C007300680065006400
      75006C0065005000460058004A00530001005000460058004A00530001000100
      01000D000A00740062006C00730068006500640075006C00650041004C005800
      4A005300010041004C0058004A0053000100010001000D000A00740062006C00
      730068006500640075006C006500450058004A0053000100450058004A005300
      0100010001000D000A00740062006C00730068006500640075006C0065005000
      4600450046004600310001005000460045004600460031000100010001000D00
      0A00740062006C00730068006500640075006C00650050004600450046004600
      320001005000460045004600460032000100010001000D000A00740062006C00
      730068006500640075006C006500450045004600460031000100450045004600
      460031000100010001000D000A00740062006C00730068006500640075006C00
      6500450045004600460032000100450045004600460032000100010001000D00
      0A00740062006C00730068006500640075006C006500500046004F0050005400
      5100540059000100500046004F00500054005100540059000100010001000D00
      0A00740062006C00730068006500640075006C00650041004C004F0050005400
      510054005900010041004C004F00500054005100540059000100010001000D00
      0A00740062006C00730068006500640075006C00650045004F00500054005100
      54005900010045004F00500054005100540059000100010001000D000A007400
      62006C00730068006500640075006C00650054004F0050005400510054005900
      010054004F00500054005100540059000100010001000D000A00740062006C00
      730068006500640075006C006500500057005300010050005700530001000100
      01000D000A00740062006C00730068006500640075006C006500460057005300
      01004600570053000100010001000D000A00740062006C007300680065006400
      75006C00650045005700530001004500570053000100010001000D000A007400
      62006C00730068006500640075006C00650050005A004200010050005A004200
      0100010001000D000A00740062006C00730068006500640075006C0065004600
      5A004200010046005A0042000100010001000D000A00740062006C0073006800
      6500640075006C00650045005A004200010045005A0042000100010001000D00
      0A00740062006C00730068006500640075006C00650050004600520053005F00
      4100010050004600520053005F0041000100010001000D000A00740062006C00
      730068006500640075006C00650050004600520053005F004100310001005000
      4600520053005F00410031000100010001000D000A00740062006C0073006800
      6500640075006C00650050004600520053000100500046005200530001000100
      01000D000A00740062006C00730068006500640075006C006500450052005300
      5F004100310001004500520053005F00410031000100010001000D000A007400
      62006C00730068006500640075006C0065004500520053000100450052005300
      0100010001000D000A00740062006C00730068006500640075006C0065005400
      54004C00520053005F0041000100540054004C00520053005F00410001000100
      01000D000A00740062006C00730068006500640075006C006500540054004C00
      520053005F00410031000100540054004C00520053005F004100310001000100
      01000D000A00740062006C00730068006500640075006C006500540054004C00
      520053000100540054004C00520053000100010001000D000A00740062006C00
      730068006500640075006C00650050004600590043005F004100010050004600
      590043005F0041000100010001000D000A00740062006C007300680065006400
      75006C00650050004600590043005F0041003100010050004600590043005F00
      410031000100010001000D000A00740062006C00730068006500640075006C00
      65005000460059004300010050004600590043000100010001000D000A007400
      62006C00730068006500640075006C0065004500590043005F00410001004500
      590043005F0041000100010001000D000A00740062006C007300680065006400
      75006C0065004500590043005F004100310001004500590043005F0041003100
      0100010001000D000A00740062006C00730068006500640075006C0065004500
      5900430001004500590043000100010001000D000A00740062006C0073006800
      6500640075006C006500540054004C00590043005F0041000100540054004C00
      590043005F0041000100010001000D000A00740062006C007300680065006400
      75006C006500540054004C00590043005F00410031000100540054004C005900
      43005F00410031000100010001000D000A00740062006C007300680065006400
      75006C006500540054004C00590043000100540054004C005900430001000100
      01000D000A00740062006C00730068006500640075006C006500590053004400
      5800010059005300440058000100010001000D000A00740062006C0073006800
      6500640075006C0065005900530058004C0001005900530058004C0001000100
      01000D000A00740062006C00730068006500640075006C00650052004A005800
      4C005F004100010052004A0058004C005F0041000100010001000D000A007400
      62006C00730068006500640075006C00650052004A0058004C00010052004A00
      58004C000100010001000D000A00740062006C00730068006500640075006C00
      6500500046005F004B005300520051000100500046005F004B00530052005100
      0100010001000D000A00740062006C00730068006500640075006C0065005000
      46005F004B0053004A0053000100500046005F004B0053004A00530001000100
      01000D000A00740062006C00730068006500640075006C00650045005F004B00
      530052005100010045005F004B005300520051000100010001000D000A007400
      62006C00730068006500640075006C00650045005F004B0053004A0053000100
      45005F004B0053004A0053000100010001000D000A00740062006C0073006800
      6500640075006C006500500046005F0057004300520051000100500046005F00
      57004300520051000100010001000D000A00740062006C007300680065006400
      75006C006500500046005F00570043004A0053000100500046005F0057004300
      4A0053000100010001000D000A00740062006C00730068006500640075006C00
      650045005F005700430052005100010045005F00570043005200510001000100
      01000D000A00740062006C00730068006500640075006C00650045005F005700
      43004A005300010045005F00570043004A0053000100010001000D000A007400
      62006C00730068006500640075006C006500530043004C0048005F0059004200
      0100530043004C0048005F00590042000100010001000D000A00740062006C00
      730068006500640075006C006500530043004C0048005F005700420001005300
      43004C0048005F00570042000100010001000D000A00740062006C0073006800
      6500640075006C006500530043004C0048005F00420042000100530043004C00
      48005F00420042000100010001000D000A00740062006C007300680065006400
      75006C00650044005400410001004400540041000100010001000D000A007400
      62006C00730068006500640075006C006500530043004C0048005F0058004C00
      0100530043004C0048005F0058004C000100010001000D000A00740062006C00
      730068006500640075006C0065004C004F0043004B0043004600570043000100
      4C004F0043004B0043004600570043000100010001000D000A00740062006C00
      730068006500640075006C00650042005A004C00010042005A004C0001000100
      01000D000A00740062006C00730068006500640075006C0065004A004A004C00
      01004A004A004C000100010001000D000A00740062006C007300680065006400
      75006C00650046004C0041004700330031005000010046004C00410047003300
      310050000100010001000D000A00740062006C00730068006500640075006C00
      650046004C0041004700330031004100010046004C0041004700330031004100
      0100010001000D000A00740062006C00730068006500640075006C0065004600
      4C0041004700330031004500010046004C004100470033003100450001000100
      01000D000A00740062006C00730068006500640075006C00650046004C004100
      4700330032005000010046004C00410047003300320050000100010001000D00
      0A00740062006C00730068006500640075006C00650046004C00410047003300
      32004100010046004C00410047003300320041000100010001000D000A007400
      62006C00730068006500640075006C00650046004C0041004700330032004500
      010046004C00410047003300320045000100010001000D000A00740062006C00
      730068006500640075006C006500500049005100540059000100500049005100
      540059000100010001000D000A00740062006C00730068006500640075006C00
      6500500046005100540059000100500046005100540059000100010001000D00
      0A00740062006C00730068006500640075006C00650053005100540059003100
      0100530051005400590031000100010001000D000A00740062006C0073006800
      6500640075006C00650053005100540059000100530051005400590001000100
      01000D000A00740062006C00730068006500640075006C006500420051005400
      5900010042005100540059000100010001000D000A00740062006C0073006800
      6500640075006C00650042005100540059003100010042005100540059003100
      0100010001000D000A00740062006C00730068006500640075006C0065004100
      4C005F005700430052005100010041004C005F00570043005200510001000100
      01000D000A00740062006C00730068006500640075006C00650041004C005F00
      570043004A005300010041004C005F00570043004A0053000100010001000D00
      0A00740062006C00730068006500640075006C00650051004E00460001005100
      4E0046000100010001000D000A00740062006C00730068006500640075006C00
      650046004C0041004700340030003100010046004C0041004700340030003100
      0100010001000D000A00740062006C00730068006500640075006C0065005900
      51004C0043005200510031000100590051004C00430052005100310001000100
      01000D000A00740062006C00730068006500640075006C006500510052005800
      4300010051005200580043000100010001000D000A00740062006C0073006800
      6500640075006C00650044005400410031000100440054004100310001000100
      01000D000A00740062006C00730068006500640075006C006500520053005800
      430031000100520053005800430031000100010001000D000A00740062006C00
      730068006500640075006C006500520053005800430032000100520053005800
      430032000100010001000D000A00740062006C00730068006500640075006C00
      6500590043005800430031000100590043005800430031000100010001000D00
      0A00740062006C00730068006500640075006C00650059004300580043003200
      0100590043005800430032000100010001000D000A00740062006C0073006800
      6500640075006C00650050005200540057004F00010050005200540057004F00
      0100010001000D000A00740062006C00730068006500640075006C0065007000
      66005F00730062000100700066005F00730062000100010001000D000A007400
      62006C00730068006500640075006C006500500046005F004200510054005900
      0100500046005F0042005100540059000100010001000D000A00740062006C00
      730068006500640075006C006500500046005F00460051005400590001005000
      46005F0046005100540059000100010001000D000A00740062006C0073006800
      6500640075006C00650054003200510054005900010054003200510054005900
      0100010001000D000A00740062006C00730068006500640075006C0065004C00
      42004C005F005000540001004C0042004C005F00500054000100010001000D00
      0A00740062006C00730068006500640075006C0065004C0042004C005F005000
      4400540001004C0042004C005F005000440054000100010001000D000A007400
      62006C00730068006500640075006C0065004C0042004C005F00530044005400
      01004C0042004C005F005300440054000100010001000D000A00740062006C00
      730068006500640075006C0065004C0042004C005F0044004900460046000100
      4C0042004C005F0044004900460046000100010001000D000A00740062006C00
      730068006500640075006C0065004C0042004C005F0041004400540001004C00
      42004C005F004100440054000100010001000D000A00740062006C0073006800
      6500640075006C00650044005400330001004400540033000100010001000D00
      0A00740062006C00730068006500640075006C006500410054005F0041000100
      410054005F0041000100010001000D000A00740062006C007300680065006400
      75006C0065004100540033005F00570001004100540033005F00570001000100
      01000D000A00740062006C00730068006500640075006C006500410054003300
      01004100540033000100010001000D000A00740062006C007300680065006400
      75006C006500540033005F0041000100540033005F0041000100010001000D00
      0A00740062006C00730068006500640075006C00650042004100540033000100
      42004100540033000100010001000D000A00740062006C007300680065006400
      75006C00650042005400330001004200540033000100010001000D000A007400
      62006C00730068006500640075006C006500460043004C005F00410031000100
      460043004C005F00410031000100010001000D000A00740062006C0073006800
      6500640075006C006500460043004C005F00410032000100460043004C005F00
      410032000100010001000D000A00740062006C00730068006500640075006C00
      6500500044004E005F0058000100500044004E005F0058000100010001000D00
      0A00740062006C00730068006500640075006C00650042005F004B0053005200
      51003100010042005F004B0053005200510031000100010001000D000A007400
      62006C00730068006500640075006C00650042005F0046004C00410047003300
      3100010042005F0046004C0041004700330031000100010001000D000A007400
      62006C00730068006500640075006C00650042005F004B005300520051000100
      42005F004B005300520051000100010001000D000A00740062006C0073006800
      6500640075006C00650042005F004B0053004A005300010042005F004B005300
      4A0053000100010001000D000A00740062006C00730068006500640075006C00
      650042005F005700430052005100010042005F00570043005200510001000100
      01000D000A00740062006C00730068006500640075006C00650046005F004B00
      5300520051003100010046005F004B0053005200510031000100010001000D00
      0A00740062006C00730068006500640075006C00650046005F004B0053005200
      5100010046005F004B005300520051000100010001000D000A00740062006C00
      730068006500640075006C00650046005F004B0053004A005300010046005F00
      4B0053004A0053000100010001000D000A00740062006C007300680065006400
      75006C00650046005F005700430052005100010046005F005700430052005100
      0100010001000D000A00740062006C00730068006500640075006C0065004100
      5F004B00530057004B00010041005F004B00530057004B000100010001000D00
      0A00740062006C00730068006500640075006C00650041005F004B0053005200
      51003100010041005F004B0053005200510031000100010001000D000A007400
      62006C00730068006500640075006C00650041005F004B0053004A0053003100
      010041005F004B0053004A00530031000100010001000D000A00740062006C00
      730068006500640075006C00650041005F005700430052005100310001004100
      5F00570043005200510031000100010001000D000A00740062006C0073006800
      6500640075006C00650041005F0041004B00530052005100010041005F004100
      4B005300520051000100010001000D000A00740062006C007300680065006400
      75006C00650041005F0041004B0053004A005300010041005F0041004B005300
      4A0053000100010001000D000A00740062006C00730068006500640075006C00
      650041005F0041005700430052005100010041005F0041005700430052005100
      0100010001000D000A00740062006C00730068006500640075006C0065004100
      5F004100570043004A005300010041005F004100570043004A00530001000100
      01000D000A00740062006C00730068006500640075006C00650045005F005700
      4300520051003100010045005F00570043005200510031000100010001000D00
      0A00740062006C00730068006500640075006C00650045005F00570043004A00
      53003100010045005F00570043004A00530031000100010001000D000A007400
      62006C00730068006500640075006C00650045005F0041004B00530052005100
      010045005F0041004B005300520051000100010001000D000A00740062006C00
      730068006500640075006C00650045005F004100570043005200510001004500
      5F00410057004300520051000100010001000D000A00740062006C0073006800
      6500640075006C00650045005F004100570043004A005300010045005F004100
      570043004A0053000100010001000D000A00740062006C007300680065006400
      75006C00650049005F004E004F00010049005F004E004F000100010001000D00
      0A00740062006C00730068006500640075006C0065004900540045004D005F00
      4E004F0001004900540045004D005F004E004F000100010001000D000A007400
      62006C00730068006500640075006C0065004900540045004D005F004C004400
      540001004900540045004D005F004C00440054000100010001000D000A007400
      62006C00730068006500640075006C0065004900540045004D005F0052004400
      540001004900540045004D005F005200440054000100010001000D000A007400
      62006C00730068006500640075006C0065004900540045004D005F0041004400
      540001004900540045004D005F004100440054000100010001000D000A007400
      62006C00730068006500640075006C0065004900540045004D005F004C004400
      49004600460001004900540045004D005F004C00440049004600460001000100
      01000D000A00740062006C00730068006500640075006C006500490054004500
      4D005F005600440049004600460001004900540045004D005F00560044004900
      460046000100010001000D000A00740062006C00730068006500640075006C00
      650041005F004C0044005400010041005F004C00440054000100010001000D00
      0A00740062006C00730068006500640075006C00650045005F0046004C004100
      470033003100010045005F0046004C0041004700330031000100010001000D00
      0A00740062006C00730068006500640075006C0065004900540045004D005F00
      4500440049004600460001004900540045004D005F0045004400490046004600
      0100010001000D000A00740062006C00730068006500640075006C0065004C00
      4100530054005F00540054004C0001004C004100530054005F00540054004C00
      0100010001000D000A00740062006C00730068006500640075006C0065004900
      540045004D005F0046004D0001004900540045004D005F0046004D0001000100
      01000D000A00740062006C00730068006500640075006C006500490054004500
      4D005F004400540001004900540045004D005F00440054000100010001000D00
      0A00740062006C00730068006500640075006C0065005300410048005F005400
      54004C0001005300410048005F00540054004C000100010001000D000A007400
      62006C00730068006500640075006C0065005300410048005F00540054004C00
      570001005300410048005F00540054004C0057000100010001000D000A007400
      62006C00730068006500640075006C0065005300410048005F00540054004C00
      510001005300410048005F00540054004C0051000100010001000D000A007400
      62006C00730068006500640075006C0065005300410048005F00420001005300
      410048005F0042000100010001000D000A00740062006C007300680065006400
      75006C0065005300410048005F004200570001005300410048005F0042005700
      0100010001000D000A00740062006C00730068006500640075006C0065005300
      410048005F004200510001005300410048005F00420051000100010001000D00
      0A00740062006C00730068006500640075006C00650044004900460046005F00
      4C0042004C00010044004900460046005F004C0042004C000100010001000D00
      0A00740062006C00730068006500640075006C00650044004500530054005F00
      510054005900010044004500530054005F005100540059000100010001000D00
      0A00740062006C00730068006500640075006C0065004C004F0043004B005F00
      4400540001004C004F0043004B005F00440054000100010001000D000A007400
      62006C00730068006500640075006C0065004C004F0043004B005F0047004100
      500001004C004F0043004B005F004700410050000100010001000D000A007400
      62006C00730068006500640075006C00650044004900460046005F004D000100
      44004900460046005F004D000100010001000D000A00740062006C0073006800
      6500640075006C00650044004900460046005F00530001004400490046004600
      5F0053000100010001000D000A00740062006C00730068006500640075006C00
      6500450058005F00410050000100450058005F00410050000100010001000D00
      0A00740062006C00730068006500640075006C0065004900450043004C005300
      5F004E0001004900450043004C0053005F004E000100010001000D000A007400
      62006C00730068006500640075006C00650044004900460046005F0050004100
      4B00010044004900460046005F00500041004B000100010001000D000A007400
      62006C00730068006500640075006C00650044004900460046005F0052004500
      4700010044004900460046005F005200450047000100010001000D000A007400
      62006C00730068006500640075006C00650044004900460046005F0044004400
      5400010044004900460046005F004400440054000100010001000D000A007400
      62006C00730068006500640075006C00650057004C005F004600010057004C00
      5F0046000100010001000D000A00740062006C00730068006500640075006C00
      6500530050005F0046000100530050005F0046000100010001000D000A007400
      62006C00730068006500640075006C006500530050005F005300540001005300
      50005F00530054000100010001000D000A00740062006C007300680065006400
      75006C006500660077005F00770064006E000100660077005F00770064006E00
      0100010001000D000A00740062006C00730068006500640075006C0065004300
      57004F004E004F0031000100430057004F004E004F0031000100010001000D00
      0A00740062006C00730068006500640075006C0065004C0049004E0045005F00
      53004500510001004C0049004E0045005F005300450051000100010001000D00
      0A00740062006C00730068006500640075006C0065004C004B005F0053003100
      01004C004B005F00530031000100010001000D000A00740062006C0073006800
      6500640075006C00650042005F0053003100010042005F005300310001000100
      01000D000A00740062006C00730068006500640075006C00650046005F005300
      3100010046005F00530031000100010001000D000A00740062006C0073006800
      6500640075006C00650045005F0053003100010045005F005300310001000100
      01000D000A00740062006C00730068006500640075006C006500540054004C00
      5F00530031000100540054004C005F00530031000100010001000D000A007400
      62006C00730068006500640075006C006500540054004C005F00530032000100
      540054004C005F00530032000100010001000D000A00740062006C0073006800
      6500640075006C006500430057004F005F004E000100430057004F005F004E00
      0100010001000D000A00740062006C00730068006500640075006C0065005300
      4800500054005F00420041004C00010053004800500054005F00420041004C00
      0100010001000D000A00740062006C00730068006500640075006C0065005300
      4800500054005F0042003100010053004800500054005F004200310001000100
      01000D000A00740062006C00730068006500640075006C006500530048005000
      54005F0042003200010053004800500054005F00420032000100010001000D00
      0A00740062006C00730068006500640075006C00650053004800500054005F00
      42005000010053004800500054005F00420050000100010001000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      540077006F0072006B0073006800650065007400310001005400610068006F00
      6D00610001005400610068006F006D006100010001000D000A00500061006E00
      65006C00310001005400610068006F006D00610001005400610068006F006D00
      6100010001000D000A00420069007400420074006E0031000100540061006800
      6F006D00610001005400610068006F006D006100010001000D000A0042006900
      7400420074006E00320001005400610068006F006D0061000100540061006800
      6F006D006100010001000D000A00420069007400420074006E00330001005400
      610068006F006D00610001005400610068006F006D006100010001000D000A00
      420069007400420074006E00340001005400610068006F006D00610001005400
      610068006F006D006100010001000D000A00420069007400420074006E003500
      01005400610068006F006D00610001005400610068006F006D00610001000100
      0D000A00420069007400420074006E00370001005400610068006F006D006100
      01005400610068006F006D006100010001000D000A0042006900740042007400
      6E00380001005400610068006F006D00610001005400610068006F006D006100
      010001000D000A00420069007400420074006E00310030000100540061006800
      6F006D00610001005400610068006F006D006100010001000D000A0042006900
      7400420074006E003100320001005400610068006F006D006100010054006100
      68006F006D006100010001000D000A0063007800470072006900640031000100
      5400610068006F006D00610001005400610068006F006D006100010001000D00
      0A00630078005300740079006C006500310001005400610068006F006D006100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C006500320001005400610068006F006D00610001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003400010054006100
      68006F006D00610001005400610068006F006D006100010001000D000A006300
      78005300740079006C006500350001005400610068006F006D00610001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      360001005400610068006F006D00610001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500370001005400610068006F00
      6D00610001005400610068006F006D006100010001000D000A00630078005300
      740079006C006500330001005400610068006F006D0061000100540061006800
      6F006D006100010001000D000A007400690074006C0065003000300031000100
      5400610068006F006D00610001005400610068006F006D006100010001000D00
      0A0066007400790030003000310001005400610068006F006D00610001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      330001005400610068006F006D00610001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00340001005400610068006F00
      6D00610001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00350001005400610068006F006D0061000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0036000100
      5400610068006F006D00610001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C00370001005400610068006F006D006100
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00380001005400610068006F006D00610001005400610068006F006D00
      6100010001000D000A007400690074006C006500300030003200010054006100
      68006F006D00610001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00310001005400610068006F006D00610001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      390001005400610068006F006D00610001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310030000100540061006800
      6F006D00610001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003100310001005400610068006F006D00610001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3100320001005400610068006F006D00610001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003300010054006100
      68006F006D00610001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003100340001005400610068006F006D0061000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C003100350001005400610068006F006D00610001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100360001005400
      610068006F006D00610001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C003100370001005400610068006F006D006100
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003100380001005400610068006F006D00610001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310039000100
      5400610068006F006D00610001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003200300001005400610068006F006D00
      610001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C003200310001005400610068006F006D0061000100540061006800
      6F006D006100010001000D000A006C0077003000300031000100540061006800
      6F006D00610001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00320001005400610068006F006D006100010054006100
      68006F006D006100010001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C006500310001005400610068006F006D006100
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003200320001005400610068006F006D00610001005400610068006F00
      6D006100010001000D000A0070007000530079007300740065006D0056006100
      72006900610062006C006500320001005400610068006F006D00610001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3200330001005400610068006F006D00610001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0032003400010054006100
      68006F006D00610001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003200350001005400610068006F006D0061000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C003200360001005400610068006F006D00610001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003200370001005400
      610068006F006D00610001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C003200380001005400610068006F006D006100
      01005400610068006F006D006100010001000D000A0070007000440042005400
      650078007400310001005400610068006F006D00610001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740032000100
      5400610068006F006D00610001005400610068006F006D006100010001000D00
      0A0070007000440042005400650078007400330001005400610068006F006D00
      610001005400610068006F006D006100010001000D000A007000700044004200
      5400650078007400340001005400610068006F006D0061000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003500
      01005400610068006F006D00610001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400360001005400610068006F00
      6D00610001005400610068006F006D006100010001000D000A00700070004400
      42005400650078007400370001005400610068006F006D006100010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      380001005400610068006F006D00610001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740039000100540061006800
      6F006D00610001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003100300001005400610068006F006D0061000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003100310001005400610068006F006D00610001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740031003200
      01005400610068006F006D00610001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400310033000100540061006800
      6F006D00610001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003100340001005400610068006F006D0061000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003100350001005400610068006F006D00610001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740031003600
      01005400610068006F006D00610001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400310037000100540061006800
      6F006D00610001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003100380001005400610068006F006D0061000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003100390001005400610068006F006D00610001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740032003000
      01005400610068006F006D00610001005400610068006F006D00610001000100
      0D000A007000700044004200430061006C006300310001005400610068006F00
      6D00610001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C006300320001005400610068006F006D006100010054006100
      68006F006D006100010001000D000A00420069007400420074006E0031003300
      01005400610068006F006D00610001005400610068006F006D00610001000100
      0D000A00420069007400420074006E003100310001005400610068006F006D00
      610001005400610068006F006D006100010001000D000A004200690074004200
      74006E003100340001005400610068006F006D00610001005400610068006F00
      6D006100010001000D000A00420069007400420074006E003100350001005400
      610068006F006D00610001005400610068006F006D006100010001000D000A00
      630078005300740079006C006500380001005400610068006F006D0061000100
      5400610068006F006D006100010001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      43006F006D0062006F0042006F00780034002E004900740065006D0073000100
      42002C004B002C0055000100010001000D000A0043006F006D0062006F004200
      6F00780031002E004900740065006D007300010041002C0042002C0043002C00
      44000100010001000D000A0043006F006D0062006F0042006F00780032002E00
      4900740065006D007300010042002C004B002C0055000100010001000D000A00
      43006F006D0062006F0042006F00780033002E004900740065006D0073000100
      50002C0042002C004B002C0055000100010001000D000A0043006F006D006200
      6F0042006F00780036002E004900740065006D007300010032002C0033002C00
      34002C0038000100010001000D000A00450064006900740036002E0049007400
      65006D007300010053004C002C00470047002C00520058002C0043004E002C00
      43004C002C0041004C004C000100010001000D000A0045006400690074003400
      2E004900740065006D007300010053004C002C00430053002C00470047002C00
      520058000100010001000D000A00450064006900740032002E00490074006500
      6D007300010053004C002C00430053002C00470047002C005200580001000100
      01000D000A0043006F006D0062006F0042006F00780037002E00490074006500
      6D00730001003E0030002C003C0030000100010001000D000A00630078005600
      69006500770031004900450043004C0053002E00500072006F00700065007200
      74006900650073002E004900740065006D0073000100310041002C0032004100
      2C00320042002C00330041002C00330042002C00330043002C00340041002C00
      340042002C00340043002C00340044002C00340045002C003400460001000100
      01000D000A0063007800560069006500770031004900450043004C0053003100
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      7300010030002C0031002C0032002C0033002C0034002C0035002C0036002C00
      300061002C00300062002C00300063002C003000610062002C00300061006300
      2C003000620063002C0030006100620063002C00310061002C00310062002C00
      310063002C003100610062002C003100610063002C003100620063002C003100
      6100620063002C00320061002C00320062002C00320063002C00320061006200
      2C003200610063002C003200620063002C0032006100620063002C0033006100
      2C00330062002C00330063002C003300610062002C003300610063002C003300
      620063002C0033006100620063002C00340061002C00340062002C0034006300
      2C003400610062002C003400610063002C003400620063002C00340061006200
      63002C00350061002C00350062002C00350063002C003500610062002C003500
      610063002C003500620063002C0035006100620063002C00360061002C003600
      62002C00360063002C003600610062002C003600610063002C00360062006300
      2C0036006100620063002C002B002C0031002B002C0032002B002C0033002B00
      2C0034002B002C0035002B002C0036002B000100010001000D000A006D006500
      6D006F0032002E004C0069006E006500730001006D0065006D006F0032000100
      010001000D000A007300740044006C0067007300430061007000740069006F00
      6E0073005F0055006E00690063006F00640065000D000A005700610072006E00
      69006E00670001005700610072006E0069006E0067000100010001000D000A00
      4500720072006F00720001004500720072006F0072000100010001000D000A00
      49006E0066006F0072006D006100740069006F006E00010049006E0066006F00
      72006D006100740069006F006E000100010001000D000A0043006F006E006600
      690072006D00010043006F006E006600690072006D000100010001000D000A00
      590065007300010026005900650073000100010001000D000A004E006F000100
      26004E006F000100010001000D000A004F004B0001004F004B00010001000100
      0D000A00430061006E00630065006C000100430061006E00630065006C000100
      010001000D000A00410062006F007200740001002600410062006F0072007400
      0100010001000D000A0052006500740072007900010026005200650074007200
      79000100010001000D000A00490067006E006F00720065000100260049006700
      6E006F00720065000100010001000D000A0041006C006C000100260041006C00
      6C000100010001000D000A004E006F00200054006F00200041006C006C000100
      4E0026006F00200074006F00200041006C006C000100010001000D000A005900
      65007300200054006F00200041006C006C000100590065007300200074006F00
      2000260041006C006C000100010001000D000A00480065006C00700001002600
      480065006C0070000100010001000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A004400610074006500450064006900740033002E0044006900
      61006C006F0067005400690074006C0065000100530065006C00650063007400
      20006100200044006100740065000100010001000D000A004400610074006500
      450064006900740033002E005400650078007400010020002000200020002F00
      200020002F00200020000100010001000D000A00440061007400650045006400
      6900740034002E004400690061006C006F0067005400690074006C0065000100
      530065006C006500630074002000610020004400610074006500010001000100
      0D000A004400610074006500450064006900740034002E005400650078007400
      010020002000200020002F00200020002F00200020000100010001000D000A00
      4400610074006500450064006900740031002E004400690061006C006F006700
      5400690074006C0065000100530065006C006500630074002000610020004400
      6100740065000100010001000D000A0044006100740065004500640069007400
      31002E005400650078007400010020002000200020002F00200020002F002000
      20000100010001000D000A004400610074006500450064006900740032002E00
      4400690061006C006F0067005400690074006C0065000100530065006C006500
      6300740020006100200044006100740065000100010001000D000A0044006100
      74006500450064006900740032002E0054006500780074000100200020002000
      20002F00200020002F00200020000100010001000D000A004500640069007400
      36002E005400650078007400010043004E000100010001000D000A0063007800
      560069006500770031004A0032005F004A004F0042002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780042007500740074006F006E004500640069007400500072006F00
      70006500720074006900650073000100010001000D000A006300780056006900
      650077003100520057004F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780042007500
      740074006F006E004500640069007400500072006F0070006500720074006900
      650073000100010001000D000A00630078005600690065007700310046004300
      430053002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D006500010054006300780042007500740074006F006E00
      4500640069007400500072006F00700065007200740069006500730001000100
      01000D000A00630078005600690065007700310043005300540059004C004500
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780042007500740074006F006E0045006400
      69007400500072006F0070006500720074006900650073000100010001000D00
      0A006300780056006900650077003100410043004F004C002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      010054006300780042007500740074006F006E00450064006900740050007200
      6F0070006500720074006900650073000100010001000D000A00630078005600
      6900650077003100530043005100540059002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780042007500740074006F006E004500640069007400500072006F0070006500
      720074006900650073000100010001000D000A00630078005600690065007700
      310053004A00520053002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800420075007400
      74006F006E004500640069007400500072006F00700065007200740069006500
      73000100010001000D000A00630078005600690065007700310053004A005900
      43002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D006500010054006300780042007500740074006F006E004500
      640069007400500072006F007000650072007400690065007300010001000100
      0D000A006300780056006900650077003100430050004C0041004E002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D006500010054006300780042007500740074006F006E004500640069007400
      500072006F0070006500720074006900650073000100010001000D000A006300
      78005600690065007700310046004C004100470033002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780042007500740074006F006E004500640069007400500072006F00
      70006500720074006900650073000100010001000D000A006300780056006900
      650077003100530043004C0048005F004C0048002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780042007500740074006F006E004500640069007400500072006F007000
      6500720074006900650073000100010001000D000A0063007800560069006500
      77003100510059004A0053002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780042007500
      740074006F006E004500640069007400500072006F0070006500720074006900
      650073000100010001000D000A0063007800560069006500770031005A004800
      4A0053002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D006500010054006300780042007500740074006F006E00
      4500640069007400500072006F00700065007200740069006500730001000100
      01000D000A00630078005600690065007700310051005200580043002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D0065000100540063007800430075007200720065006E006300790045006400
      69007400500072006F0070006500720074006900650073000100010001000D00
      0A0063007800560069006500770031004900450043004C0053002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780043006F006D0062006F0042006F007800500072006F00
      70006500720074006900650073000100010001000D000A006300780056006900
      6500770031004900450043004C00530031002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780043006F006D0062006F0042006F007800500072006F007000650072007400
      6900650073000100010001000D000A0063007800560069006500770031007300
      63006C0068005F00620073002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780042007500
      740074006F006E004500640069007400500072006F0070006500720074006900
      650073000100010001000D000A00630078005600690065007700310066006C00
      610067003300310070002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800420075007400
      74006F006E004500640069007400500072006F00700065007200740069006500
      73000100010001000D000A00630078005600690065007700310066006C006100
      67003300310061002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004200750074007400
      6F006E004500640069007400500072006F007000650072007400690065007300
      0100010001000D000A00630078005600690065007700310066006C0061006700
      3300310065002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780042007500740074006F00
      6E004500640069007400500072006F0070006500720074006900650073000100
      010001000D000A0043006C00690065006E007400440061007400610053006500
      740031002E0043006F006D006D0061006E006400540065007800740001007300
      65006C0065006300740020002A002000660072006F006D002000740062006C00
      730068006500640075006C0065005F0070006C0063000100010001000D000A00
      43006C00690065006E007400440061007400610053006500740031002E005000
      72006F00760069006400650072004E0061006D00650001006400730070007300
      630068006500640075006C0065000100010001000D000A00740062006C007300
      68006500640075006C0065002E0043006F006D006D0061006E00640054006500
      780074000100730065006C0065006300740020002A002000660072006F006D00
      2000740062006C00730068006500640075006C00650020007700680065007200
      6500200070006C0069006E0065003D0027005400300030003300550027002000
      61006E006400200079007A0068003D0030000100010001000D000A0074006200
      6C00730068006500640075006C0065002E00500072006F007600690064006500
      72004E0061006D00650001006400730070007300630068006500640075006C00
      65000100010001000D000A00740062006C00730068006500640075006C006500
      50004C0049004E0045002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E00220050004C0049004E004500
      22000100010001000D000A00740062006C00730068006500640075006C006500
      5300450051002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E0022005300450051002200010001000100
      0D000A00740062006C00730068006500640075006C006500430046004B005300
      520051002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E002200430046004B0053005200510022000100
      010001000D000A00740062006C00730068006500640075006C00650043004600
      4B0053004A0053002E004F0072006900670069006E0001002200540042004C00
      530048004500440055004C00450022002E002200430046004B0053004A005300
      22000100010001000D000A00740062006C00730068006500640075006C006500
      4A005F004E004F002E004F0072006900670069006E0001002200540042004C00
      530048004500440055004C00450022002E0022004A005F004E004F0022000100
      010001000D000A00740062006C00730068006500640075006C0065004A003200
      5F004A004F0042002E004F0072006900670069006E0001002200540042004C00
      530048004500440055004C00450022002E0022004A0032005F004A004F004200
      22000100010001000D000A00740062006C00730068006500640075006C006500
      4100520054004E004F002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E0022004100520054004E004F00
      22000100010001000D000A00740062006C00730068006500640075006C006500
      410043004F004C002E004F0072006900670069006E0001002200540042004C00
      530048004500440055004C00450022002E002200410043004F004C0022000100
      010001000D000A00740062006C00730068006500640075006C00650057004500
      45004B002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E0022005700450045004B002200010001000100
      0D000A00740062006C00730068006500640075006C00650050004C0041004E00
      5F0044004100540045002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E00220050004C0041004E005F00
      440041005400450022000100010001000D000A00740062006C00730068006500
      640075006C0065004B0048005A004C002E004F0072006900670069006E000100
      2200540042004C00530048004500440055004C00450022002E0022004B004800
      5A004C0022000100010001000D000A00740062006C0073006800650064007500
      6C0065004F004B004800520051002E004F0072006900670069006E0001002200
      540042004C00530048004500440055004C00450022002E0022004F004B004800
      5200510022000100010001000D000A00740062006C0073006800650064007500
      6C006500530043005100540059002E004F0072006900670069006E0001002200
      540042004C00530048004500440055004C00450022002E002200530043005100
      5400590022000100010001000D000A00740062006C0073006800650064007500
      6C00650054004D0055002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E00220054004D00550022000100
      010001000D000A00740062006C00730068006500640075006C00650054005200
      53002E004F0072006900670069006E0001002200540042004C00530048004500
      440055004C00450022002E00220054005200530022000100010001000D000A00
      740062006C00730068006500640075006C006500460059004C002E004F007200
      6900670069006E0001002200540042004C00530048004500440055004C004500
      22002E002200460059004C0022000100010001000D000A00740062006C007300
      68006500640075006C00650058004A0053002E004F0072006900670069006E00
      01002200540042004C00530048004500440055004C00450022002E0022005800
      4A00530022000100010001000D000A00740062006C0073006800650064007500
      6C0065004A0058004A0053002E004F0072006900670069006E00010022005400
      42004C00530048004500440055004C00450022002E0022004A0058004A005300
      22000100010001000D000A00740062006C00730068006500640075006C006500
      5A004A0053002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E0022005A004A0053002200010001000100
      0D000A00740062006C00730068006500640075006C0065004A0048004C002E00
      4F0072006900670069006E0001002200540042004C0053004800450044005500
      4C00450022002E0022004A0048004C0022000100010001000D000A0074006200
      6C00730068006500640075006C0065004300460057004300520051002E004F00
      72006900670069006E0001002200540042004C00530048004500440055004C00
      450022002E00220043004600570043005200510022000100010001000D000A00
      740062006C00730068006500640075006C006500590051004C00430052005100
      2E004F0072006900670069006E0001002200540042004C005300480045004400
      55004C00450022002E002200590051004C004300520051002200010001000100
      0D000A00740062006C00730068006500640075006C0065005300430054004400
      2E004F0072006900670069006E0001002200540042004C005300480045004400
      55004C00450022002E002200530043005400440022000100010001000D000A00
      740062006C00730068006500640075006C00650050004800490053005A004A00
      53002E004F0072006900670069006E0001002200540042004C00530048004500
      440055004C00450022002E00220050004800490053005A004A00530022000100
      010001000D000A00740062006C00730068006500640075006C0065005A004800
      4A0053002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E0022005A0048004A0053002200010001000100
      0D000A00740062006C00730068006500640075006C006500420043004A005300
      2E004F0072006900670069006E0001002200540042004C005300480045004400
      55004C00450022002E002200420043004A00530022000100010001000D000A00
      740062006C00730068006500640075006C0065005000440034002E004F007200
      6900670069006E0001002200540042004C00530048004500440055004C004500
      22002E00220050004400340022000100010001000D000A00740062006C007300
      68006500640075006C006500530043004C0048004A0053002E004F0072006900
      670069006E0001002200540042004C00530048004500440055004C0045002200
      2E002200530043004C0048004A00530022000100010001000D000A0074006200
      6C00730068006500640075006C0065005A004B00540044002E004F0072006900
      670069006E0001002200540042004C00530048004500440055004C0045002200
      2E0022005A004B005400440022000100010001000D000A00740062006C007300
      68006500640075006C0065004A004800520053002E004F007200690067006900
      6E0001002200540042004C00530048004500440055004C00450022002E002200
      4A0048005200530022000100010001000D000A00740062006C00730068006500
      640075006C006500590053004A0048004C002E004F0072006900670069006E00
      01002200540042004C00530048004500440055004C00450022002E0022005900
      53004A0048004C0022000100010001000D000A00740062006C00730068006500
      640075006C0065004400420058004C002E004F0072006900670069006E000100
      2200540042004C00530048004500440055004C00450022002E00220044004200
      58004C0022000100010001000D000A00740062006C0073006800650064007500
      6C0065005000440038002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E00220050004400380022000100
      010001000D000A00740062006C00730068006500640075006C00650042005A00
      4A0053002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E00220042005A004A0053002200010001000100
      0D000A00740062006C00730068006500640075006C00650054005A004C004300
      520051002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E00220054005A004C0043005200510022000100
      010001000D000A00740062006C00730068006500640075006C00650046004C00
      4100470031002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E00220046004C0041004700310022000100
      010001000D000A00740062006C00730068006500640075006C00650046004C00
      4100470032002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E00220046004C0041004700320022000100
      010001000D000A00740062006C00730068006500640075006C00650046004C00
      4100470033002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E00220046004C0041004700330022000100
      010001000D000A00740062006C00730068006500640075006C00650046004C00
      4100470034002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E00220046004C0041004700340022000100
      010001000D000A00740062006C00730068006500640075006C00650052005100
      580043002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E00220052005100580043002200010001000100
      0D000A00740062006C00730068006500640075006C006500510052004C004300
      520051002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E002200510052004C0043005200510022000100
      010001000D000A00740062006C00730068006500640075006C0065004B004400
      4A0053002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E0022004B0044004A0053002200010001000100
      0D000A00740062006C00730068006500640075006C0065005700450045004B00
      31002E004F0072006900670069006E0001002200540042004C00530048004500
      440055004C00450022002E0022005700450045004B0031002200010001000100
      0D000A00740062006C00730068006500640075006C0065004F00520044004C00
      49004E0045002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E0022004F00520044004C0049004E004500
      22000100010001000D000A00740062006C00730068006500640075006C006500
      46005900460053002E004F0072006900670069006E0001002200540042004C00
      530048004500440055004C00450022002E002200460059004600530022000100
      010001000D000A00740062006C00730068006500640075006C00650043004600
      570043004A0053002E004F0072006900670069006E0001002200540042004C00
      530048004500440055004C00450022002E00220043004600570043004A005300
      22000100010001000D000A00740062006C00730068006500640075006C006500
      53004F0050004E004F002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E00220053004F0050004E004F00
      22000100010001000D000A00740062006C00730068006500640075006C006500
      46004C004100470035002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E00220046004C00410047003500
      22000100010001000D000A00740062006C00730068006500640075006C006500
      43004B00540053002E004F0072006900670069006E0001002200540042004C00
      530048004500440055004C00450022002E00220043004B005400530022000100
      010001000D000A00740062006C00730068006500640075006C00650059005A00
      48002E004F0072006900670069006E0001002200540042004C00530048004500
      440055004C00450022002E00220059005A00480022000100010001000D000A00
      740062006C00730068006500640075006C006500580053002E004F0072006900
      670069006E0001002200540042004C00530048004500440055004C0045002200
      2E0022005800530022000100010001000D000A00740062006C00730068006500
      640075006C0065005400530048004F0050002E004F0072006900670069006E00
      01002200540042004C00530048004500440055004C00450022002E0022005400
      530048004F00500022000100010001000D000A00740062006C00730068006500
      640075006C006500500046004C004100470031002E004F007200690067006900
      6E0001002200540042004C00530048004500440055004C00450022002E002200
      500046004C0041004700310022000100010001000D000A00740062006C007300
      68006500640075006C00650043005300540059004C0045002E004F0072006900
      670069006E0001002200540042004C00530048004500440055004C0045002200
      2E00220043005300540059004C00450022000100010001000D000A0074006200
      6C00730068006500640075006C006500440042005A0053002E004F0072006900
      670069006E0001002200540042004C00530048004500440055004C0045002200
      2E002200440042005A00530022000100010001000D000A00740062006C007300
      68006500640075006C00650046004C004100470036002E004F00720069006700
      69006E0001002200540042004C00530048004500440055004C00450022002E00
      220046004C0041004700360022000100010001000D000A00740062006C007300
      68006500640075006C00650046004300430053002E004F007200690067006900
      6E0001002200540042004C00530048004500440055004C00450022002E002200
      460043004300530022000100010001000D000A00740062006C00730068006500
      640075006C0065004C0053005400520053002E004F0072006900670069006E00
      01002200540042004C00530048004500440055004C00450022002E0022004C00
      530054005200530022000100010001000D000A00740062006C00730068006500
      640075006C006500540050004C0041004E0054002E004F007200690067006900
      6E0001002200540042004C00530048004500440055004C00450022002E002200
      540050004C0041004E00540022000100010001000D000A00740062006C007300
      68006500640075006C006500530048004A0053002E004F007200690067006900
      6E0001002200540042004C00530048004500440055004C00450022002E002200
      530048004A00530022000100010001000D000A00740062006C00730068006500
      640075006C006500510059004A0053002E004F0072006900670069006E000100
      2200540042004C00530048004500440055004C00450022002E00220051005900
      4A00530022000100010001000D000A00740062006C0073006800650064007500
      6C00650050004C0041004E005F0057002E004F0072006900670069006E000100
      2200540042004C00530048004500440055004C00450022002E00220050004C00
      41004E005F00570022000100010001000D000A00740062006C00730068006500
      640075006C006500590051005F0057002E004F0072006900670069006E000100
      2200540042004C00530048004500440055004C00450022002E00220059005100
      5F00570022000100010001000D000A00740062006C0073006800650064007500
      6C00650054005A005F0057002E004F0072006900670069006E00010022005400
      42004C00530048004500440055004C00450022002E00220054005A005F005700
      22000100010001000D000A00740062006C00730068006500640075006C006500
      520057004F002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E002200520057004F002200010001000100
      0D000A00740062006C00730068006500640075006C0065005200490044002E00
      4F0072006900670069006E0001002200540042004C0053004800450044005500
      4C00450022002E00220052004900440022000100010001000D000A0074006200
      6C00730068006500640075006C006500480043002E004F007200690067006900
      6E0001002200540042004C00530048004500440055004C00450022002E002200
      4800430022000100010001000D000A00740062006C0073006800650064007500
      6C0065004C004500410052004E002E004F0072006900670069006E0001002200
      540042004C00530048004500440055004C00450022002E0022004C0045004100
      52004E0022000100010001000D000A00740062006C0073006800650064007500
      6C0065004C0046004C00410047002E004F0072006900670069006E0001002200
      540042004C00530048004500440055004C00450022002E0022004C0046004C00
      4100470022000100010001000D000A00740062006C0073006800650064007500
      6C0065004E00530048004A0053002E004F0072006900670069006E0001002200
      540042004C00530048004500440055004C00450022002E0022004E0053004800
      4A00530022000100010001000D000A00740062006C0073006800650064007500
      6C00650055004E00420041004C002E004F0072006900670069006E0001002200
      540042004C00530048004500440055004C00450022002E00220055004E004200
      41004C0022000100010001000D000A00740062006C0073006800650064007500
      6C0065005800430031002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E00220058004300310022000100
      010001000D000A00740062006C00730068006500640075006C00650058004300
      32002E004F0072006900670069006E0001002200540042004C00530048004500
      440055004C00450022002E00220058004300320022000100010001000D000A00
      740062006C00730068006500640075006C0065005800430033002E004F007200
      6900670069006E0001002200540042004C00530048004500440055004C004500
      22002E00220058004300330022000100010001000D000A00740062006C007300
      68006500640075006C00650053004A00520053002E004F007200690067006900
      6E0001002200540042004C00530048004500440055004C00450022002E002200
      53004A005200530022000100010001000D000A00740062006C00730068006500
      640075006C00650053004A00590043002E004F0072006900670069006E000100
      2200540042004C00530048004500440055004C00450022002E00220053004A00
      5900430022000100010001000D000A00740062006C0073006800650064007500
      6C00650043004B004A0053002E004F0072006900670069006E00010022005400
      42004C00530048004500440055004C00450022002E00220043004B004A005300
      22000100010001000D000A00740062006C00730068006500640075006C006500
      4700520050002E004F0072006900670069006E0001002200540042004C005300
      48004500440055004C00450022002E0022004700520050002200010001000100
      0D000A00740062006C00730068006500640075006C0065005200510058004300
      31002E004F0072006900670069006E0001002200540042004C00530048004500
      440055004C00450022002E002200520051005800430031002200010001000100
      0D000A00740062006C00730068006500640075006C0065005100540059002E00
      4F0072006900670069006E0001002200540042004C0053004800450044005500
      4C00450022002E00220051005400590022000100010001000D000A0074006200
      6C00730068006500640075006C0065005400420055002E004F00720069006700
      69006E0001002200540042004C00530048004500440055004C00450022002E00
      220054004200550022000100010001000D000A00740062006C00730068006500
      640075006C006500430050004C0041004E002E004F0072006900670069006E00
      01002200540042004C00530048004500440055004C00450022002E0022004300
      50004C0041004E0022000100010001000D000A00740062006C00730068006500
      640075006C0065005800430034002E004F0072006900670069006E0001002200
      540042004C00530048004500440055004C00450022002E002200580043003400
      22000100010001000D000A00740062006C00730068006500640075006C006500
      4C00540043005F0044002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E0022004C00540043005F004400
      22000100010001000D000A00740062006C00730068006500640075006C006500
      4C00540043005F0052002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E0022004C00540043005F005200
      22000100010001000D000A00740062006C00730068006500640075006C006500
      4C00540043005F0041002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E0022004C00540043005F004100
      22000100010001000D000A00740062006C00730068006500640075006C006500
      4C00540043005F0052004D002E004F0072006900670069006E00010022005400
      42004C00530048004500440055004C00450022002E0022004C00540043005F00
      52004D0022000100010001000D000A00740062006C0073006800650064007500
      6C0065004C00540043005F004B005300520051002E004F007200690067006900
      6E0001002200540042004C00530048004500440055004C00450022002E002200
      4C00540043005F004B0053005200510022000100010001000D000A0074006200
      6C00730068006500640075006C0065004C00540043005F004B0053004A005300
      2E004F0072006900670069006E0001002200540042004C005300480045004400
      55004C00450022002E0022004C00540043005F004B0053004A00530022000100
      010001000D000A00740062006C00730068006500640075006C00650044005300
      51004E002E004F0072006900670069006E0001002200540042004C0053004800
      4500440055004C00450022002E0022004400530051004E002200010001000100
      0D000A00740062006C00730068006500640075006C00650046004C0041004700
      37002E004F0072006900670069006E0001002200540042004C00530048004500
      440055004C00450022002E00220046004C004100470037002200010001000100
      0D000A00740062006C00730068006500640075006C006500430057004F002E00
      4F0072006900670069006E0001002200540042004C0053004800450044005500
      4C00450022002E002200430057004F0022000100010001000D000A0074006200
      6C00730068006500640075006C0065004900450043004C0053002E004F007200
      6900670069006E0001002200540042004C00530048004500440055004C004500
      22002E0022004900450043004C00530022000100010001000D000A0074006200
      6C00730068006500640075006C0065004900450043004C00530031002E004F00
      72006900670069006E0001002200540042004C00530048004500440055004C00
      450022002E0022004900450043004C005300310022000100010001000D000A00
      740062006C00730068006500640075006C00650057004C005F004A0048004400
      54002E004F0072006900670069006E0001002200540042004C00530048004500
      440055004C00450022002E00220057004C005F004A0048004400540022000100
      010001000D000A00740062006C00730068006500640075006C00650057004C00
      5F004A00480050002E004F0072006900670069006E0001002200540042004C00
      530048004500440055004C00450022002E00220057004C005F004A0048005000
      22000100010001000D000A00740062006C00730068006500640075006C006500
      57004C005F00570043002E004F0072006900670069006E000100220054004200
      4C00530048004500440055004C00450022002E00220057004C005F0057004300
      22000100010001000D000A00740062006C00730068006500640075006C006500
      57004C005F005700430050002E004F0072006900670069006E00010022005400
      42004C00530048004500440055004C00450022002E00220057004C005F005700
      4300500022000100010001000D000A00740062006C0073006800650064007500
      6C006500500042005F004A004800440054002E004F0072006900670069006E00
      01002200540042004C00530048004500440055004C00450022002E0022005000
      42005F004A0048004400540022000100010001000D000A00740062006C007300
      68006500640075006C006500500042005F00570043002E004F00720069006700
      69006E0001002200540042004C00530048004500440055004C00450022002E00
      2200500042005F005700430022000100010001000D000A00740062006C007300
      68006500640075006C0065004B0048005A004C0031002E004F00720069006700
      69006E0001002200540042004C00530048004500440055004C00450022002E00
      22004B0048005A004C00310022000100010001000D000A0043006C0069006500
      6E007400440061007400610053006500740032002E00500072006F0076006900
      6400650072004E0061006D006500010064007300700073006300680065006400
      75006C0065000100010001000D000A0043006C00690065006E00740044006100
      7400610053006500740033002E00500072006F00760069006400650072004E00
      61006D00650001006400730070007300630068006500640075006C0065000100
      010001000D000A0043006C00690065006E007400440061007400610053006500
      740035002E00500072006F00760069006400650072004E0061006D0065000100
      6400730070007000680067000100010001000D000A0051007500650072007900
      31002E00500072006F00760069006400650072004E0061006D00650001006400
      730070007300630068006500640075006C0065000100010001000D000A004300
      6C00690065006E007400440061007400610053006500740034002E0050007200
      6F00760069006400650072004E0061006D006500010064007300700073006300
      68006500640075006C0065000100010001000D000A0052004F00510075006500
      7200790031002E00500072006F00760069006400650072004E0061006D006500
      01006400730070007300630068006500640075006C0065000100010001000D00
      0A0053006100760065004400690061006C006F00670031002E00460069006C00
      74006500720001002A002E0078006C0073007C002A002E0078006C0073000100
      010001000D000A00700070004400420050006900700065006C0069006E006500
      31002E0055007300650072004E0061006D006500010044004200500069007000
      65006C0069006E00650031000100010001000D000A0070007000520065007000
      6F007200740031002E0044006500760069006300650054007900700065000100
      530063007200650065006E000100010001000D000A007400690074006C006500
      3000300031002E0055007300650072004E0061006D0065000100740069007400
      6C0065003000300031000100010001000D000A00700070005300680061007000
      650031002E0055007300650072004E0061006D00650001005300680061007000
      650031000100010001000D000A006600740079003000300031002E0055007300
      650072004E0061006D0065000100660074007900300030003100010001000100
      0D000A00700070004C006100620065006C0033002E0055007300650072004E00
      61006D00650001004C006100620065006C0033000100010001000D000A007000
      70004C006100620065006C0034002E0055007300650072004E0061006D006500
      01004C006100620065006C0034000100010001000D000A00700070004C006100
      620065006C0035002E0055007300650072004E0061006D00650001004C006100
      620065006C0035000100010001000D000A00700070004C006100620065006C00
      36002E0055007300650072004E0061006D00650001004C006100620065006C00
      36000100010001000D000A00700070004C006100620065006C0037002E005500
      7300650072004E0061006D00650001004C006100620065006C00370001000100
      01000D000A00700070004C006100620065006C0038002E005500730065007200
      4E0061006D00650001004C006100620065006C0038000100010001000D000A00
      7400690074006C0065003000300032002E0055007300650072004E0061006D00
      650001007400690074006C0065003000300032000100010001000D000A007000
      70004C006100620065006C0031002E0055007300650072004E0061006D006500
      01004C006100620065006C0031000100010001000D000A00700070004C006100
      620065006C0039002E0055007300650072004E0061006D00650001004C006100
      620065006C0039000100010001000D000A00700070004C006100620065006C00
      310030002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310030000100010001000D000A00700070004C006100620065006C003100
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      3100300031000100010001000D000A00700070004C006100620065006C003100
      32002E0055007300650072004E0061006D00650001004C006100620065006C00
      310032000100010001000D000A00700070004C006100620065006C0031003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      33000100010001000D000A00700070004C006100620065006C00310034002E00
      55007300650072004E0061006D00650001004C006100620065006C0031003400
      0100010001000D000A00700070004C006100620065006C00310035002E005500
      7300650072004E0061006D00650001004C006100620065006C00310035000100
      010001000D000A00700070004C006100620065006C00310036002E0055007300
      650072004E0061006D00650001004C006100620065006C003100360001000100
      01000D000A00700070004C006100620065006C00310037002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003700010001000100
      0D000A00700070004C006100620065006C00310038002E005500730065007200
      4E0061006D00650001004C006100620065006C00310038000100010001000D00
      0A00700070004C006100620065006C00310039002E0055007300650072004E00
      61006D00650001004C006100620065006C00310039000100010001000D000A00
      700070004C006100620065006C00320030002E0055007300650072004E006100
      6D00650001004C006100620065006C00320030000100010001000D000A007000
      70004C006100620065006C00320031002E0055007300650072004E0061006D00
      650001004C006100620065006C00320031000100010001000D000A0070007000
      4C0069006E00650031002E0055007300650072004E0061006D00650001004C00
      69006E00650031000100010001000D000A00700070004C0069006E0065003200
      2E0055007300650072004E0061006D00650001004C0069006E00650032000100
      010001000D000A00700070004C0069006E00650033002E005500730065007200
      4E0061006D00650001004C0069006E00650033000100010001000D000A007000
      70004C0069006E00650034002E0055007300650072004E0061006D0065000100
      4C0069006E00650034000100010001000D000A00700070004C0069006E006500
      35002E0055007300650072004E0061006D00650001004C0069006E0065003500
      0100010001000D000A00700070004C0069006E00650036002E00550073006500
      72004E0061006D00650001004C0069006E00650036000100010001000D000A00
      700070004C0069006E00650037002E0055007300650072004E0061006D006500
      01004C0069006E00650037000100010001000D000A00700070004C0069006E00
      650038002E0055007300650072004E0061006D00650001004C0069006E006500
      38000100010001000D000A00700070004C0069006E00650039002E0055007300
      650072004E0061006D00650001004C0069006E00650039000100010001000D00
      0A00700070004C0069006E006500310030002E0055007300650072004E006100
      6D00650001004C0069006E006500310030000100010001000D000A0070007000
      4C0069006E006500310031002E0055007300650072004E0061006D0065000100
      4C0069006E0065003100300031000100010001000D000A00700070004C006900
      6E006500310032002E0055007300650072004E0061006D00650001004C006900
      6E0065003100300032000100010001000D000A00700070004C0069006E006500
      310033002E0055007300650072004E0061006D00650001004C0069006E006500
      3100300033000100010001000D000A00700070004C0069006E00650031003400
      2E0055007300650072004E0061006D00650001004C0069006E00650031003000
      34000100010001000D000A00700070004C0069006E006500310035002E005500
      7300650072004E0061006D00650001004C0069006E0065003100300035000100
      010001000D000A006C0077003000300031002E0055007300650072004E006100
      6D00650001006C0077003000300031000100010001000D000A00700070004C00
      6100620065006C0032002E0055007300650072004E0061006D00650001004C00
      6100620065006C0032000100010001000D000A00700070005300790073007400
      65006D005600610072006900610062006C00650031002E005500730065007200
      4E0061006D0065000100530079007300740065006D0056006100720069006100
      62006C00650031000100010001000D000A00700070004C006100620065006C00
      320032002E0055007300650072004E0061006D00650001004C00610062006500
      6C00320032000100010001000D000A0070007000530079007300740065006D00
      5600610072006900610062006C00650032002E0055007300650072004E006100
      6D0065000100530079007300740065006D005600610072006900610062006C00
      650032000100010001000D000A00700070004C006100620065006C0032003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003200
      33000100010001000D000A00700070004C0069006E006500310036002E005500
      7300650072004E0061006D00650001004C0069006E0065003100360001000100
      01000D000A00700070004C006100620065006C00320034002E00550073006500
      72004E0061006D00650001004C006100620065006C0032003400010001000100
      0D000A00700070004C0069006E006500310038002E0055007300650072004E00
      61006D00650001004C0069006E006500310032000100010001000D000A007000
      70004C006100620065006C00320035002E0055007300650072004E0061006D00
      650001004C006100620065006C00320035000100010001000D000A0070007000
      4C006100620065006C00320036002E0055007300650072004E0061006D006500
      01004C006100620065006C00320036000100010001000D000A00700070004C00
      6100620065006C00320037002E0055007300650072004E0061006D0065000100
      4C006100620065006C00320037000100010001000D000A00700070004C006100
      620065006C00320038002E0055007300650072004E0061006D00650001004C00
      6100620065006C00320038000100010001000D000A0070007000440042005400
      65007800740031002E0044006100740061004600690065006C00640001005000
      4C0049004E0045000100010001000D000A007000700044004200540065007800
      740031002E0055007300650072004E0061006D00650001004400420054006500
      7800740031000100010001000D000A0070007000440042005400650078007400
      32002E0044006100740061004600690065006C00640001004A005F004E004F00
      0100010001000D000A007000700044004200540065007800740032002E005500
      7300650072004E0061006D006500010044004200540065007800740032000100
      010001000D000A007000700044004200540065007800740033002E0044006100
      740061004600690065006C00640001004A0032005F004A004F00420001000100
      01000D000A007000700044004200540065007800740033002E00550073006500
      72004E0061006D00650001004400420054006500780074003300010001000100
      0D000A007000700044004200540065007800740034002E004400610074006100
      4600690065006C0064000100430057004F000100010001000D000A0070007000
      44004200540065007800740034002E0055007300650072004E0061006D006500
      010044004200540065007800740034000100010001000D000A00700070004400
      4200540065007800740035002E0044006100740061004600690065006C006400
      0100520057004F000100010001000D000A007000700044004200540065007800
      740035002E0055007300650072004E0061006D00650001004400420054006500
      7800740035000100010001000D000A0070007000440042005400650078007400
      36002E0044006100740061004600690065006C00640001004600430043005300
      0100010001000D000A007000700044004200540065007800740036002E005500
      7300650072004E0061006D006500010044004200540065007800740036000100
      010001000D000A007000700044004200540065007800740037002E0044006100
      740061004600690065006C006400010046004C00410047003600010001000100
      0D000A007000700044004200540065007800740037002E005500730065007200
      4E0061006D006500010044004200540065007800740037000100010001000D00
      0A007000700044004200540065007800740038002E0044006100740061004600
      690065006C006400010043005300540059004C0045000100010001000D000A00
      7000700044004200540065007800740038002E0055007300650072004E006100
      6D006500010044004200540065007800740038000100010001000D000A007000
      700044004200540065007800740039002E004400610074006100460069006500
      6C0064000100410043004F004C000100010001000D000A007000700044004200
      540065007800740039002E0055007300650072004E0061006D00650001004400
      4200540065007800740039000100010001000D000A0070007000440042005400
      650078007400310030002E0044006100740061004600690065006C0064000100
      530043005100540059000100010001000D000A00700070004400420054006500
      78007400310030002E0055007300650072004E0061006D006500010044004200
      5400650078007400310030000100010001000D000A0070007000440042005400
      650078007400310031002E0044006100740061004600690065006C0064000100
      54004D0055000100010001000D000A0070007000440042005400650078007400
      310031002E0055007300650072004E0061006D00650001004400420054006500
      780074003100300031000100010001000D000A00700070004400420054006500
      78007400310032002E0044006100740061004600690065006C00640001004A00
      58004A0053000100010001000D000A0070007000440042005400650078007400
      310032002E0055007300650072004E0061006D00650001004400420054006500
      78007400310032000100010001000D000A007000700044004200540065007800
      7400310033002E0044006100740061004600690065006C00640001005A004A00
      53000100010001000D000A007000700044004200540065007800740031003300
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      3100300032000100010001000D000A0070007000440042005400650078007400
      310034002E0044006100740061004600690065006C00640001004C0046004C00
      410047000100010001000D000A00700070004400420054006500780074003100
      34002E0055007300650072004E0061006D006500010044004200540065007800
      7400310034000100010001000D000A0070007000440042005400650078007400
      310035002E0044006100740061004600690065006C006400010046004C004100
      470033000100010001000D000A00700070004400420054006500780074003100
      35002E0055007300650072004E0061006D006500010044004200540065007800
      7400310035000100010001000D000A0070007000440042005400650078007400
      310036002E0044006100740061004600690065006C0064000100430046004B00
      5300520051000100010001000D000A0070007000440042005400650078007400
      310036002E0055007300650072004E0061006D00650001004400420054006500
      78007400310036000100010001000D000A007000700044004200540065007800
      7400310037002E0044006100740061004600690065006C006400010051005400
      59000100010001000D000A007000700044004200540065007800740031003700
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      310037000100010001000D000A00700070004400420054006500780074003100
      38002E0044006100740061004600690065006C00640001004300460057004300
      520051000100010001000D000A00700070004400420054006500780074003100
      38002E0055007300650072004E0061006D006500010044004200540065007800
      7400310038000100010001000D000A0070007000440042005400650078007400
      310039002E0044006100740061004600690065006C0064000100590051004C00
      4300520051000100010001000D000A0070007000440042005400650078007400
      310039002E0055007300650072004E0061006D00650001004400420054006500
      78007400310039000100010001000D000A007000700044004200540065007800
      7400320030002E0044006100740061004600690065006C006400010054005300
      48004F0050000100010001000D000A0070007000440042005400650078007400
      320030002E0055007300650072004E0061006D00650001004400420054006500
      78007400320030000100010001000D000A007000700053006800610070006500
      32002E0055007300650072004E0061006D006500010053006800610070006500
      32000100010001000D000A007000700044004200430061006C00630031002E00
      44006100740061004600690065006C0064000100530045005100010001000100
      0D000A007000700044004200430061006C00630031002E005500730065007200
      4E0061006D006500010044004200430061006C00630031000100010001000D00
      0A007000700044004200430061006C00630032002E0044006100740061004600
      690065006C0064000100530043005100540059000100010001000D000A007000
      700044004200430061006C00630032002E0055007300650072004E0061006D00
      6500010044004200430061006C00630032000100010001000D000A0070007000
      470072006F007500700031002E0042007200650061006B004E0061006D006500
      01005400530048004F0050000100010001000D000A0070007000470072006F00
      7500700031002E0055007300650072004E0061006D0065000100470072006F00
      7500700031000100010001000D000A00700070004C0069006E00650031003700
      2E0055007300650072004E0061006D00650001004C0069006E00650031003100
      0100010001000D000A00630078005600690065007700310062005F0066006C00
      61006700330031002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004200750074007400
      6F006E004500640069007400500072006F007000650072007400690065007300
      0100010001000D000A00630078005600690065007700310043006F006C007500
      6D006E0038002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780042007500740074006F00
      6E004500640069007400500072006F0070006500720074006900650073000100
      010001000D000A00630078005600690065007700310043006F006C0075006D00
      6E00320033002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780043006F006D0062006F00
      42006F007800500072006F007000650072007400690065007300010001000100
      0D000A00630078005600690065007700310043006F006C0075006D006E003200
      35002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D006500010054006300780042007500740074006F006E004500
      640069007400500072006F007000650072007400690065007300010001000100
      0D000A0063007800560069006500770031006500790063002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      010054006300780042007500740074006F006E00450064006900740050007200
      6F0070006500720074006900650073000100010001000D000A00740062006C00
      730068006500640075006C0065004500570046002E0044006500660061007500
      6C007400450078007000720065007300730069006F006E00010030002E003000
      0100010001000D000A00630078005600690065007700310043006F006C007500
      6D006E00330030002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004300750072007200
      65006E00630079004500640069007400500072006F0070006500720074006900
      650073000100010001000D000A0063007800560069006500770031004C005400
      43005F0052004D002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004200750074007400
      6F006E004500640069007400500072006F007000650072007400690065007300
      0100010001000D000A00730074004C006F00630061006C00650073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A006300
      7800560069006500770031002E00420061006E00640073005B0030005D002E00
      430061007000740069006F006E0001000100410020005300650067002E002000
      2D0020004F0072006400200049006E0066006F00200028005300740079006C00
      650020002600200051007400790029002000200041002000B56B20002D002000
      028AAE55E14F6F60200028003E6BCA537865CF912900010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B0031005D002E00
      430061007000740069006F006E0001000100420020005300650067002E000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B0032005D002E00430061007000740069006F006E0001000100450052005000
      200057004F00230019001A003652AE555F86010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B0033005D002E0043006100
      7000740069006F006E000100010045005200500019001A0043006C0072001900
      1A0043006400650019001A007282BC78010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B0034005D002E00430061007000
      740069006F006E0001000100430057004F00200051007400790019001A001900
      1A0019001A0019001A002800610029003D0019001A0062002B00630001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      35005D002E00430061007000740069006F006E00010001004300200053006500
      67002E00200028004B006500790020007000610074006800290020002D002000
      51004E0028007300290020005300630068006500640075006C0069006E006700
      20006200790020006C0069006E0065002000200043002000B56B20002800795E
      5390290020002D0020007865019809631F752375DA7D9263C962010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003600
      5D002E00430061007000740069006F006E000100010044002000530065006700
      2E0019001A0044002000B56B010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B0037005D002E0043006100700074006900
      6F006E00010001004400310020002D0020005300650063007400200068007200
      20006F00750074007000750074002000280070006300730029002C0020006500
      780063006C00200050004C004300010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B0038005D002E004300610070007400
      69006F006E00010001004400330020002D002000540074006C00200073006500
      6300740020006800720020006200610073006500640020006F006E0020005000
      4C00430019001A004400330020002D0020009D4F50004C004300088A977B3D7E
      C07B4266010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B0039005D002E00430061007000740069006F006E0001000100
      4400340020002D0020004C00420020006C006F007300740019001A002D002000
      5400680069007300200069007300200066006F00720020007200650066000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B00310030005D002E00430061007000740069006F006E000100010044003200
      20002D0020004C0069006E00650020006500660066002E002000620061007300
      6500640020006F006E00200050004C00430019001A004400320020002D009D4F
      50004C004300088A977BC96248658773010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B00310031005D002E0043006100
      7000740069006F006E0001000100490020005300650067002E00010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003100
      32005D002E00430061007000740069006F006E00010001004A0020002D002000
      570073002000440069007200650063007400200057004600010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0031003300
      5D002E00430061007000740069006F006E00010001004B0020002D0020005700
      7300200048006100720064007700610072006500010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00310035005D002E00
      430061007000740069006F006E00010001003100320019001A0043006C006100
      73007300010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B00310037005D002E00430061007000740069006F006E000100
      010050007200650019001A002D00640069006300740019001A00620079001900
      1A00470053004400010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B00310038005D002E00430061007000740069006F00
      6E0001000100460057005300200064006400200028004900740065006D007300
      20007300740064002D0062007900200068007600200033002000730074006100
      670065007300290019001A00B05336525C4F8B95CB59E5651F67200028009950
      287599650967094E0B508E96B56B2900010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B00310039005D002E0043006100
      7000740069006F006E00010001004400650066002E00010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00320030005D00
      2E00430061007000740069006F006E00010001005000720064006E0019001A00
      6B00690063006B0019001A002D006F006600660019001A0043006F006D002D00
      19001A006D0061006E00640019001A0019001A005B0050005200450053005300
      5D0019001A006C00690073007400200069006E00010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00320031005D002E00
      430061007000740069006F006E000100010053006500770069006E0067002000
      53007400610072007400200074006F002000460069006E006900730068002000
      6400640019001A002B7E08548B95CB5930528C5B1062E5651F67010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003200
      32005D002E00430061007000740069006F006E000100010049006E0020005000
      72006F006300650073007300200074006F00200043006D0070002E0020002800
      4100630074002900010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B00320034005D002E00430061007000740069006F00
      6E0001000100430064006500010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B00320035005D002E004300610070007400
      69006F006E00010001004400650066002E00010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B00320036005D002E004300
      61007000740069006F006E0001000100460069006E0069007300680001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      320037005D002E00430061007000740069006F006E0001000100440065006600
      2E00010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B00320038005D002E00430061007000740069006F006E0001000100
      4E006F006E0020005000720064006E00200019001A0028007700690074006800
      200068006F006C0069006400610079002900010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B00320039005D002E004300
      61007000740069006F006E000100010050006C0061006E002F0019001A004100
      63007400750061006C00010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B00330030005D002E0043006100700074006900
      6F006E0001000100500044004E0019001A002F004100630074002E005E000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B00330031005D002E00430061007000740069006F006E000100010045007800
      2D006600740079002000640064002000E296B0531F67010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00330032005D00
      2E00430061007000740069006F006E000100010051004E002000280050006C00
      61006E002900010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B00330033005D002E00430061007000740069006F006E00
      0100010054006F00740061006C002000540069006D0065002000460072006100
      6D00650020005B00460074007900200053007400610072007400200074006F00
      2000450078002D006600740079005D00010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B00330034005D002E0043006100
      7000740069006F006E00010001004C00420019001A00500072006F002D001900
      1A006300650073007300010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B00330035005D002E0043006100700074006900
      6F006E00010001004C006100620065006C0020007300740061006E0064006200
      7900200064006400010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B00330036005D002E00430061007000740069006F00
      6E0001000100460069006E002E0019001A00280059002900010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0033003700
      5D002E00430061007000740069006F006E00010001005300740079006C006500
      20002F00200043006C007200200044007000640019001A003E6B2F007282BC78
      9D4F6097010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B00330039005D002E00430061007000740069006F006E000100
      010028003100290020004D006100740020005300740061006E00640062007900
      200074006F00200053006500770069006E006700200053007400610072007400
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B00340030005D002E00430061007000740069006F006E00010001002800
      33002900200053006500770069006E0067002000530074006100720074002000
      74006F00200054003300010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B00340031005D002E0043006100700074006900
      6F006E0001000100450078002D00660074007900010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00340032005D002E00
      430061007000740069006F006E00010001002800320029002000530065007700
      69006E006700010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B00340033005D002E00430061007000740069006F006E00
      010001005400330020006400640020002800E5651F672900010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0034003400
      5D002E00430061007000740069006F006E000100010047005300440019001A00
      530041004800010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B00340035005D002E00430061007000740069006F006E00
      01000100230020006F00660019001A004F00700074007300010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0034003600
      5D002E00430061007000740069006F006E00010001004F007500740070007500
      740019001A002800700063007300290019001A0070006500720019001A007300
      65006300740020006800720019001A002800410032002F00320019001A002F00
      410031002900010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B00340037005D002E00430061007000740069006F006E00
      010001005300740061006E00640061007200640020005100740079002F005300
      65006300740019001A0062007900200057007300010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00350031005D002E00
      430061007000740069006F006E000100010041006400640027006C0020006300
      720069007400650072006900610020006F00660019001A004300750073007400
      200050004F00010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B00350032005D002E00430061007000740069006F006E00
      010001005700730020002300010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B00350033005D002E004300610070007400
      69006F006E000100010057006800650072006500200019001A00610072006500
      200074006800650079003F00010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B00350034005D002E004300610070007400
      69006F006E00010001004C00420019001A0053004D0042003300010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003600
      31005D002E00430061007000740069006F006E00010001005700460020004500
      6600660019001A00280049006E00760061006C00690064002900010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003600
      32005D002E00430061007000740069006F006E00010001004400650066002E00
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B00360033005D002E00430061007000740069006F006E00010001005000
      6C0061006E00010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B00360034005D002E00430061007000740069006F006E00
      010001004100630074002E00010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B00360035005D002E004300610070007400
      69006F006E000100010057004600200045006600660019001A00280049006E00
      760061006C00690064002900010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B00360036005D002E004300610070007400
      69006F006E00010001004400650066002E002000540074006C00200053006500
      63007400200068007200010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B00360037005D002E0043006100700074006900
      6F006E000100010041004C00280053002900010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B00370031005D002E004300
      61007000740069006F006E0001000100430064006500010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00370032005D00
      2E00430061007000740069006F006E0001000100440061007400650001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      370033005D002E00430061007000740069006F006E0001000100530065006300
      7400010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B00370034005D002E00430061007000740069006F006E0001000100
      500072006F00640075006300740069006F006E002000540069006D0065002000
      4600720061006D00650020002800540046002D0031002F0032002F0033002900
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B00370035005D002E00430061007000740069006F006E00010001004200
      2E00200042006500680069006E0064002000530065006300740020002D002000
      4F006E002D0068006F006C006400010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B00370036005D002E00430061007000
      740069006F006E000100010041002E0020004500660066002000500065007200
      66002E0020002D0020005300650063007400200028002B002F002D0029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B00370037005D002E00430061007000740069006F006E000100010042006500
      680069006E00640019001A00640075006500200074006F0019001A004F006E00
      2D0068006F006C00640019001A0028002B00290020006F006E006C0079001900
      1A0019001A0028004300550020006C006F00730073002900010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0037003800
      5D002E00430061007000740069006F006E000100010054006F00740061006C00
      200073006500630074002E002000680072002E0020002D002000750073006500
      6400010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B00370039005D002E00430061007000740069006F006E0001000100
      430057004F002300010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B00380030005D002E00430061007000740069006F00
      6E000100010050006C0061006E00010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B00380031005D002E00430061007000
      740069006F006E000100010050006C0061006E00010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00380032005D002E00
      430061007000740069006F006E000100010050006C0061006E00010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003800
      33005D002E00430061007000740069006F006E0001000100460069006E006900
      730068006500640020004400610074006500010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B00380034005D002E004300
      61007000740069006F006E0001000100460019001A006C0019001A0061001900
      1A00670019001A003100010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B00380035005D002E0043006100700074006900
      6F006E0001000100500072006F006A00230019001A00E55D0B7A5F8601000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      380036005D002E00430061007000740069006F006E0001000100460019001A00
      6C0019001A00610019001A00670019001A003200010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00380037005D002E00
      430061007000740069006F006E0001000100430075007300740019001A005300
      74007900230019001A00A25B3E6B5F86010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B00380038005D002E0043006100
      7000740069006F006E0001000100540074006C0019001A005B00500052004500
      530053005D0019001A006C00690073007400200069006E0019001A0028006200
      2900010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B00380039005D002E00430061007000740069006F006E0001000100
      460019001A006C0019001A00610019001A00670019001A003300010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003900
      30005D002E00430061007000740069006F006E00010001004500520050001900
      1A0057004F00200019001A0073007500660066006900780019001A003652AE55
      19001A008C5FB47D010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B00390031005D002E00430061007000740069006F00
      6E0001000100430057004F00200019001A009A5B728219001A003652AE550100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B00390032005D002E00430061007000740069006F006E000100010051004E00
      19001A0078650198010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B00390033005D002E00430061007000740069006F00
      6E0001000100440065006600010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B00390034005D002E004300610070007400
      69006F006E00010001004100630074002E002F0019001A00460069006E006900
      73006800010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B00390035005D002E00430061007000740069006F006E000100
      0100440065006600010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B00390036005D002E00430061007000740069006F00
      6E00010001004100630074002E002F0019001A00460069006E00690073006800
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B00390037005D002E00430061007000740069006F006E00010001005000
      4C004300010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B00390038005D002E00430061007000740069006F006E000100
      01004C0069006E00650019001A004500660066002E00010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00390039005D00
      2E00430061007000740069006F006E0001000100460019001A006C0019001A00
      610019001A00670019001A003500010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003100300030005D002E0043006100
      7000740069006F006E00010001004C0069006E00650019001A00450066006600
      2E00010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003100300031005D002E00430061007000740069006F006E000100
      01005700460020004500660066002E00010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003100300032005D002E004300
      61007000740069006F006E00010001004C0069006E00650019001A0045006600
      66002E00010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003100300033005D002E00430061007000740069006F006E00
      010001005700460020004500660066002E00010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003100300034005D002E00
      430061007000740069006F006E0001000100440069006600660019001A002800
      420031002D0019001A00410031002900010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003100300035005D002E004300
      61007000740069006F006E0001000100540074006C0019001A00730065006300
      740020006800720019001A005B00500052004500530053005D0019001A006C00
      690073007400200069006E00010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003100300037005D002E00430061007000
      740069006F006E0001000100540074006C0019001A0073006500630074001900
      1A006800720019001A0019001A002800440031002B0019001A00440032002900
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003100300038005D002E00430061007000740069006F006E0001000100
      42006500680069006E00640019001A006F00720019001A006100680065006100
      640019001A0069006E002000250019001A0028002B002F002D00290001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3100300039005D002E00430061007000740069006F006E000100010042006500
      680069006E00640019001A006F00720019001A00610068006500610064001900
      1A0028002B002F002D002900010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003100310032005D002E00430061007000
      740069006F006E000100010064005700460019001A0028006400650066002E00
      2900010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003100310033005D002E00430061007000740069006F006E000100
      01005700460019001A002800610064006A002E00290019001A00690066002000
      61006E007900010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003100310034005D002E00430061007000740069006F00
      6E0001000100410063007400750061006C002F00460069006E00690073006800
      200028005200410044002D0035002F0036002900010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003100310035005D00
      2E00430061007000740069006F006E0001000100440065006600200028005300
      4D0042002D0033002900010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003100310036005D002E004300610070007400
      69006F006E000100010050006C0061006E00200028005200410044002D003400
      2900010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003100310037005D002E00430061007000740069006F006E000100
      0100410063007400750061006C002F00460069006E0069007300680020002800
      5200410041002D0035002F0036002900010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003100310038005D002E004300
      61007000740069006F006E00010001004400650066002000280053004D004200
      2D0033002900010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003100310039005D002E00430061007000740069006F00
      6E000100010050006C0061006E00200028005200410041002D00340029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003100320030005D002E00430061007000740069006F006E00010001004100
      63007400750061006C002F00460069006E006900730068002000280052004100
      41002D0035002F0036002900010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003100320031005D002E00430061007000
      740069006F006E00010001004100290020004400650066002000280053004D00
      42002D0033002900010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003100320032005D002E0043006100700074006900
      6F006E000100010042002900200050006C0061006E0020002800520041004100
      2D0034002900010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003100320033005D002E00430061007000740069006F00
      6E0001000100430029002000410063007400750061006C002F00460069006E00
      690073006800200028005200410041002D0035002F0036002900010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003100
      320034005D002E00430061007000740069006F006E0001000100730048005700
      19001A0028006400650066002E002900010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003100320035005D002E004300
      61007000740069006F006E00010001004800570019001A002800610064006A00
      2E00290019001A0069006600200061006E007900010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003100320036005D00
      2E00430061007000740069006F006E0001000100410063007400750061006C00
      2F00460069006E00690073006800200028005200410041002D0035002F003600
      2900010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003100320037005D002E00430061007000740069006F006E000100
      01004400650066002000280053004D0042002D0033002900010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0031003200
      38005D002E00430061007000740069006F006E000100010050006C0061006E00
      200028005200410041002D0034002900010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003100320039005D002E004300
      61007000740069006F006E0001000100410063007400750061006C002F004600
      69006E00690073006800200028005200410041002D0035002F00360029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003100330030005D002E00430061007000740069006F006E00010001004400
      650066002000280053004D0042002D0033002900010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003100330031005D00
      2E00430061007000740069006F006E000100010050006C0061006E0020002800
      5200410041002D0034002900010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003100330032005D002E00430061007000
      740069006F006E0001000100410063007400750061006C002F00460069006E00
      690073006800200028005200410041002D0035002F0036002900010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003100
      330033005D002E00430061007000740069006F006E0001000100410029002000
      4400650066002000280053004D0042002D0033002900010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00310033003400
      5D002E00430061007000740069006F006E000100010042002900200050006C00
      61006E00200028005200410041002D0034002900010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003100330035005D00
      2E00430061007000740069006F006E0001000100430029002000410063007400
      750061006C002F00460069006E00690073006800200028005200410041002D00
      35002F0036002900010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003100330036005D002E0043006100700074006900
      6F006E000100010032006E006400200019001A004400650066002E0020006400
      640019001A0028006200610073006500640020006F006E0019001A0043005700
      4F002900010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003100330037005D002E00430061007000740069006F006E00
      01000100410064006A002E00200019001A00280069006600200061006E007900
      2900010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003100330038005D002E00430061007000740069006F006E000100
      010044006100790019001A006400690066006600010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003100330039005D00
      2E00430061007000740069006F006E0001000100460019001A006C0019001A00
      610019001A00670019001A003400010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003100340030005D002E0043006100
      7000740069006F006E00010001004C006F0063006B0019001A002D0065006400
      19001A0064006100790019001A006400690066006600010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00310034003100
      5D002E00430061007000740069006F006E00010001004C006100740065006300
      6F006D00650019001A00F65EA44E010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003100340032005D002E0043006100
      7000740069006F006E000100010050006C0061006E002F0019001A0041006300
      7400750061006C00010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003100340033005D002E0043006100700074006900
      6F006E000100010073005400330019001A0064007500650019001A0064006100
      7900730019001A006C0069006D0069007400010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003100340034005D002E00
      430061007000740069006F006E0001000100460019001A006C0019001A006100
      19001A00670019001A003500010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003100340035005D002E00430061007000
      740069006F006E0001000100440061007900730019001A004400690066006600
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003100340036005D002E00430061007000740069006F006E0001000100
      53007400610072007400010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003100340037005D002E004300610070007400
      69006F006E0001000100460069006E0069007300680019001A00280054003200
      2900010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003100340038005D002E00430061007000740069006F006E000100
      01005300740061007200740019001A0028003D0020004C005700530029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003100340039005D002E00430061007000740069006F006E00010001004600
      69006E00690073006800010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003100350030005D002E004300610070007400
      69006F006E00010001004C006F0063006B006500640020002800590029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003100350031005D002E00430061007000740069006F006E00010001005300
      7400610072007400010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003100350032005D002E0043006100700074006900
      6F006E0001000100460069006E00690073006800010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003100350033005D00
      2E00430061007000740069006F006E0001000100460069006E00690073006800
      19001A002800540032002900010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003100350034005D002E00430061007000
      740069006F006E00010001005300650063007400010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003100350035005D00
      2E00430061007000740069006F006E000100010057006B00010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0031003500
      36005D002E00430061007000740069006F006E00010001004400610074006500
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003100350037005D002E00430061007000740069006F006E0001000100
      5300650063007400010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003100350038005D002E0043006100700074006900
      6F006E00010001005300740061007200740019001A0028003D0020004C005700
      53002900010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003100350039005D002E00430061007000740069006F006E00
      0100010053007400610072007400010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003100360030005D002E0043006100
      7000740069006F006E00010001005300650063007400010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00310036003100
      5D002E00430061007000740069006F006E00010001005300740061006E006400
      61007200640025002000280053004D00420019001A002D003100290001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3100360032005D002E00430061007000740069006F006E00010001004C004200
      19001A005200410044003400010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003100360033005D002E00430061007000
      740069006F006E0001000100430064006500010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003100360034005D002E00
      430061007000740069006F006E0001000100430064006500010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0031003600
      35005D002E00430061007000740069006F006E00010001004300640065000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003100360036005D002E00430061007000740069006F006E00010001004300
      64006500010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003100360037005D002E00430061007000740069006F006E00
      01000100430064006500010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003100360038005D002E004300610070007400
      69006F006E0001000100430064006500010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003100360039005D002E004300
      61007000740069006F006E000100010051004E00200051007400790020002800
      6200610073006500640020006F006E0020007000690063006B00650064002900
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003100370030005D002E00430061007000740069006F006E0001000100
      4F0072006900670069006E0061006C00010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003100370031005D002E004300
      61007000740069006F006E0001000100460028004200290020002F0020004600
      280053002900010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003100370032005D002E00430061007000740069006F00
      6E000100010041004C00010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003100370036005D002E004300610070007400
      69006F006E00010001005200650073007400010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003100370038005D002E00
      430061007000740069006F006E000100010055006E006900740019001A006600
      6C006F00770019001A00AE55416D19001A0028007500290019001A004D006900
      780019001A0066006C006F00770019001A00C696416D19001A0028006D002900
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003100370039005D002E00430061007000740069006F006E0001000100
      4400650066002E0019001A006200610073006500640019001A006F006E002000
      4C0043004C00010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003100380030005D002E00430061007000740069006F00
      6E0001000100410064006A002E0019001A00280069006600200061006E007900
      2900010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003100380031005D002E00430061007000740069006F006E000100
      010057007300200046006C006F00770019001A00280073006800640019001A00
      6200610073006500640019001A006F006E002000500050004D00430029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003100380032005D002E00430061007000740069006F006E00010001005400
      42004100010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003100380033005D002E00430061007000740069006F006E00
      0100010050006C0061006E002000280050004D0043002900010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0031003800
      35005D002E00430061007000740069006F006E00010001005300740061007200
      7400010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003100380036005D002E00430061007000740069006F006E000100
      0100460069006E00690073006800010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003100380037005D002E0043006100
      7000740069006F006E0001000100500072006500640069006300740019001A00
      66006D0020005300630068002E00010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003100380038005D002E0043006100
      7000740069006F006E00010001004100630074002E00010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00310038003900
      5D002E00430061007000740069006F006E000100010053006300680065006400
      75006C0069006E00670020002D00200062007900200074006800650020006600
      6C006F00770020006F006600200051004E00010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003100390030005D002E00
      430061007000740069006F006E00010001004100630074002E00010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003100
      390031005D002E00430061007000740069006F006E0001000100500072006500
      6400690063007400200066006D0020005300630068002E00010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0031003900
      32005D002E00430061007000740069006F006E00010001004100630074002E00
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003100390033005D002E00430061007000740069006F006E0001000100
      4400610074006500010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003100390034005D002E0043006100700074006900
      6F006E0001000100530065006300740069006F006E00010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00310039003500
      5D002E00430061007000740069006F006E000100010042002D00410029002000
      4400690066006600010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003100390036005D002E0043006100700074006900
      6F006E000100010043002D004200290020004400690066006600010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003100
      390037005D002E00430061007000740069006F006E000100010042002D004100
      290020004400690066006600010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003100390038005D002E00430061007000
      740069006F006E000100010043002D0042002900200044006900660066000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003100390039005D002E00430061007000740069006F006E00010001005700
      7300010001000D000A00740062006C00730068006500640075006C0065002E00
      49006E0064006500780044006500660073005B0030005D002E00460069006500
      6C00640073000100740070006C0061006E0074003B007400730068006F007000
      3B0070006C0069006E0065003B007300650071000100010001000D000A007400
      62006C00730068006500640075006C0065002E0049006E006400650078004400
      6500660073005B0031005D002E004600690065006C006400730001006A005F00
      6E006F003B006A0032005F006A006F0062000100010001000D000A0074006200
      6C00730068006500640075006C0065002E0049006E0064006500780044006500
      660073005B0032005D002E004600690065006C006400730001006A005F006E00
      6F003B006A0032005F006A006F0062003B00720077006F000100010001000D00
      0A00740062006C00730068006500640075006C0065002E0049006E0064006500
      780044006500660073005B0033005D002E004600690065006C00640073000100
      6A005F006E006F003B00610063006F006C003B006A0032005F006A006F006200
      3B00720077006F000100010001000D000A00740062006C007300680065006400
      75006C0065002E0049006E0064006500780044006500660073005B0034005D00
      2E004600690065006C006400730001006A005F006E006F003B006A0032005F00
      6A006F0062003B00720077006F003B0066006300630073000100010001000D00
      0A00740062006C00730068006500640075006C0065002E0049006E0064006500
      780044006500660073005B0035005D002E004600690065006C00640073000100
      630066006B007300720071003B0070006C0069006E0065003B00730065007100
      0100010001000D000A00740062006C00730068006500640075006C0065002E00
      49006E0064006500780044006500660073005B0036005D002E00460069006500
      6C00640073000100740070006C0061006E0074003B007400730068006F007000
      3B0070006C0069006E0065003B007300650071000100010001000D000A007400
      62006C00730068006500640075006C0065002E0049006E006400650078004400
      6500660073005B0037005D002E004600690065006C0064007300010074007300
      68006F0070003B0070006C0069006E0065003B00730065007100010001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3200300030005D002E00430061007000740069006F006E000100010053007400
      79006C0065002000690044007000640019001A003E6B0D4E9D4F609701000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3200300031005D002E00430061007000740069006F006E000100010043006F00
      6C006F007200200019001A006900440070006400010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003200300032005D00
      2E00430061007000740069006F006E00010001005300740079006C0065002000
      2F00200043006C007200200044007000640019001A003E6B2F007282BC789D4F
      6097010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003200300036005D002E00430061007000740069006F006E000100
      01004C006F0063002E0019001A0028004200460019001A004100450029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200300037005D002E00430061007000740069006F006E00010001004400
      650066002E0019001A0028005300570019001A0073002E006400640029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200300039005D002E00430061007000740069006F006E00010001004400
      6100790019001A00640069006600660019001A00280044002D00410029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200310030005D002E00430061007000740069006F006E00010001004100
      630074002E0019001A002800460069006E002E0019001A006400640029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200310032005D002E00430061007000740069006F006E00010001006F00
      6E00200050004C00430019001A00280077002F00610076006500290001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3200310033005D002E00430061007000740069006F006E000100010041006400
      640027006C00200073006500630074002E002000680072002E00010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003200
      310034005D002E00430061007000740069006F006E0001000100500019001A00
      680019001A00610019001A00730019001A006500010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003200310035005D00
      2E00430061007000740069006F006E000100010049006E002D00700072006F00
      19001A002D00630065007300730019001A002800430031002B0019001A004400
      33002900010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200310036005D002E00430061007000740069006F006E00
      010001004100630074002E0019001A005E00010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200310037005D002E00
      430061007000740069006F006E00010001004F00750074007000750074002000
      6F006600200041004C0020005700730019001A0041004C002000E55D34582275
      CF91010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003200310038005D002E00430061007000740069006F006E000100
      0100410064006A002E0019001A00280069006600200061006E00790029000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200330036005D002E00430061007000740069006F006E00010001005000
      72006500640069006300740019001A0066006D0020005300630068002E000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200330037005D002E00430061007000740069006F006E00010001004100
      630074002E00010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003200330038005D002E00430061007000740069006F00
      6E0001000100430064006500010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003200330039005D002E00430061007000
      740069006F006E000100010053007400610072007400010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00320034003000
      5D002E00430061007000740069006F006E000100010053006500630074000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200340031005D002E00430061007000740069006F006E00010001005300
      7400610072007400010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003200340032005D002E0043006100700074006900
      6F006E0001000100460069006E00690073006800010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00310034005D002E00
      430061007000740069006F006E00010001004100010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00320033005D002E00
      430061007000740069006F006E00010001005800010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00330038005D002E00
      430061007000740069006F006E00010001004100010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00340038005D002E00
      430061007000740069006F006E00010001004600010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00340039005D002E00
      430061007000740069006F006E00010001004100010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00350030005D002E00
      430061007000740069006F006E00010001004500010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00350035005D002E00
      430061007000740069006F006E00010001004600010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00350036005D002E00
      430061007000740069006F006E00010001004500010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B00350037005D002E00
      430061007000740069006F006E0001000100540054004C00010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0035003800
      5D002E00430061007000740069006F006E00010001004600010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0035003900
      5D002E00430061007000740069006F006E00010001004500010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0036003000
      5D002E00430061007000740069006F006E0001000100540054004C0001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      360038005D002E00430061007000740069006F006E0001000100460020005700
      6F0072006B00730068006F00700019001A0046002000E55D3458010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003600
      39005D002E00430061007000740069006F006E000100010041004C0020005700
      6F0072006B00730068006F00700020002800E55D34582900010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0037003000
      5D002E00430061007000740069006F006E00010001004500200057006F007200
      6B00730068006F007000010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003100300036005D002E004300610070007400
      69006F006E00010001008189DC88010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003100310030005D002E0043006100
      7000740069006F006E0001000100486587734D96200028009E58290001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3100310031005D002E00430061007000740069006F006E000100010048658773
      4753200028001B6E2900010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003100370033005D002E004300610070007400
      69006F006E0001000100460028004200290020002F0020004600280053002900
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003100370034005D002E00430061007000740069006F006E0001000100
      41004C00010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003100370035005D002E00430061007000740069006F006E00
      010001004500010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003100370037005D002E00430061007000740069006F00
      6E00010001002A00010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003100380034005D002E0043006100700074006900
      6F006E0001000100540042004100010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003200300033005D002E0043006100
      7000740069006F006E000100010043003100010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200300034005D002E00
      430061007000740069006F006E000100010043003200010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00320030003500
      5D002E00430061007000740069006F006E000100010043003300010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003200
      310031005D002E00430061007000740069006F006E0001000100470053004400
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003200310039005D002E00430061007000740069006F006E0001000100
      430057004F0020009A5B72823652AE5520002D0020006400540033002F006100
      54003300010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200320030005D002E00430061007000740069006F006E00
      0100010051004E007865019820002D00200073005400330019001A0028007300
      630068002E0020002F0020009263C9622900010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200320031005D002E00
      430061007000740069006F006E0001000100640054003300010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0032003200
      32005D002E00430061007000740069006F006E00010001006100540033002000
      2800610064006A00750073007400650064002F00EE4F028A290019001A002800
      610068006500610064002000690073002000610020006D007500730074002900
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003200320033005D002E00430061007000740069006F006E0001000100
      4400650066002E0019001A0064006400010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003200320034005D002E004300
      61007000740069006F006E00010001003F00010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200320035005D002E00
      430061007000740069006F006E00010001004400610079007300010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003200
      320036005D002E00430061007000740069006F006E0001000100640064000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200320037005D002E00430061007000740069006F006E00010001006400
      6400010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003200320038005D002E00430061007000740069006F006E000100
      01004100630074002E0019001A005E00010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003200320039005D002E004300
      61007000740069006F006E000100010055006E00640075006500200064006100
      79007300010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200330030005D002E00430061007000740069006F006E00
      01000100610054003300010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003200330031005D002E004300610070007400
      69006F006E0001000100610054003300200064007500650019001A0064006100
      7900730020006C0069006D0069007400010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003200330032005D002E004300
      61007000740069006F006E00010001003F00010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200330033005D002E00
      430061007000740069006F006E00010001004400610079007300010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003200
      330034005D002E00430061007000740069006F006E00010001005E0001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3200330035005D002E00430061007000740069006F006E000100010042002000
      57006F0072006B00730068006F007000010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003200340033005D002E004300
      61007000740069006F006E00010001005400330019001A00570069006E006400
      6F007700010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200340034005D002E00430061007000740069006F006E00
      010001004100630074002E00010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003200340035005D002E00430061007000
      740069006F006E00010001005300700065006300690066006900630020004D00
      6100740027006C002000630061006E0020006200650020007500730065006400
      200061007400200045006E006400200070006800610073006500200057007300
      20006C006100740065007200010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003200340036005D002E00430061007000
      740069006F006E00010001004D006100740027006C00010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00320034003700
      5D002E00430061007000740069006F006E00010001004D006100740027006C00
      20007300740061006E00640062007900200064006400010001000D000A006300
      7800560069006500770031002E00420061006E00640073005B00320034003800
      5D002E00430061007000740069006F006E0001000100460028002D0029002F00
      4A002800300029002F00470028002B0029003F0019001A002800620061007300
      6500640020006F006E0020006C006F0063006B00650064002000640064002900
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003200340039005D002E00430061007000740069006F006E0001000100
      53005700200041004C0020005700730019001A00460069006E00690073006800
      200064006400010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003200350030005D002E00430061007000740069006F00
      6E0001000100530057002000450020005700730019001A007300740061007200
      7400200064006400010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003200350031005D002E0043006100700074006900
      6F006E00010001004C0061007300740019001A00340020007300650063007400
      2E00010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B003200350032005D002E00430061007000740069006F006E000100
      0100450078002D0066007400790019001A006400640019001A00620075006600
      66006500720019001A0028002B002F002D002900010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003200350033005D00
      2E00430061007000740069006F006E0001000100230019001A006F0066000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200350034005D002E00430061007000740069006F006E00010001005400
      790070006500010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003200350035005D002E00430061007000740069006F00
      6E00010001004C006F0063006B0065006400010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200350036005D002E00
      430061007000740069006F006E0001000100410064006A002E0019001A002800
      6900660019001A0061006E0079002900010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003200350037005D002E004300
      61007000740069006F006E00010001004100630074002E00010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0032003500
      38005D002E00430061007000740069006F006E00010001004C006F0063006B00
      65006400010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200350039005D002E00430061007000740069006F006E00
      01000100560061007200690061006E006300650019001A007600730019001A00
      5300630068002E00200064006400010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003200360030005D002E0043006100
      7000740069006F006E00010001004100670072006500650019001A0066006900
      78006500640019001A0064006400010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003200360031005D002E0043006100
      7000740069006F006E00010001005300630068002E0019001A002F0041006300
      74002E00010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200360032005D002E00430061007000740069006F006E00
      01000100430064006500010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003200360033005D002E004300610070007400
      69006F006E00010001005300630068002E0019001A002F004100630074002E00
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003200360034005D002E00430061007000740069006F006E0001000100
      430064006500010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003200360035005D002E00430061007000740069006F00
      6E0001000100440061007900730019001A007600730020006D00610074002700
      6C0019001A007300740061006E0064006200790019001A006400640001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3200360036005D002E00430061007000740069006F006E000100010041006700
      720065006500640019001A006400610079007300010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003200360037005D00
      2E00430061007000740069006F006E00010001004900740065006D0073002000
      19001A007300740064002D00620079002700730019001A007300740061006700
      6500730019001A0019001A005B00500052004500530053005D0019001A006C00
      690073007400200069006E00010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003200360038005D002E00430061007000
      740069006F006E000100010053007000650063002E0019001A00690074006500
      6D00730019001A006C006100740065007300740019001A007300740064002D00
      62007900010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200360039005D002E00430061007000740069006F006E00
      0100010052006500610073006F006E0019001A00430064006500230001000100
      0D000A0063007800560069006500770031002E00420061006E00640073005B00
      3200370030005D002E00430061007000740069006F006E000100010023002000
      6F00660019001A0072006500670069006F006E00010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003200370031005D00
      2E00430061007000740069006F006E000100010053006D0070006C0019001A00
      4F0072006400010001000D000A0063007800560069006500770031002E004200
      61006E00640073005B003200370032005D002E00430061007000740069006F00
      6E000100010041006C006C00200053006500770069006E006700200057007300
      19001A006851E8902B7E0854E55D3458010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003200370033005D002E004300
      61007000740069006F006E0001000100420075006C006B0019001A0053006800
      70007400010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200370034005D002E00430061007000740069006F006E00
      01000100420075006C006B0019001A0053006D0070006C0019001A002A000100
      01000D000A0063007800560069006500770031002E00420061006E0064007300
      5B003200370035005D002E00430061007000740069006F006E00010001005000
      500019001A0057007300010001000D000A006300780056006900650077003100
      2E00420061006E00640073005B003200370036005D002E004300610070007400
      69006F006E00010001003200200066006100630074006F007200730020006600
      6F00720020006B00690063006B002D006F006600660020002D0019001A004900
      740065006D00730020002600200053006D0070006C0020006100700070007600
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003200370037005D002E00430061007000740069006F006E0001000100
      4900740065006D00730020007300740064002D006200790019001A003D002000
      460057005300200064006400010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003200370038005D002E00430061007000
      740069006F006E000100010053006D0070006C0019001A004100700070007600
      19001A0019001A004400650066002E0020006900730019001A003C0036002000
      6400610079007300010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003200370039005D002E0043006100700074006900
      6F006E0001000100230020006F00660019001A00430057004F00010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003200
      380030005D002E00430061007000740069006F006E0001000100440069006600
      66002E0019001A00440065006C002E0019001A0064006400010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0032003800
      31005D002E00430061007000740069006F006E00010001004400690066006600
      2E0019001A0052006500670019001A002D0069006F006E00010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0032003800
      32005D002E00430061007000740069006F006E000100010051004E0023001900
      1A00280031007300740020007000720065006600690078002000640069006700
      69007400730019001A0069007300200057004F002300290019001A0019001A00
      78650198230019001A0028002C7B004E0B504D52B47D19001A002F663652AE55
      5F862900010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200380033005D002E00430061007000740069006F006E00
      0100010045005200500019001A00530074007900230019001A00450052005000
      3E6B5F86010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200380034005D002E00430061007000740069006F006E00
      010001005300740079006C006500010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003200380035005D002E0043006100
      7000740069006F006E0001000100480020005300650067002E0019001A004800
      2000B56B010001000D000A0063007800560069006500770031002E0042006100
      6E00640073005B003200380036005D002E00430061007000740069006F006E00
      01000100490019001A00460019001A005200010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200380037005D002E00
      430061007000740069006F006E0001000100440020005300650067002E002000
      2D002000540069006D0065002000630072006900740065007200690061002000
      74006F002000630061006C00630075006C006100740065002000740068007200
      6500650020006B0069006E006400730020006F0066002000540074006C002000
      7300650063007400200068007200200066006F00720020006100730073006500
      6D0062006C00790020006C0069006E006500010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200380038005D002E00
      430061007000740069006F006E00010001002D00200053007500660066006900
      780019001A002D0020008C5FB47D010001000D000A0063007800560069006500
      770031002E00420061006E00640073005B003200380039005D002E0043006100
      7000740069006F006E000100010051004E002000510074007900010001000D00
      0A0063007800560069006500770031002E00420061006E00640073005B003200
      390030005D002E00430061007000740069006F006E0001000100420075006C00
      6B0019001A0053006D0070006C0019001A002A002A0019001A00280063002900
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003200390031005D002E00430061007000740069006F006E0001004E00
      6F006E0020005300680070006400200051007400790019001A00620079002000
      51004E0073000100010001000D000A0063007800560069006500770031002E00
      420061006E00640073005B003200390032005D002E0043006100700074006900
      6F006E000100450020005300650067002E000100010001000D000A0063007800
      560069006500770031002E00420061006E00640073005B003200390033005D00
      2E00430061007000740069006F006E00010052006500610073006F006E000100
      010001000D000A0063007800560069006500770031002E00420061006E006400
      73005B003200390034005D002E00430061007000740069006F006E0001004600
      69006E006900730068000100010001000D000A00630078005600690065007700
      31002E00420061006E00640073005B003200390035005D002E00430061007000
      740069006F006E0001004300640065000100010001000D000A00630078005600
      69006500770031002E00420061006E00640073005B003200390036005D002E00
      430061007000740069006F006E0001004300640065000100010001000D000A00
      63007800560069006500770031002E00420061006E00640073005B0032003900
      37005D002E00430061007000740069006F006E00010053007400610072007400
      0100010001000D000A0063007800560069006500770031002E00420061006E00
      640073005B00310036005D002E00430061007000740069006F006E0001003290
      4C8819001A002800430031002B004100320019001A006500780063006C002E00
      19001A0042003200290019001A000100010001000D000A006300780056006900
      6500770031002E00420061006E00640073005B003200300038005D002E004300
      61007000740069006F006E0001005200650076002E0019001A00690066002000
      61006E00790019001A0028005300570019001A0073002E006400640029001900
      1A000100010001000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00540077006F0072006B007300
      6800650065007400310001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00500061006E006500
      6C00310001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00420069007400420074006E003100
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00420069007400420074006E00320001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00420069007400420074006E0033000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00420069007400420074006E00340001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00420069007400420074006E00350001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A004200
      69007400420074006E00370001004300480049004E0045005300450042004900
      470035005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00420069007400
      420074006E00380001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0042006900740042007400
      6E003100300001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00420069007400420074006E00
      3100320001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A006300780047007200690064003100
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650031000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500320001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003400010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650035000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500360001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C006500370001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C006500330001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      7400690074006C00650030003000310001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006600
      7400790030003000310001004300480049004E00450053004500420049004700
      35005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00700070004C006100
      620065006C00330001004300480049004E004500530045004200490047003500
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00700070004C0061006200
      65006C00340001004300480049004E0045005300450042004900470035005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00700070004C00610062006500
      6C00350001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00700070004C006100620065006C00
      360001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00700070004C006100620065006C003700
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004C006100620065006C0038000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007400690074006C00650030003000320001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00700070004C006100620065006C003100010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004C006100620065006C0039000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310030000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310031000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310032000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310033000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310034000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310035000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310036000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310037000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310038000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00310039000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320030000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00700070004C006100620065006C00320031000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006C00770030003000310001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004C006100620065006C00320001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      530079007300740065006D005600610072006900610062006C00650031000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00700070004C006100620065006C00320032000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A0070007000530079007300740065006D0056006100
      72006900610062006C006500320001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003200330001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003200340001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003200350001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003200360001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003200370001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4C006100620065006C003200380001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400310001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400320001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400330001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400340001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400350001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400360001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400370001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400380001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      440042005400650078007400390001004300480049004E004500530045004200
      4900470035005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070007000
      4400420054006500780074003100300001004300480049004E00450053004500
      42004900470035005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      70004400420054006500780074003100310001004300480049004E0045005300
      450042004900470035005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      700070004400420054006500780074003100320001004300480049004E004500
      5300450042004900470035005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00700070004400420054006500780074003100330001004300480049004E00
      45005300450042004900470035005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A0070007000440042005400650078007400310034000100430048004900
      4E0045005300450042004900470035005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A007000700044004200540065007800740031003500010043004800
      49004E0045005300450042004900470035005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00700070004400420054006500780074003100360001004300
      480049004E0045005300450042004900470035005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070007000440042005400650078007400310037000100
      4300480049004E0045005300450042004900470035005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A007000700044004200540065007800740031003800
      01004300480049004E0045005300450042004900470035005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00700070004400420054006500780074003100
      390001004300480049004E0045005300450042004900470035005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070007000440042005400650078007400
      3200300001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200430061006C00
      6300310001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007000700044004200430061006C00
      6300320001004300480049004E0045005300450042004900470035005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00420069007400420074006E003100
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00420069007400420074006E00310031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A004200
      69007400420074006E00310034000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00420069007400420074006E00
      310035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00}
  end
  object pm1: TPopupMenu
    TrackButton = tbLeftButton
    Left = 696
    Top = 432
    object ERPWO1: TMenuItem
      Caption = 'WO'
      OnClick = ERPWO1Click
    end
    object CopWO1: TMenuItem
      Caption = 'Cop WO'
      OnClick = CopWO1Click
    end
    object LineWO1: TMenuItem
      Caption = 'Line WO'
      OnClick = LineWO1Click
    end
  end
end
